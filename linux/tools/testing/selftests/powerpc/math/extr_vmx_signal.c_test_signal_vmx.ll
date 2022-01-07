; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/math/extr_vmx_signal.c_test_signal_vmx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/math/extr_vmx_signal.c_test_signal_vmx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_SC_NPROCESSORS_ONLN = common dso_local global i32 0, align 4
@THREAD_FACTOR = common dso_local global i32 0, align 4
@running = common dso_local global i32 0, align 4
@threads_starting = common dso_local global i32 0, align 4
@signal_vmx_c = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"\09Waiting for %d workers to start... %d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c", %d\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" ...done\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"\09Sending signals to all threads %d times...\00", align 1
@ITERATIONS = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"\09Killing workers...\00", align 1
@bad_context = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"oops\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"\09!! bad_context is true\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_signal_vmx() #0 {
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
  %31 = load i32, i32* @signal_vmx_c, align 4
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
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @threads_starting, align 4
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %47, %38
  %45 = load i32, i32* @threads_starting, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %48 = call i32 @usleep(i32 1000)
  %49 = load i32, i32* @threads_starting, align 4
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %44

51:                                               ; preds = %44
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @ITERATIONS, align 4
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  store i32 0, i32* %1, align 4
  br label %55

55:                                               ; preds = %77, %51
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* @ITERATIONS, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %72, %59
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SIGUSR1, align 4
  %71 = call i32 @pthread_kill(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %2, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %2, align 4
  br label %60

75:                                               ; preds = %60
  %76 = call i32 @sleep(i32 1)
  br label %77

77:                                               ; preds = %75
  %78 = load i32, i32* %1, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %1, align 4
  br label %55

80:                                               ; preds = %55
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* @running, align 4
  store i32 0, i32* %1, align 4
  br label %83

83:                                               ; preds = %119, %80
  %84 = load i32, i32* %1, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %122

87:                                               ; preds = %83
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %1, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @pthread_join(i32 %92, i8** %5)
  %94 = load i8*, i8** %5, align 8
  %95 = ptrtoint i8* %94 to i64
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %87
  %98 = load i64, i64* @bad_context, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97, %87
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %97
  %103 = load i64, i64* @bad_context, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* @stderr, align 4
  %107 = call i32 @fprintf(i32 %106, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i8*, i8** %5, align 8
  %110 = ptrtoint i8* %109 to i64
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = load i64, i64* @bad_context, align 8
  %114 = icmp ne i64 %113, 0
  br label %115

115:                                              ; preds = %112, %108
  %116 = phi i1 [ true, %108 ], [ %114, %112 ]
  %117 = zext i1 %116 to i32
  %118 = call i32 @FAIL_IF(i32 %117)
  br label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %1, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %1, align 4
  br label %83

122:                                              ; preds = %83
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 @free(i32* %124)
  ret i32 0
}

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare !callback !3 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @setbuf(i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @usleep(i32) #1

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
!2 = !{i32 1201}
!3 = !{!4}
!4 = !{i64 2, i64 3, i1 false}
