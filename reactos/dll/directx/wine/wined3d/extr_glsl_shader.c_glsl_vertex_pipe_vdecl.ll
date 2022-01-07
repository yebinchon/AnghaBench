; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_vertex_pipe_vdecl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_vertex_pipe_vdecl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i64, i64, i32, i64, i64, i32, %struct.TYPE_6__, %struct.wined3d_gl_info* }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.wined3d_gl_info = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64 }
%struct.wined3d_state = type { %struct.TYPE_9__** }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@WINED3D_FFP_NORMAL = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_VERTEX = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_VS_CLIP_PLANES = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_FFP_TEXMATRIX = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i32)* @glsl_vertex_pipe_vdecl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glsl_vertex_pipe_vdecl(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_gl_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %14 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %13, i32 0, i32 7
  %15 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  store %struct.wined3d_gl_info* %15, %struct.wined3d_gl_info** %7, align 8
  %16 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %17 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @WINED3D_FFP_NORMAL, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %8, align 8
  %28 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %29 = call i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info* %28)
  store i64 %29, i64* %9, align 8
  %30 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %31 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %10, align 8
  %34 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %35 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %39 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %11, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %52, label %43

43:                                               ; preds = %3
  %44 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %45 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %49 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %43, %3
  %53 = load i32, i32* @WINED3D_SHADER_TYPE_VERTEX, align 4
  %54 = shl i32 1, %53
  %55 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %56 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %52, %43
  %60 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %61 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %65 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %67 = call i64 @use_vs(%struct.wined3d_state* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %165, label %69

69:                                               ; preds = %59
  %70 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %71 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %102

74:                                               ; preds = %69
  %75 = load i64, i64* %9, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %74
  store i32 0, i32* %12, align 4
  br label %78

78:                                               ; preds = %91, %77
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %81 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ult i32 %79, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %78
  %86 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %87 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @STATE_CLIPPLANE(i32 %88)
  %90 = call i32 @clipplane(%struct.wined3d_context* %86, %struct.wined3d_state* %87, i32 %89)
  br label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %12, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %78

94:                                               ; preds = %78
  br label %101

95:                                               ; preds = %74
  %96 = load i32, i32* @WINED3D_SHADER_CONST_VS_CLIP_PLANES, align 4
  %97 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %98 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %94
  br label %102

102:                                              ; preds = %101, %69
  %103 = load i32, i32* @WINED3D_SHADER_CONST_FFP_TEXMATRIX, align 4
  %104 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %105 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %109 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %113 = call i64 @wined3d_max_compat_varyings(%struct.wined3d_gl_info* %112)
  %114 = icmp slt i64 %111, %113
  br i1 %114, label %121, label %115

115:                                              ; preds = %102
  %116 = load i64, i64* %8, align 8
  %117 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %118 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %116, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %115, %102
  %122 = load i32, i32* @WINED3D_SHADER_TYPE_VERTEX, align 4
  %123 = shl i32 1, %122
  %124 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %125 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %121, %115
  %129 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %130 = call i64 @use_ps(%struct.wined3d_state* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %164

132:                                              ; preds = %128
  %133 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %134 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %133, i32 0, i32 0
  %135 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %134, align 8
  %136 = load i64, i64* @WINED3D_SHADER_TYPE_PIXEL, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %135, i64 %136
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %164

144:                                              ; preds = %132
  %145 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %146 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %145, i32 0, i32 0
  %147 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %146, align 8
  %148 = load i64, i64* @WINED3D_SHADER_TYPE_PIXEL, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %147, i64 %148
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp sle i32 %154, 3
  br i1 %155, label %156, label %164

156:                                              ; preds = %144
  %157 = load i64, i64* @WINED3D_SHADER_TYPE_PIXEL, align 8
  %158 = trunc i64 %157 to i32
  %159 = shl i32 1, %158
  %160 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %161 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  br label %164

164:                                              ; preds = %156, %144, %132, %128
  br label %199

165:                                              ; preds = %59
  %166 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %167 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %198, label %170

170:                                              ; preds = %165
  %171 = load i64, i64* %9, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %191

173:                                              ; preds = %170
  store i32 0, i32* %12, align 4
  br label %174

174:                                              ; preds = %187, %173
  %175 = load i32, i32* %12, align 4
  %176 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %177 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp ult i32 %175, %179
  br i1 %180, label %181, label %190

181:                                              ; preds = %174
  %182 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %183 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %184 = load i32, i32* %12, align 4
  %185 = call i32 @STATE_CLIPPLANE(i32 %184)
  %186 = call i32 @clipplane(%struct.wined3d_context* %182, %struct.wined3d_state* %183, i32 %185)
  br label %187

187:                                              ; preds = %181
  %188 = load i32, i32* %12, align 4
  %189 = add i32 %188, 1
  store i32 %189, i32* %12, align 4
  br label %174

190:                                              ; preds = %174
  br label %197

191:                                              ; preds = %170
  %192 = load i32, i32* @WINED3D_SHADER_CONST_VS_CLIP_PLANES, align 4
  %193 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %194 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 8
  br label %197

197:                                              ; preds = %191, %190
  br label %198

198:                                              ; preds = %197, %165
  br label %199

199:                                              ; preds = %198, %164
  %200 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %201 = call i64 @use_vs(%struct.wined3d_state* %200)
  %202 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %203 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %202, i32 0, i32 4
  store i64 %201, i64* %203, align 8
  %204 = load i64, i64* %8, align 8
  %205 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %206 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %205, i32 0, i32 3
  store i64 %204, i64* %206, align 8
  ret void
}

declare dso_local i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info*) #1

declare dso_local i64 @use_vs(%struct.wined3d_state*) #1

declare dso_local i32 @clipplane(%struct.wined3d_context*, %struct.wined3d_state*, i32) #1

declare dso_local i32 @STATE_CLIPPLANE(i32) #1

declare dso_local i64 @wined3d_max_compat_varyings(%struct.wined3d_gl_info*) #1

declare dso_local i64 @use_ps(%struct.wined3d_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
