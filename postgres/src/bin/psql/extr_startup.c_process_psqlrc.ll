; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_startup.c_process_psqlrc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_startup.c_process_psqlrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"PSQLRC\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"could not find own program executable\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@SYSPSQLRC = common dso_local global i8* null, align 8
@PSQLRC = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @process_psqlrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_psqlrc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i32, i32* @MAXPGPATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = load i32, i32* @MAXPGPATH, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %17 = load i32, i32* @MAXPGPATH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %20 = load i32, i32* @MAXPGPATH, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  %23 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %2, align 8
  %25 = call i64 @find_my_exec(i8* %24, i8* %19)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = call i32 @pg_log_fatal(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EXIT_FAILURE, align 4
  %30 = call i32 @exit(i32 %29) #4
  unreachable

31:                                               ; preds = %1
  %32 = call i32 @get_etc_path(i8* %19, i8* %22)
  %33 = load i32, i32* @MAXPGPATH, align 4
  %34 = load i8*, i8** @SYSPSQLRC, align 8
  %35 = call i32 @snprintf(i8* %16, i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %22, i8* %34)
  %36 = call i32 @process_psqlrc_file(i8* %16)
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %31
  %40 = load i8*, i8** %8, align 8
  %41 = call i64 @strlen(i8* %40)
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i8*, i8** %8, align 8
  %45 = call i8* @pstrdup(i8* %44)
  store i8* %45, i8** %9, align 8
  %46 = call i32 @expand_tilde(i8** %9)
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @process_psqlrc_file(i8* %47)
  br label %58

49:                                               ; preds = %39, %31
  %50 = call i64 @get_home_path(i8* %13)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i32, i32* @MAXPGPATH, align 4
  %54 = load i8*, i8** @PSQLRC, align 8
  %55 = call i32 @snprintf(i8* %16, i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %13, i8* %54)
  %56 = call i32 @process_psqlrc_file(i8* %16)
  br label %57

57:                                               ; preds = %52, %49
  br label %58

58:                                               ; preds = %57, %43
  %59 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %59)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @getenv(i8*) #2

declare dso_local i64 @find_my_exec(i8*, i8*) #2

declare dso_local i32 @pg_log_fatal(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @get_etc_path(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @process_psqlrc_file(i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @pstrdup(i8*) #2

declare dso_local i32 @expand_tilde(i8**) #2

declare dso_local i64 @get_home_path(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
