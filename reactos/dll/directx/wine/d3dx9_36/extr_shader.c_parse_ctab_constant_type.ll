; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_shader.c_parse_ctab_constant_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_shader.c_parse_ctab_constant_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctab_constant = type { %struct.ctab_constant*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i64, i32, i32, i32, i32, i8*, i32, i32, i32, i64, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@D3D_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"name %s, elements %u, index %u, defaultvalue %p, regset %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"class %s, type %s, rows %d, columns %d, elements %d, struct_members %d\0A\00", align 1
@D3DXPC_STRUCT = common dso_local global i64 0, align 8
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@D3DXPC_OBJECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Unhandled register set %s, type class %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, %struct.ctab_constant*, i32, i32, i32, i32*, i32, i32)* @parse_ctab_constant_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_ctab_constant_type(i8* %0, i32 %1, %struct.ctab_constant* %2, i32 %3, i32 %4, i32 %5, i32* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ctab_constant*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_6__*, align 8
  %21 = alloca %struct.TYPE_7__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i32 %1, i32* %12, align 4
  store %struct.ctab_constant* %2, %struct.ctab_constant** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %28 = load i8*, i8** %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = bitcast i8* %31 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %20, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %21, align 8
  %33 = load i64, i64* @D3D_OK, align 8
  store i64 %33, i64* %22, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %34 = load i32*, i32** %17, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %9
  %37 = load i8*, i8** %11, align 8
  %38 = load i32*, i32** %17, align 8
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  br label %43

42:                                               ; preds = %9
  br label %43

43:                                               ; preds = %42, %36
  %44 = phi i8* [ %41, %36 ], [ null, %42 ]
  %45 = load %struct.ctab_constant*, %struct.ctab_constant** %13, align 8
  %46 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ctab_constant*, %struct.ctab_constant** %13, align 8
  %52 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i64 %50, i64* %53, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ctab_constant*, %struct.ctab_constant** %13, align 8
  %58 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 11
  store i32 %56, i32* %59, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ctab_constant*, %struct.ctab_constant** %13, align 8
  %64 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ctab_constant*, %struct.ctab_constant** %13, align 8
  %70 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %43
  br label %79

75:                                               ; preds = %43
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  br label %79

79:                                               ; preds = %75, %74
  %80 = phi i32 [ 1, %74 ], [ %78, %75 ]
  %81 = load %struct.ctab_constant*, %struct.ctab_constant** %13, align 8
  %82 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 4
  store i32 %80, i32* %83, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ctab_constant*, %struct.ctab_constant** %13, align 8
  %88 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 5
  store i32 %86, i32* %89, align 4
  %90 = load i8*, i8** %11, align 8
  %91 = load i32, i32* %18, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load %struct.ctab_constant*, %struct.ctab_constant** %13, align 8
  %95 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 6
  store i8* %93, i8** %96, align 8
  %97 = load i32, i32* %19, align 4
  %98 = load %struct.ctab_constant*, %struct.ctab_constant** %13, align 8
  %99 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 7
  store i32 %97, i32* %100, align 8
  %101 = load i32, i32* %15, align 4
  %102 = load %struct.ctab_constant*, %struct.ctab_constant** %13, align 8
  %103 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 8
  store i32 %101, i32* %104, align 4
  %105 = load %struct.ctab_constant*, %struct.ctab_constant** %13, align 8
  %106 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 6
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.ctab_constant*, %struct.ctab_constant** %13, align 8
  %110 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = load %struct.ctab_constant*, %struct.ctab_constant** %13, align 8
  %115 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load i32, i32* %19, align 4
  %119 = call i32 @debug_d3dxparameter_registerset(i32 %118)
  %120 = call i32 (i8*, i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %108, i32 %112, i32 %113, i8* %117, i32 %119)
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @debug_d3dxparameter_class(i64 %123)
  %125 = sext i32 %124 to i64
  %126 = inttoptr i64 %125 to i8*
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @debug_d3dxparameter_type(i32 %129)
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i8* %126, i32 %130, i32 %133, i32 %136, i32 %139, i32 %142)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = icmp sgt i32 %146, 1
  br i1 %147, label %148, label %155

