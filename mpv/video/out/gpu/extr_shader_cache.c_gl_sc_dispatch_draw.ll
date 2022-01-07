; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_shader_cache.c_gl_sc_dispatch_draw.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_shader_cache.c_gl_sc_dispatch_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_cache = type { %struct.TYPE_10__*, %struct.TYPE_8__*, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*, %struct.ra_renderpass_run_params*)* }
%struct.ra_renderpass_run_params = type { i8*, i64, %struct.mp_rect, %struct.mp_rect, %struct.ra_tex*, i32, i32, i32, i32 }
%struct.mp_rect = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.timer_pool* }
%struct.timer_pool = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ra_tex = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.ra_renderpass_input = type { i32 }
%struct.mp_pass_perf = type { i32 }

@RA_RENDERPASS_TYPE_RASTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gl_sc_dispatch_draw(%struct.gl_shader_cache* %0, %struct.ra_tex* %1, i32 %2, %struct.ra_renderpass_input* %3, i32 %4, i64 %5, i8* %6, i64 %7) #0 {
  %9 = alloca %struct.mp_pass_perf, align 4
  %10 = alloca %struct.gl_shader_cache*, align 8
  %11 = alloca %struct.ra_tex*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ra_renderpass_input*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.timer_pool*, align 8
  %19 = alloca %struct.mp_rect, align 4
  %20 = alloca %struct.ra_renderpass_run_params, align 8
  store %struct.gl_shader_cache* %0, %struct.gl_shader_cache** %10, align 8
  store %struct.ra_tex* %1, %struct.ra_tex** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.ra_renderpass_input* %3, %struct.ra_renderpass_input** %13, align 8
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  store %struct.timer_pool* null, %struct.timer_pool** %18, align 8
  %21 = load i32, i32* %12, align 4
  %22 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %10, align 8
  %23 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %10, align 8
  %26 = load i32, i32* @RA_RENDERPASS_TYPE_RASTER, align 4
  %27 = load %struct.ra_tex*, %struct.ra_tex** %11, align 8
  %28 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %13, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load i64, i64* %15, align 8
  %34 = call i32 @gl_sc_generate(%struct.gl_shader_cache* %25, i32 %26, i32 %30, %struct.ra_renderpass_input* %31, i32 %32, i64 %33)
  %35 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %10, align 8
  %36 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = icmp ne %struct.TYPE_8__* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %8
  br label %105

40:                                               ; preds = %8
  %41 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %10, align 8
  %42 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load %struct.timer_pool*, %struct.timer_pool** %44, align 8
  store %struct.timer_pool* %45, %struct.timer_pool** %18, align 8
  %46 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %19, i32 0, i32 0
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %19, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %19, i32 0, i32 2
  %49 = load %struct.ra_tex*, %struct.ra_tex** %11, align 8
  %50 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %48, align 4
  %53 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %19, i32 0, i32 3
  %54 = load %struct.ra_tex*, %struct.ra_tex** %11, align 8
  %55 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %53, align 4
  %58 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %20, i32 0, i32 0
  %59 = load i8*, i8** %16, align 8
  store i8* %59, i8** %58, align 8
  %60 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %20, i32 0, i32 1
  %61 = load i64, i64* %17, align 8
  store i64 %61, i64* %60, align 8
  %62 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %20, i32 0, i32 2
  %63 = bitcast %struct.mp_rect* %62 to i8*
  %64 = bitcast %struct.mp_rect* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 4 %64, i64 16, i1 false)
  %65 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %20, i32 0, i32 3
  %66 = bitcast %struct.mp_rect* %65 to i8*
  %67 = bitcast %struct.mp_rect* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 4 %67, i64 16, i1 false)
  %68 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %20, i32 0, i32 4
  %69 = load %struct.ra_tex*, %struct.ra_tex** %11, align 8
  store %struct.ra_tex* %69, %struct.ra_tex** %68, align 8
  %70 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %20, i32 0, i32 5
  %71 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %10, align 8
  %72 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %71, i32 0, i32 1
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %70, align 8
  %76 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %20, i32 0, i32 6
  %77 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %10, align 8
  %78 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %76, align 4
  %80 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %20, i32 0, i32 7
  %81 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %10, align 8
  %82 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %80, align 8
  %84 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %20, i32 0, i32 8
  %85 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %10, align 8
  %86 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %85, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %84, align 4
  %90 = load %struct.timer_pool*, %struct.timer_pool** %18, align 8
  %91 = call i32 @timer_pool_start(%struct.timer_pool* %90)
  %92 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %10, align 8
  %93 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %92, i32 0, i32 0
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32 (%struct.TYPE_10__*, %struct.ra_renderpass_run_params*)*, i32 (%struct.TYPE_10__*, %struct.ra_renderpass_run_params*)** %97, align 8
  %99 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %10, align 8
  %100 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = call i32 %98(%struct.TYPE_10__* %101, %struct.ra_renderpass_run_params* %20)
  %103 = load %struct.timer_pool*, %struct.timer_pool** %18, align 8
  %104 = call i32 @timer_pool_stop(%struct.timer_pool* %103)
  br label %105

105:                                              ; preds = %40, %39
  %106 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %10, align 8
  %107 = call i32 @gl_sc_reset(%struct.gl_shader_cache* %106)
  %108 = load %struct.timer_pool*, %struct.timer_pool** %18, align 8
  %109 = call i32 @timer_pool_measure(%struct.timer_pool* %108)
  %110 = getelementptr inbounds %struct.mp_pass_perf, %struct.mp_pass_perf* %9, i32 0, i32 0
  store i32 %109, i32* %110, align 4
  %111 = getelementptr inbounds %struct.mp_pass_perf, %struct.mp_pass_perf* %9, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  ret i32 %112
}

declare dso_local i32 @gl_sc_generate(%struct.gl_shader_cache*, i32, i32, %struct.ra_renderpass_input*, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timer_pool_start(%struct.timer_pool*) #1

declare dso_local i32 @timer_pool_stop(%struct.timer_pool*) #1

declare dso_local i32 @gl_sc_reset(%struct.gl_shader_cache*) #1

declare dso_local i32 @timer_pool_measure(%struct.timer_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
