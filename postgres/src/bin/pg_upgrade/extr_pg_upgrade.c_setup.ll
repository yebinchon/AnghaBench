; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_pg_upgrade.c_setup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_pg_upgrade.c_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32 }

@new_cluster = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s: could not find own program executable\0A\00", align 1
@old_cluster = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@user_opts = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [106 x i8] c"There seems to be a postmaster servicing the old cluster.\0APlease shutdown that postmaster and try again.\0A\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"There seems to be a postmaster servicing the new cluster.\0APlease shutdown that postmaster and try again.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = call i32 (...) @check_pghost_envvar()
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @new_cluster, i32 0, i32 1), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @MAXPGPATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @find_my_exec(i8* %15, i8* %14)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %18, %10
  %22 = call i8* @last_dir_separator(i8* %14)
  store i8 0, i8* %22, align 1
  %23 = call i32 @canonicalize_path(i8* %14)
  %24 = call i64 @pg_strdup(i8* %14)
  store i64 %24, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @new_cluster, i32 0, i32 1), align 8
  %25 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %25)
  br label %26

26:                                               ; preds = %21, %2
  %27 = call i32 (...) @verify_directories()
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @old_cluster, i32 0, i32 0), align 8
  %29 = call i64 @pid_lock_file_exists(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = call i64 @start_postmaster(%struct.TYPE_6__* @old_cluster, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @stop_postmaster(i32 0)
  br label %44

36:                                               ; preds = %31
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @user_opts, i32 0, i32 0), align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.1, i64 0, i64 0))
  br label %43

41:                                               ; preds = %36
  %42 = load i32*, i32** %4, align 8
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %41, %39
  br label %44

44:                                               ; preds = %43, %34
  br label %45

45:                                               ; preds = %44, %26
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @new_cluster, i32 0, i32 0), align 8
  %47 = call i64 @pid_lock_file_exists(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = call i64 @start_postmaster(%struct.TYPE_6__* @new_cluster, i32 0)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 @stop_postmaster(i32 0)
  br label %56

54:                                               ; preds = %49
  %55 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %52
  br label %57

57:                                               ; preds = %56, %45
  ret void
}

declare dso_local i32 @check_pghost_envvar(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @find_my_exec(i8*, i8*) #1

declare dso_local i32 @pg_fatal(i8*, ...) #1

declare dso_local i8* @last_dir_separator(i8*) #1

declare dso_local i32 @canonicalize_path(i8*) #1

declare dso_local i64 @pg_strdup(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @verify_directories(...) #1

declare dso_local i64 @pid_lock_file_exists(i32) #1

declare dso_local i64 @start_postmaster(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @stop_postmaster(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
