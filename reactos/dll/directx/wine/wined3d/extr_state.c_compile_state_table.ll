; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_state.c_compile_state_table.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_state.c_compile_state_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.StateEntry = type { i64, i32 }
%struct.wined3d_gl_info = type { i32* }
%struct.wined3d_d3d_info = type { i32 }
%struct.wined3d_vertex_pipe_ops = type { %struct.StateEntryTemplate* }
%struct.fragment_pipeline = type { %struct.StateEntryTemplate* }
%struct.StateEntryTemplate = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@STATE_HIGHEST = common dso_local global i32 0, align 4
@state_undefined = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32* null, align 8
@multistate_apply_2 = common dso_local global i32 0, align 4
@multistate_apply_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Unexpected amount of state handlers for state %u: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"State %s (%#x) has different representatives in different pipeline parts.\0A\00", align 1
@WINED3D_OK = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compile_state_table(%struct.StateEntry* %0, i32** %1, %struct.wined3d_gl_info* %2, %struct.wined3d_d3d_info* %3, %struct.wined3d_vertex_pipe_ops* %4, %struct.fragment_pipeline* %5, %struct.StateEntryTemplate* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.StateEntry*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca %struct.wined3d_gl_info*, align 8
  %12 = alloca %struct.wined3d_d3d_info*, align 8
  %13 = alloca %struct.wined3d_vertex_pipe_ops*, align 8
  %14 = alloca %struct.fragment_pipeline*, align 8
  %15 = alloca %struct.StateEntryTemplate*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.StateEntryTemplate*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store %struct.StateEntry* %0, %struct.StateEntry** %9, align 8
  store i32** %1, i32*** %10, align 8
  store %struct.wined3d_gl_info* %2, %struct.wined3d_gl_info** %11, align 8
  store %struct.wined3d_d3d_info* %3, %struct.wined3d_d3d_info** %12, align 8
  store %struct.wined3d_vertex_pipe_ops* %4, %struct.wined3d_vertex_pipe_ops** %13, align 8
  store %struct.fragment_pipeline* %5, %struct.fragment_pipeline** %14, align 8
  store %struct.StateEntryTemplate* %6, %struct.StateEntryTemplate** %15, align 8
  %25 = load i32, i32* @STATE_HIGHEST, align 4
  %26 = add nsw i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %19, align 8
  %29 = alloca [3 x i32], i64 %27, align 16
  store i64 %27, i64* %20, align 8
  %30 = load i32, i32* @STATE_HIGHEST, align 4
  %31 = add nsw i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = alloca i32*, i64 %32, align 16
  store i64 %32, i64* %22, align 8
  %34 = bitcast [3 x i32]* %29 to i32**
  %35 = mul nuw i64 12, %27
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memset(i32** %34, i32 0, i32 %36)
  store i32 0, i32* %16, align 4
  br label %38

38:                                               ; preds = %55, %7
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* @STATE_HIGHEST, align 4
  %41 = add nsw i32 %40, 1
  %42 = icmp ult i32 %39, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load %struct.StateEntry*, %struct.StateEntry** %9, align 8
  %45 = load i32, i32* %16, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %44, i64 %46
  %48 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @state_undefined, align 4
  %50 = load %struct.StateEntry*, %struct.StateEntry** %9, align 8
  %51 = load i32, i32* %16, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %50, i64 %52
  %54 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %53, i32 0, i32 1
  store i32 %49, i32* %54, align 8
  br label %55

55:                                               ; preds = %43
  %56 = load i32, i32* %16, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %16, align 4
  br label %38

58:                                               ; preds = %38
  store i32 0, i32* %17, align 4
  br label %59

59:                                               ; preds = %391, %58
  %60 = load i32, i32* %17, align 4
  %61 = icmp ult i32 %60, 3
  br i1 %61, label %62, label %394

62:                                               ; preds = %59
  %63 = load i32, i32* %17, align 4
  switch i32 %63, label %74 [
    i32 0, label %64
    i32 1, label %66
    i32 2, label %70
  ]

64:                                               ; preds = %62
  %65 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %15, align 8
  store %struct.StateEntryTemplate* %65, %struct.StateEntryTemplate** %21, align 8
  br label %75

66:                                               ; preds = %62
  %67 = load %struct.fragment_pipeline*, %struct.fragment_pipeline** %14, align 8
  %68 = getelementptr inbounds %struct.fragment_pipeline, %struct.fragment_pipeline* %67, i32 0, i32 0
  %69 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %68, align 8
  store %struct.StateEntryTemplate* %69, %struct.StateEntryTemplate** %21, align 8
  br label %75

70:                                               ; preds = %62
  %71 = load %struct.wined3d_vertex_pipe_ops*, %struct.wined3d_vertex_pipe_ops** %13, align 8
  %72 = getelementptr inbounds %struct.wined3d_vertex_pipe_ops, %struct.wined3d_vertex_pipe_ops* %71, i32 0, i32 0
  %73 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %72, align 8
  store %struct.StateEntryTemplate* %73, %struct.StateEntryTemplate** %21, align 8
  br label %75

74:                                               ; preds = %62
  store %struct.StateEntryTemplate* null, %struct.StateEntryTemplate** %21, align 8
  br label %75

75:                                               ; preds = %74, %70, %66, %64
  %76 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %77 = icmp ne %struct.StateEntryTemplate* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  br label %391

79:                                               ; preds = %75
  %80 = mul nuw i64 8, %32
  %81 = trunc i64 %80 to i32
  %82 = call i32 @memset(i32** %33, i32 0, i32 %81)
  store i32 0, i32* %16, align 4
  br label %83

83:                                               ; preds = %387, %79
  %84 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %85 = load i32, i32* %16, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %84, i64 %86
  %88 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %390

91:                                               ; preds = %83
  %92 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %93 = load i32, i32* %16, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %92, i64 %94
  %96 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %33, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %387

103:                                              ; preds = %91
  %104 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  %105 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %108 = load i32, i32* %16, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %107, i64 %109
  %111 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds i32, i32* %106, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %103
  br label %387

117:                                              ; preds = %103
  %118 = load i32*, i32** @TRUE, align 8
  %119 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %120 = load i32, i32* %16, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %119, i64 %121
  %123 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %33, i64 %125
  store i32* %118, i32** %126, align 8
  %127 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %128 = load i32, i32* %16, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %127, i64 %129
  %131 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %117
  br label %387

136:                                              ; preds = %117
  %137 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %138 = load i32, i32* %16, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %137, i64 %139
  %141 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [3 x i32], [3 x i32]* %29, i64 %143
  %145 = getelementptr inbounds [3 x i32], [3 x i32]* %144, i64 0, i64 0
  %146 = call i32 @num_handlers(i32* %145)
  store i32 %146, i32* %18, align 4
  %147 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %148 = load i32, i32* %16, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %147, i64 %149
  %151 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %155 = load i32, i32* %16, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %154, i64 %156
  %158 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [3 x i32], [3 x i32]* %29, i64 %160
  %162 = load i32, i32* %18, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds [3 x i32], [3 x i32]* %161, i64 0, i64 %163
  store i32 %153, i32* %164, align 4
  %165 = load i32, i32* %18, align 4
  switch i32 %165, label %308 [
    i32 0, label %166
    i32 1, label %184
    i32 2, label %251
  ]

166:                                              ; preds = %136
  %167 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %168 = load i32, i32* %16, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %167, i64 %169
  %171 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.StateEntry*, %struct.StateEntry** %9, align 8
  %175 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %176 = load i32, i32* %16, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %175, i64 %177
  %179 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %174, i64 %181
  %183 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %182, i32 0, i32 1
  store i32 %173, i32* %183, align 8
  br label %319

184:                                              ; preds = %136
  %185 = load i32, i32* @multistate_apply_2, align 4
  %186 = load %struct.StateEntry*, %struct.StateEntry** %9, align 8
  %187 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %188 = load i32, i32* %16, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %187, i64 %189
  %191 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %186, i64 %193
  %195 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %194, i32 0, i32 1
  store i32 %185, i32* %195, align 8
  %196 = call i32* @heap_calloc(i32 2, i32 4)
  %197 = load i32**, i32*** %10, align 8
  %198 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %199 = load i32, i32* %16, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %198, i64 %200
  %202 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32*, i32** %197, i64 %204
  store i32* %196, i32** %205, align 8
  %206 = icmp ne i32* %196, null
  br i1 %206, label %208, label %207

207:                                              ; preds = %184
  br label %402

208:                                              ; preds = %184
  %209 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %210 = load i32, i32* %16, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %209, i64 %211
  %213 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [3 x i32], [3 x i32]* %29, i64 %215
  %217 = getelementptr inbounds [3 x i32], [3 x i32]* %216, i64 0, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32**, i32*** %10, align 8
  %220 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %221 = load i32, i32* %16, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %220, i64 %222
  %224 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32*, i32** %219, i64 %226
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  store i32 %218, i32* %229, align 4
  %230 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %231 = load i32, i32* %16, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %230, i64 %232
  %234 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [3 x i32], [3 x i32]* %29, i64 %236
  %238 = getelementptr inbounds [3 x i32], [3 x i32]* %237, i64 0, i64 1
  %239 = load i32, i32* %238, align 4
  %240 = load i32**, i32*** %10, align 8
  %241 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %242 = load i32, i32* %16, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %241, i64 %243
  %245 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32*, i32** %240, i64 %247
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 1
  store i32 %239, i32* %250, align 4
  br label %319

251:                                              ; preds = %136
  %252 = load i32, i32* @multistate_apply_3, align 4
  %253 = load %struct.StateEntry*, %struct.StateEntry** %9, align 8
  %254 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %255 = load i32, i32* %16, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %254, i64 %256
  %258 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %253, i64 %260
  %262 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %261, i32 0, i32 1
  store i32 %252, i32* %262, align 8
  %263 = load i32**, i32*** %10, align 8
  %264 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %265 = load i32, i32* %16, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %264, i64 %266
  %268 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32*, i32** %263, i64 %270
  %272 = load i32*, i32** %271, align 8
  %273 = call i32* @heap_realloc(i32* %272, i32 12)
  store i32* %273, i32** %23, align 8
  %274 = icmp ne i32* %273, null
  br i1 %274, label %276, label %275

275:                                              ; preds = %251
  br label %402

276:                                              ; preds = %251
  %277 = load i32*, i32** %23, align 8
  %278 = load i32**, i32*** %10, align 8
  %279 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %280 = load i32, i32* %16, align 4
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %279, i64 %281
  %283 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32*, i32** %278, i64 %285
  store i32* %277, i32** %286, align 8
  %287 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %288 = load i32, i32* %16, align 4
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %287, i64 %289
  %291 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [3 x i32], [3 x i32]* %29, i64 %293
  %295 = getelementptr inbounds [3 x i32], [3 x i32]* %294, i64 0, i64 2
  %296 = load i32, i32* %295, align 4
  %297 = load i32**, i32*** %10, align 8
  %298 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %299 = load i32, i32* %16, align 4
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %298, i64 %300
  %302 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32*, i32** %297, i64 %304
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 2
  store i32 %296, i32* %307, align 4
  br label %319

308:                                              ; preds = %136
  %309 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %310 = load i32, i32* %16, align 4
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %309, i64 %311
  %313 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = sext i32 %314 to i64
  %316 = load i32, i32* %18, align 4
  %317 = add i32 %316, 1
  %318 = call i32 @ERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %315, i32 %317)
  br label %319

