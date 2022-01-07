; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_rege_dfa.c_getvacant.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_rege_dfa.c_getvacant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sset = type { i32, i32*, %struct.arcp*, %struct.sset**, %struct.arcp }
%struct.arcp = type { i64, %struct.sset*, i32, i32* }
%struct.vars = type { i32 }
%struct.dfa = type { i32, i32*, i32*, %struct.sset* }

@LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"zapping c%d's %ld outarc\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"del outarc %d from c%d's in chn\0A\00", align 1
@POSTSTATE = common dso_local global i32 0, align 4
@NOPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sset* (%struct.vars*, %struct.dfa*, i32*, i32*)* @getvacant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sset* @getvacant(%struct.vars* %0, %struct.dfa* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.sset*, align 8
  %6 = alloca %struct.vars*, align 8
  %7 = alloca %struct.dfa*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sset*, align 8
  %12 = alloca %struct.sset*, align 8
  %13 = alloca %struct.arcp, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.arcp, align 8
  store %struct.vars* %0, %struct.vars** %6, align 8
  store %struct.dfa* %1, %struct.dfa** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.vars*, %struct.vars** %6, align 8
  %17 = load %struct.dfa*, %struct.dfa** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call %struct.sset* @pickss(%struct.vars* %16, %struct.dfa* %17, i32* %18, i32* %19)
  store %struct.sset* %20, %struct.sset** %11, align 8
  %21 = load %struct.sset*, %struct.sset** %11, align 8
  %22 = icmp eq %struct.sset* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store %struct.sset* null, %struct.sset** %5, align 8
  br label %294

24:                                               ; preds = %4
  %25 = load %struct.sset*, %struct.sset** %11, align 8
  %26 = getelementptr inbounds %struct.sset, %struct.sset* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @LOCKED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.sset*, %struct.sset** %11, align 8
  %35 = getelementptr inbounds %struct.sset, %struct.sset* %34, i32 0, i32 4
  %36 = bitcast %struct.arcp* %13 to i8*
  %37 = bitcast %struct.arcp* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 32, i1 false)
  br label %38

38:                                               ; preds = %42, %24
  %39 = getelementptr inbounds %struct.arcp, %struct.arcp* %13, i32 0, i32 1
  %40 = load %struct.sset*, %struct.sset** %39, align 8
  store %struct.sset* %40, %struct.sset** %12, align 8
  %41 = icmp ne %struct.sset* %40, null
  br i1 %41, label %42, label %75

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.arcp, %struct.arcp* %13, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %14, align 8
  %45 = load %struct.sset*, %struct.sset** %12, align 8
  %46 = load %struct.dfa*, %struct.dfa** %7, align 8
  %47 = getelementptr inbounds %struct.dfa, %struct.dfa* %46, i32 0, i32 3
  %48 = load %struct.sset*, %struct.sset** %47, align 8
  %49 = ptrtoint %struct.sset* %45 to i64
  %50 = ptrtoint %struct.sset* %48 to i64
  %51 = sub i64 %49, %50
  %52 = sdiv exact i64 %51, 64
  %53 = trunc i64 %52 to i32
  %54 = load i64, i64* %14, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 @FDEBUG(i8* %55)
  %57 = load %struct.sset*, %struct.sset** %12, align 8
  %58 = getelementptr inbounds %struct.sset, %struct.sset* %57, i32 0, i32 3
  %59 = load %struct.sset**, %struct.sset*** %58, align 8
  %60 = load i64, i64* %14, align 8
  %61 = getelementptr inbounds %struct.sset*, %struct.sset** %59, i64 %60
  store %struct.sset* null, %struct.sset** %61, align 8
  %62 = load %struct.sset*, %struct.sset** %12, align 8
  %63 = getelementptr inbounds %struct.sset, %struct.sset* %62, i32 0, i32 2
  %64 = load %struct.arcp*, %struct.arcp** %63, align 8
  %65 = load i64, i64* %14, align 8
  %66 = getelementptr inbounds %struct.arcp, %struct.arcp* %64, i64 %65
  %67 = bitcast %struct.arcp* %13 to i8*
  %68 = bitcast %struct.arcp* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 32, i1 false)
  %69 = load %struct.sset*, %struct.sset** %12, align 8
  %70 = getelementptr inbounds %struct.sset, %struct.sset* %69, i32 0, i32 2
  %71 = load %struct.arcp*, %struct.arcp** %70, align 8
  %72 = load i64, i64* %14, align 8
  %73 = getelementptr inbounds %struct.arcp, %struct.arcp* %71, i64 %72
  %74 = getelementptr inbounds %struct.arcp, %struct.arcp* %73, i32 0, i32 1
  store %struct.sset* null, %struct.sset** %74, align 8
  br label %38

