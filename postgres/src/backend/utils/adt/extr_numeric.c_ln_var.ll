; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_ln_var.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_ln_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i64 }

@const_zero = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_ARGUMENT_FOR_LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot take logarithm of zero\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"cannot take logarithm of a negative number\00", align 1
@const_two = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@const_zero_point_nine = common dso_local global i32 0, align 4
@DEC_DIGITS = common dso_local global i32 0, align 4
@NUMERIC_MIN_DISPLAY_SCALE = common dso_local global i32 0, align 4
@const_one_point_one = common dso_local global i32 0, align 4
@const_one = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_25__*, i32)* @ln_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ln_var(%struct.TYPE_25__* %0, %struct.TYPE_25__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_25__, align 8
  %8 = alloca %struct.TYPE_25__, align 8
  %9 = alloca %struct.TYPE_25__, align 8
  %10 = alloca %struct.TYPE_25__, align 8
  %11 = alloca %struct.TYPE_25__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %15 = call i32 @cmp_var(%struct.TYPE_25__* %14, i32* @const_zero)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* @ERRCODE_INVALID_ARGUMENT_FOR_LOG, align 4
  %21 = call i32 @errcode(i32 %20)
  %22 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @ereport(i32 %19, i32 %22)
  br label %34

24:                                               ; preds = %3
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i32, i32* @ERRCODE_INVALID_ARGUMENT_FOR_LOG, align 4
  %30 = call i32 @errcode(i32 %29)
  %31 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 @ereport(i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %27, %24
  br label %34

34:                                               ; preds = %33, %18
  %35 = call i32 @init_var(%struct.TYPE_25__* %7)
  %36 = call i32 @init_var(%struct.TYPE_25__* %8)
  %37 = call i32 @init_var(%struct.TYPE_25__* %9)
  %38 = call i32 @init_var(%struct.TYPE_25__* %10)
  %39 = call i32 @init_var(%struct.TYPE_25__* %11)
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %41 = call i32 @set_var_from_var(%struct.TYPE_25__* %40, %struct.TYPE_25__* %7)
  %42 = call i32 @set_var_from_var(%struct.TYPE_25__* @const_two, %struct.TYPE_25__* %11)
  br label %43

43:                                               ; preds = %46, %34
  %44 = call i32 @cmp_var(%struct.TYPE_25__* %7, i32* @const_zero_point_nine)
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @DEC_DIGITS, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sdiv i32 %51, 2
  %53 = sub nsw i32 %47, %52
  %54 = add nsw i32 %53, 8
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @NUMERIC_MIN_DISPLAY_SCALE, align 4
  %57 = call i32 @Max(i32 %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @sqrt_var(%struct.TYPE_25__* %7, %struct.TYPE_25__* %7, i32 %58)
  %60 = call i32 @mul_var(%struct.TYPE_25__* %11, %struct.TYPE_25__* @const_two, %struct.TYPE_25__* %11, i32 0)
  br label %43

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %65, %61
  %63 = call i32 @cmp_var(%struct.TYPE_25__* %7, i32* @const_one_point_one)
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = load i32, i32* %6, align 4
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @DEC_DIGITS, align 4
  %70 = mul nsw i32 %68, %69
  %71 = sdiv i32 %70, 2
  %72 = sub nsw i32 %66, %71
  %73 = add nsw i32 %72, 8
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @NUMERIC_MIN_DISPLAY_SCALE, align 4
  %76 = call i32 @Max(i32 %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @sqrt_var(%struct.TYPE_25__* %7, %struct.TYPE_25__* %7, i32 %77)
  %79 = call i32 @mul_var(%struct.TYPE_25__* %11, %struct.TYPE_25__* @const_two, %struct.TYPE_25__* %11, i32 0)
  br label %62

80:                                               ; preds = %62
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 8
  store i32 %82, i32* %12, align 4
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %84 = call i32 @sub_var(%struct.TYPE_25__* %7, %struct.TYPE_25__* @const_one, %struct.TYPE_25__* %83)
  %85 = call i32 @add_var(%struct.TYPE_25__* %7, %struct.TYPE_25__* @const_one, %struct.TYPE_25__* %10)
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @div_var_fast(%struct.TYPE_25__* %86, %struct.TYPE_25__* %10, %struct.TYPE_25__* %87, i32 %88, i32 1)
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %91 = call i32 @set_var_from_var(%struct.TYPE_25__* %90, %struct.TYPE_25__* %8)
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @mul_var(%struct.TYPE_25__* %92, %struct.TYPE_25__* %93, %struct.TYPE_25__* %7, i32 %94)
  %96 = call i32 @set_var_from_var(%struct.TYPE_25__* @const_one, %struct.TYPE_25__* %9)
  br label %97

97:                                               ; preds = %123, %80
  %98 = call i32 @add_var(%struct.TYPE_25__* %9, %struct.TYPE_25__* @const_two, %struct.TYPE_25__* %9)
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @mul_var(%struct.TYPE_25__* %8, %struct.TYPE_25__* %7, %struct.TYPE_25__* %8, i32 %99)
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @div_var_fast(%struct.TYPE_25__* %8, %struct.TYPE_25__* %9, %struct.TYPE_25__* %10, i32 %101, i32 1)
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  br label %124

107:                                              ; preds = %97
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %110 = call i32 @add_var(%struct.TYPE_25__* %108, %struct.TYPE_25__* %10, %struct.TYPE_25__* %109)
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %12, align 4
  %117 = mul nsw i32 %116, 2
  %118 = load i32, i32* @DEC_DIGITS, align 4
  %119 = sdiv i32 %117, %118
  %120 = sub nsw i32 %115, %119
  %121 = icmp slt i32 %112, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %107
  br label %124

123:                                              ; preds = %107
  br label %97

124:                                              ; preds = %122, %106
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @mul_var(%struct.TYPE_25__* %125, %struct.TYPE_25__* %11, %struct.TYPE_25__* %126, i32 %127)
  %129 = call i32 @free_var(%struct.TYPE_25__* %7)
  %130 = call i32 @free_var(%struct.TYPE_25__* %8)
  %131 = call i32 @free_var(%struct.TYPE_25__* %9)
  %132 = call i32 @free_var(%struct.TYPE_25__* %10)
  %133 = call i32 @free_var(%struct.TYPE_25__* %11)
  ret void
}

declare dso_local i32 @cmp_var(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @init_var(%struct.TYPE_25__*) #1

declare dso_local i32 @set_var_from_var(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @Max(i32, i32) #1

declare dso_local i32 @sqrt_var(%struct.TYPE_25__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @mul_var(%struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @sub_var(%struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @add_var(%struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @div_var_fast(%struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @free_var(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
