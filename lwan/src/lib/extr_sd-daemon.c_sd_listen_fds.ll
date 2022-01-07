; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_sd-daemon.c_sd_listen_fds.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_sd-daemon.c_sd_listen_fds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"LISTEN_PID\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"LISTEN_FDS\00", align 1
@SD_LISTEN_FDS_START = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@F_GETFD = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_listen_fds(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %95

13:                                               ; preds = %1
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @parse_int(i8* %14, i32 -1)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %95

21:                                               ; preds = %13
  %22 = call i64 (...) @getpid()
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %95

27:                                               ; preds = %21
  %28 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %95

32:                                               ; preds = %27
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @parse_int(i8* %33, i32 -1)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %95

38:                                               ; preds = %32
  %39 = load i32, i32* @SD_LISTEN_FDS_START, align 4
  %40 = load i32, i32* @INT_MAX, align 4
  %41 = icmp slt i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @static_assert(i32 %42, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @INT_MAX, align 4
  %49 = load i32, i32* @SD_LISTEN_FDS_START, align 4
  %50 = sub nsw i32 %48, %49
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %38
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %95

55:                                               ; preds = %46
  %56 = load i32, i32* @SD_LISTEN_FDS_START, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %90, %55
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @SD_LISTEN_FDS_START, align 4
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %59, %60
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %93

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @F_GETFD, align 4
  %66 = call i32 (i32, i32, ...) @fcntl(i32 %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @errno, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %95

72:                                               ; preds = %63
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @FD_CLOEXEC, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %90

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @F_SETFD, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @FD_CLOEXEC, align 4
  %83 = or i32 %81, %82
  %84 = call i32 (i32, i32, ...) @fcntl(i32 %79, i32 %80, i32 %83)
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load i32, i32* @errno, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %5, align 4
  br label %95

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89, %77
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %57

93:                                               ; preds = %57
  %94 = load i32, i32* %3, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %93, %86, %69, %52, %37, %31, %26, %18, %12
  %96 = load i32, i32* %2, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = call i32 @unsetenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %100 = call i32 @unsetenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @parse_int(i8*, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @static_assert(i32, i8*) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @unsetenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