75:                                               ; preds = %38
  %76 = load %struct.sset*, %struct.sset** %11, align 8
  %77 = getelementptr inbounds %struct.sset, %struct.sset* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.arcp, %struct.arcp* %77, i32 0, i32 1
  store %struct.sset* null, %struct.sset** %78, align 8
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %221, %75
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.dfa*, %struct.dfa** %7, align 8
  %82 = getelementptr inbounds %struct.dfa, %struct.dfa* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %224

85:                                               ; preds = %79
  %86 = load %struct.sset*, %struct.sset** %11, align 8
  %87 = getelementptr inbounds %struct.sset, %struct.sset* %86, i32 0, i32 3
  %88 = load %struct.sset**, %struct.sset*** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.sset*, %struct.sset** %88, i64 %90
  %92 = load %struct.sset*, %struct.sset** %91, align 8
  store %struct.sset* %92, %struct.sset** %12, align 8
  %93 = load %struct.sset*, %struct.sset** %12, align 8
  %94 = load %struct.sset*, %struct.sset** %11, align 8
  %95 = icmp ne %struct.sset* %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load %struct.sset*, %struct.sset** %12, align 8
  %99 = icmp eq %struct.sset* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %85
  br label %221

101:                                              ; preds = %85
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.sset*, %struct.sset** %12, align 8
  %104 = load %struct.dfa*, %struct.dfa** %7, align 8
  %105 = getelementptr inbounds %struct.dfa, %struct.dfa* %104, i32 0, i32 3
  %106 = load %struct.sset*, %struct.sset** %105, align 8
  %107 = ptrtoint %struct.sset* %103 to i64
  %108 = ptrtoint %struct.sset* %106 to i64
  %109 = sub i64 %107, %108
  %110 = sdiv exact i64 %109, 64
  %111 = trunc i64 %110 to i32
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i8*
  %114 = call i32 @FDEBUG(i8* %113)
  %115 = load %struct.sset*, %struct.sset** %12, align 8
  %116 = getelementptr inbounds %struct.sset, %struct.sset* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.arcp, %struct.arcp* %116, i32 0, i32 1
  %118 = load %struct.sset*, %struct.sset** %117, align 8
  %119 = load %struct.sset*, %struct.sset** %11, align 8
  %120 = icmp eq %struct.sset* %118, %119
  br i1 %120, label %121, label %140

121:                                              ; preds = %101
  %122 = load %struct.sset*, %struct.sset** %12, align 8
  %123 = getelementptr inbounds %struct.sset, %struct.sset* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.arcp, %struct.arcp* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = icmp eq i64 %125, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %121
  %130 = load %struct.sset*, %struct.sset** %12, align 8
  %131 = getelementptr inbounds %struct.sset, %struct.sset* %130, i32 0, i32 4
  %132 = load %struct.sset*, %struct.sset** %11, align 8
  %133 = getelementptr inbounds %struct.sset, %struct.sset* %132, i32 0, i32 2
  %134 = load %struct.arcp*, %struct.arcp** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.arcp, %struct.arcp* %134, i64 %136
  %138 = bitcast %struct.arcp* %131 to i8*
  %139 = bitcast %struct.arcp* %137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %138, i8* align 8 %139, i64 32, i1 false)
  br label %207

140:                                              ; preds = %121, %101
  %141 = bitcast %struct.arcp* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %141, i8 0, i64 32, i1 false)
  %142 = load %struct.sset*, %struct.sset** %12, align 8
  %143 = getelementptr inbounds %struct.sset, %struct.sset* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.arcp, %struct.arcp* %143, i32 0, i32 1
  %145 = load %struct.sset*, %struct.sset** %144, align 8
  %146 = icmp ne %struct.sset* %145, null
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  %149 = load %struct.sset*, %struct.sset** %12, align 8
  %150 = getelementptr inbounds %struct.sset, %struct.sset* %149, i32 0, i32 4
  %151 = bitcast %struct.arcp* %13 to i8*
  %152 = bitcast %struct.arcp* %150 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %151, i8* align 8 %152, i64 32, i1 false)
  br label %153