319:                                              ; preds = %308, %276, %208, %166
  %320 = load %struct.StateEntry*, %struct.StateEntry** %9, align 8
  %321 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %322 = load i32, i32* %16, align 4
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %321, i64 %323
  %325 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %320, i64 %327
  %329 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %369

332:                                              ; preds = %319
  %333 = load %struct.StateEntry*, %struct.StateEntry** %9, align 8
  %334 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %335 = load i32, i32* %16, align 4
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %334, i64 %336
  %338 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %333, i64 %340
  %342 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %345 = load i32, i32* %16, align 4
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %344, i64 %346
  %348 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %347, i32 0, i32 2
  %349 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = icmp ne i64 %343, %350
  br i1 %351, label %352, label %369

352:                                              ; preds = %332
  %353 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %354 = load i32, i32* %16, align 4
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %353, i64 %355
  %357 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = sext i32 %358 to i64
  %360 = call i32 @debug_d3dstate(i64 %359)
  %361 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %362 = load i32, i32* %16, align 4
  %363 = zext i32 %362 to i64
  %364 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %361, i64 %363
  %365 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = sext i32 %366 to i64
  %368 = call i32 @FIXME(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %360, i64 %367)
  br label %369

369:                                              ; preds = %352, %332, %319
  %370 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %371 = load i32, i32* %16, align 4
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %370, i64 %372
  %374 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %373, i32 0, i32 2
  %375 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = load %struct.StateEntry*, %struct.StateEntry** %9, align 8
  %378 = load %struct.StateEntryTemplate*, %struct.StateEntryTemplate** %21, align 8
  %379 = load i32, i32* %16, align 4
  %380 = zext i32 %379 to i64
  %381 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %378, i64 %380
  %382 = getelementptr inbounds %struct.StateEntryTemplate, %struct.StateEntryTemplate* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %377, i64 %384
  %386 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %385, i32 0, i32 0
  store i64 %376, i64* %386, align 8
  br label %387

