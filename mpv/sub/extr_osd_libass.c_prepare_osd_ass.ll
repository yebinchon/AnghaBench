; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_osd_libass.c_prepare_osd_ass.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_osd_libass.c_prepare_osd_ass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { %struct.mp_osd_render_opts* }
%struct.mp_osd_render_opts = type { i32, i32, %struct.osd_style_opts* }
%struct.osd_style_opts = type { i32 }
%struct.osd_object = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { double }
%struct.TYPE_6__ = type { double }

@.str = private unnamed_addr constant [4 x i8] c"OSD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.osd_state*, %struct.osd_object*)* @prepare_osd_ass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @prepare_osd_ass(%struct.osd_state* %0, %struct.osd_object* %1) #0 {
  %3 = alloca %struct.osd_state*, align 8
  %4 = alloca %struct.osd_object*, align 8
  %5 = alloca %struct.mp_osd_render_opts*, align 8
  %6 = alloca %struct.osd_style_opts, align 4
  %7 = alloca double, align 8
  %8 = alloca i32*, align 8
  store %struct.osd_state* %0, %struct.osd_state** %3, align 8
  store %struct.osd_object* %1, %struct.osd_object** %4, align 8
  %9 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %10 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %9, i32 0, i32 0
  %11 = load %struct.mp_osd_render_opts*, %struct.mp_osd_render_opts** %10, align 8
  store %struct.mp_osd_render_opts* %11, %struct.mp_osd_render_opts** %5, align 8
  %12 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %13 = load %struct.osd_object*, %struct.osd_object** %4, align 8
  %14 = load %struct.osd_object*, %struct.osd_object** %4, align 8
  %15 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %14, i32 0, i32 0
  %16 = call i32 @create_ass_track(%struct.osd_state* %12, %struct.osd_object* %13, %struct.TYPE_7__* %15)
  %17 = load %struct.mp_osd_render_opts*, %struct.mp_osd_render_opts** %5, align 8
  %18 = getelementptr inbounds %struct.mp_osd_render_opts, %struct.mp_osd_render_opts* %17, i32 0, i32 2
  %19 = load %struct.osd_style_opts*, %struct.osd_style_opts** %18, align 8
  %20 = bitcast %struct.osd_style_opts* %6 to i8*
  %21 = bitcast %struct.osd_style_opts* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = load %struct.mp_osd_render_opts*, %struct.mp_osd_render_opts** %5, align 8
  %23 = getelementptr inbounds %struct.mp_osd_render_opts, %struct.mp_osd_render_opts* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.osd_style_opts, %struct.osd_style_opts* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, %24
  store i32 %27, i32* %25, align 4
  %28 = load %struct.osd_object*, %struct.osd_object** %4, align 8
  %29 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load double, double* %32, align 8
  store double %33, double* %7, align 8
  %34 = load %struct.mp_osd_render_opts*, %struct.mp_osd_render_opts** %5, align 8
  %35 = getelementptr inbounds %struct.mp_osd_render_opts, %struct.mp_osd_render_opts* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %2
  %39 = load %struct.osd_object*, %struct.osd_object** %4, align 8
  %40 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load double, double* %41, align 8
  %43 = fdiv double 7.200000e+02, %42
  %44 = load double, double* %7, align 8
  %45 = fmul double %44, %43
  store double %45, double* %7, align 8
  br label %46

46:                                               ; preds = %38, %2
  %47 = load %struct.osd_object*, %struct.osd_object** %4, align 8
  %48 = getelementptr inbounds %struct.osd_object, %struct.osd_object* %47, i32 0, i32 0
  %49 = call i32* @get_style(%struct.TYPE_7__* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %49, i32** %8, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load double, double* %7, align 8
  %52 = call i32 @mp_ass_set_style(i32* %50, double %51, %struct.osd_style_opts* %6)
  %53 = load i32*, i32** %8, align 8
  ret i32* %53
}

declare dso_local i32 @create_ass_track(%struct.osd_state*, %struct.osd_object*, %struct.TYPE_7__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @get_style(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @mp_ass_set_style(i32*, double, %struct.osd_style_opts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
