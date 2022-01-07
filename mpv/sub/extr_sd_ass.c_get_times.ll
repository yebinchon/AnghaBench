; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_sd_ass.c_get_times.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_sd_ass.c_get_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.sd_ass_priv* }
%struct.sd_ass_priv = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.sd_times = type { double, double }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@UNKNOWN_DURATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ double, double } (%struct.sd*, double)* @get_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { double, double } @get_times(%struct.sd* %0, double %1) #0 {
  %3 = alloca %struct.sd_times, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.sd_ass_priv*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store %struct.sd* %0, %struct.sd** %4, align 8
  store double %1, double* %5, align 8
  %13 = load %struct.sd*, %struct.sd** %4, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 0
  %15 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %14, align 8
  store %struct.sd_ass_priv* %15, %struct.sd_ass_priv** %6, align 8
  %16 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %6, align 8
  %17 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.sd_times, %struct.sd_times* %3, i32 0, i32 0
  %20 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %20, double* %19, align 8
  %21 = getelementptr inbounds %struct.sd_times, %struct.sd_times* %3, i32 0, i32 1
  %22 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %22, double* %21, align 8
  %23 = load double, double* %5, align 8
  %24 = load double, double* @MP_NOPTS_VALUE, align 8
  %25 = fcmp oeq double %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load %struct.sd_ass_priv*, %struct.sd_ass_priv** %6, align 8
  %28 = getelementptr inbounds %struct.sd_ass_priv, %struct.sd_ass_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %2
  br label %120

32:                                               ; preds = %26
  %33 = load %struct.sd*, %struct.sd** %4, align 8
  %34 = load double, double* %5, align 8
  %35 = call i64 @find_timestamp(%struct.sd* %33, double %34)
  store i64 %35, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %116, %32
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %119

42:                                               ; preds = %36
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %10, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %49, %52
  br i1 %53, label %54, label %115

54:                                               ; preds = %42
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = icmp slt i64 %55, %62
  br i1 %63, label %64, label %115

64:                                               ; preds = %54
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sitofp i64 %67 to double
  %69 = fdiv double %68, 1.000000e+03
  store double %69, double* %11, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @UNKNOWN_DURATION, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %64
  %76 = load double, double* @MP_NOPTS_VALUE, align 8
  br label %87

77:                                               ; preds = %64
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = sitofp i64 %84 to double
  %86 = fdiv double %85, 1.000000e+03
  br label %87

87:                                               ; preds = %77, %75
  %88 = phi double [ %76, %75 ], [ %86, %77 ]
  store double %88, double* %12, align 8
  %89 = getelementptr inbounds %struct.sd_times, %struct.sd_times* %3, i32 0, i32 0
  %90 = load double, double* %89, align 8
  %91 = load double, double* @MP_NOPTS_VALUE, align 8
  %92 = fcmp oeq double %90, %91
  br i1 %92, label %98, label %93

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.sd_times, %struct.sd_times* %3, i32 0, i32 0
  %95 = load double, double* %94, align 8
  %96 = load double, double* %11, align 8
  %97 = fcmp ogt double %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %93, %87
  %99 = load double, double* %11, align 8
  %100 = getelementptr inbounds %struct.sd_times, %struct.sd_times* %3, i32 0, i32 0
  store double %99, double* %100, align 8
  br label %101

101:                                              ; preds = %98, %93
  %102 = getelementptr inbounds %struct.sd_times, %struct.sd_times* %3, i32 0, i32 1
  %103 = load double, double* %102, align 8
  %104 = load double, double* @MP_NOPTS_VALUE, align 8
  %105 = fcmp oeq double %103, %104
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.sd_times, %struct.sd_times* %3, i32 0, i32 1
  %108 = load double, double* %107, align 8
  %109 = load double, double* %12, align 8
  %110 = fcmp olt double %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %106, %101
  %112 = load double, double* %12, align 8
  %113 = getelementptr inbounds %struct.sd_times, %struct.sd_times* %3, i32 0, i32 1
  store double %112, double* %113, align 8
  br label %114

114:                                              ; preds = %111, %106
  br label %115

115:                                              ; preds = %114, %54, %42
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %36

119:                                              ; preds = %36
  br label %120

120:                                              ; preds = %119, %31
  %121 = bitcast %struct.sd_times* %3 to { double, double }*
  %122 = load { double, double }, { double, double }* %121, align 8
  ret { double, double } %122
}

declare dso_local i64 @find_timestamp(%struct.sd*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
