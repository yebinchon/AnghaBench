; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_ioperm.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_ioperm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"sched_setaffinity to CPU 0\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"[RUN]\09enable 0x80\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"[OK]\09ioperm(0x80, 1, 1) failed (%d) -- try running as root\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"[RUN]\09disable 0x80\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"[FAIL]\09ioperm(0x80, 1, 0) failed (%d)\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"[RUN]\09child: check that we inherited permissions\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"[FAIL]\09Child died\0A\00", align 1
@nerrs = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"[FAIL]\09Child failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"[OK]\09Child succeeded\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"\09Drop privileges\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"[WARN]\09Dropping privileges failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"[OK]\09it worked\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"[RUN]\09enable 0x80 again\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"[FAIL]\09it succeeded but should have failed.\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"[OK]\09it failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call i32 @CPU_ZERO(i32* %2)
  %6 = call i32 @CPU_SET(i32 0, i32* %2)
  %7 = call i64 @sched_setaffinity(i32 0, i32 4, i32* %2)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %0
  %12 = call i32 @expect_gp(i32 128)
  %13 = call i32 @expect_gp(i32 237)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i64 @ioperm(i32 128, i32 1, i32 1)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  store i32 0, i32* %1, align 4
  br label %97

20:                                               ; preds = %11
  %21 = call i32 @expect_ok(i32 128)
  %22 = call i32 @expect_gp(i32 237)
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %24 = call i64 @ioperm(i32 128, i32 1, i32 0)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %27)
  store i32 1, i32* %1, align 4
  br label %97

29:                                               ; preds = %20
  %30 = call i32 @expect_gp(i32 128)
  %31 = call i32 @expect_gp(i32 237)
  %32 = call i64 @ioperm(i32 128, i32 1, i32 1)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  store i32 1, i32* %1, align 4
  br label %97

37:                                               ; preds = %29
  %38 = call i32 (...) @fork()
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %48 = call i32 @expect_ok(i32 128)
  %49 = call i32 @expect_gp(i32 237)
  store i32 0, i32* %1, align 4
  br label %97

50:                                               ; preds = %43
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @waitpid(i32 %51, i32* %4, i32 0)
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @WIFEXITED(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55, %50
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %61 = load i32, i32* @nerrs, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @nerrs, align 4
  br label %74

63:                                               ; preds = %55
  %64 = load i32, i32* %4, align 4
  %65 = call i64 @WEXITSTATUS(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %69 = load i32, i32* @nerrs, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @nerrs, align 4
  br label %73

71:                                               ; preds = %63
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %67
  br label %74

74:                                               ; preds = %73, %59
  br label %75

75:                                               ; preds = %74
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %77 = call i64 @setresuid(i32 1, i32 1, i32 1)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %97

81:                                               ; preds = %75
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %83 = call i64 @ioperm(i32 128, i32 1, i32 0)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* @errno, align 4
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  store i32 1, i32* %1, align 4
  br label %97

88:                                               ; preds = %81
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  %91 = call i64 @ioperm(i32 128, i32 1, i32 1)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %97

95:                                               ; preds = %88
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %97

97:                                               ; preds = %95, %93, %85, %79, %46, %34, %26, %17
  %98 = load i32, i32* %1, align 4
  ret i32 %98
}

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i64 @sched_setaffinity(i32, i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @expect_gp(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @ioperm(i32, i32, i32) #1

declare dso_local i32 @expect_ok(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i64 @setresuid(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