153:                                              ; preds = %176, %140
  %154 = getelementptr inbounds %struct.arcp, %struct.arcp* %13, i32 0, i32 1
  %155 = load %struct.sset*, %struct.sset** %154, align 8
  %156 = icmp ne %struct.sset* %155, null
  br i1 %156, label %157, label %171

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.arcp, %struct.arcp* %13, i32 0, i32 1
  %159 = load %struct.sset*, %struct.sset** %158, align 8
  %160 = load %struct.sset*, %struct.sset** %11, align 8
  %161 = icmp eq %struct.sset* %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.arcp, %struct.arcp* %13, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = icmp eq i64 %164, %166
  br label %168

168:                                              ; preds = %162, %157
  %169 = phi i1 [ false, %157 ], [ %167, %162 ]
  %170 = xor i1 %169, true
  br label %171

171:                                              ; preds = %168, %153
  %172 = phi i1 [ false, %153 ], [ %170, %168 ]
  br i1 %172, label %173, label %186

173:                                              ; preds = %171
  %174 = bitcast %struct.arcp* %15 to i8*
  %175 = bitcast %struct.arcp* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %174, i8* align 8 %175, i64 32, i1 false)
  br label %176

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.arcp, %struct.arcp* %13, i32 0, i32 1
  %178 = load %struct.sset*, %struct.sset** %177, align 8
  %179 = getelementptr inbounds %struct.sset, %struct.sset* %178, i32 0, i32 2
  %180 = load %struct.arcp*, %struct.arcp** %179, align 8
  %181 = getelementptr inbounds %struct.arcp, %struct.arcp* %13, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds %struct.arcp, %struct.arcp* %180, i64 %182
  %184 = bitcast %struct.arcp* %13 to i8*
  %185 = bitcast %struct.arcp* %183 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %184, i8* align 8 %185, i64 32, i1 false)
  br label %153

186:                                              ; preds = %171
  %187 = getelementptr inbounds %struct.arcp, %struct.arcp* %13, i32 0, i32 1
  %188 = load %struct.sset*, %struct.sset** %187, align 8
  %189 = icmp ne %struct.sset* %188, null
  %190 = zext i1 %189 to i32
  %191 = call i32 @assert(i32 %190)
  %192 = getelementptr inbounds %struct.arcp, %struct.arcp* %15, i32 0, i32 1
  %193 = load %struct.sset*, %struct.sset** %192, align 8
  %194 = getelementptr inbounds %struct.sset, %struct.sset* %193, i32 0, i32 2
  %195 = load %struct.arcp*, %struct.arcp** %194, align 8
  %196 = getelementptr inbounds %struct.arcp, %struct.arcp* %15, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds %struct.arcp, %struct.arcp* %195, i64 %197
  %199 = load %struct.sset*, %struct.sset** %11, align 8
  %200 = getelementptr inbounds %struct.sset, %struct.sset* %199, i32 0, i32 2
  %201 = load %struct.arcp*, %struct.arcp** %200, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.arcp, %struct.arcp* %201, i64 %203
  %205 = bitcast %struct.arcp* %198 to i8*
  %206 = bitcast %struct.arcp* %204 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %205, i8* align 8 %206, i64 32, i1 false)
  br label %207

207:                                              ; preds = %186, %129
  %208 = load %struct.sset*, %struct.sset** %11, align 8
  %209 = getelementptr inbounds %struct.sset, %struct.sset* %208, i32 0, i32 3
  %210 = load %struct.sset**, %struct.sset*** %209, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.sset*, %struct.sset** %210, i64 %212
  store %struct.sset* null, %struct.sset** %213, align 8
  %214 = load %struct.sset*, %struct.sset** %11, align 8
  %215 = getelementptr inbounds %struct.sset, %struct.sset* %214, i32 0, i32 2
  %216 = load %struct.arcp*, %struct.arcp** %215, align 8
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.arcp, %struct.arcp* %216, i64 %218
  %220 = getelementptr inbounds %struct.arcp, %struct.arcp* %219, i32 0, i32 1
  store %struct.sset* null, %struct.sset** %220, align 8
  br label %221

221:                                              ; preds = %207, %100
  %222 = load i32, i32* %10, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %10, align 4
  br label %79

