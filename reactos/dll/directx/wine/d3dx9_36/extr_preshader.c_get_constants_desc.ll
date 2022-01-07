; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_get_constants_desc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_get_constants_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_const_tab = type { i32, i32, i32, %struct.d3dx_const_param_eval_output*, %struct.d3dx_parameter**, %struct.TYPE_5__* }
%struct.d3dx_const_param_eval_output = type { i64, i64, i64, i64 }
%struct.d3dx_parameter = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i32 }
%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_preshader = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Could not get CTAB data, hr %#x.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Could not get CTAB desc, hr %#x.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Null constant handle.\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Could not find parameter %s in effect.\0A\00", align 1
@D3DXPC_OBJECT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"Object %s, parameter %p.\0A\00", align 1
@D3DXRS_SAMPLER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"Unexpected object type, constant %s.\0A\00", align 1
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [53 x i8] c"Register count exceeds parameter size, constant %s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Expected top level parameter '%s'.\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [52 x i8] c"skip_constants parameter %s is not register bound.\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Skipping constant %s.\0A\00", align 1
@compare_const_set = common dso_local global i32 0, align 4
@D3DXPC_FORCE_DWORD = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.d3dx_const_tab*, %struct.d3dx9_base_effect*, i8**, i32, %struct.d3dx_preshader*)* @get_constants_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_constants_desc(i32* %0, %struct.d3dx_const_tab* %1, %struct.d3dx9_base_effect* %2, i8** %3, i32 %4, %struct.d3dx_preshader* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.d3dx_const_tab*, align 8
  %10 = alloca %struct.d3dx9_base_effect*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.d3dx_preshader*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca %struct.d3dx_parameter**, align 8
  %17 = alloca %struct.TYPE_6__, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.d3dx_const_param_eval_output*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.d3dx_const_tab* %1, %struct.d3dx_const_tab** %9, align 8
  store %struct.d3dx9_base_effect* %2, %struct.d3dx9_base_effect** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.d3dx_preshader* %5, %struct.d3dx_preshader** %13, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @D3DXGetShaderConstantTable(i32* %25, i32** %14)
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %18, align 4
  %28 = call i64 @FAILED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %6
  %31 = load i32*, i32** %14, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %30, %6
  %34 = load i32, i32* %18, align 4
  %35 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @D3D_OK, align 4
  store i32 %36, i32* %7, align 4
  br label %531

37:                                               ; preds = %30
  %38 = load i32*, i32** %14, align 8
  %39 = call i32 @ID3DXConstantTable_GetDesc(i32* %38, %struct.TYPE_6__* %17)
  store i32 %39, i32* %18, align 4
  %40 = call i64 @FAILED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %18, align 4
  %44 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %527

45:                                               ; preds = %37
  %46 = call i32 (...) @GetProcessHeap()
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 32, %49
  %51 = trunc i64 %50 to i32
  %52 = call i8* @HeapAlloc(i32 %46, i32 0, i32 %51)
  %53 = bitcast i8* %52 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %15, align 8
  %54 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %55 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %54, i32 0, i32 5
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %55, align 8
  %56 = call i32 (...) @GetProcessHeap()
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 8, %59
  %61 = trunc i64 %60 to i32
  %62 = call i8* @HeapAlloc(i32 %56, i32 0, i32 %61)
  %63 = bitcast i8* %62 to %struct.d3dx_parameter**
  store %struct.d3dx_parameter** %63, %struct.d3dx_parameter*** %16, align 8
  %64 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %65 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %64, i32 0, i32 4
  store %struct.d3dx_parameter** %63, %struct.d3dx_parameter*** %65, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %67 = icmp ne %struct.TYPE_5__* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %45
  %69 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %16, align 8
  %70 = icmp ne %struct.d3dx_parameter** %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %68, %45
  %72 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %72, i32* %18, align 4
  br label %527

73:                                               ; preds = %68
  store i32 0, i32* %20, align 4
  br label %74

74:                                               ; preds = %310, %73
  %75 = load i32, i32* %20, align 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ult i32 %75, %77
  br i1 %78, label %79, label %313

79:                                               ; preds = %74
  %80 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %81 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %22, align 4
  %83 = load i32*, i32** %14, align 8
  %84 = load i32, i32* %20, align 4
  %85 = call i32 @ID3DXConstantTable_GetConstant(i32* %83, i32* null, i32 %84)
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %19, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %79
  %89 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %527

90:                                               ; preds = %79
  %91 = load i32*, i32** %14, align 8
  %92 = load i32, i32* %19, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %94 = load i32, i32* %22, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %95
  %97 = call i32 @get_ctab_constant_desc(i32* %91, i32 %92, %struct.TYPE_5__* %96, i32* %23)
  store i32 %97, i32* %18, align 4
  %98 = call i64 @FAILED(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  br label %527

101:                                              ; preds = %90
  %102 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %10, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %104 = load i32, i32* %22, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call %struct.d3dx_parameter* @get_parameter_by_name(%struct.d3dx9_base_effect* %102, i32* null, i32 %108)
  %110 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %16, align 8
  %111 = load i32, i32* %22, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.d3dx_parameter*, %struct.d3dx_parameter** %110, i64 %112
  store %struct.d3dx_parameter* %109, %struct.d3dx_parameter** %113, align 8
  %114 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %16, align 8
  %115 = load i32, i32* %22, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.d3dx_parameter*, %struct.d3dx_parameter** %114, i64 %116
  %118 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %117, align 8
  %119 = icmp ne %struct.d3dx_parameter* %118, null
  br i1 %119, label %128, label %120

120:                                              ; preds = %101
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %122 = load i32, i32* %22, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  br label %310

128:                                              ; preds = %101
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %130 = load i32, i32* %22, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @D3DXPC_OBJECT, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %215

137:                                              ; preds = %128
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %139 = load i32, i32* %22, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %16, align 8
  %145 = load i32, i32* %22, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.d3dx_parameter*, %struct.d3dx_parameter** %144, i64 %146
  %148 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %147, align 8
  %149 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %143, %struct.d3dx_parameter* %148)
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %151 = load i32, i32* %22, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @D3DXRS_SAMPLER, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %178, label %158

158:                                              ; preds = %137
  %159 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %16, align 8
  %160 = load i32, i32* %22, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.d3dx_parameter*, %struct.d3dx_parameter** %159, i64 %161
  %163 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %162, align 8
  %164 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @D3DXPC_OBJECT, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %178, label %168

168:                                              ; preds = %158
  %169 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %16, align 8
  %170 = load i32, i32* %22, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.d3dx_parameter*, %struct.d3dx_parameter** %169, i64 %171
  %173 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %172, align 8
  %174 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @is_param_type_sampler(i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %188, label %178

178:                                              ; preds = %168, %158, %137
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %180 = load i32, i32* %22, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @debugstr_a(i32 %184)
  %186 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %185)
  %187 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %187, i32* %18, align 4
  br label %527

188:                                              ; preds = %168
  %189 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %16, align 8
  %190 = load i32, i32* %22, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds %struct.d3dx_parameter*, %struct.d3dx_parameter** %189, i64 %191
  %193 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %192, align 8
  %194 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = call i64 @max(i32 %195, i32 1)
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %198 = load i32, i32* %22, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = icmp slt i64 %196, %202
  br i1 %203, label %204, label %214

204:                                              ; preds = %188
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %206 = load i32, i32* %22, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @debugstr_a(i32 %210)
  %212 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %211)
  %213 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %213, i32* %18, align 4
  br label %527