387:                                              ; preds = %369, %135, %116, %102
  %388 = load i32, i32* %16, align 4
  %389 = add i32 %388, 1
  store i32 %389, i32* %16, align 4
  br label %83

390:                                              ; preds = %83
  br label %391

391:                                              ; preds = %390, %78
  %392 = load i32, i32* %17, align 4
  %393 = add i32 %392, 1
  store i32 %393, i32* %17, align 4
  br label %59

394:                                              ; preds = %59
  %395 = load %struct.StateEntry*, %struct.StateEntry** %9, align 8
  %396 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  %397 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %12, align 8
  %398 = call i32 @prune_invalid_states(%struct.StateEntry* %395, %struct.wined3d_gl_info* %396, %struct.wined3d_d3d_info* %397)
  %399 = load %struct.StateEntry*, %struct.StateEntry** %9, align 8
  %400 = call i32 @validate_state_table(%struct.StateEntry* %399)
  %401 = load i32, i32* @WINED3D_OK, align 4
  store i32 %401, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %426

402:                                              ; preds = %275, %207
  store i32 0, i32* %16, align 4
  br label %403

403:                                              ; preds = %414, %402
  %404 = load i32, i32* %16, align 4
  %405 = load i32, i32* @STATE_HIGHEST, align 4
  %406 = icmp ule i32 %404, %405
  br i1 %406, label %407, label %417