148:                                              ; preds = %79
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %148
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  store i32 %154, i32* %24, align 4
  br label %178

155:                                              ; preds = %148, %79
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @D3DXPC_STRUCT, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %177

161:                                              ; preds = %155
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %161
  %167 = load i8*, i8** %11, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %167, i64 %171
  %173 = bitcast i8* %172 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %173, %struct.TYPE_7__** %21, align 8
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %24, align 4
  br label %177

177:                                              ; preds = %166, %161, %155
  br label %178

178:                                              ; preds = %177, %151
  %179 = load i32, i32* %24, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %269

181:                                              ; preds = %178
  %182 = call i32 (...) @GetProcessHeap()
  %183 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %184 = load i32, i32* %24, align 4
  %185 = sext i32 %184 to i64
  %186 = mul i64 80, %185
  %187 = trunc i64 %186 to i32
  %188 = call %struct.ctab_constant* @HeapAlloc(i32 %182, i32 %183, i32 %187)
  %189 = load %struct.ctab_constant*, %struct.ctab_constant** %13, align 8
  %190 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %189, i32 0, i32 0
  store %struct.ctab_constant* %188, %struct.ctab_constant** %190, align 8
  %191 = load %struct.ctab_constant*, %struct.ctab_constant** %13, align 8
  %192 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %191, i32 0, i32 0
  %193 = load %struct.ctab_constant*, %struct.ctab_constant** %192, align 8
  %194 = icmp ne %struct.ctab_constant* %193, null
  br i1 %194, label %198, label %195

195:                                              ; preds = %181
  %196 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %197 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %197, i64* %22, align 8
  br label %396

198:                                              ; preds = %181
  store i32 0, i32* %23, align 4
  br label %199

199:                                              ; preds = %265, %198
  %200 = load i32, i32* %23, align 4
  %201 = load i32, i32* %24, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %268

203:                                              ; preds = %199
  %204 = load i8*, i8** %11, align 8
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %206 = icmp ne %struct.TYPE_7__* %205, null
  br i1 %206, label %207, label %214

207:                                              ; preds = %203
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %209 = load i32, i32* %23, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  br label %216

214:                                              ; preds = %203
  %215 = load i32, i32* %12, align 4
  br label %216

216:                                              ; preds = %214, %207
  %217 = phi i32 [ %213, %207 ], [ %215, %214 ]
  %218 = load %struct.ctab_constant*, %struct.ctab_constant** %13, align 8
  %219 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %218, i32 0, i32 0
  %220 = load %struct.ctab_constant*, %struct.ctab_constant** %219, align 8
  %221 = load i32, i32* %23, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %220, i64 %222
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %225 = icmp eq %struct.TYPE_7__* %224, null
  %226 = zext i1 %225 to i32
  %227 = load i32, i32* %15, align 4
  %228 = load i32, i32* %25, align 4
  %229 = add nsw i32 %227, %228
  %230 = load i32, i32* %16, align 4
  %231 = load i32*, i32** %17, align 8
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %233 = icmp ne %struct.TYPE_7__* %232, null
  br i1 %233, label %234, label %241

234:                                              ; preds = %216
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %236 = load i32, i32* %23, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  br label %243

241:                                              ; preds = %216
  %242 = load i32, i32* %18, align 4
  br label %243

243:                                              ; preds = %241, %234
  %244 = phi i32 [ %240, %234 ], [ %242, %241 ]
  %245 = load i32, i32* %19, align 4
  %246 = call i64 @parse_ctab_constant_type(i8* %204, i32 %217, %struct.ctab_constant* %223, i32 %226, i32 %229, i32 %230, i32* %231, i32 %244, i32 %245)
  store i64 %246, i64* %22, align 8
  %247 = load i64, i64* %22, align 8
  %248 = load i64, i64* @D3D_OK, align 8
  %249 = icmp ne i64 %247, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %243
  br label %396

