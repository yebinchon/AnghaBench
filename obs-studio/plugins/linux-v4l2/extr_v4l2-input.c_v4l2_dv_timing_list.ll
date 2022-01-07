; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_v4l2_dv_timing_list.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_v4l2_dv_timing_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_dv_timings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { double, double, double, double, double, double, double, double, double, i64, i64, i64, i64 }
%struct.dstr = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"LeaveUnchanged\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%ux%u%c %.2f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @v4l2_dv_timing_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l2_dv_timing_list(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.v4l2_dv_timings, align 8
  %6 = alloca %struct.dstr, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = call i32 @dstr_init(%struct.dstr* %6)
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @obs_property_list_clear(i32* %13)
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @obs_module_text(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @obs_property_list_add_int(i32* %15, i32 %16, i32 -1)
  br label %18

18:                                               ; preds = %23, %2
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @v4l2_enum_dv_timing(i32 %19, %struct.v4l2_dv_timings* %5, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %107

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %5, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 10
  %26 = load i64, i64* %25, align 8
  %27 = sitofp i64 %26 to double
  %28 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %5, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load double, double* %29, align 8
  %31 = fadd double %27, %30
  %32 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %5, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load double, double* %33, align 8
  %35 = fadd double %31, %34
  %36 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %5, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load double, double* %37, align 8
  %39 = fadd double %35, %38
  %40 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %5, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load double, double* %41, align 8
  %43 = fadd double %39, %42
  %44 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %5, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  %46 = load double, double* %45, align 8
  %47 = fadd double %43, %46
  %48 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %5, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 5
  %50 = load double, double* %49, align 8
  %51 = fadd double %47, %50
  store double %51, double* %8, align 8
  %52 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %5, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 11
  %54 = load i64, i64* %53, align 8
  %55 = sitofp i64 %54 to double
  %56 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %5, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 6
  %58 = load double, double* %57, align 8
  %59 = fadd double %55, %58
  %60 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %5, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 7
  %62 = load double, double* %61, align 8
  %63 = fadd double %59, %62
  %64 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %5, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 8
  %66 = load double, double* %65, align 8
  %67 = fadd double %63, %66
  store double %67, double* %9, align 8
  %68 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %5, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 9
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, float 2.000000e+00, float 1.000000e+00
  %74 = fpext float %73 to double
  store double %74, double* %10, align 8
  %75 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %5, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 12
  %77 = load i64, i64* %76, align 8
  %78 = sitofp i64 %77 to double
  %79 = load double, double* %9, align 8
  %80 = load double, double* %8, align 8
  %81 = load double, double* %10, align 8
  %82 = fdiv double %80, %81
  %83 = fmul double %79, %82
  %84 = fdiv double %78, %83
  store double %84, double* %11, align 8
  %85 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %5, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 11
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %5, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 10
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %5, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 9
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 105, i32 112
  %97 = trunc i32 %96 to i8
  %98 = load double, double* %11, align 8
  %99 = call i32 @dstr_printf(%struct.dstr* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %87, i64 %90, i8 signext %97, double %98)
  %100 = load i32*, i32** %4, align 8
  %101 = getelementptr inbounds %struct.dstr, %struct.dstr* %6, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @obs_property_list_add_int(i32* %100, i32 %102, i32 %103)
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %18

107:                                              ; preds = %18
  %108 = call i32 @dstr_free(%struct.dstr* %6)
  ret void
}

declare dso_local i32 @dstr_init(%struct.dstr*) #1

declare dso_local i32 @obs_property_list_clear(i32*) #1

declare dso_local i32 @obs_property_list_add_int(i32*, i32, i32) #1

declare dso_local i32 @obs_module_text(i8*) #1

declare dso_local i64 @v4l2_enum_dv_timing(i32, %struct.v4l2_dv_timings*, i32) #1

declare dso_local i32 @dstr_printf(%struct.dstr*, i8*, i64, i64, i8 signext, double) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
