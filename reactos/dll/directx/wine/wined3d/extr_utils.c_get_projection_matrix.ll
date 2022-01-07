; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_get_projection_matrix.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_get_projection_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i64, %struct.TYPE_6__*, i64, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.wined3d_state = type { i32*, i32*, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { float, float, float, float }
%struct.TYPE_7__ = type { i64 }
%struct.wined3d_matrix = type { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

@ARB_CLIP_CONTROL = common dso_local global i64 0, align 8
@WINED3D_PIXEL_CENTER_INTEGER = common dso_local global i32 0, align 4
@WINED3D_RS_ZENABLE = common dso_local global i64 0, align 8
@WINED3D_ZB_FALSE = common dso_local global i32 0, align 4
@WINED3D_TS_PROJECTION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_projection_matrix(%struct.wined3d_context* %0, %struct.wined3d_state* %1, %struct.wined3d_matrix* %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca %struct.wined3d_matrix*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca %struct.wined3d_matrix, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca %struct.wined3d_matrix, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store %struct.wined3d_matrix* %2, %struct.wined3d_matrix** %6, align 8
  %28 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %29 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %28, i32 0, i32 3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @ARB_CLIP_CONTROL, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %3
  %39 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %40 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %38, %3
  %44 = phi i1 [ false, %3 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %50 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @WINED3D_PIXEL_CENTER_INTEGER, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store float 9.843750e-01, float* %9, align 4
  br label %59

58:                                               ; preds = %48, %43
  store float -1.562500e-02, float* %9, align 4
  br label %59

59:                                               ; preds = %58, %57
  %60 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %61 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %187

64:                                               ; preds = %59
  %65 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %66 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load float, float* %67, align 8
  store float %68, float* %10, align 4
  %69 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %70 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load float, float* %71, align 4
  store float %72, float* %11, align 4
  %73 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %74 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load float, float* %75, align 8
  store float %76, float* %12, align 4
  %77 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %78 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  %80 = load float, float* %79, align 4
  store float %80, float* %13, align 4
  %81 = load float, float* %12, align 4
  %82 = fdiv float 2.000000e+00, %81
  store float %82, float* %14, align 4
  %83 = load float, float* %9, align 4
  %84 = load float, float* %10, align 4
  %85 = fmul float 2.000000e+00, %84
  %86 = fsub float %83, %85
  %87 = load float, float* %12, align 4
  %88 = fsub float %86, %87
  %89 = load float, float* %12, align 4
  %90 = fdiv float %88, %89
  store float %90, float* %15, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %64
  %94 = load float, float* %13, align 4
  %95 = fdiv float 2.000000e+00, %94
  br label %100

96:                                               ; preds = %64
  %97 = load float, float* %13, align 4
  %98 = fneg float %97
  %99 = fdiv float 2.000000e+00, %98
  br label %100

100:                                              ; preds = %96, %93
  %101 = phi float [ %95, %93 ], [ %99, %96 ]
  store float %101, float* %16, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %100
  %105 = load float, float* %9, align 4
  %106 = load float, float* %11, align 4
  %107 = fmul float 2.000000e+00, %106
  %108 = fsub float %105, %107
  %109 = load float, float* %13, align 4
  %110 = fsub float %108, %109
  %111 = load float, float* %13, align 4
  %112 = fdiv float %110, %111
  br label %123

113:                                              ; preds = %100
  %114 = load float, float* %9, align 4
  %115 = load float, float* %11, align 4
  %116 = fmul float 2.000000e+00, %115
  %117 = fsub float %114, %116
  %118 = load float, float* %13, align 4
  %119 = fsub float %117, %118
  %120 = load float, float* %13, align 4
  %121 = fneg float %120
  %122 = fdiv float %119, %121
  br label %123

123:                                              ; preds = %113, %104
  %124 = phi float [ %112, %104 ], [ %122, %113 ]
  store float %124, float* %17, align 4
  %125 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %126 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %125, i32 0, i32 3
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %123
  %132 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %133 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* @WINED3D_RS_ZENABLE, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  br label %140

138:                                              ; preds = %123
  %139 = load i32, i32* @WINED3D_ZB_FALSE, align 4
  br label %140

140:                                              ; preds = %138, %131
  %141 = phi i32 [ %137, %131 ], [ %139, %138 ]
  store i32 %141, i32* %18, align 4
  %142 = load i32, i32* %18, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, float 1.000000e+00, float 2.000000e+00
  br label %150

149:                                              ; preds = %140
  br label %150

150:                                              ; preds = %149, %144
  %151 = phi float [ %148, %144 ], [ 0.000000e+00, %149 ]
  store float %151, float* %19, align 4
  %152 = load i32, i32* %18, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, float 0.000000e+00, float -1.000000e+00
  br label %160

159:                                              ; preds = %150
  br label %160

160:                                              ; preds = %159, %154
  %161 = phi float [ %158, %154 ], [ 0.000000e+00, %159 ]
  store float %161, float* %20, align 4
  %162 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %21, i32 0, i32 0
  %163 = load float, float* %14, align 4
  store float %163, float* %162, align 4
  %164 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %21, i32 0, i32 1
  store float 0.000000e+00, float* %164, align 4
  %165 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %21, i32 0, i32 2
  store float 0.000000e+00, float* %165, align 4
  %166 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %21, i32 0, i32 3
  store float 0.000000e+00, float* %166, align 4
  %167 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %21, i32 0, i32 4
  store float 0.000000e+00, float* %167, align 4
  %168 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %21, i32 0, i32 5
  %169 = load float, float* %16, align 4
  store float %169, float* %168, align 4
  %170 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %21, i32 0, i32 6
  store float 0.000000e+00, float* %170, align 4
  %171 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %21, i32 0, i32 7
  store float 0.000000e+00, float* %171, align 4
  %172 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %21, i32 0, i32 8
  store float 0.000000e+00, float* %172, align 4
  %173 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %21, i32 0, i32 9
  store float 0.000000e+00, float* %173, align 4
  %174 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %21, i32 0, i32 10
  %175 = load float, float* %19, align 4
  store float %175, float* %174, align 4
  %176 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %21, i32 0, i32 11
  store float 0.000000e+00, float* %176, align 4
  %177 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %21, i32 0, i32 12
  %178 = load float, float* %15, align 4
  store float %178, float* %177, align 4
  %179 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %21, i32 0, i32 13
  %180 = load float, float* %17, align 4
  store float %180, float* %179, align 4
  %181 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %21, i32 0, i32 14
  %182 = load float, float* %20, align 4
  store float %182, float* %181, align 4
  %183 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %21, i32 0, i32 15
  store float 1.000000e+00, float* %183, align 4
  %184 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %6, align 8
  %185 = bitcast %struct.wined3d_matrix* %184 to i8*
  %186 = bitcast %struct.wined3d_matrix* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %185, i8* align 4 %186, i64 64, i1 false)
  br label %253

187:                                              ; preds = %59
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, float -1.000000e+00, float 1.000000e+00
  store float %191, float* %22, align 4
  %192 = load float, float* %9, align 4
  %193 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %194 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 2
  %196 = load float, float* %195, align 8
  %197 = fdiv float %192, %196
  store float %197, float* %23, align 4
  %198 = load i32, i32* %8, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %187
  %201 = load float, float* %9, align 4
  %202 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %203 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 3
  %205 = load float, float* %204, align 4
  %206 = fdiv float %201, %205
  br label %215

207:                                              ; preds = %187
  %208 = load float, float* %9, align 4
  %209 = fneg float %208
  %210 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %211 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 3
  %213 = load float, float* %212, align 4
  %214 = fdiv float %209, %213
  br label %215

215:                                              ; preds = %207, %200
  %216 = phi float [ %206, %200 ], [ %214, %207 ]
  store float %216, float* %24, align 4
  %217 = load i32, i32* %7, align 4
  %218 = icmp ne i32 %217, 0
  %219 = zext i1 %218 to i64
  %220 = select i1 %218, float 1.000000e+00, float 2.000000e+00
  store float %220, float* %25, align 4
  %221 = load i32, i32* %7, align 4
  %222 = icmp ne i32 %221, 0
  %223 = zext i1 %222 to i64
  %224 = select i1 %222, float 0.000000e+00, float -1.000000e+00
  store float %224, float* %26, align 4
  %225 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %27, i32 0, i32 0
  store float 1.000000e+00, float* %225, align 4
  %226 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %27, i32 0, i32 1
  store float 0.000000e+00, float* %226, align 4
  %227 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %27, i32 0, i32 2
  store float 0.000000e+00, float* %227, align 4
  %228 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %27, i32 0, i32 3
  store float 0.000000e+00, float* %228, align 4
  %229 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %27, i32 0, i32 4
  store float 0.000000e+00, float* %229, align 4
  %230 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %27, i32 0, i32 5
  %231 = load float, float* %22, align 4
  store float %231, float* %230, align 4
  %232 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %27, i32 0, i32 6
  store float 0.000000e+00, float* %232, align 4
  %233 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %27, i32 0, i32 7
  store float 0.000000e+00, float* %233, align 4
  %234 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %27, i32 0, i32 8
  store float 0.000000e+00, float* %234, align 4
  %235 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %27, i32 0, i32 9
  store float 0.000000e+00, float* %235, align 4
  %236 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %27, i32 0, i32 10
  %237 = load float, float* %25, align 4
  store float %237, float* %236, align 4
  %238 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %27, i32 0, i32 11
  store float 0.000000e+00, float* %238, align 4
  %239 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %27, i32 0, i32 12
  %240 = load float, float* %23, align 4
  store float %240, float* %239, align 4
  %241 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %27, i32 0, i32 13
  %242 = load float, float* %24, align 4
  store float %242, float* %241, align 4
  %243 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %27, i32 0, i32 14
  %244 = load float, float* %26, align 4
  store float %244, float* %243, align 4
  %245 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %27, i32 0, i32 15
  store float 1.000000e+00, float* %245, align 4
  %246 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %6, align 8
  %247 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %248 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = load i64, i64* @WINED3D_TS_PROJECTION, align 8
  %251 = getelementptr inbounds i32, i32* %249, i64 %250
  %252 = call i32 @multiply_matrix(%struct.wined3d_matrix* %246, %struct.wined3d_matrix* %27, i32* %251)
  br label %253

253:                                              ; preds = %215, %160
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @multiply_matrix(%struct.wined3d_matrix*, %struct.wined3d_matrix*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
