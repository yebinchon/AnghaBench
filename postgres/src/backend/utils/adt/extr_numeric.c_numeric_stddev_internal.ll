; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_numeric_stddev_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_numeric_stddev_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i64, i64, i32, i32 }

@const_nan = common dso_local global %struct.TYPE_27__ zeroinitializer, align 4
@const_one = common dso_local global %struct.TYPE_27__ zeroinitializer, align 4
@const_zero = common dso_local global %struct.TYPE_27__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_28__*, i32, i32, i32*)* @numeric_stddev_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @numeric_stddev_internal(%struct.TYPE_28__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_27__, align 4
  %12 = alloca %struct.TYPE_27__, align 4
  %13 = alloca %struct.TYPE_27__, align 4
  %14 = alloca %struct.TYPE_27__, align 4
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %18 = icmp eq %struct.TYPE_28__* %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %4
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19, %4
  %29 = load i32*, i32** %9, align 8
  store i32 1, i32* %29, align 4
  store i32* null, i32** %5, align 8
  br label %100

30:                                               ; preds = %19
  %31 = load i32*, i32** %9, align 8
  store i32 0, i32* %31, align 4
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32* @make_result(%struct.TYPE_27__* @const_nan)
  store i32* %37, i32** %5, align 8
  br label %100

38:                                               ; preds = %30
  %39 = call i32 @init_var(%struct.TYPE_27__* %11)
  %40 = call i32 @init_var(%struct.TYPE_27__* %12)
  %41 = call i32 @init_var(%struct.TYPE_27__* %13)
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @int64_to_numericvar(i64 %44, %struct.TYPE_27__* %11)
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 3
  %48 = call i32 @accum_sum_final(i32* %47, %struct.TYPE_27__* %12)
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 2
  %51 = call i32 @accum_sum_final(i32* %50, %struct.TYPE_27__* %13)
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %38
  store %struct.TYPE_27__* @const_one, %struct.TYPE_27__** %15, align 8
  br label %56

55:                                               ; preds = %38
  store %struct.TYPE_27__* @const_zero, %struct.TYPE_27__** %15, align 8
  br label %56

56:                                               ; preds = %55, %54
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %58 = call i64 @cmp_var(%struct.TYPE_27__* %11, %struct.TYPE_27__* %57)
  %59 = icmp sle i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32*, i32** %9, align 8
  store i32 1, i32* %61, align 4
  store i32* null, i32** %5, align 8
  br label %100

62:                                               ; preds = %56
  %63 = call i32 @init_var(%struct.TYPE_27__* %14)
  %64 = call i32 @sub_var(%struct.TYPE_27__* %11, %struct.TYPE_27__* @const_one, %struct.TYPE_27__* %14)
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 2
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %16, align 4
  %69 = call i32 @mul_var(%struct.TYPE_27__* %12, %struct.TYPE_27__* %12, %struct.TYPE_27__* %12, i32 %68)
  %70 = load i32, i32* %16, align 4
  %71 = call i32 @mul_var(%struct.TYPE_27__* %11, %struct.TYPE_27__* %13, %struct.TYPE_27__* %13, i32 %70)
  %72 = call i32 @sub_var(%struct.TYPE_27__* %13, %struct.TYPE_27__* %12, %struct.TYPE_27__* %13)
  %73 = call i64 @cmp_var(%struct.TYPE_27__* %13, %struct.TYPE_27__* @const_zero)
  %74 = icmp sle i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %62
  %76 = call i32* @make_result(%struct.TYPE_27__* @const_zero)
  store i32* %76, i32** %10, align 8
  br label %95

77:                                               ; preds = %62
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 @mul_var(%struct.TYPE_27__* %11, %struct.TYPE_27__* %14, %struct.TYPE_27__* %14, i32 0)
  br label %84

82:                                               ; preds = %77
  %83 = call i32 @mul_var(%struct.TYPE_27__* %11, %struct.TYPE_27__* %11, %struct.TYPE_27__* %14, i32 0)
  br label %84

84:                                               ; preds = %82, %80
  %85 = call i32 @select_div_scale(%struct.TYPE_27__* %13, %struct.TYPE_27__* %14)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = call i32 @div_var(%struct.TYPE_27__* %13, %struct.TYPE_27__* %14, %struct.TYPE_27__* %12, i32 %86, i32 1)
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @sqrt_var(%struct.TYPE_27__* %12, %struct.TYPE_27__* %12, i32 %91)
  br label %93

93:                                               ; preds = %90, %84
  %94 = call i32* @make_result(%struct.TYPE_27__* %12)
  store i32* %94, i32** %10, align 8
  br label %95

95:                                               ; preds = %93, %75
  %96 = call i32 @free_var(%struct.TYPE_27__* %14)
  %97 = call i32 @free_var(%struct.TYPE_27__* %12)
  %98 = call i32 @free_var(%struct.TYPE_27__* %13)
  %99 = load i32*, i32** %10, align 8
  store i32* %99, i32** %5, align 8
  br label %100

100:                                              ; preds = %95, %60, %36, %28
  %101 = load i32*, i32** %5, align 8
  ret i32* %101
}

declare dso_local i32* @make_result(%struct.TYPE_27__*) #1

declare dso_local i32 @init_var(%struct.TYPE_27__*) #1

declare dso_local i32 @int64_to_numericvar(i64, %struct.TYPE_27__*) #1

declare dso_local i32 @accum_sum_final(i32*, %struct.TYPE_27__*) #1

declare dso_local i64 @cmp_var(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @sub_var(%struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @mul_var(%struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @select_div_scale(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @div_var(%struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @sqrt_var(%struct.TYPE_27__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @free_var(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