407:                                              ; preds = %403
  %408 = load i32**, i32*** %10, align 8
  %409 = load i32, i32* %16, align 4
  %410 = zext i32 %409 to i64
  %411 = getelementptr inbounds i32*, i32** %408, i64 %410
  %412 = load i32*, i32** %411, align 8
  %413 = call i32 @heap_free(i32* %412)
  br label %414

414:                                              ; preds = %407
  %415 = load i32, i32* %16, align 4
  %416 = add i32 %415, 1
  store i32 %416, i32* %16, align 4
  br label %403

417:                                              ; preds = %403
  %418 = load i32**, i32*** %10, align 8
  %419 = load i32, i32* @STATE_HIGHEST, align 4
  %420 = add nsw i32 %419, 1
  %421 = sext i32 %420 to i64
  %422 = mul i64 %421, 8
  %423 = trunc i64 %422 to i32
  %424 = call i32 @memset(i32** %418, i32 0, i32 %423)
  %425 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %425, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %426

426:                                              ; preds = %417, %394
  %427 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %427)
  %428 = load i32, i32* %8, align 4
  ret i32 %428
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32**, i32, i32) #2

declare dso_local i32 @num_handlers(i32*) #2

declare dso_local i32* @heap_calloc(i32, i32) #2

declare dso_local i32* @heap_realloc(i32*, i32) #2

declare dso_local i32 @ERR(i8*, i64, i32) #2

declare dso_local i32 @FIXME(i8*, i32, i64) #2

declare dso_local i32 @debug_d3dstate(i64) #2

declare dso_local i32 @prune_invalid_states(%struct.StateEntry*, %struct.wined3d_gl_info*, %struct.wined3d_d3d_info*) #2

declare dso_local i32 @validate_state_table(%struct.StateEntry*) #2

declare dso_local i32 @heap_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
