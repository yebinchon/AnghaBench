; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/partitioning/extr_partprune.c_get_matching_range_bounds.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/partitioning/extr_partprune.c_get_matching_range_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i8* }
%struct.TYPE_9__ = type { i32, i64, i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, i32, i64**, i32* }

@PARTITION_STRATEGY_RANGE = common dso_local global i64 0, align 8
@PARTITION_RANGE_DATUM_MINVALUE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid strategy number %d\00", align 1
@PARTITION_RANGE_DATUM_MAXVALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_9__*, i32, i32*, i32, i32*, i32*)* @get_matching_range_bounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @get_matching_range_bounds(%struct.TYPE_9__* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %33 = call i64 @palloc0(i32 16)
  %34 = inttoptr i64 %33 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %14, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %15, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %16, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %17, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %18, align 8
  store i32 0, i32* %23, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PARTITION_STRATEGY_RANGE, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @Assert(i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp sle i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @Assert(i32 %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %6
  %68 = load i32*, i32** %13, align 8
  %69 = call i32 @bms_is_empty(i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %67, %6
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %73 = call i8* @partition_bound_has_default(%struct.TYPE_10__* %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %7, align 8
  br label %676

78:                                               ; preds = %67
  store i32 0, i32* %20, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %21, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %133

84:                                               ; preds = %78
  %85 = load i32*, i32** %18, align 8
  %86 = load i32, i32* %20, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32, i32* %20, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %20, align 4
  br label %94

94:                                               ; preds = %91, %84
  %95 = load i32*, i32** %18, align 8
  %96 = load i32, i32* %21, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i32, i32* %21, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %21, align 4
  br label %104

104:                                              ; preds = %101, %94
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %106 = call i8* @partition_bound_has_default(%struct.TYPE_10__* %105)
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load i32*, i32** %18, align 8
  %111 = load i32, i32* %20, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp sge i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %104
  %117 = load i32*, i32** %18, align 8
  %118 = load i32, i32* %21, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp sge i32 %121, 0
  br label %123

123:                                              ; preds = %116, %104
  %124 = phi i1 [ false, %104 ], [ %122, %116 ]
  %125 = zext i1 %124 to i32
  %126 = call i32 @Assert(i32 %125)
  %127 = load i32, i32* %20, align 4
  %128 = load i32, i32* %21, align 4
  %129 = call i8* @bms_add_range(i32* null, i32 %127, i32 %128)
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  store i8* %129, i8** %131, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %132, %struct.TYPE_8__** %7, align 8
  br label %676

133:                                              ; preds = %78
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %17, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %139 = call i8* @partition_bound_has_default(%struct.TYPE_10__* %138)
  %140 = ptrtoint i8* %139 to i32
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %137, %133
  %144 = load i32, i32* %9, align 4
  switch i32 %144, label %543 [
    i32 132, label %145
    i32 131, label %326
    i32 130, label %327
    i32 129, label %429
    i32 128, label %430
  ]

145:                                              ; preds = %143
  %146 = load i32*, i32** %12, align 8
  %147 = load i32*, i32** %16, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %149 = load i32, i32* %11, align 4
  %150 = load i32*, i32** %10, align 8
  %151 = call i32 @partition_range_datum_bsearch(i32* %146, i32* %147, %struct.TYPE_10__* %148, i32 %149, i32* %150, i32* %22)
  store i32 %151, i32* %19, align 4
  %152 = load i32, i32* %19, align 4
  %153 = icmp sge i32 %152, 0
  br i1 %153, label %154, label %318

154:                                              ; preds = %145
  %155 = load i32, i32* %22, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %318

157:                                              ; preds = %154
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %17, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %157
  %162 = load i32, i32* %19, align 4
  %163 = add nsw i32 %162, 1
  %164 = call i8* @bms_make_singleton(i32 %163)
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 2
  store i8* %164, i8** %166, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %167, %struct.TYPE_8__** %7, align 8
  br label %676

168:                                              ; preds = %157
  %169 = load i32, i32* %19, align 4
  store i32 %169, i32* %24, align 4
  br label %170

170:                                              ; preds = %198, %168
  %171 = load i32, i32* %19, align 4
  %172 = icmp sge i32 %171, 1
  br i1 %172, label %173, label %201

173:                                              ; preds = %170
  %174 = load i32*, i32** %12, align 8
  %175 = load i32*, i32** %16, align 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %19, align 4
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 2
  %186 = load i64**, i64*** %185, align 8
  %187 = load i32, i32* %19, align 4
  %188 = sub nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64*, i64** %186, i64 %189
  %191 = load i64*, i64** %190, align 8
  %192 = load i32*, i32** %10, align 8
  %193 = load i32, i32* %11, align 4
  %194 = call i32 @partition_rbound_datum_cmp(i32* %174, i32* %175, i32 %183, i64* %191, i32* %192, i32 %193)
  store i32 %194, i32* %25, align 4
  %195 = load i32, i32* %25, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %173
  br label %201

198:                                              ; preds = %173
  %199 = load i32, i32* %19, align 4
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* %19, align 4
  br label %170

201:                                              ; preds = %197, %170
  %202 = load i32*, i32** %12, align 8
  %203 = load i32*, i32** %16, align 8
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %19, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 2
  %213 = load i64**, i64*** %212, align 8
  %214 = load i32, i32* %19, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i64*, i64** %213, i64 %215
  %217 = load i64*, i64** %216, align 8
  %218 = load i32*, i32** %10, align 8
  %219 = load i32, i32* %11, align 4
  %220 = call i32 @partition_rbound_datum_cmp(i32* %202, i32* %203, i32 %210, i64* %217, i32* %218, i32 %219)
  %221 = icmp eq i32 0, %220
  %222 = zext i1 %221 to i32
  %223 = call i32 @Assert(i32 %222)
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 2
  %226 = load i64**, i64*** %225, align 8
  %227 = load i32, i32* %19, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i64*, i64** %226, i64 %228
  %230 = load i64*, i64** %229, align 8
  %231 = load i32, i32* %11, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, i64* %230, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @PARTITION_RANGE_DATUM_MINVALUE, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %201
  %238 = load i32, i32* %19, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %19, align 4
  br label %240

240:                                              ; preds = %237, %201
  %241 = load i32, i32* %19, align 4
  store i32 %241, i32* %20, align 4
  %242 = load i32, i32* %24, align 4
  store i32 %242, i32* %19, align 4
  br label %243

243:                                              ; preds = %275, %240
  %244 = load i32, i32* %19, align 4
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = sub nsw i32 %247, 1
  %249 = icmp slt i32 %244, %248
  br i1 %249, label %250, label %278

250:                                              ; preds = %243
  %251 = load i32*, i32** %12, align 8
  %252 = load i32*, i32** %16, align 8
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 3
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %19, align 4
  %257 = add nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %255, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 2
  %263 = load i64**, i64*** %262, align 8
  %264 = load i32, i32* %19, align 4
  %265 = add nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i64*, i64** %263, i64 %266
  %268 = load i64*, i64** %267, align 8
  %269 = load i32*, i32** %10, align 8
  %270 = load i32, i32* %11, align 4
  %271 = call i32 @partition_rbound_datum_cmp(i32* %251, i32* %252, i32 %260, i64* %268, i32* %269, i32 %270)
  store i32 %271, i32* %26, align 4
  %272 = load i32, i32* %26, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %250
  br label %278

275:                                              ; preds = %250
  %276 = load i32, i32* %19, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %19, align 4
  br label %243

278:                                              ; preds = %274, %243
  %279 = load i32*, i32** %12, align 8
  %280 = load i32*, i32** %16, align 8
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 3
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %19, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 2
  %290 = load i64**, i64*** %289, align 8
  %291 = load i32, i32* %19, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i64*, i64** %290, i64 %292
  %294 = load i64*, i64** %293, align 8
  %295 = load i32*, i32** %10, align 8
  %296 = load i32, i32* %11, align 4
  %297 = call i32 @partition_rbound_datum_cmp(i32* %279, i32* %280, i32 %287, i64* %294, i32* %295, i32 %296)
  %298 = icmp eq i32 0, %297
  %299 = zext i1 %298 to i32
  %300 = call i32 @Assert(i32 %299)
  %301 = load i32, i32* %19, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %21, align 4
  br label %303

303:                                              ; preds = %278
  %304 = load i32, i32* %20, align 4
  %305 = icmp sge i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %303
  %307 = load i32, i32* %21, align 4
  %308 = icmp sge i32 %307, 0
  br label %309

309:                                              ; preds = %306, %303
  %310 = phi i1 [ false, %303 ], [ %308, %306 ]
  %311 = zext i1 %310 to i32
  %312 = call i32 @Assert(i32 %311)
  %313 = load i32, i32* %20, align 4
  %314 = load i32, i32* %21, align 4
  %315 = call i8* @bms_add_range(i32* null, i32 %313, i32 %314)
  %316 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 2
  store i8* %315, i8** %317, align 8
  br label %324

318:                                              ; preds = %154, %145
  %319 = load i32, i32* %19, align 4
  %320 = add nsw i32 %319, 1
  %321 = call i8* @bms_make_singleton(i32 %320)
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 2
  store i8* %321, i8** %323, align 8
  br label %324

324:                                              ; preds = %318, %309
  %325 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %325, %struct.TYPE_8__** %7, align 8
  br label %676

326:                                              ; preds = %143
  store i32 1, i32* %23, align 4
  br label %327

327:                                              ; preds = %143, %326
  %328 = load i32*, i32** %12, align 8
  %329 = load i32*, i32** %16, align 8
  %330 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %331 = load i32, i32* %11, align 4
  %332 = load i32*, i32** %10, align 8
  %333 = call i32 @partition_range_datum_bsearch(i32* %328, i32* %329, %struct.TYPE_10__* %330, i32 %331, i32* %332, i32* %22)
  store i32 %333, i32* %19, align 4
  %334 = load i32, i32* %19, align 4
  %335 = icmp slt i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %327
  store i32 0, i32* %20, align 4
  br label %428

337:                                              ; preds = %327
  %338 = load i32, i32* %22, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %424

340:                                              ; preds = %337
  %341 = load i32, i32* %11, align 4
  %342 = load i32, i32* %17, align 4
  %343 = icmp slt i32 %341, %342
  br i1 %343, label %344, label %424

344:                                              ; preds = %340
  br label %345

345:                                              ; preds = %390, %344
  %346 = load i32, i32* %19, align 4
  %347 = icmp sge i32 %346, 1
  br i1 %347, label %348, label %355

348:                                              ; preds = %345
  %349 = load i32, i32* %19, align 4
  %350 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = sub nsw i32 %352, 1
  %354 = icmp slt i32 %349, %353
  br label %355

355:                                              ; preds = %348, %345
  %356 = phi i1 [ false, %345 ], [ %354, %348 ]
  br i1 %356, label %357, label %392

357:                                              ; preds = %355
  %358 = load i32, i32* %23, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %357
  %361 = load i32, i32* %19, align 4
  %362 = sub nsw i32 %361, 1
  br label %366

363:                                              ; preds = %357
  %364 = load i32, i32* %19, align 4
  %365 = add nsw i32 %364, 1
  br label %366

366:                                              ; preds = %363, %360
  %367 = phi i32 [ %362, %360 ], [ %365, %363 ]
  store i32 %367, i32* %28, align 4
  %368 = load i32*, i32** %12, align 8
  %369 = load i32*, i32** %16, align 8
  %370 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i32 0, i32 3
  %372 = load i32*, i32** %371, align 8
  %373 = load i32, i32* %28, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %378 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %377, i32 0, i32 2
  %379 = load i64**, i64*** %378, align 8
  %380 = load i32, i32* %28, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i64*, i64** %379, i64 %381
  %383 = load i64*, i64** %382, align 8
  %384 = load i32*, i32** %10, align 8
  %385 = load i32, i32* %11, align 4
  %386 = call i32 @partition_rbound_datum_cmp(i32* %368, i32* %369, i32 %376, i64* %383, i32* %384, i32 %385)
  store i32 %386, i32* %27, align 4
  %387 = load i32, i32* %27, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %390

389:                                              ; preds = %366
  br label %392

390:                                              ; preds = %366
  %391 = load i32, i32* %28, align 4
  store i32 %391, i32* %19, align 4
  br label %345

392:                                              ; preds = %389, %355
  %393 = load i32*, i32** %12, align 8
  %394 = load i32*, i32** %16, align 8
  %395 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %396 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %395, i32 0, i32 3
  %397 = load i32*, i32** %396, align 8
  %398 = load i32, i32* %19, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %403 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %402, i32 0, i32 2
  %404 = load i64**, i64*** %403, align 8
  %405 = load i32, i32* %19, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i64*, i64** %404, i64 %406
  %408 = load i64*, i64** %407, align 8
  %409 = load i32*, i32** %10, align 8
  %410 = load i32, i32* %11, align 4
  %411 = call i32 @partition_rbound_datum_cmp(i32* %393, i32* %394, i32 %401, i64* %408, i32* %409, i32 %410)
  %412 = icmp eq i32 0, %411
  %413 = zext i1 %412 to i32
  %414 = call i32 @Assert(i32 %413)
  %415 = load i32, i32* %23, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %419

417:                                              ; preds = %392
  %418 = load i32, i32* %19, align 4
  br label %422

419:                                              ; preds = %392
  %420 = load i32, i32* %19, align 4
  %421 = add nsw i32 %420, 1
  br label %422

422:                                              ; preds = %419, %417
  %423 = phi i32 [ %418, %417 ], [ %421, %419 ]
  store i32 %423, i32* %20, align 4
  br label %427

424:                                              ; preds = %340, %337
  %425 = load i32, i32* %19, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %20, align 4
  br label %427

427:                                              ; preds = %424, %422
  br label %428

428:                                              ; preds = %427, %336
  br label %547

429:                                              ; preds = %143
  store i32 1, i32* %23, align 4
  br label %430

430:                                              ; preds = %143, %429
  %431 = load i32*, i32** %12, align 8
  %432 = load i32*, i32** %16, align 8
  %433 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %434 = load i32, i32* %11, align 4
  %435 = load i32*, i32** %10, align 8
  %436 = call i32 @partition_range_datum_bsearch(i32* %431, i32* %432, %struct.TYPE_10__* %433, i32 %434, i32* %435, i32* %22)
  store i32 %436, i32* %19, align 4
  %437 = load i32, i32* %19, align 4
  %438 = icmp sge i32 %437, 0
  br i1 %438, label %439, label %539

439:                                              ; preds = %430
  %440 = load i32, i32* %22, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %526

442:                                              ; preds = %439
  %443 = load i32, i32* %11, align 4
  %444 = load i32, i32* %17, align 4
  %445 = icmp slt i32 %443, %444
  br i1 %445, label %446, label %526

446:                                              ; preds = %442
  br label %447

447:                                              ; preds = %492, %446
  %448 = load i32, i32* %19, align 4
  %449 = icmp sge i32 %448, 1
  br i1 %449, label %450, label %457

450:                                              ; preds = %447
  %451 = load i32, i32* %19, align 4
  %452 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %453 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 8
  %455 = sub nsw i32 %454, 1
  %456 = icmp slt i32 %451, %455
  br label %457

457:                                              ; preds = %450, %447
  %458 = phi i1 [ false, %447 ], [ %456, %450 ]
  br i1 %458, label %459, label %494

459:                                              ; preds = %457
  %460 = load i32, i32* %23, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %465

462:                                              ; preds = %459
  %463 = load i32, i32* %19, align 4
  %464 = add nsw i32 %463, 1
  br label %468

465:                                              ; preds = %459
  %466 = load i32, i32* %19, align 4
  %467 = sub nsw i32 %466, 1
  br label %468

468:                                              ; preds = %465, %462
  %469 = phi i32 [ %464, %462 ], [ %467, %465 ]
  store i32 %469, i32* %30, align 4
  %470 = load i32*, i32** %12, align 8
  %471 = load i32*, i32** %16, align 8
  %472 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %473 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %472, i32 0, i32 3
  %474 = load i32*, i32** %473, align 8
  %475 = load i32, i32* %30, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i32, i32* %474, i64 %476
  %478 = load i32, i32* %477, align 4
  %479 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %480 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %479, i32 0, i32 2
  %481 = load i64**, i64*** %480, align 8
  %482 = load i32, i32* %30, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i64*, i64** %481, i64 %483
  %485 = load i64*, i64** %484, align 8
  %486 = load i32*, i32** %10, align 8
  %487 = load i32, i32* %11, align 4
  %488 = call i32 @partition_rbound_datum_cmp(i32* %470, i32* %471, i32 %478, i64* %485, i32* %486, i32 %487)
  store i32 %488, i32* %29, align 4
  %489 = load i32, i32* %29, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %492

491:                                              ; preds = %468
  br label %494

492:                                              ; preds = %468
  %493 = load i32, i32* %30, align 4
  store i32 %493, i32* %19, align 4
  br label %447

494:                                              ; preds = %491, %457
  %495 = load i32*, i32** %12, align 8
  %496 = load i32*, i32** %16, align 8
  %497 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %498 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %497, i32 0, i32 3
  %499 = load i32*, i32** %498, align 8
  %500 = load i32, i32* %19, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i32, i32* %499, i64 %501
  %503 = load i32, i32* %502, align 4
  %504 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %505 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %504, i32 0, i32 2
  %506 = load i64**, i64*** %505, align 8
  %507 = load i32, i32* %19, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i64*, i64** %506, i64 %508
  %510 = load i64*, i64** %509, align 8
  %511 = load i32*, i32** %10, align 8
  %512 = load i32, i32* %11, align 4
  %513 = call i32 @partition_rbound_datum_cmp(i32* %495, i32* %496, i32 %503, i64* %510, i32* %511, i32 %512)
  %514 = icmp eq i32 0, %513
  %515 = zext i1 %514 to i32
  %516 = call i32 @Assert(i32 %515)
  %517 = load i32, i32* %23, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %522

519:                                              ; preds = %494
  %520 = load i32, i32* %19, align 4
  %521 = add nsw i32 %520, 1
  br label %524

522:                                              ; preds = %494
  %523 = load i32, i32* %19, align 4
  br label %524

524:                                              ; preds = %522, %519
  %525 = phi i32 [ %521, %519 ], [ %523, %522 ]
  store i32 %525, i32* %21, align 4
  br label %538

526:                                              ; preds = %442, %439
  %527 = load i32, i32* %22, align 4
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %532

529:                                              ; preds = %526
  %530 = load i32, i32* %23, align 4
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %535

532:                                              ; preds = %529, %526
  %533 = load i32, i32* %19, align 4
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %21, align 4
  br label %537

535:                                              ; preds = %529
  %536 = load i32, i32* %19, align 4
  store i32 %536, i32* %21, align 4
  br label %537

537:                                              ; preds = %535, %532
  br label %538

538:                                              ; preds = %537, %524
  br label %542

539:                                              ; preds = %430
  %540 = load i32, i32* %19, align 4
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %21, align 4
  br label %542

542:                                              ; preds = %539, %538
  br label %547

543:                                              ; preds = %143
  %544 = load i32, i32* @ERROR, align 4
  %545 = load i32, i32* %9, align 4
  %546 = call i32 @elog(i32 %544, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %545)
  br label %547

547:                                              ; preds = %543, %542, %428
  %548 = load i32, i32* %20, align 4
  %549 = icmp sge i32 %548, 0
  br i1 %549, label %550, label %556

550:                                              ; preds = %547
  %551 = load i32, i32* %20, align 4
  %552 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %553 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %552, i32 0, i32 1
  %554 = load i32, i32* %553, align 8
  %555 = icmp sle i32 %551, %554
  br label %556

556:                                              ; preds = %550, %547
  %557 = phi i1 [ false, %547 ], [ %555, %550 ]
  %558 = zext i1 %557 to i32
  %559 = call i32 @Assert(i32 %558)
  %560 = load i32, i32* %21, align 4
  %561 = icmp sge i32 %560, 0
  br i1 %561, label %562, label %568

562:                                              ; preds = %556
  %563 = load i32, i32* %21, align 4
  %564 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %565 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %564, i32 0, i32 1
  %566 = load i32, i32* %565, align 8
  %567 = icmp sle i32 %563, %566
  br label %568

568:                                              ; preds = %562, %556
  %569 = phi i1 [ false, %556 ], [ %567, %562 ]
  %570 = zext i1 %569 to i32
  %571 = call i32 @Assert(i32 %570)
  %572 = load i32, i32* %20, align 4
  %573 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %574 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %573, i32 0, i32 1
  %575 = load i32, i32* %574, align 8
  %576 = icmp slt i32 %572, %575
  br i1 %576, label %577, label %614

577:                                              ; preds = %568
  %578 = load i32*, i32** %18, align 8
  %579 = load i32, i32* %20, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds i32, i32* %578, i64 %580
  %582 = load i32, i32* %581, align 4
  %583 = icmp slt i32 %582, 0
  br i1 %583, label %584, label %614

584:                                              ; preds = %577
  %585 = load i32, i32* %11, align 4
  %586 = sub nsw i32 %585, 1
  store i32 %586, i32* %31, align 4
  %587 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %588 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %587, i32 0, i32 2
  %589 = load i64**, i64*** %588, align 8
  %590 = load i32, i32* %20, align 4
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds i64*, i64** %589, i64 %591
  %593 = load i64*, i64** %592, align 8
  %594 = load i32, i32* %31, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds i64, i64* %593, i64 %595
  %597 = load i64, i64* %596, align 8
  %598 = load i64, i64* @PARTITION_RANGE_DATUM_MINVALUE, align 8
  %599 = icmp eq i64 %597, %598
  br i1 %599, label %600, label %613

600:                                              ; preds = %584
  %601 = load i32, i32* %20, align 4
  %602 = add nsw i32 %601, 1
  store i32 %602, i32* %20, align 4
  %603 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %604 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %603, i32 0, i32 0
  %605 = load i32*, i32** %604, align 8
  %606 = load i32, i32* %20, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds i32, i32* %605, i64 %607
  %609 = load i32, i32* %608, align 4
  %610 = icmp sge i32 %609, 0
  %611 = zext i1 %610 to i32
  %612 = call i32 @Assert(i32 %611)
  br label %613

613:                                              ; preds = %600, %584
  br label %614

614:                                              ; preds = %613, %577, %568
  %615 = load i32, i32* %21, align 4
  %616 = icmp sge i32 %615, 1
  br i1 %616, label %617, label %655

617:                                              ; preds = %614
  %618 = load i32*, i32** %18, align 8
  %619 = load i32, i32* %21, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds i32, i32* %618, i64 %620
  %622 = load i32, i32* %621, align 4
  %623 = icmp slt i32 %622, 0
  br i1 %623, label %624, label %655

624:                                              ; preds = %617
  %625 = load i32, i32* %11, align 4
  %626 = sub nsw i32 %625, 1
  store i32 %626, i32* %32, align 4
  %627 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %628 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %627, i32 0, i32 2
  %629 = load i64**, i64*** %628, align 8
  %630 = load i32, i32* %21, align 4
  %631 = sub nsw i32 %630, 1
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds i64*, i64** %629, i64 %632
  %634 = load i64*, i64** %633, align 8
  %635 = load i32, i32* %32, align 4
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds i64, i64* %634, i64 %636
  %638 = load i64, i64* %637, align 8
  %639 = load i64, i64* @PARTITION_RANGE_DATUM_MAXVALUE, align 8
  %640 = icmp eq i64 %638, %639
  br i1 %640, label %641, label %654

641:                                              ; preds = %624
  %642 = load i32, i32* %21, align 4
  %643 = add nsw i32 %642, -1
  store i32 %643, i32* %21, align 4
  %644 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %645 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %644, i32 0, i32 0
  %646 = load i32*, i32** %645, align 8
  %647 = load i32, i32* %21, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds i32, i32* %646, i64 %648
  %650 = load i32, i32* %649, align 4
  %651 = icmp sge i32 %650, 0
  %652 = zext i1 %651 to i32
  %653 = call i32 @Assert(i32 %652)
  br label %654

654:                                              ; preds = %641, %624
  br label %655

655:                                              ; preds = %654, %617, %614
  %656 = load i32, i32* %20, align 4
  %657 = icmp sge i32 %656, 0
  br i1 %657, label %658, label %661

658:                                              ; preds = %655
  %659 = load i32, i32* %21, align 4
  %660 = icmp sge i32 %659, 0
  br label %661

661:                                              ; preds = %658, %655
  %662 = phi i1 [ false, %655 ], [ %660, %658 ]
  %663 = zext i1 %662 to i32
  %664 = call i32 @Assert(i32 %663)
  %665 = load i32, i32* %20, align 4
  %666 = load i32, i32* %21, align 4
  %667 = icmp sle i32 %665, %666
  br i1 %667, label %668, label %674

668:                                              ; preds = %661
  %669 = load i32, i32* %20, align 4
  %670 = load i32, i32* %21, align 4
  %671 = call i8* @bms_add_range(i32* null, i32 %669, i32 %670)
  %672 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %673 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %672, i32 0, i32 2
  store i8* %671, i8** %673, align 8
  br label %674

674:                                              ; preds = %668, %661
  %675 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %675, %struct.TYPE_8__** %7, align 8
  br label %676

676:                                              ; preds = %674, %324, %161, %123, %71
  %677 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  ret %struct.TYPE_8__* %677
}

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @bms_is_empty(i32*) #1

declare dso_local i8* @partition_bound_has_default(%struct.TYPE_10__*) #1

declare dso_local i8* @bms_add_range(i32*, i32, i32) #1

declare dso_local i32 @partition_range_datum_bsearch(i32*, i32*, %struct.TYPE_10__*, i32, i32*, i32*) #1

declare dso_local i8* @bms_make_singleton(i32) #1

declare dso_local i32 @partition_rbound_datum_cmp(i32*, i32*, i32, i64*, i32*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