251:                                              ; preds = %243
  %252 = load %struct.ctab_constant*, %struct.ctab_constant** %13, align 8
  %253 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %252, i32 0, i32 0
  %254 = load %struct.ctab_constant*, %struct.ctab_constant** %253, align 8
  %255 = load i32, i32* %23, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %254, i64 %256
  %258 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 10
  %260 = load i64, i64* %259, align 8
  %261 = load i32, i32* %25, align 4
  %262 = sext i32 %261 to i64
  %263 = add nsw i64 %262, %260
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %25, align 4
  br label %265

265:                                              ; preds = %251
  %266 = load i32, i32* %23, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %23, align 4
  br label %199

268:                                              ; preds = %199
  br label %369

269:                                              ; preds = %178
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = mul nsw i32 %272, %275
  store i32 %276, i32* %26, align 4
  %277 = load i32, i32* @FALSE, align 4
  store i32 %277, i32* %27, align 4
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  %284 = mul nsw i32 %280, %283
  store i32 %284, i32* %25, align 4
  %285 = load i32, i32* %19, align 4
  switch i32 %285, label %346 [
    i32 131, label %286
    i32 130, label %309
    i32 129, label %309
    i32 128, label %338
  ]

286:                                              ; preds = %269
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 133
  br i1 %290, label %291, label %306

291:                                              ; preds = %286
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 132
  br i1 %295, label %296, label %306

296:                                              ; preds = %291
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 134
  br i1 %300, label %301, label %306

301:                                              ; preds = %296
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 135
  br label %306

306:                                              ; preds = %301, %296, %291, %286
  %307 = phi i1 [ false, %296 ], [ false, %291 ], [ false, %286 ], [ %305, %301 ]
  %308 = zext i1 %307 to i32
  store i32 %308, i32* %27, align 4
  br label %348

309:                                              ; preds = %269, %269
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  switch i64 %312, label %335 [
    i64 132, label %313
    i64 133, label %314
    i64 134, label %319
    i64 135, label %327
  ]

313:                                              ; preds = %309
  store i32 1, i32* %25, align 4
  br label %314

314:                                              ; preds = %309, %313
  %315 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = mul nsw i32 %317, 4
  store i32 %318, i32* %26, align 4
  br label %337

319:                                              ; preds = %309
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 8
  %323 = mul nsw i32 %322, 4
  store i32 %323, i32* %26, align 4
  %324 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  store i32 %326, i32* %25, align 4
  br label %337

327:                                              ; preds = %309
  %328 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = mul nsw i32 %330, 4
  store i32 %331, i32* %26, align 4
  %332 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  store i32 %334, i32* %25, align 4
  br label %337

335:                                              ; preds = %309
  %336 = load i32, i32* @TRUE, align 4
  store i32 %336, i32* %27, align 4
  br label %337

337:                                              ; preds = %335, %327, %319, %314
  br label %348

338:                                              ; preds = %269
  store i32 1, i32* %25, align 4
  %339 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load i32, i32* @D3DXPC_OBJECT, align 4
  %343 = sext i32 %342 to i64
  %344 = icmp ne i64 %341, %343
  %345 = zext i1 %344 to i32
  store i32 %345, i32* %27, align 4
  br label %348

346:                                              ; preds = %269
  %347 = load i32, i32* @TRUE, align 4
  store i32 %347, i32* %27, align 4
  br label %348

348:                                              ; preds = %346, %338, %337, %306
  %349 = load i32, i32* %27, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %359

351:                                              ; preds = %348
  %352 = load i32, i32* %19, align 4
  %353 = call i32 @debug_d3dxparameter_registerset(i32 %352)
  %354 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = call i32 @debug_d3dxparameter_class(i64 %356)
  %358 = call i32 @FIXME(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %353, i32 %357)
  br label %359

359:                                              ; preds = %351, %348
  %360 = load i32*, i32** %17, align 8
  %361 = icmp ne i32* %360, null
  br i1 %361, label %362, label %368

