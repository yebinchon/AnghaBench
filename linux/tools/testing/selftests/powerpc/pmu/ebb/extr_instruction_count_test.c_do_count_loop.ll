; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_instruction_count_test.c_do_count_loop.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_instruction_count_test.c_do_count_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.event = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@counters_frozen = common dso_local global i32 0, align 4
@SPRN_MMCR0 = common dso_local global i32 0, align 4
@MMCR0_FC = common dso_local global i32 0, align 4
@sample_period = common dso_local global i32 0, align 4
@ebb_state = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [43 x i8] c"Looped for %lu instructions, overhead %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Expected %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Actual   %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Delta    %ld, %f%%\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Took %d EBBs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event*, i32, i32, i32)* @do_count_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_count_loop(%struct.event* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  store %struct.event* %0, %struct.event** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = call i32 (...) @clear_ebb_stats()
  store i32 0, i32* @counters_frozen, align 4
  %14 = call i32 (...) @mb()
  %15 = load i32, i32* @SPRN_MMCR0, align 4
  %16 = load i32, i32* @SPRN_MMCR0, align 4
  %17 = call i32 @mfspr(i32 %16)
  %18 = load i32, i32* @MMCR0_FC, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = call i32 @mtspr(i32 %15, i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, 5
  %24 = call i32 @thirty_two_instruction_loop(i32 %23)
  store i32 1, i32* @counters_frozen, align 4
  %25 = call i32 (...) @mb()
  %26 = load i32, i32* @SPRN_MMCR0, align 4
  %27 = load i32, i32* @SPRN_MMCR0, align 4
  %28 = call i32 @mfspr(i32 %27)
  %29 = load i32, i32* @MMCR0_FC, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @mtspr(i32 %26, i32 %30)
  %32 = load i32, i32* @sample_period, align 4
  %33 = call i32 @count_pmc(i32 4, i32 %32)
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ebb_state, i32 0, i32 0, i32 0), align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.event*, %struct.event** %6, align 8
  %38 = getelementptr inbounds %struct.event, %struct.event* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %11, align 4
  %43 = load %struct.event*, %struct.event** %6, align 8
  %44 = getelementptr inbounds %struct.event, %struct.event* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = sitofp i32 %49 to double
  %51 = load %struct.event*, %struct.event** %6, align 8
  %52 = getelementptr inbounds %struct.event, %struct.event* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sitofp i32 %54 to double
  %56 = fdiv double %50, %55
  %57 = fmul double %56, 1.000000e+02
  store double %57, double* %12, align 8
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32, i32* %11, align 4
  %65 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load %struct.event*, %struct.event** %6, align 8
  %67 = getelementptr inbounds %struct.event, %struct.event* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = load double, double* %12, align 8
  %73 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %71, double %72)
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ebb_state, i32 0, i32 0, i32 1), align 8
  %75 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %60, %4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %10, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %10, align 4
  %84 = mul nsw i32 %83, 1000000
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.event*, %struct.event** %6, align 8
  %87 = getelementptr inbounds %struct.event, %struct.event* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sdiv i32 %85, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  store i32 -1, i32* %5, align 4
  br label %94

93:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %92
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @clear_ebb_stats(...) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @thirty_two_instruction_loop(i32) #1

declare dso_local i32 @count_pmc(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
