; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_pg_rewind.c_ensureCleanShutdown.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_pg_rewind.c_ensureCleanShutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"postgres\00", align 1
@PG_BACKEND_VERSIONSTR = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [107 x i8] c"The program \22%s\22 is needed by %s but was\0Anot found in the same directory as \22%s\22.\0ACheck your installation.\00", align 1
@.str.2 = private unnamed_addr constant [96 x i8] c"The program \22%s\22 was found by \22%s\22 but was\0Anot the same version as %s.\0ACheck your installation.\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"executing \22%s\22 for target server to complete crash recovery\00", align 1
@dry_run = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"\22%s\22 --single -F -D \22%s\22 template1 < \22%s\22\00", align 1
@datadir_target = common dso_local global i8* null, align 8
@DEVNULL = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [52 x i8] c"postgres single-user mode of target instance failed\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Command was: %s\00", align 1
@MAXCMDLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ensureCleanShutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ensureCleanShutdown(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i32, i32* @MAXPGPATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i32, i32* @MAXPGPATH, align 4
  %15 = mul nsw i32 2, %14
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = load i32, i32* @PG_BACKEND_VERSIONSTR, align 4
  %20 = call i32 @find_other_exec(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %13)
  store i32 %20, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %1
  %23 = load i32, i32* @MAXPGPATH, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %7, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %8, align 8
  %27 = load i8*, i8** %2, align 8
  %28 = call i64 @find_my_exec(i8* %27, i8* %26)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32, i32* @progname, align 4
  %32 = trunc i64 %24 to i32
  %33 = call i32 @strlcpy(i8* %26, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %22
  %35 = load i32, i32* %3, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @progname, align 4
  %39 = call i32 (i8*, i8*, ...) @pg_fatal(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %38, i8* %26)
  br label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @progname, align 4
  %42 = call i32 (i8*, i8*, ...) @pg_fatal(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %44)
  br label %45

45:                                               ; preds = %43, %1
  %46 = call i32 @pg_log_info(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i8* %13)
  %47 = load i64, i64* @dry_run, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 1, i32* %9, align 4
  br label %62

50:                                               ; preds = %45
  %51 = load i32, i32* @MAXPGPATH, align 4
  %52 = mul nsw i32 2, %51
  %53 = load i8*, i8** @datadir_target, align 8
  %54 = load i8*, i8** @DEVNULL, align 8
  %55 = call i32 @snprintf(i8* %17, i32 %52, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %13, i8* %53, i8* %54)
  %56 = call i64 @system(i8* %17)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = call i32 @pg_log_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %60 = call i32 (i8*, i8*, ...) @pg_fatal(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %17)
  br label %61

61:                                               ; preds = %58, %50
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %61, %49
  %63 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %63)
  %64 = load i32, i32* %9, align 4
  switch i32 %64, label %66 [
    i32 0, label %65
    i32 1, label %65
  ]

65:                                               ; preds = %62, %62
  ret void

66:                                               ; preds = %62
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @find_other_exec(i8*, i8*, i32, i8*) #2

declare dso_local i64 @find_my_exec(i8*, i8*) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @pg_fatal(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @pg_log_info(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #2

declare dso_local i64 @system(i8*) #2

declare dso_local i32 @pg_log_error(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