224:                                              ; preds = %79
  %225 = load %struct.sset*, %struct.sset** %11, align 8
  %226 = getelementptr inbounds %struct.sset, %struct.sset* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @POSTSTATE, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %258

231:                                              ; preds = %224
  %232 = load %struct.sset*, %struct.sset** %11, align 8
  %233 = getelementptr inbounds %struct.sset, %struct.sset* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = load %struct.dfa*, %struct.dfa** %7, align 8
  %236 = getelementptr inbounds %struct.dfa, %struct.dfa* %235, i32 0, i32 2
  %237 = load i32*, i32** %236, align 8
  %238 = icmp ne i32* %234, %237
  br i1 %238, label %239, label %258

239:                                              ; preds = %231
  %240 = load %struct.dfa*, %struct.dfa** %7, align 8
  %241 = getelementptr inbounds %struct.dfa, %struct.dfa* %240, i32 0, i32 2
  %242 = load i32*, i32** %241, align 8
  %243 = icmp eq i32* %242, null
  br i1 %243, label %252, label %244

244:                                              ; preds = %239
  %245 = load %struct.dfa*, %struct.dfa** %7, align 8
  %246 = getelementptr inbounds %struct.dfa, %struct.dfa* %245, i32 0, i32 2
  %247 = load i32*, i32** %246, align 8
  %248 = load %struct.sset*, %struct.sset** %11, align 8
  %249 = getelementptr inbounds %struct.sset, %struct.sset* %248, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = icmp ult i32* %247, %250
  br i1 %251, label %252, label %258

252:                                              ; preds = %244, %239
  %253 = load %struct.sset*, %struct.sset** %11, align 8
  %254 = getelementptr inbounds %struct.sset, %struct.sset* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = load %struct.dfa*, %struct.dfa** %7, align 8
  %257 = getelementptr inbounds %struct.dfa, %struct.dfa* %256, i32 0, i32 2
  store i32* %255, i32** %257, align 8
  br label %258

258:                                              ; preds = %252, %244, %231, %224
  %259 = load %struct.sset*, %struct.sset** %11, align 8
  %260 = getelementptr inbounds %struct.sset, %struct.sset* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @NOPROGRESS, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %292

265:                                              ; preds = %258
  %266 = load %struct.sset*, %struct.sset** %11, align 8
  %267 = getelementptr inbounds %struct.sset, %struct.sset* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = load %struct.dfa*, %struct.dfa** %7, align 8
  %270 = getelementptr inbounds %struct.dfa, %struct.dfa* %269, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = icmp ne i32* %268, %271
  br i1 %272, label %273, label %292

273:                                              ; preds = %265
  %274 = load %struct.dfa*, %struct.dfa** %7, align 8
  %275 = getelementptr inbounds %struct.dfa, %struct.dfa* %274, i32 0, i32 1
  %276 = load i32*, i32** %275, align 8
  %277 = icmp eq i32* %276, null
  br i1 %277, label %286, label %278

278:                                              ; preds = %273
  %279 = load %struct.dfa*, %struct.dfa** %7, align 8
  %280 = getelementptr inbounds %struct.dfa, %struct.dfa* %279, i32 0, i32 1
  %281 = load i32*, i32** %280, align 8
  %282 = load %struct.sset*, %struct.sset** %11, align 8
  %283 = getelementptr inbounds %struct.sset, %struct.sset* %282, i32 0, i32 1
  %284 = load i32*, i32** %283, align 8
  %285 = icmp ult i32* %281, %284
  br i1 %285, label %286, label %292

286:                                              ; preds = %278, %273
  %287 = load %struct.sset*, %struct.sset** %11, align 8
  %288 = getelementptr inbounds %struct.sset, %struct.sset* %287, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = load %struct.dfa*, %struct.dfa** %7, align 8
  %291 = getelementptr inbounds %struct.dfa, %struct.dfa* %290, i32 0, i32 1
  store i32* %289, i32** %291, align 8
  br label %292

292:                                              ; preds = %286, %278, %265, %258
  %293 = load %struct.sset*, %struct.sset** %11, align 8
  store %struct.sset* %293, %struct.sset** %5, align 8
  br label %294

294:                                              ; preds = %292, %23
  %295 = load %struct.sset*, %struct.sset** %5, align 8
  ret %struct.sset* %295
}

declare dso_local %struct.sset* @pickss(%struct.vars*, %struct.dfa*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @FDEBUG(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
