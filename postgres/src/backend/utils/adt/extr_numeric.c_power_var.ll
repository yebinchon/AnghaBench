; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_power_var.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_power_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64, i32 }

@NUMERIC_MIN_SIG_DIGITS = common dso_local global i32 0, align 4
@NUMERIC_MIN_DISPLAY_SCALE = common dso_local global i32 0, align 4
@NUMERIC_MAX_DISPLAY_SCALE = common dso_local global i32 0, align 4
@const_zero = common dso_local global i32 0, align 4
@NUMERIC_MAX_RESULT_SCALE = common dso_local global double 0.000000e+00, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"value overflows numeric format\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*)* @power_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @power_var(%struct.TYPE_21__* %0, %struct.TYPE_21__* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__, align 8
  %8 = alloca %struct.TYPE_21__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %6, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  %27 = icmp sle i64 %22, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %19, %3
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %30 = call i64 @numericvar_to_int64(%struct.TYPE_21__* %29, i64* %13)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %28
  %33 = load i64, i64* %13, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %13, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %32
  %40 = load i32, i32* @NUMERIC_MIN_SIG_DIGITS, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @Max(i32 %41, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @NUMERIC_MIN_DISPLAY_SCALE, align 4
  %48 = call i32 @Max(i32 %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @NUMERIC_MAX_DISPLAY_SCALE, align 4
  %51 = call i32 @Min(i32 %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @power_var_int(%struct.TYPE_21__* %52, i32 %53, %struct.TYPE_21__* %54, i32 %55)
  br label %144

57:                                               ; preds = %32
  br label %58

58:                                               ; preds = %57, %28
  br label %59

59:                                               ; preds = %58, %19
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %61 = call i64 @cmp_var(%struct.TYPE_21__* %60, i32* @const_zero)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %65 = call i32 @set_var_from_var(i32* @const_zero, %struct.TYPE_21__* %64)
  %66 = load i32, i32* @NUMERIC_MIN_SIG_DIGITS, align 4
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  br label %144

69:                                               ; preds = %59
  %70 = call i32 @init_var(%struct.TYPE_21__* %7)
  %71 = call i32 @init_var(%struct.TYPE_21__* %8)
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %73 = call i32 @estimate_ln_dweight(%struct.TYPE_21__* %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 8, %74
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @NUMERIC_MIN_DISPLAY_SCALE, align 4
  %78 = call i32 @Max(i32 %76, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @NUMERIC_MAX_DISPLAY_SCALE, align 4
  %81 = call i32 @Min(i32 %79, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @ln_var(%struct.TYPE_21__* %82, %struct.TYPE_21__* %7, i32 %83)
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @mul_var(%struct.TYPE_21__* %7, %struct.TYPE_21__* %85, %struct.TYPE_21__* %8, i32 %86)
  %88 = call double @numericvar_to_double_no_overflow(%struct.TYPE_21__* %8)
  store double %88, double* %12, align 8
  %89 = load double, double* %12, align 8
  %90 = call double @Abs(double %89)
  %91 = load double, double* @NUMERIC_MAX_RESULT_SCALE, align 8
  %92 = fmul double %91, 3.010000e+00
  %93 = fcmp ogt double %90, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %69
  %95 = load i32, i32* @ERROR, align 4
  %96 = load i32, i32* @ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE, align 4
  %97 = call i32 @errcode(i32 %96)
  %98 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %99 = call i32 @ereport(i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %94, %69
  %101 = load double, double* %12, align 8
  %102 = fmul double %101, 0x3FDBCB7B1526E511
  store double %102, double* %12, align 8
  %103 = load i32, i32* @NUMERIC_MIN_SIG_DIGITS, align 4
  %104 = load double, double* %12, align 8
  %105 = fptosi double %104 to i32
  %106 = sub nsw i32 %103, %105
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @Max(i32 %107, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @Max(i32 %112, i32 %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @NUMERIC_MIN_DISPLAY_SCALE, align 4
  %119 = call i32 @Max(i32 %117, i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @NUMERIC_MAX_DISPLAY_SCALE, align 4
  %122 = call i32 @Min(i32 %120, i32 %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load double, double* %12, align 8
  %125 = fptosi double %124 to i32
  %126 = add nsw i32 %123, %125
  %127 = load i32, i32* %9, align 4
  %128 = sub nsw i32 %126, %127
  %129 = add nsw i32 %128, 8
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @NUMERIC_MIN_DISPLAY_SCALE, align 4
  %132 = call i32 @Max(i32 %130, i32 %131)
  store i32 %132, i32* %11, align 4
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @ln_var(%struct.TYPE_21__* %133, %struct.TYPE_21__* %7, i32 %134)
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @mul_var(%struct.TYPE_21__* %7, %struct.TYPE_21__* %136, %struct.TYPE_21__* %8, i32 %137)
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @exp_var(%struct.TYPE_21__* %8, %struct.TYPE_21__* %139, i32 %140)
  %142 = call i32 @free_var(%struct.TYPE_21__* %8)
  %143 = call i32 @free_var(%struct.TYPE_21__* %7)
  br label %144

144:                                              ; preds = %100, %63, %39
  ret void
}

declare dso_local i64 @numericvar_to_int64(%struct.TYPE_21__*, i64*) #1

declare dso_local i32 @Max(i32, i32) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @power_var_int(%struct.TYPE_21__*, i32, %struct.TYPE_21__*, i32) #1

declare dso_local i64 @cmp_var(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @set_var_from_var(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @init_var(%struct.TYPE_21__*) #1

declare dso_local i32 @estimate_ln_dweight(%struct.TYPE_21__*) #1

declare dso_local i32 @ln_var(%struct.TYPE_21__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @mul_var(%struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32) #1

declare dso_local double @numericvar_to_double_no_overflow(%struct.TYPE_21__*) #1

declare dso_local double @Abs(double) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @exp_var(%struct.TYPE_21__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @free_var(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