362:                                              ; preds = %359
  %363 = load i32, i32* %26, align 4
  %364 = mul nsw i32 %363, 4
  %365 = load i32*, i32** %17, align 8
  %366 = load i32, i32* %365, align 4
  %367 = add nsw i32 %366, %364
  store i32 %367, i32* %365, align 4
  br label %368

368:                                              ; preds = %362, %359
  br label %369

369:                                              ; preds = %368, %268
  %370 = load i32, i32* %16, align 4
  %371 = load i32, i32* %15, align 4
  %372 = sub nsw i32 %370, %371
  %373 = load i32, i32* %25, align 4
  %374 = call i32 @min(i32 %372, i32 %373)
  %375 = call i64 @max(i32 0, i32 %374)
  %376 = load %struct.ctab_constant*, %struct.ctab_constant** %13, align 8
  %377 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %377, i32 0, i32 10
  store i64 %375, i64* %378, align 8
  %379 = load %struct.ctab_constant*, %struct.ctab_constant** %13, align 8
  %380 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %380, i32 0, i32 4
  %382 = load i32, i32* %381, align 8
  %383 = mul nsw i32 4, %382
  %384 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %385 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 8
  %387 = mul nsw i32 %383, %386
  %388 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 4
  %391 = mul nsw i32 %387, %390
  %392 = load %struct.ctab_constant*, %struct.ctab_constant** %13, align 8
  %393 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %393, i32 0, i32 9
  store i32 %391, i32* %394, align 8
  %395 = load i64, i64* @D3D_OK, align 8
  store i64 %395, i64* %10, align 8
  br label %427

396:                                              ; preds = %250, %195
  %397 = load %struct.ctab_constant*, %struct.ctab_constant** %13, align 8
  %398 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %397, i32 0, i32 0
  %399 = load %struct.ctab_constant*, %struct.ctab_constant** %398, align 8
  %400 = icmp ne %struct.ctab_constant* %399, null
  br i1 %400, label %401, label %425

401:                                              ; preds = %396
  store i32 0, i32* %23, align 4
  br label %402

402:                                              ; preds = %414, %401
  %403 = load i32, i32* %23, align 4
  %404 = load i32, i32* %24, align 4
  %405 = icmp slt i32 %403, %404
  br i1 %405, label %406, label %417

406:                                              ; preds = %402
  %407 = load %struct.ctab_constant*, %struct.ctab_constant** %13, align 8
  %408 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %407, i32 0, i32 0
  %409 = load %struct.ctab_constant*, %struct.ctab_constant** %408, align 8
  %410 = load i32, i32* %23, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %409, i64 %411
  %413 = call i32 @free_constant(%struct.ctab_constant* %412)
  br label %414

414:                                              ; preds = %406
  %415 = load i32, i32* %23, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %23, align 4
  br label %402

417:                                              ; preds = %402
  %418 = call i32 (...) @GetProcessHeap()
  %419 = load %struct.ctab_constant*, %struct.ctab_constant** %13, align 8
  %420 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %419, i32 0, i32 0
  %421 = load %struct.ctab_constant*, %struct.ctab_constant** %420, align 8
  %422 = call i32 @HeapFree(i32 %418, i32 0, %struct.ctab_constant* %421)
  %423 = load %struct.ctab_constant*, %struct.ctab_constant** %13, align 8
  %424 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %423, i32 0, i32 0
  store %struct.ctab_constant* null, %struct.ctab_constant** %424, align 8
  br label %425

425:                                              ; preds = %417, %396
  %426 = load i64, i64* %22, align 8
  store i64 %426, i64* %10, align 8
  br label %427

427:                                              ; preds = %425, %369
  %428 = load i64, i64* %10, align 8
  ret i64 %428
}

declare dso_local i32 @TRACE(i8*, i8*, i32, i32, ...) #1

declare dso_local i32 @debug_d3dxparameter_registerset(i32) #1

declare dso_local i32 @debug_d3dxparameter_class(i64) #1

declare dso_local i32 @debug_d3dxparameter_type(i32) #1

declare dso_local %struct.ctab_constant* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @FIXME(i8*, i32, i32) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @free_constant(%struct.ctab_constant*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.ctab_constant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
