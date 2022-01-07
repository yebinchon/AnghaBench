; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/tm/extr_tm-unavailable.c_tm_unavailable_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/tm/extr_tm-unavailable.c_tm_unavailable_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [20 x i8] c"pthread_attr_init()\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"pthread_attr_setaffinity_np()\00", align 1
@tm_una_pong = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"pthread_create()\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"tm_una_pong\00", align 1
@flags = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NUM_EXCEPTIONS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Checking if FP/VEC registers are sane after\00", align 1
@FP_UNA_EXCEPTION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c" a FP unavailable exception...\0A\00", align 1
@VEC_UNA_EXCEPTION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c" a VEC unavailable exception...\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c" a VSX unavailable exception...\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"result: failed!\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"result: success\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tm_unavailable_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @have_htm()
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @SKIP_IF(i32 %9)
  %11 = call i32 @CPU_ZERO(i32* %5)
  %12 = call i32 @CPU_SET(i32 0, i32* %5)
  %13 = call i32 @pthread_attr_init(i32* %4)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @pr_err(i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %0
  %20 = call i32 @pthread_attr_setaffinity_np(i32* %4, i32 4, i32* %5)
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @pr_err(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i32, i32* @tm_una_pong, align 4
  %28 = call i32 @pthread_create(i32* %3, i32* %4, i32 %27, i32* null)
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @pr_err(i32 %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @pthread_setname_np(i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %1, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @pr_warn(i32 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %34
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @flags, i32 0, i32 0), align 8
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %69, %42
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @NUM_EXCEPTIONS, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %43
  %48 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @FP_UNA_EXCEPTION, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %63

54:                                               ; preds = %47
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @VEC_UNA_EXCEPTION, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %62

60:                                               ; preds = %54
  %61 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %58
  br label %63

63:                                               ; preds = %62, %52
  %64 = load i32, i32* %2, align 4
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @flags, i32 0, i32 1), align 8
  %65 = call i32 @test_fp_vec(i32 0, i32 0, i32* %4)
  %66 = call i32 @test_fp_vec(i32 1, i32 0, i32* %4)
  %67 = call i32 @test_fp_vec(i32 0, i32 1, i32* %4)
  %68 = call i32 @test_fp_vec(i32 1, i32 1, i32* %4)
  br label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %2, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %2, align 4
  br label %43

72:                                               ; preds = %43
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @flags, i32 0, i32 0), align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %77 = call i32 @exit(i32 1) #3
  unreachable

78:                                               ; preds = %72
  %79 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %80 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @have_htm(...) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pr_err(i32, i8*) #1

declare dso_local i32 @pthread_attr_setaffinity_np(i32*, i32, i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @pthread_setname_np(i32, i8*) #1

declare dso_local i32 @pr_warn(i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @test_fp_vec(i32, i32, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
