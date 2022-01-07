; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/math/extr_fpu_signal.c_test_signal_fpu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/math/extr_fpu_signal.c_test_signal_fpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_SC_NPROCESSORS_ONLN = common dso_local global i32 0, align 4
@THREAD_FACTOR = common dso_local global i32 0, align 4
@running = common dso_local global i32 0, align 4
@threads_starting = common dso_local global i32 0, align 4
@signal_fpu_c = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"\09Waiting for all workers to start...\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"\09Sending signals to all threads %d times...\00", align 1
@ITERATIONS = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"\09Stopping workers...\00", align 1
@bad_context = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"oops\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"\09!! bad_context is true\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_signal_fpu() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = load i32, i32* @_SC_NPROCESSORS_ONLN, align 4
  %8 = call i32 @sysconf(i32 %7)
  %9 = load i32, i32* @THREAD_FACTOR, align 4
  %10 = mul nsw i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = call i32* @malloc(i32 %14)
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @FAIL_IF(i32 %19)
  store i32 1, i32* @running, align 4
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* @threads_starting, align 4
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %35, %0
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* @signal_fpu_c, align 4
  %32 = call i32 @pthread_create(i32* %30, i32* null, i32 %31, i32* null)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @FAIL_IF(i32 %33)
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %1, align 4
  br label %22

38:                                               ; preds = %22
  %39 = load i32, i32* @stdout, align 4
  %40 = call i32 @setbuf(i32 %39, i32* null)
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %45, %38
  %43 = load i32, i32* @threads_starting, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %42

46:                                               ; preds = %42
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @ITERATIONS, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  store i32 0, i32* %1, align 4
  br label %50

50:                                               ; preds = %72, %46
  %51 = load i32, i32* %1, align 4
  %52 = load i32, i32* @ITERATIONS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %67, %54
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %2, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SIGUSR1, align 4
  %66 = call i32 @pthread_kill(i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %2, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %2, align 4
  br label %55

70:                                               ; preds = %55
  %71 = call i32 @sleep(i32 1)
  br label %72

72:                                               ; preds = %70
  %73 = load i32, i32* %1, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %1, align 4
  br label %50

75:                                               ; preds = %50
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* @running, align 4
  store i32 0, i32* %1, align 4
  br label %78

78:                                               ; preds = %114, %75
  %79 = load i32, i32* %1, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %117

82:                                               ; preds = %78
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %1, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @pthread_join(i32 %87, i8** %5)
  %89 = load i8*, i8** %5, align 8
  %90 = ptrtoint i8* %89 to i64
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %82
  %93 = load i64, i64* @bad_context, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92, %82
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %92
  %98 = load i64, i64* @bad_context, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* @stderr, align 4
  %102 = call i32 @fprintf(i32 %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i8*, i8** %5, align 8
  %105 = ptrtoint i8* %104 to i64
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = load i64, i64* @bad_context, align 8
  %109 = icmp ne i64 %108, 0
  br label %110

110:                                              ; preds = %107, %103
  %111 = phi i1 [ true, %103 ], [ %109, %107 ]
  %112 = zext i1 %111 to i32
  %113 = call i32 @FAIL_IF(i32 %112)
  br label %114

114:                                              ; preds = %110
  %115 = load i32, i32* %1, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %1, align 4
  br label %78

117:                                              ; preds = %78
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @free(i32* %119)
  ret i32 0
}

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare !callback !3 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @setbuf(i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @pthread_kill(i32, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @pthread_join(i32, i8**) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1150}
!3 = !{!4}
!4 = !{i64 2, i64 3, i1 false}
