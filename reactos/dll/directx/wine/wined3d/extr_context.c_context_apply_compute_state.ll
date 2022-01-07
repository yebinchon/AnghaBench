; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_apply_compute_state.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_apply_compute_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32*, i32, i32, i32, i32, i64, i64, %struct.wined3d_gl_info*, %struct.StateEntry* }
%struct.wined3d_gl_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.StateEntry = type { i32 (%struct.wined3d_context*, %struct.wined3d_state*, i32)* }
%struct.wined3d_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, %struct.wined3d_context*, %struct.wined3d_state*)* }
%struct.wined3d_state = type { i32*, i32* }

@WINED3D_SHADER_TYPE_COMPUTE = common dso_local global i32 0, align 4
@WINED3D_PIPELINE_COMPUTE = common dso_local global i64 0, align 8
@STATE_COMPUTE_OFFSET = common dso_local global i32 0, align 4
@CHAR_BIT = common dso_local global i32 0, align 4
@GL_FRAMEBUFFER = common dso_local global i32 0, align 4
@STATE_FRAMEBUFFER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_device*, %struct.wined3d_state*)* @context_apply_compute_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_apply_compute_state(%struct.wined3d_context* %0, %struct.wined3d_device* %1, %struct.wined3d_state* %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_device*, align 8
  %6 = alloca %struct.wined3d_state*, align 8
  %7 = alloca %struct.StateEntry*, align 8
  %8 = alloca %struct.wined3d_gl_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_device* %1, %struct.wined3d_device** %5, align 8
  store %struct.wined3d_state* %2, %struct.wined3d_state** %6, align 8
  %13 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %14 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %13, i32 0, i32 8
  %15 = load %struct.StateEntry*, %struct.StateEntry** %14, align 8
  store %struct.StateEntry* %15, %struct.StateEntry** %7, align 8
  %16 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %17 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %16, i32 0, i32 7
  %18 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  store %struct.wined3d_gl_info* %18, %struct.wined3d_gl_info** %8, align 8
  %19 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %20 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %21 = load i32, i32* @WINED3D_SHADER_TYPE_COMPUTE, align 4
  %22 = shl i32 1, %21
  %23 = call i32 @context_load_shader_resources(%struct.wined3d_context* %19, %struct.wined3d_state* %20, i32 %22)
  %24 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %25 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %26 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @WINED3D_SHADER_TYPE_COMPUTE, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %33 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @WINED3D_PIPELINE_COMPUTE, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @context_load_unordered_access_resources(%struct.wined3d_context* %24, i32 %31, i32 %37)
  store i32 0, i32* %10, align 4
  %39 = load i32, i32* @STATE_COMPUTE_OFFSET, align 4
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %80, %3
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %43 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @ARRAY_SIZE(i32* %44)
  %46 = icmp ult i32 %41, %45
  br i1 %46, label %47, label %83

47:                                               ; preds = %40
  %48 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %49 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %58, %47
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @wined3d_bit_scan(i32* %11)
  %61 = add i32 %59, %60
  store i32 %61, i32* %12, align 4
  %62 = load %struct.StateEntry*, %struct.StateEntry** %7, align 8
  %63 = load i32, i32* %12, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %62, i64 %64
  %66 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %65, i32 0, i32 0
  %67 = load i32 (%struct.wined3d_context*, %struct.wined3d_state*, i32)*, i32 (%struct.wined3d_context*, %struct.wined3d_state*, i32)** %66, align 8
  %68 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %69 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 %67(%struct.wined3d_context* %68, %struct.wined3d_state* %69, i32 %70)
  br label %55

72:                                               ; preds = %55
  %73 = load i32, i32* @CHAR_BIT, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 4, %74
  %76 = load i32, i32* %9, align 4
  %77 = zext i32 %76 to i64
  %78 = add i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %10, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %40

83:                                               ; preds = %40
  %84 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %85 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @memset(i32* %86, i32 0, i32 4)
  %88 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %89 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @WINED3D_SHADER_TYPE_COMPUTE, align 4
  %92 = shl i32 1, %91
  %93 = and i32 %90, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %83
  %96 = load %struct.wined3d_device*, %struct.wined3d_device** %5, align 8
  %97 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32 (i32, %struct.wined3d_context*, %struct.wined3d_state*)*, i32 (i32, %struct.wined3d_context*, %struct.wined3d_state*)** %99, align 8
  %101 = load %struct.wined3d_device*, %struct.wined3d_device** %5, align 8
  %102 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %105 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %106 = call i32 %100(i32 %103, %struct.wined3d_context* %104, %struct.wined3d_state* %105)
  %107 = load i32, i32* @WINED3D_SHADER_TYPE_COMPUTE, align 4
  %108 = shl i32 1, %107
  %109 = xor i32 %108, -1
  %110 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %111 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %95, %83
  %115 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %116 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %139

119:                                              ; preds = %114
  %120 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %121 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %122 = load i32, i32* @WINED3D_SHADER_TYPE_COMPUTE, align 4
  %123 = call i32 @context_bind_shader_resources(%struct.wined3d_context* %120, %struct.wined3d_state* %121, i32 %122)
  %124 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %125 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %124, i32 0, i32 6
  store i64 0, i64* %125, align 8
  %126 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %127 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %131 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %129, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %119
  %136 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %137 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %136, i32 0, i32 2
  store i32 1, i32* %137, align 4
  br label %138

138:                                              ; preds = %135, %119
  br label %139

139:                                              ; preds = %138, %114
  %140 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %141 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %164

144:                                              ; preds = %139
  %145 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %146 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %147 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* @WINED3D_SHADER_TYPE_COMPUTE, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %154 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* @WINED3D_PIPELINE_COMPUTE, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @context_bind_unordered_access_views(%struct.wined3d_context* %145, i32 %152, i32 %158)
  %160 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %161 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %160, i32 0, i32 5
  store i64 0, i64* %161, align 8
  %162 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %163 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %162, i32 0, i32 3
  store i32 1, i32* %163, align 8
  br label %164

164:                                              ; preds = %144, %139
  %165 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %166 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %167 = call i32 @context_bind_fbo(%struct.wined3d_context* %165, i32 %166, i32 0)
  %168 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %169 = load i32, i32* @STATE_FRAMEBUFFER, align 4
  %170 = call i32 @context_invalidate_state(%struct.wined3d_context* %168, i32 %169)
  %171 = load i32, i32* @FALSE, align 4
  %172 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %173 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %172, i32 0, i32 4
  store i32 %171, i32* %173, align 4
  ret void
}

declare dso_local i32 @context_load_shader_resources(%struct.wined3d_context*, %struct.wined3d_state*, i32) #1

declare dso_local i32 @context_load_unordered_access_resources(%struct.wined3d_context*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @wined3d_bit_scan(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @context_bind_shader_resources(%struct.wined3d_context*, %struct.wined3d_state*, i32) #1

declare dso_local i32 @context_bind_unordered_access_views(%struct.wined3d_context*, i32, i32) #1

declare dso_local i32 @context_bind_fbo(%struct.wined3d_context*, i32, i32) #1

declare dso_local i32 @context_invalidate_state(%struct.wined3d_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
