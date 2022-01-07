; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_shader_cache.c_gl_sc_dispatch_compute.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_shader_cache.c_gl_sc_dispatch_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_cache = type { %struct.TYPE_6__*, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, %struct.ra_renderpass_run_params*)* }
%struct.ra_renderpass_run_params = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.timer_pool* }
%struct.timer_pool = type { i32 }
%struct.mp_pass_perf = type { i32 }

@RA_RENDERPASS_TYPE_COMPUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gl_sc_dispatch_compute(%struct.gl_shader_cache* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mp_pass_perf, align 4
  %6 = alloca %struct.gl_shader_cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.timer_pool*, align 8
  %11 = alloca %struct.ra_renderpass_run_params, align 4
  store %struct.gl_shader_cache* %0, %struct.gl_shader_cache** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.timer_pool* null, %struct.timer_pool** %10, align 8
  %12 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %6, align 8
  %13 = load i32, i32* @RA_RENDERPASS_TYPE_COMPUTE, align 4
  %14 = call i32 @gl_sc_generate(%struct.gl_shader_cache* %12, i32 %13, i32* null, i32* null, i32 0, i32 0)
  %15 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %6, align 8
  %16 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %63

20:                                               ; preds = %4
  %21 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %6, align 8
  %22 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load %struct.timer_pool*, %struct.timer_pool** %24, align 8
  store %struct.timer_pool* %25, %struct.timer_pool** %10, align 8
  %26 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %11, i32 0, i32 0
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %11, i32 0, i32 1
  %29 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %6, align 8
  %30 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %28, align 4
  %34 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %11, i32 0, i32 2
  %35 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %6, align 8
  %36 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %34, align 4
  %38 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %11, i32 0, i32 3
  %39 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %6, align 8
  %40 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %38, align 4
  %42 = getelementptr inbounds %struct.ra_renderpass_run_params, %struct.ra_renderpass_run_params* %11, i32 0, i32 4
  %43 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %6, align 8
  %44 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %42, align 4
  %48 = load %struct.timer_pool*, %struct.timer_pool** %10, align 8
  %49 = call i32 @timer_pool_start(%struct.timer_pool* %48)
  %50 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %6, align 8
  %51 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_6__*, %struct.ra_renderpass_run_params*)*, i32 (%struct.TYPE_6__*, %struct.ra_renderpass_run_params*)** %55, align 8
  %57 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %6, align 8
  %58 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = call i32 %56(%struct.TYPE_6__* %59, %struct.ra_renderpass_run_params* %11)
  %61 = load %struct.timer_pool*, %struct.timer_pool** %10, align 8
  %62 = call i32 @timer_pool_stop(%struct.timer_pool* %61)
  br label %63

63:                                               ; preds = %20, %19
  %64 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %6, align 8
  %65 = call i32 @gl_sc_reset(%struct.gl_shader_cache* %64)
  %66 = load %struct.timer_pool*, %struct.timer_pool** %10, align 8
  %67 = call i32 @timer_pool_measure(%struct.timer_pool* %66)
  %68 = getelementptr inbounds %struct.mp_pass_perf, %struct.mp_pass_perf* %5, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.mp_pass_perf, %struct.mp_pass_perf* %5, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  ret i32 %70
}

declare dso_local i32 @gl_sc_generate(%struct.gl_shader_cache*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @timer_pool_start(%struct.timer_pool*) #1

declare dso_local i32 @timer_pool_stop(%struct.timer_pool*) #1

declare dso_local i32 @gl_sc_reset(%struct.gl_shader_cache*) #1

declare dso_local i32 @timer_pool_measure(%struct.timer_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