214:                                              ; preds = %188
  br label %215

215:                                              ; preds = %214, %128
  %216 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %16, align 8
  %217 = load i32, i32* %22, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.d3dx_parameter*, %struct.d3dx_parameter** %216, i64 %218
  %220 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %219, align 8
  %221 = call i32 @is_top_level_parameter(%struct.d3dx_parameter* %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %233, label %223

223:                                              ; preds = %215
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %225 = load i32, i32* %22, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @debugstr_a(i32 %229)
  %231 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %230)
  %232 = load i32, i32* @E_FAIL, align 4
  store i32 %232, i32* %18, align 4
  br label %527

233:                                              ; preds = %215
  store i32 0, i32* %21, align 4
  br label %234

234:                                              ; preds = %273, %233
  %235 = load i32, i32* %21, align 4
  %236 = load i32, i32* %12, align 4
  %237 = icmp ult i32 %235, %236
  br i1 %237, label %238, label %276

238:                                              ; preds = %234
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %240 = load i32, i32* %22, align 4
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = load i8**, i8*** %11, align 8
  %246 = load i32, i32* %21, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds i8*, i8** %245, i64 %247
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 @strcmp(i32 %244, i8* %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %272, label %252

252:                                              ; preds = %238
  %253 = load i32, i32* %23, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %264, label %255

255:                                              ; preds = %252
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %257 = load i32, i32* %22, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  %262 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i32 %261)
  %263 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %263, i32* %18, align 4
  br label %527

