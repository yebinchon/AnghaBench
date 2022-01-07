; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/math/extr_vmx_preempt.c_test_preempt_vmx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/math/extr_vmx_preempt.c_test_preempt_vmx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_SC_NPROCESSORS_ONLN = common dso_local global i32 0, align 4
@THREAD_FACTOR = common dso_local global i32 0, align 4
@running = common dso_local global i32 0, align 4
@threads_starting = common dso_local global i32 0, align 4
@preempt_vmx_c = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"\09Waiting for all workers to start...\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"\09Waiting for %d seconds to let some workers get preempted...\00", align 1
@PREEMPT_TIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"\09Stopping workers...\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"oops\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_preempt_vmx() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = load i32, i32* @_SC_NPROCESSORS_ONLN, align 4
  %7 = call i32 @sysconf(i32 %6)
  %8 = load i32, i32* @THREAD_FACTOR, align 4
  %9 = mul nsw i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = call i32* @malloc(i32 %13)
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = call i32 @FAIL_IF(i64 %19)
  store i32 1, i32* @running, align 4
  %21 = load i32, i32* %3, align 4
  store i32 %21, i32* @threads_starting, align 4
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %36, %0
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* @preempt_vmx_c, align 4
  %32 = call i32 @pthread_create(i32* %30, i32* null, i32 %31, i32* null)
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = call i32 @FAIL_IF(i64 %34)
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %1, align 4
  br label %22

39:                                               ; preds = %22
  %40 = load i32, i32* @stdout, align 4
  %41 = call i32 @setbuf(i32 %40, i32* null)
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %46, %39
  %44 = load i32, i32* @threads_starting, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %43

47:                                               ; preds = %43
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @PREEMPT_TIME, align 4
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @PREEMPT_TIME, align 4
  %52 = call i32 @sleep(i32 %51)
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* @running, align 4
  store i32 0, i32* %1, align 4
  br label %55

55:                                               ; preds = %75, %47
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %55
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %1, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pthread_join(i32 %64, i8** %5)
  %66 = load i8*, i8** %5, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %59
  %72 = load i8*, i8** %5, align 8
  %73 = ptrtoint i8* %72 to i64
  %74 = call i32 @FAIL_IF(i64 %73)
  br label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %1, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %1, align 4
  br label %55

78:                                               ; preds = %55
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @FAIL_IF(i64) #1

declare !callback !3 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @setbuf(i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @pthread_join(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1005}
!3 = !{!4}
!4 = !{i64 2, i64 3, i1 false}
