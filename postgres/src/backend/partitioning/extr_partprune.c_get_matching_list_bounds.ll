; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/partitioning/extr_partprune.c_get_matching_list_bounds.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/partitioning/extr_partprune.c_get_matching_list_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i8* }
%struct.TYPE_10__ = type { i64, i32, i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64* }

@PARTITION_STRATEGY_LIST = common dso_local global i64 0, align 8
@InvalidStrategy = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid strategy number %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_10__*, i32, i32, i32, i32*, i32*)* @get_matching_list_bounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @get_matching_list_bounds(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = call i64 @palloc0(i32 16)
  %23 = inttoptr i64 %22 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %14, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %15, align 8
  store i32 0, i32* %20, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %21, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PARTITION_STRATEGY_LIST, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @Assert(i32 %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 1
  %41 = zext i1 %40 to i32
  %42 = call i32 @Assert(i32 %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = call i32 @bms_is_empty(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %6
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %52 = call i64 @partition_bound_accepts_nulls(%struct.TYPE_11__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %63

57:                                               ; preds = %50
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %59 = call i8* @partition_bound_has_default(%struct.TYPE_11__* %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %54
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %7, align 8
  br label %278

65:                                               ; preds = %6
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %72 = call i8* @partition_bound_has_default(%struct.TYPE_11__* %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %76, %struct.TYPE_9__** %7, align 8
  br label %278

77:                                               ; preds = %65
  store i32 0, i32* %17, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, 1
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %77
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sgt i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @Assert(i32 %89)
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, 1
  %95 = call i8* @bms_add_range(i32* null, i32 0, i32 %94)
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %99 = call i8* @partition_bound_has_default(%struct.TYPE_11__* %98)
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %103, %struct.TYPE_9__** %7, align 8
  br label %278

104:                                              ; preds = %77
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @InvalidStrategy, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %157

108:                                              ; preds = %104
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp sgt i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @Assert(i32 %113)
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sub nsw i32 %117, 1
  %119 = call i8* @bms_add_range(i32* null, i32 0, i32 %118)
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  store i8* %119, i8** %121, align 8
  %122 = load i32*, i32** %12, align 8
  %123 = load i32*, i32** %21, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @partition_list_bsearch(i32* %122, i32* %123, %struct.TYPE_11__* %124, i32 %125, i32* %19)
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* %16, align 4
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %150

129:                                              ; preds = %108
  %130 = load i32, i32* %19, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %150

132:                                              ; preds = %129
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* %16, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = icmp sge i64 %139, 0
  %141 = zext i1 %140 to i32
  %142 = call i32 @Assert(i32 %141)
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = load i32, i32* %16, align 4
  %147 = call i8* @bms_del_member(i8* %145, i32 %146)
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 2
  store i8* %147, i8** %149, align 8
  br label %150

150:                                              ; preds = %132, %129, %108
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %152 = call i8* @partition_bound_has_default(%struct.TYPE_11__* %151)
  %153 = ptrtoint i8* %152 to i32
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %156, %struct.TYPE_9__** %7, align 8
  br label %278

157:                                              ; preds = %104
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %158, 132
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %162 = call i8* @partition_bound_has_default(%struct.TYPE_11__* %161)
  %163 = ptrtoint i8* %162 to i32
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %160, %157
  %167 = load i32, i32* %9, align 4
  switch i32 %167, label %258 [
    i32 132, label %168
    i32 131, label %202
    i32 130, label %203
    i32 129, label %233
    i32 128, label %234
  ]

168:                                              ; preds = %166
  %169 = load i32*, i32** %12, align 8
  %170 = load i32*, i32** %21, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @partition_list_bsearch(i32* %169, i32* %170, %struct.TYPE_11__* %171, i32 %172, i32* %19)
  store i32 %173, i32* %16, align 4
  %174 = load i32, i32* %16, align 4
  %175 = icmp sge i32 %174, 0
  br i1 %175, label %176, label %194

176:                                              ; preds = %168
  %177 = load i32, i32* %19, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %194

179:                                              ; preds = %176
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  %182 = load i64*, i64** %181, align 8
  %183 = load i32, i32* %16, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %182, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = icmp sge i64 %186, 0
  %188 = zext i1 %187 to i32
  %189 = call i32 @Assert(i32 %188)
  %190 = load i32, i32* %16, align 4
  %191 = call i8* @bms_make_singleton(i32 %190)
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 2
  store i8* %191, i8** %193, align 8
  br label %200

194:                                              ; preds = %176, %168
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %196 = call i8* @partition_bound_has_default(%struct.TYPE_11__* %195)
  %197 = ptrtoint i8* %196 to i32
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  br label %200

200:                                              ; preds = %194, %179
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %201, %struct.TYPE_9__** %7, align 8
  br label %278

202:                                              ; preds = %166
  store i32 1, i32* %20, align 4
  br label %203

203:                                              ; preds = %166, %202
  %204 = load i32*, i32** %12, align 8
  %205 = load i32*, i32** %21, align 8
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %207 = load i32, i32* %10, align 4
  %208 = call i32 @partition_list_bsearch(i32* %204, i32* %205, %struct.TYPE_11__* %206, i32 %207, i32* %19)
  store i32 %208, i32* %16, align 4
  %209 = load i32, i32* %16, align 4
  %210 = icmp sge i32 %209, 0
  br i1 %210, label %211, label %221

211:                                              ; preds = %203
  %212 = load i32, i32* %19, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load i32, i32* %20, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %214, %211
  %218 = load i32, i32* %16, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %16, align 4
  br label %220

220:                                              ; preds = %217, %214
  br label %222

221:                                              ; preds = %203
  store i32 0, i32* %16, align 4
  br label %222

222:                                              ; preds = %221, %220
  %223 = load i32, i32* %16, align 4
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sub nsw i32 %226, 1
  %228 = icmp sgt i32 %223, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %222
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %230, %struct.TYPE_9__** %7, align 8
  br label %278

231:                                              ; preds = %222
  %232 = load i32, i32* %16, align 4
  store i32 %232, i32* %17, align 4
  br label %262

233:                                              ; preds = %166
  store i32 1, i32* %20, align 4
  br label %234

234:                                              ; preds = %166, %233
  %235 = load i32*, i32** %12, align 8
  %236 = load i32*, i32** %21, align 8
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %238 = load i32, i32* %10, align 4
  %239 = call i32 @partition_list_bsearch(i32* %235, i32* %236, %struct.TYPE_11__* %237, i32 %238, i32* %19)
  store i32 %239, i32* %16, align 4
  %240 = load i32, i32* %16, align 4
  %241 = icmp sge i32 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %234
  %243 = load i32, i32* %19, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %242
  %246 = load i32, i32* %20, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %245
  %249 = load i32, i32* %16, align 4
  %250 = add nsw i32 %249, -1
  store i32 %250, i32* %16, align 4
  br label %251

251:                                              ; preds = %248, %245, %242, %234
  %252 = load i32, i32* %16, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %251
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %255, %struct.TYPE_9__** %7, align 8
  br label %278

256:                                              ; preds = %251
  %257 = load i32, i32* %16, align 4
  store i32 %257, i32* %18, align 4
  br label %262

258:                                              ; preds = %166
  %259 = load i32, i32* @ERROR, align 4
  %260 = load i32, i32* %9, align 4
  %261 = call i32 @elog(i32 %259, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %260)
  br label %262

262:                                              ; preds = %258, %256, %231
  %263 = load i32, i32* %17, align 4
  %264 = icmp sge i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %262
  %266 = load i32, i32* %18, align 4
  %267 = icmp sge i32 %266, 0
  br label %268

268:                                              ; preds = %265, %262
  %269 = phi i1 [ false, %262 ], [ %267, %265 ]
  %270 = zext i1 %269 to i32
  %271 = call i32 @Assert(i32 %270)
  %272 = load i32, i32* %17, align 4
  %273 = load i32, i32* %18, align 4
  %274 = call i8* @bms_add_range(i32* null, i32 %272, i32 %273)
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 2
  store i8* %274, i8** %276, align 8
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %277, %struct.TYPE_9__** %7, align 8
  br label %278

278:                                              ; preds = %268, %254, %229, %200, %150, %84, %70, %63
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  ret %struct.TYPE_9__* %279
}

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @bms_is_empty(i32*) #1

declare dso_local i64 @partition_bound_accepts_nulls(%struct.TYPE_11__*) #1

declare dso_local i8* @partition_bound_has_default(%struct.TYPE_11__*) #1

declare dso_local i8* @bms_add_range(i32*, i32, i32) #1

declare dso_local i32 @partition_list_bsearch(i32*, i32*, %struct.TYPE_11__*, i32, i32*) #1

declare dso_local i8* @bms_del_member(i8*, i32) #1

declare dso_local i8* @bms_make_singleton(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
