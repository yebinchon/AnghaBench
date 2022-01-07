; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_update_tex_unit_map.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_update_tex_unit_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.wined3d_state = type { i32 }

@MAX_COMBINED_SAMPLERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*)* @context_update_tex_unit_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_update_tex_unit_map(%struct.wined3d_context* %0, %struct.wined3d_state* %1) #0 {
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca %struct.wined3d_state*, align 8
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %4, align 8
  %8 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %9 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %8, i32 0, i32 0
  %10 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  store %struct.wined3d_gl_info* %10, %struct.wined3d_gl_info** %5, align 8
  %11 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %12 = call i64 @use_vs(%struct.wined3d_state* %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %14 = call i64 @use_ps(%struct.wined3d_state* %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %19 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %20 = call i32 @context_update_fixed_function_usage_map(%struct.wined3d_context* %18, %struct.wined3d_state* %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %23 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MAX_COMBINED_SAMPLERS, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %48

29:                                               ; preds = %21
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %34 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %35 = call i32 @context_map_psamplers(%struct.wined3d_context* %33, %struct.wined3d_state* %34)
  br label %40

36:                                               ; preds = %29
  %37 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %38 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %39 = call i32 @context_map_fixed_function_samplers(%struct.wined3d_context* %37, %struct.wined3d_state* %38)
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.wined3d_state*, %struct.wined3d_state** %4, align 8
  %47 = call i32 @context_map_vsamplers(%struct.wined3d_context* %44, i64 %45, %struct.wined3d_state* %46)
  br label %48

48:                                               ; preds = %28, %43, %40
  ret void
}

declare dso_local i64 @use_vs(%struct.wined3d_state*) #1

declare dso_local i64 @use_ps(%struct.wined3d_state*) #1

declare dso_local i32 @context_update_fixed_function_usage_map(%struct.wined3d_context*, %struct.wined3d_state*) #1

declare dso_local i32 @context_map_psamplers(%struct.wined3d_context*, %struct.wined3d_state*) #1

declare dso_local i32 @context_map_fixed_function_samplers(%struct.wined3d_context*, %struct.wined3d_state*) #1

declare dso_local i32 @context_map_vsamplers(%struct.wined3d_context*, i64, %struct.wined3d_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