264:                                              ; preds = %252
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %266 = load i32, i32* %22, align 4
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %270)
  br label %276

272:                                              ; preds = %238
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %21, align 4
  %275 = add i32 %274, 1
  store i32 %275, i32* %21, align 4
  br label %234

276:                                              ; preds = %264, %234
  %277 = load i32, i32* %21, align 4
  %278 = load i32, i32* %12, align 4
  %279 = icmp ult i32 %277, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %276
  br label %310

281:                                              ; preds = %276
  %282 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %283 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = add i32 %284, 1
  store i32 %285, i32* %283, align 8
  %286 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %16, align 8
  %287 = load i32, i32* %22, align 4
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds %struct.d3dx_parameter*, %struct.d3dx_parameter** %286, i64 %288
  %290 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %289, align 8
  %291 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @D3DXPC_OBJECT, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %281
  br label %310

296:                                              ; preds = %281
  %297 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %298 = load i32*, i32** %14, align 8
  %299 = load i32, i32* %19, align 4
  %300 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %16, align 8
  %301 = load i32, i32* %22, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds %struct.d3dx_parameter*, %struct.d3dx_parameter** %300, i64 %302
  %304 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %303, align 8
  %305 = call i32 @init_set_constants_param(%struct.d3dx_const_tab* %297, i32* %298, i32 %299, %struct.d3dx_parameter* %304)
  store i32 %305, i32* %18, align 4
  %306 = call i64 @FAILED(i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %296
  br label %527

309:                                              ; preds = %296
  br label %310

310:                                              ; preds = %309, %295, %280, %120
  %311 = load i32, i32* %20, align 4
  %312 = add i32 %311, 1
  store i32 %312, i32* %20, align 4
  br label %74

313:                                              ; preds = %74
  %314 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %13, align 8
  %315 = icmp ne %struct.d3dx_preshader* %314, null
  br i1 %315, label %316, label %320

316:                                              ; preds = %313
  %317 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %318 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %13, align 8
  %319 = call i32 @append_pres_const_sets_for_shader_input(%struct.d3dx_const_tab* %317, %struct.d3dx_preshader* %318)
  br label %320

320:                                              ; preds = %316, %313
  %321 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %322 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %526

325:                                              ; preds = %320
  %326 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %327 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %326, i32 0, i32 3
  %328 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %327, align 8
  %329 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %330 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* @compare_const_set, align 4
  %333 = call i32 @qsort(%struct.d3dx_const_param_eval_output* %328, i32 %331, i32 32, i32 %332)
  store i32 0, i32* %20, align 4
  br label %334

334:                                              ; preds = %499, %325
  %335 = load i32, i32* %20, align 4
  %336 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %337 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = sub nsw i32 %338, 1
  %340 = icmp ult i32 %335, %339
  br i1 %340, label %341, label %500

341:                                              ; preds = %334
  %342 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %343 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %342, i32 0, i32 3
  %344 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %343, align 8
  %345 = load i32, i32* %20, align 4
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %344, i64 %346
  %348 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = load i64, i64* @D3DXPC_FORCE_DWORD, align 8
  %351 = icmp eq i64 %349, %350
  br i1 %351, label %352, label %496

352:                                              ; preds = %341
  %353 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %354 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %353, i32 0, i32 3
  %355 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %354, align 8
  %356 = load i32, i32* %20, align 4
  %357 = add i32 %356, 1
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %355, i64 %358
  %360 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = load i64, i64* @D3DXPC_FORCE_DWORD, align 8
  %363 = icmp eq i64 %361, %362
  br i1 %363, label %364, label %496

364:                                              ; preds = %352
  %365 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %366 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %365, i32 0, i32 3
  %367 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %366, align 8
  %368 = load i32, i32* %20, align 4
  %369 = zext i32 %368 to i64
  %370 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %367, i64 %369
  %371 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %370, i32 0, i32 1
  %372 = load i64, i64* %371, align 8
  %373 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %374 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %373, i32 0, i32 3
  %375 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %374, align 8
  %376 = load i32, i32* %20, align 4
  %377 = add i32 %376, 1
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %375, i64 %378
  %380 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %379, i32 0, i32 1
  %381 = load i64, i64* %380, align 8
  %382 = icmp eq i64 %372, %381
  br i1 %382, label %383, label %496

383:                                              ; preds = %364
  %384 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %385 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %384, i32 0, i32 3
  %386 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %385, align 8
  %387 = load i32, i32* %20, align 4
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %386, i64 %388
  %390 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %389, i32 0, i32 2
  %391 = load i64, i64* %390, align 8
  %392 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %393 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %392, i32 0, i32 3
  %394 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %393, align 8
  %395 = load i32, i32* %20, align 4
  %396 = zext i32 %395 to i64
  %397 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %394, i64 %396
  %398 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %397, i32 0, i32 3
  %399 = load i64, i64* %398, align 8
  %400 = add nsw i64 %391, %399
  %401 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %402 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %401, i32 0, i32 3
  %403 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %402, align 8
  %404 = load i32, i32* %20, align 4
  %405 = add i32 %404, 1
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %403, i64 %406
  %408 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %407, i32 0, i32 2
  %409 = load i64, i64* %408, align 8
  %410 = icmp sge i64 %400, %409
  br i1 %410, label %411, label %496

411:                                              ; preds = %383
  %412 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %413 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %412, i32 0, i32 3
  %414 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %413, align 8
  %415 = load i32, i32* %20, align 4
  %416 = zext i32 %415 to i64
  %417 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %414, i64 %416
  %418 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %417, i32 0, i32 2
  %419 = load i64, i64* %418, align 8
  %420 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %421 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %420, i32 0, i32 3
  %422 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %421, align 8
  %423 = load i32, i32* %20, align 4
  %424 = zext i32 %423 to i64
  %425 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %422, i64 %424
  %426 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %425, i32 0, i32 3
  %427 = load i64, i64* %426, align 8
  %428 = add nsw i64 %419, %427
  %429 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %430 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %429, i32 0, i32 3
  %431 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %430, align 8
  %432 = load i32, i32* %20, align 4
  %433 = add i32 %432, 1
  %434 = zext i32 %433 to i64
  %435 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %431, i64 %434
  %436 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %435, i32 0, i32 2
  %437 = load i64, i64* %436, align 8
  %438 = add nsw i64 %437, 1
  %439 = icmp sle i64 %428, %438
  %440 = zext i1 %439 to i32
  %441 = call i32 @assert(i32 %440)
  %442 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %443 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %442, i32 0, i32 3
  %444 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %443, align 8
  %445 = load i32, i32* %20, align 4
  %446 = add i32 %445, 1
  %447 = zext i32 %446 to i64
  %448 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %444, i64 %447
  %449 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %448, i32 0, i32 2
  %450 = load i64, i64* %449, align 8
  %451 = add nsw i64 %450, 1
  %452 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %453 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %452, i32 0, i32 3
  %454 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %453, align 8
  %455 = load i32, i32* %20, align 4
  %456 = zext i32 %455 to i64
  %457 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %454, i64 %456
  %458 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %457, i32 0, i32 2
  %459 = load i64, i64* %458, align 8
  %460 = sub nsw i64 %451, %459
  %461 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %462 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %461, i32 0, i32 3
  %463 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %462, align 8
  %464 = load i32, i32* %20, align 4
  %465 = zext i32 %464 to i64
  %466 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %463, i64 %465
  %467 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %466, i32 0, i32 3
  store i64 %460, i64* %467, align 8
  %468 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %469 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %468, i32 0, i32 3
  %470 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %469, align 8
  %471 = load i32, i32* %20, align 4
  %472 = add i32 %471, 1
  %473 = zext i32 %472 to i64
  %474 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %470, i64 %473
  %475 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %476 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %475, i32 0, i32 3
  %477 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %476, align 8
  %478 = load i32, i32* %20, align 4
  %479 = add i32 %478, 2
  %480 = zext i32 %479 to i64
  %481 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %477, i64 %480
  %482 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %483 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %482, i32 0, i32 1
  %484 = load i32, i32* %483, align 4
  %485 = load i32, i32* %20, align 4
  %486 = sub i32 %484, %485
  %487 = sub i32 %486, 2
  %488 = zext i32 %487 to i64
  %489 = mul i64 32, %488
  %490 = trunc i64 %489 to i32
  %491 = call i32 @memmove(%struct.d3dx_const_param_eval_output* %474, %struct.d3dx_const_param_eval_output* %481, i32 %490)
  %492 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %493 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %492, i32 0, i32 1
  %494 = load i32, i32* %493, align 4
  %495 = add nsw i32 %494, -1
  store i32 %495, i32* %493, align 4
  br label %499

496:                                              ; preds = %383, %364, %352, %341
  %497 = load i32, i32* %20, align 4
  %498 = add i32 %497, 1
  store i32 %498, i32* %20, align 4
  br label %499

499:                                              ; preds = %496, %411
  br label %334

500:                                              ; preds = %334
  %501 = call i32 (...) @GetProcessHeap()
  %502 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %503 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %502, i32 0, i32 3
  %504 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %503, align 8
  %505 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %506 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %505, i32 0, i32 1
  %507 = load i32, i32* %506, align 4
  %508 = sext i32 %507 to i64
  %509 = mul i64 32, %508
  %510 = trunc i64 %509 to i32
  %511 = call %struct.d3dx_const_param_eval_output* @HeapReAlloc(i32 %501, i32 0, %struct.d3dx_const_param_eval_output* %504, i32 %510)
  store %struct.d3dx_const_param_eval_output* %511, %struct.d3dx_const_param_eval_output** %24, align 8
  %512 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %24, align 8
  %513 = icmp ne %struct.d3dx_const_param_eval_output* %512, null
  br i1 %513, label %514, label %523

514:                                              ; preds = %500
  %515 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %24, align 8
  %516 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %517 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %516, i32 0, i32 3
  store %struct.d3dx_const_param_eval_output* %515, %struct.d3dx_const_param_eval_output** %517, align 8
  %518 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %519 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 4
  %521 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %9, align 8
  %522 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %521, i32 0, i32 2
  store i32 %520, i32* %522, align 8
  br label %525

523:                                              ; preds = %500
  %524 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  br label %525

525:                                              ; preds = %523, %514
  br label %526

526:                                              ; preds = %525, %320
  br label %527

527:                                              ; preds = %526, %308, %255, %223, %204, %178, %100, %88, %71, %42
  %528 = load i32*, i32** %14, align 8
  %529 = call i32 @ID3DXConstantTable_Release(i32* %528)
  %530 = load i32, i32* %18, align 4
  store i32 %530, i32* %7, align 4
  br label %531

531:                                              ; preds = %527, %33
  %532 = load i32, i32* %7, align 4
  ret i32 %532
}

declare dso_local i32 @D3DXGetShaderConstantTable(i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @ID3DXConstantTable_GetDesc(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ID3DXConstantTable_GetConstant(i32*, i32*, i32) #1

declare dso_local i32 @get_ctab_constant_desc(i32*, i32, %struct.TYPE_5__*, i32*) #1

declare dso_local %struct.d3dx_parameter* @get_parameter_by_name(%struct.d3dx9_base_effect*, i32*, i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @is_param_type_sampler(i32) #1

declare dso_local i32 @debugstr_a(i32) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @is_top_level_parameter(%struct.d3dx_parameter*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @init_set_constants_param(%struct.d3dx_const_tab*, i32*, i32, %struct.d3dx_parameter*) #1

declare dso_local i32 @append_pres_const_sets_for_shader_input(%struct.d3dx_const_tab*, %struct.d3dx_preshader*) #1

declare dso_local i32 @qsort(%struct.d3dx_const_param_eval_output*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memmove(%struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output*, i32) #1

declare dso_local %struct.d3dx_const_param_eval_output* @HeapReAlloc(i32, i32, %struct.d3dx_const_param_eval_output*, i32) #1

declare dso_local i32 @ID3DXConstantTable_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
