; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_ps_local_constants.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_ps_local_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arb_ps_compiled_shader = type { i8, i64, i64*, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.wined3d_context = type { i64, %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_state = type { %struct.TYPE_6__*, i32** }
%struct.TYPE_6__ = type { i64, i64, i64 }

@WINED3D_TSS_BUMPENV_MAT00 = common dso_local global i64 0, align 8
@GL_FRAGMENT_PROGRAM_ARB = common dso_local global i32 0, align 4
@WINED3D_CONST_NUM_UNUSED = common dso_local global i64 0, align 8
@WINED3D_TSS_BUMPENV_LSCALE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Load bumpmap consts\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"y correction loading\00", align 1
@WINED3D_MAX_CONSTS_I = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Load ps int consts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arb_ps_compiled_shader*, %struct.wined3d_context*, %struct.wined3d_state*, i64)* @shader_arb_ps_local_constants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_arb_ps_local_constants(%struct.arb_ps_compiled_shader* %0, %struct.wined3d_context* %1, %struct.wined3d_state* %2, i64 %3) #0 {
  %5 = alloca %struct.arb_ps_compiled_shader*, align 8
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca %struct.wined3d_state*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wined3d_gl_info*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca [4 x float], align 16
  %15 = alloca [4 x float], align 16
  store %struct.arb_ps_compiled_shader* %0, %struct.arb_ps_compiled_shader** %5, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %6, align 8
  store %struct.wined3d_state* %2, %struct.wined3d_state** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %17 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %16, i32 0, i32 1
  %18 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  store %struct.wined3d_gl_info* %18, %struct.wined3d_gl_info** %9, align 8
  store i8 0, i8* %10, align 1
  br label %19

19:                                               ; preds = %92, %4
  %20 = load i8, i8* %10, align 1
  %21 = zext i8 %20 to i32
  %22 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %5, align 8
  %23 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 8
  %25 = zext i8 %24 to i32
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %95

27:                                               ; preds = %19
  %28 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %5, align 8
  %29 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %28, i32 0, i32 5
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i8, i8* %10, align 1
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %11, align 4
  %36 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %37 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %36, i32 0, i32 1
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @WINED3D_TSS_BUMPENV_MAT00, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = bitcast i32* %44 to float*
  store float* %45, float** %12, align 8
  %46 = load i32, i32* @GL_FRAGMENT_PROGRAM_ARB, align 4
  %47 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %5, align 8
  %48 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %47, i32 0, i32 5
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i8, i8* %10, align 1
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load float*, float** %12, align 8
  %56 = call i32 @glProgramLocalParameter4fvARB(i32 %46, i64 %54, float* %55)
  %57 = call i32 @GL_EXTCALL(i32 %56)
  %58 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %5, align 8
  %59 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %58, i32 0, i32 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i8, i8* %10, align 1
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @WINED3D_CONST_NUM_UNUSED, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %27
  %69 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %70 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %69, i32 0, i32 1
  %71 = load i32**, i32*** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @WINED3D_TSS_BUMPENV_LSCALE, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = bitcast i32* %77 to float*
  store float* %78, float** %13, align 8
  %79 = load i32, i32* @GL_FRAGMENT_PROGRAM_ARB, align 4
  %80 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %5, align 8
  %81 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %80, i32 0, i32 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load i8, i8* %10, align 1
  %84 = zext i8 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load float*, float** %13, align 8
  %89 = call i32 @glProgramLocalParameter4fvARB(i32 %79, i64 %87, float* %88)
  %90 = call i32 @GL_EXTCALL(i32 %89)
  br label %91

91:                                               ; preds = %68, %27
  br label %92

92:                                               ; preds = %91
  %93 = load i8, i8* %10, align 1
  %94 = add i8 %93, 1
  store i8 %94, i8* %10, align 1
  br label %19

95:                                               ; preds = %19
  %96 = call i32 @checkGLcall(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %97 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %5, align 8
  %98 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @WINED3D_CONST_NUM_UNUSED, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %131

102:                                              ; preds = %95
  %103 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %104 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %111

108:                                              ; preds = %102
  %109 = load i64, i64* %8, align 8
  %110 = sitofp i64 %109 to float
  br label %111

111:                                              ; preds = %108, %107
  %112 = phi float [ 0.000000e+00, %107 ], [ %110, %108 ]
  %113 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 0
  store float %112, float* %113, align 16
  %114 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %115 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, float 1.000000e+00, float -1.000000e+00
  %120 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 1
  store float %119, float* %120, align 4
  %121 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 2
  store float 1.000000e+00, float* %121, align 8
  %122 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 3
  store float 0.000000e+00, float* %122, align 4
  %123 = load i32, i32* @GL_FRAGMENT_PROGRAM_ARB, align 4
  %124 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %5, align 8
  %125 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 0
  %128 = call i32 @glProgramLocalParameter4fvARB(i32 %123, i64 %126, float* %127)
  %129 = call i32 @GL_EXTCALL(i32 %128)
  %130 = call i32 @checkGLcall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %131

131:                                              ; preds = %111, %95
  %132 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %5, align 8
  %133 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %131
  br label %203

137:                                              ; preds = %131
  store i8 0, i8* %10, align 1
  br label %138

138:                                              ; preds = %198, %137
  %139 = load i8, i8* %10, align 1
  %140 = zext i8 %139 to i32
  %141 = load i8, i8* @WINED3D_MAX_CONSTS_I, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp slt i32 %140, %142
  br i1 %143, label %144, label %201

144:                                              ; preds = %138
  %145 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %5, align 8
  %146 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %145, i32 0, i32 2
  %147 = load i64*, i64** %146, align 8
  %148 = load i8, i8* %10, align 1
  %149 = zext i8 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @WINED3D_CONST_NUM_UNUSED, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %197

154:                                              ; preds = %144
  %155 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %156 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %155, i32 0, i32 0
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = load i8, i8* %10, align 1
  %159 = zext i8 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = sitofp i64 %162 to float
  %164 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  store float %163, float* %164, align 16
  %165 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %166 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %165, i32 0, i32 0
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = load i8, i8* %10, align 1
  %169 = zext i8 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = sitofp i64 %172 to float
  %174 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 1
  store float %173, float* %174, align 4
  %175 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %176 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %175, i32 0, i32 0
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = load i8, i8* %10, align 1
  %179 = zext i8 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = sitofp i64 %182 to float
  %184 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 2
  store float %183, float* %184, align 8
  %185 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 3
  store float -1.000000e+00, float* %185, align 4
  %186 = load i32, i32* @GL_FRAGMENT_PROGRAM_ARB, align 4
  %187 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %5, align 8
  %188 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %187, i32 0, i32 2
  %189 = load i64*, i64** %188, align 8
  %190 = load i8, i8* %10, align 1
  %191 = zext i8 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %195 = call i32 @glProgramLocalParameter4fvARB(i32 %186, i64 %193, float* %194)
  %196 = call i32 @GL_EXTCALL(i32 %195)
  br label %197

197:                                              ; preds = %154, %144
  br label %198

198:                                              ; preds = %197
  %199 = load i8, i8* %10, align 1
  %200 = add i8 %199, 1
  store i8 %200, i8* %10, align 1
  br label %138

201:                                              ; preds = %138
  %202 = call i32 @checkGLcall(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %203

203:                                              ; preds = %201, %136
  ret void
}

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glProgramLocalParameter4fvARB(i32, i64, float*) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
