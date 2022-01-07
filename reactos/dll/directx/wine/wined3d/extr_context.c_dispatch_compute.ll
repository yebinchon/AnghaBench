; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_dispatch_compute.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_dispatch_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.wined3d_device = type { i32 }
%struct.wined3d_state = type { i32* }
%struct.wined3d_dispatch_parameters = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.wined3d_direct_dispatch_parameters, %struct.wined3d_indirect_dispatch_parameters }
%struct.wined3d_direct_dispatch_parameters = type { i32, i32, i32 }
%struct.wined3d_indirect_dispatch_parameters = type { i64, %struct.wined3d_buffer* }
%struct.wined3d_buffer = type { i32 }
%struct.wined3d_gl_info = type { %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (...)* }
%struct.wined3d_context = type { %struct.wined3d_gl_info*, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Invalid context, skipping dispatch.\0A\00", align 1
@ARB_COMPUTE_SHADER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"OpenGL implementation does not support compute shaders.\0A\00", align 1
@WINED3D_SHADER_TYPE_COMPUTE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"No compute shader bound, skipping dispatch.\0A\00", align 1
@GL_DISPATCH_INDIRECT_BUFFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"dispatch compute\00", align 1
@GL_ALL_BARRIER_BITS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"glMemoryBarrier\00", align 1
@wined3d_settings = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dispatch_compute(%struct.wined3d_device* %0, %struct.wined3d_state* %1, %struct.wined3d_dispatch_parameters* %2) #0 {
  %4 = alloca %struct.wined3d_device*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca %struct.wined3d_dispatch_parameters*, align 8
  %7 = alloca %struct.wined3d_gl_info*, align 8
  %8 = alloca %struct.wined3d_context*, align 8
  %9 = alloca %struct.wined3d_indirect_dispatch_parameters*, align 8
  %10 = alloca %struct.wined3d_buffer*, align 8
  %11 = alloca %struct.wined3d_direct_dispatch_parameters*, align 8
  store %struct.wined3d_device* %0, %struct.wined3d_device** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store %struct.wined3d_dispatch_parameters* %2, %struct.wined3d_dispatch_parameters** %6, align 8
  %12 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %13 = call %struct.wined3d_context* @context_acquire(%struct.wined3d_device* %12, i32* null, i32 0)
  store %struct.wined3d_context* %13, %struct.wined3d_context** %8, align 8
  %14 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %15 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %20 = call i32 @context_release(%struct.wined3d_context* %19)
  %21 = call i32 @WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %127

22:                                               ; preds = %3
  %23 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %24 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %23, i32 0, i32 0
  %25 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %24, align 8
  store %struct.wined3d_gl_info* %25, %struct.wined3d_gl_info** %7, align 8
  %26 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %27 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @ARB_COMPUTE_SHADER, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %22
  %34 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %35 = call i32 @context_release(%struct.wined3d_context* %34)
  %36 = call i32 @FIXME(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %127

37:                                               ; preds = %22
  %38 = load %struct.wined3d_dispatch_parameters*, %struct.wined3d_dispatch_parameters** %6, align 8
  %39 = getelementptr inbounds %struct.wined3d_dispatch_parameters, %struct.wined3d_dispatch_parameters* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.wined3d_dispatch_parameters*, %struct.wined3d_dispatch_parameters** %6, align 8
  %44 = getelementptr inbounds %struct.wined3d_dispatch_parameters, %struct.wined3d_dispatch_parameters* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.wined3d_indirect_dispatch_parameters, %struct.wined3d_indirect_dispatch_parameters* %45, i32 0, i32 1
  %47 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %46, align 8
  %48 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %49 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %50 = call i32 @wined3d_buffer_load(%struct.wined3d_buffer* %47, %struct.wined3d_context* %48, %struct.wined3d_state* %49)
  br label %51

51:                                               ; preds = %42, %37
  %52 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %53 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %54 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %55 = call i32 @context_apply_compute_state(%struct.wined3d_context* %52, %struct.wined3d_device* %53, %struct.wined3d_state* %54)
  %56 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %57 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @WINED3D_SHADER_TYPE_COMPUTE, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %51
  %64 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %65 = call i32 @context_release(%struct.wined3d_context* %64)
  %66 = call i32 @WARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %127

67:                                               ; preds = %51
  %68 = load %struct.wined3d_dispatch_parameters*, %struct.wined3d_dispatch_parameters** %6, align 8
  %69 = getelementptr inbounds %struct.wined3d_dispatch_parameters, %struct.wined3d_dispatch_parameters* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %67
  %73 = load %struct.wined3d_dispatch_parameters*, %struct.wined3d_dispatch_parameters** %6, align 8
  %74 = getelementptr inbounds %struct.wined3d_dispatch_parameters, %struct.wined3d_dispatch_parameters* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store %struct.wined3d_indirect_dispatch_parameters* %75, %struct.wined3d_indirect_dispatch_parameters** %9, align 8
  %76 = load %struct.wined3d_indirect_dispatch_parameters*, %struct.wined3d_indirect_dispatch_parameters** %9, align 8
  %77 = getelementptr inbounds %struct.wined3d_indirect_dispatch_parameters, %struct.wined3d_indirect_dispatch_parameters* %76, i32 0, i32 1
  %78 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %77, align 8
  store %struct.wined3d_buffer* %78, %struct.wined3d_buffer** %10, align 8
  %79 = load i32, i32* @GL_DISPATCH_INDIRECT_BUFFER, align 4
  %80 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %10, align 8
  %81 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @glBindBuffer(i32 %79, i32 %82)
  %84 = call i32 @GL_EXTCALL(i32 %83)
  %85 = load %struct.wined3d_indirect_dispatch_parameters*, %struct.wined3d_indirect_dispatch_parameters** %9, align 8
  %86 = getelementptr inbounds %struct.wined3d_indirect_dispatch_parameters, %struct.wined3d_indirect_dispatch_parameters* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @glDispatchComputeIndirect(i32 %88)
  %90 = call i32 @GL_EXTCALL(i32 %89)
  %91 = load i32, i32* @GL_DISPATCH_INDIRECT_BUFFER, align 4
  %92 = call i32 @glBindBuffer(i32 %91, i32 0)
  %93 = call i32 @GL_EXTCALL(i32 %92)
  br label %109

94:                                               ; preds = %67
  %95 = load %struct.wined3d_dispatch_parameters*, %struct.wined3d_dispatch_parameters** %6, align 8
  %96 = getelementptr inbounds %struct.wined3d_dispatch_parameters, %struct.wined3d_dispatch_parameters* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store %struct.wined3d_direct_dispatch_parameters* %97, %struct.wined3d_direct_dispatch_parameters** %11, align 8
  %98 = load %struct.wined3d_direct_dispatch_parameters*, %struct.wined3d_direct_dispatch_parameters** %11, align 8
  %99 = getelementptr inbounds %struct.wined3d_direct_dispatch_parameters, %struct.wined3d_direct_dispatch_parameters* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.wined3d_direct_dispatch_parameters*, %struct.wined3d_direct_dispatch_parameters** %11, align 8
  %102 = getelementptr inbounds %struct.wined3d_direct_dispatch_parameters, %struct.wined3d_direct_dispatch_parameters* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.wined3d_direct_dispatch_parameters*, %struct.wined3d_direct_dispatch_parameters** %11, align 8
  %105 = getelementptr inbounds %struct.wined3d_direct_dispatch_parameters, %struct.wined3d_direct_dispatch_parameters* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @glDispatchCompute(i32 %100, i32 %103, i32 %106)
  %108 = call i32 @GL_EXTCALL(i32 %107)
  br label %109

109:                                              ; preds = %94, %72
  %110 = call i32 @checkGLcall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i32, i32* @GL_ALL_BARRIER_BITS, align 4
  %112 = call i32 @glMemoryBarrier(i32 %111)
  %113 = call i32 @GL_EXTCALL(i32 %112)
  %114 = call i32 @checkGLcall(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %115 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wined3d_settings, i32 0, i32 0), align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %109
  %118 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %119 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32 (...)*, i32 (...)** %121, align 8
  %123 = call i32 (...) %122()
  br label %124

124:                                              ; preds = %117, %109
  %125 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %126 = call i32 @context_release(%struct.wined3d_context* %125)
  br label %127

127:                                              ; preds = %124, %63, %33, %18
  ret void
}

declare dso_local %struct.wined3d_context* @context_acquire(%struct.wined3d_device*, i32*, i32) #1

declare dso_local i32 @context_release(%struct.wined3d_context*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @wined3d_buffer_load(%struct.wined3d_buffer*, %struct.wined3d_context*, %struct.wined3d_state*) #1

declare dso_local i32 @context_apply_compute_state(%struct.wined3d_context*, %struct.wined3d_device*, %struct.wined3d_state*) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glBindBuffer(i32, i32) #1

declare dso_local i32 @glDispatchComputeIndirect(i32) #1

declare dso_local i32 @glDispatchCompute(i32, i32, i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @glMemoryBarrier(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
