; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_osd_libass.c_get_osd_bar_box.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_osd_libass.c_get_osd_bar_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { %struct.mp_osd_render_opts* }
%struct.mp_osd_render_opts = type { double, double, i32, i32, i32 }
%struct.osd_object = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { double, double }
%struct.TYPE_8__ = type { float, i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"progbar\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.osd_state*, %struct.osd_object*, float*, float*, float*, float*, float*)* @get_osd_bar_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_osd_bar_box(%struct.osd_state* %0, %struct.osd_object* %1, float* %2, float* %3, float* %4, float* %5, float* %6) #0 {
  %8 = alloca %struct.osd_state*, align 8
  %9 = alloca %struct.osd_object*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca %struct.mp_osd_render_opts*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca float, align 4
  store %struct.osd_state* %0, %struct.osd_state** %8, align 8
  store %struct.osd_object* %1, %struct.osd_object** %9, align 8
  store float* %2, float** %10, align 8
  store float* %3, float** %11, align 8
  store float* %4, float** %12, align 8
  store float* %5, float** %13, align 8
  store float* %6, float** %14, align 8
  %19 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %20 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %19, i32 0, i32 0
  %21 = load %struct.mp_osd_render_opts*, %struct.mp_osd_render_opts** %20, align 8
  store %struct.mp_osd_render_opts* %21, %struct.mp_osd_render_opts** %15, align 8
  %22 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %23 = load %struct.osd_object*, %struct.osd_object** %9, align 8
  %24 = load %struct.osd_object*, %struct.osd_object** %9, align 8
  %25 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %24, i32 0, i32 0
  %26 = call i32 @create_ass_track(%struct.osd_state* %22, %struct.osd_object* %23, %struct.TYPE_9__* %25)
  %27 = load %struct.osd_object*, %struct.osd_object** %9, align 8
  %28 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %16, align 8
  %31 = load %struct.osd_object*, %struct.osd_object** %9, align 8
  %32 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %31, i32 0, i32 0
  %33 = call %struct.TYPE_8__* @get_style(%struct.TYPE_9__* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %17, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %35 = icmp ne %struct.TYPE_8__* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %7
  %37 = load float*, float** %14, align 8
  store float 0.000000e+00, float* %37, align 4
  %38 = load float*, float** %13, align 8
  store float 0.000000e+00, float* %38, align 4
  %39 = load float*, float** %12, align 8
  store float 0.000000e+00, float* %39, align 4
  %40 = load float*, float** %11, align 8
  store float 0.000000e+00, float* %40, align 4
  %41 = load float*, float** %10, align 8
  store float 0.000000e+00, float* %41, align 4
  br label %141

42:                                               ; preds = %7
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load double, double* %45, align 8
  %47 = load %struct.mp_osd_render_opts*, %struct.mp_osd_render_opts** %15, align 8
  %48 = getelementptr inbounds %struct.mp_osd_render_opts, %struct.mp_osd_render_opts* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @mp_ass_set_style(%struct.TYPE_8__* %43, double %46, i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load double, double* %52, align 8
  %54 = load %struct.mp_osd_render_opts*, %struct.mp_osd_render_opts** %15, align 8
  %55 = getelementptr inbounds %struct.mp_osd_render_opts, %struct.mp_osd_render_opts* %54, i32 0, i32 0
  %56 = load double, double* %55, align 8
  %57 = fdiv double %56, 1.000000e+02
  %58 = fmul double %53, %57
  %59 = fptrunc double %58 to float
  %60 = load float*, float** %12, align 8
  store float %59, float* %60, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load double, double* %62, align 8
  %64 = load %struct.mp_osd_render_opts*, %struct.mp_osd_render_opts** %15, align 8
  %65 = getelementptr inbounds %struct.mp_osd_render_opts, %struct.mp_osd_render_opts* %64, i32 0, i32 1
  %66 = load double, double* %65, align 8
  %67 = fdiv double %66, 1.000000e+02
  %68 = fmul double %63, %67
  %69 = fptrunc double %68 to float
  %70 = load float*, float** %13, align 8
  store float %69, float* %70, align 4
  store float 3.125000e-02, float* %18, align 4
  %71 = load float*, float** %13, align 8
  %72 = load float, float* %71, align 4
  %73 = fpext float %72 to double
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load double, double* %75, align 8
  %77 = fdiv double %73, %76
  %78 = load float, float* %18, align 4
  %79 = fpext float %78 to double
  %80 = fdiv double %77, %79
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load float, float* %82, align 8
  %84 = fpext float %83 to double
  %85 = fmul double %84, %80
  %86 = fptrunc double %85 to float
  store float %86, float* %82, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load float, float* %88, align 8
  %90 = load float*, float** %13, align 8
  %91 = load float, float* %90, align 4
  %92 = fpext float %91 to double
  %93 = fdiv double %92, 5.200000e+00
  %94 = fptrunc double %93 to float
  %95 = call float @MPMIN(float %89, float %94)
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  store float %95, float* %97, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load float, float* %99, align 8
  %101 = load float*, float** %13, align 8
  %102 = load float, float* %101, align 4
  %103 = fpext float %102 to double
  %104 = fdiv double %103, 3.200000e+01
  %105 = fptrunc double %104 to float
  %106 = call float @MPMAX(float %100, float %105)
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  store float %106, float* %108, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  store i64 0, i64* %110, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  store i32 5, i32* %112, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load float, float* %114, align 8
  %116 = load float*, float** %14, align 8
  store float %115, float* %116, align 4
  %117 = load %struct.mp_osd_render_opts*, %struct.mp_osd_render_opts** %15, align 8
  %118 = getelementptr inbounds %struct.mp_osd_render_opts, %struct.mp_osd_render_opts* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load double, double* %121, align 8
  %123 = load float*, float** %12, align 8
  %124 = load float, float* %123, align 4
  %125 = load float*, float** %14, align 8
  %126 = load float, float* %125, align 4
  %127 = call float @get_align(i32 %119, double %122, float %124, float %126)
  %128 = load float*, float** %10, align 8
  store float %127, float* %128, align 4
  %129 = load %struct.mp_osd_render_opts*, %struct.mp_osd_render_opts** %15, align 8
  %130 = getelementptr inbounds %struct.mp_osd_render_opts, %struct.mp_osd_render_opts* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load double, double* %133, align 8
  %135 = load float*, float** %13, align 8
  %136 = load float, float* %135, align 4
  %137 = load float*, float** %14, align 8
  %138 = load float, float* %137, align 4
  %139 = call float @get_align(i32 %131, double %134, float %136, float %138)
  %140 = load float*, float** %11, align 8
  store float %139, float* %140, align 4
  br label %141

141:                                              ; preds = %42, %36
  ret void
}

declare dso_local i32 @create_ass_track(%struct.osd_state*, %struct.osd_object*, %struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_8__* @get_style(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @mp_ass_set_style(%struct.TYPE_8__*, double, i32) #1

declare dso_local float @MPMIN(float, float) #1

declare dso_local float @MPMAX(float, float) #1

declare dso_local float @get_align(i32, double, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
