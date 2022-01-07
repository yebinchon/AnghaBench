; ModuleID = '/home/carl/AnghaBench/memcached/extr_slab_automove_extstore.c_slab_automove_extstore_run.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_slab_automove_extstore.c_slab_automove_extstore_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i64, i32*, double, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_10__*, i32*, i32 }
%struct.TYPE_11__ = type { i64, i64, i64, i32, i64, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i64 }
%struct.window_data = type { i32, i32, i32, i64, i32, i64, i64 }
%struct.window_global = type { i32, i32, i32, i64, i32, i64, i64 }

@POWER_SMALLEST = common dso_local global i32 0, align 4
@MAX_NUMBER_OF_SLAB_CLASSES = common dso_local global i32 0, align 4
@MIN_PAGES_FOR_RECLAIM = common dso_local global i32 0, align 4
@MIN_PAGES_FOR_SOURCE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slab_automove_extstore_run(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.window_data, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.window_global, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.window_data*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.window_data*, align 8
  %22 = alloca %struct.window_data*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %7, align 8
  store i32 -1, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i32 -1, i32* %12, align 4
  store i64 -1, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %25 = load i32*, i32** %5, align 8
  store i32 -1, i32* %25, align 4
  %26 = load i32*, i32** %6, align 8
  store i32 -1, i32* %26, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = call i32 @global_pool_check(%struct.TYPE_9__* %27)
  %29 = call i32 @memset(%struct.window_global* %15, i32 0, i32 48)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @window_global_sum(i32 %32, %struct.window_global* %15, i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 7
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = call i32 @fill_item_stats_automove(%struct.TYPE_11__* %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = call i32 @fill_slab_stats_automove(%struct.TYPE_11__* %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %50 = call i32 @memcheck(%struct.TYPE_9__* %49)
  %51 = load i32, i32* @POWER_SMALLEST, align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %326, %3
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @MAX_NUMBER_OF_SLAB_CLASSES, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %329

56:                                               ; preds = %52
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 6
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %64, %67
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 0
  store i32 %70, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call %struct.window_global* @get_window_data(%struct.TYPE_9__* %71, i32 %72)
  %74 = bitcast %struct.window_global* %73 to %struct.window_data*
  store %struct.window_data* %74, %struct.window_data** %18, align 8
  %75 = bitcast %struct.window_data* %9 to %struct.window_global*
  %76 = call i32 @memset(%struct.window_global* %75, i32 0, i32 48)
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = mul nsw i32 %77, %80
  store i32 %81, i32* %19, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 9
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %19, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = bitcast %struct.window_data* %9 to %struct.window_global*
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @window_sum(i32* %87, %struct.window_global* %88, i32 %91)
  %93 = load %struct.window_data*, %struct.window_data** %18, align 8
  %94 = bitcast %struct.window_data* %93 to %struct.window_global*
  %95 = call i32 @memset(%struct.window_global* %94, i32 0, i32 48)
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 7
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %103, %111
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %133, label %114

114:                                              ; preds = %56
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 7
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %122, %130
  %132 = icmp sgt i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %114, %56
  %134 = load %struct.window_data*, %struct.window_data** %18, align 8
  %135 = getelementptr inbounds %struct.window_data, %struct.window_data* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  %136 = load %struct.window_data*, %struct.window_data** %18, align 8
  %137 = getelementptr inbounds %struct.window_data, %struct.window_data* %136, i32 0, i32 1
  store i32 1, i32* %137, align 4
  br label %138

138:                                              ; preds = %133, %114
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 5
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 6
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = sub nsw i64 %146, %154
  %156 = icmp sgt i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %138
  %158 = load %struct.window_data*, %struct.window_data** %18, align 8
  %159 = getelementptr inbounds %struct.window_data, %struct.window_data* %158, i32 0, i32 1
  store i32 1, i32* %159, align 4
  br label %160

160:                                              ; preds = %157, %138
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 5
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp sgt i32 %168, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %160
  store i32 1, i32* %17, align 4
  br label %178

178:                                              ; preds = %177, %160
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 5
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %180, align 8
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 3
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = mul nsw i32 %193, 2
  %195 = icmp sgt i32 %186, %194
  br i1 %195, label %196, label %208

196:                                              ; preds = %178
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %196
  %206 = load %struct.window_data*, %struct.window_data** %18, align 8
  %207 = getelementptr inbounds %struct.window_data, %struct.window_data* %206, i32 0, i32 2
  store i32 1, i32* %207, align 8
  br label %208

208:                                              ; preds = %205, %196, %178
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 7
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %210, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.window_data*, %struct.window_data** %18, align 8
  %218 = getelementptr inbounds %struct.window_data, %struct.window_data* %217, i32 0, i32 3
  store i64 %216, i64* %218, align 8
  %219 = getelementptr inbounds %struct.window_data, %struct.window_data* %9, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = sext i32 %223 to i64
  %225 = sdiv i64 %220, %224
  store i64 %225, i64* %20, align 8
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 5
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %227, align 8
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 5
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %235, align 8
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @MIN_PAGES_FOR_RECLAIM, align 4
  %243 = mul nsw i32 %241, %242
  %244 = icmp sgt i32 %233, %243
  br i1 %244, label %245, label %272

245:                                              ; preds = %208
  %246 = getelementptr inbounds %struct.window_data, %struct.window_data* %9, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %272

249:                                              ; preds = %245
  %250 = load i32, i32* %16, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %249
  %253 = load i32, i32* %8, align 4
  %254 = load i32*, i32** %5, align 8
  store i32 %253, i32* %254, align 4
  %255 = load i32*, i32** %6, align 8
  store i32 0, i32* %255, align 4
  store i32 1, i32* %14, align 4
  br label %271

256:                                              ; preds = %249
  %257 = load i32, i32* %16, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %270, label %259

259:                                              ; preds = %256
  %260 = getelementptr inbounds %struct.window_data, %struct.window_data* %9, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = icmp sge i32 %261, %264
  br i1 %265, label %266, label %270

266:                                              ; preds = %259
  %267 = load i32, i32* %8, align 4
  %268 = load i32*, i32** %5, align 8
  store i32 %267, i32* %268, align 4
  %269 = load i32*, i32** %6, align 8
  store i32 0, i32* %269, align 4
  store i32 1, i32* %14, align 4
  br label %270

270:                                              ; preds = %266, %259, %256
  br label %271

271:                                              ; preds = %270, %252
  br label %272

272:                                              ; preds = %271, %245, %208
  %273 = load i32, i32* %16, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %325, label %275

275:                                              ; preds = %272
  %276 = load i64, i64* %20, align 8
  %277 = load i64, i64* %11, align 8
  %278 = icmp sgt i64 %276, %277
  br i1 %278, label %279, label %293

279:                                              ; preds = %275
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 5
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %281, align 8
  %283 = load i32, i32* %8, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 2
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @MIN_PAGES_FOR_SOURCE, align 8
  %289 = icmp sgt i64 %287, %288
  br i1 %289, label %290, label %293

290:                                              ; preds = %279
  %291 = load i32, i32* %8, align 4
  store i32 %291, i32* %10, align 4
  %292 = load i64, i64* %20, align 8
  store i64 %292, i64* %11, align 8
  br label %293

293:                                              ; preds = %290, %279, %275
  %294 = load i64, i64* %20, align 8
  %295 = load i64, i64* %13, align 8
  %296 = icmp slt i64 %294, %295
  br i1 %296, label %297, label %324

297:                                              ; preds = %293
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 5
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %299, align 8
  %301 = load i32, i32* %8, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %324

307:                                              ; preds = %297
  %308 = getelementptr inbounds %struct.window_data, %struct.window_data* %9, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = icmp slt i32 %309, %312
  br i1 %313, label %314, label %324

314:                                              ; preds = %307
  %315 = getelementptr inbounds %struct.window_data, %struct.window_data* %9, i32 0, i32 4
  %316 = load i32, i32* %315, align 8
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %314
  %319 = load i32, i32* %17, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %324, label %321

321:                                              ; preds = %318, %314
  %322 = load i32, i32* %8, align 4
  store i32 %322, i32* %12, align 4
  %323 = load i64, i64* %20, align 8
  store i64 %323, i64* %13, align 8
  br label %324

324:                                              ; preds = %321, %318, %307, %297, %293
  br label %325

325:                                              ; preds = %324, %272
  br label %326

326:                                              ; preds = %325
  %327 = load i32, i32* %8, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %8, align 4
  br label %52

329:                                              ; preds = %52
  %330 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i32 0, i32 8
  %332 = load %struct.TYPE_10__*, %struct.TYPE_10__** %331, align 8
  %333 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 7
  %335 = load %struct.TYPE_11__*, %struct.TYPE_11__** %334, align 8
  %336 = load i32, i32* @MAX_NUMBER_OF_SLAB_CLASSES, align 4
  %337 = sext i32 %336 to i64
  %338 = mul i64 4, %337
  %339 = trunc i64 %338 to i32
  %340 = call i32 @memcpy(%struct.TYPE_10__* %332, %struct.TYPE_11__* %335, i32 %339)
  %341 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 6
  %343 = load %struct.TYPE_10__*, %struct.TYPE_10__** %342, align 8
  %344 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %344, i32 0, i32 5
  %346 = load %struct.TYPE_11__*, %struct.TYPE_11__** %345, align 8
  %347 = load i32, i32* @MAX_NUMBER_OF_SLAB_CLASSES, align 4
  %348 = sext i32 %347 to i64
  %349 = mul i64 4, %348
  %350 = trunc i64 %349 to i32
  %351 = call i32 @memcpy(%struct.TYPE_10__* %343, %struct.TYPE_11__* %346, i32 %350)
  %352 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 1
  %354 = load i64, i64* %353, align 8
  %355 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = sext i32 %357 to i64
  %359 = icmp slt i64 %354, %358
  br i1 %359, label %360, label %361

360:                                              ; preds = %329
  br label %473

361:                                              ; preds = %329
  %362 = getelementptr inbounds %struct.window_global, %struct.window_global* %15, i32 0, i32 5
  %363 = load i64, i64* %362, align 8
  %364 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %365 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = sext i32 %366 to i64
  %368 = icmp sge i64 %363, %367
  br i1 %368, label %369, label %404

369:                                              ; preds = %361
  %370 = getelementptr inbounds %struct.window_global, %struct.window_global* %15, i32 0, i32 6
  %371 = load i64, i64* %370, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %404, label %373

373:                                              ; preds = %369
  %374 = load i32, i32* %12, align 4
  %375 = icmp ne i32 %374, -1
  br i1 %375, label %376, label %404

376:                                              ; preds = %373
  %377 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %378 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %377, i32 0, i32 5
  %379 = load %struct.TYPE_11__*, %struct.TYPE_11__** %378, align 8
  %380 = load i32, i32* %12, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %379, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %382, i32 0, i32 3
  %384 = load i32, i32* %383, align 8
  %385 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i32 0, i32 3
  %387 = load i32*, i32** %386, align 8
  %388 = load i32, i32* %12, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %387, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = icmp sle i32 %384, %391
  br i1 %392, label %393, label %397

393:                                              ; preds = %376
  %394 = load i32*, i32** %5, align 8
  store i32 0, i32* %394, align 4
  %395 = load i32, i32* %12, align 4
  %396 = load i32*, i32** %6, align 8
  store i32 %395, i32* %396, align 4
  br label %397

397:                                              ; preds = %393, %376
  %398 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %399 = load i32, i32* %12, align 4
  %400 = call %struct.window_global* @get_window_data(%struct.TYPE_9__* %398, i32 %399)
  %401 = bitcast %struct.window_global* %400 to %struct.window_data*
  store %struct.window_data* %401, %struct.window_data** %21, align 8
  %402 = load %struct.window_data*, %struct.window_data** %21, align 8
  %403 = getelementptr inbounds %struct.window_data, %struct.window_data* %402, i32 0, i32 4
  store i32 1, i32* %403, align 8
  br label %472

404:                                              ; preds = %373, %369, %361
  %405 = load i32, i32* %14, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %418, label %407

407:                                              ; preds = %404
  %408 = getelementptr inbounds %struct.window_global, %struct.window_global* %15, i32 0, i32 6
  %409 = load i64, i64* %408, align 8
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %418

411:                                              ; preds = %407
  %412 = load i32, i32* %10, align 4
  %413 = icmp ne i32 %412, -1
  br i1 %413, label %414, label %418

414:                                              ; preds = %411
  %415 = load i32, i32* %10, align 4
  %416 = load i32*, i32** %5, align 8
  store i32 %415, i32* %416, align 4
  %417 = load i32*, i32** %6, align 8
  store i32 0, i32* %417, align 4
  br label %471

418:                                              ; preds = %411, %407, %404
  %419 = load i32, i32* %14, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %470, label %421

421:                                              ; preds = %418
  %422 = load i32, i32* %12, align 4
  %423 = icmp ne i32 %422, -1
  br i1 %423, label %424, label %470

424:                                              ; preds = %421
  %425 = load i32, i32* %10, align 4
  %426 = icmp ne i32 %425, -1
  br i1 %426, label %427, label %470

427:                                              ; preds = %424
  %428 = load i32, i32* %12, align 4
  %429 = load i32, i32* %10, align 4
  %430 = icmp ne i32 %428, %429
  br i1 %430, label %431, label %470

431:                                              ; preds = %427
  %432 = load i64, i64* %13, align 8
  %433 = sitofp i64 %432 to double
  %434 = load i64, i64* %11, align 8
  %435 = sitofp i64 %434 to double
  %436 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %437 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %436, i32 0, i32 4
  %438 = load double, double* %437, align 8
  %439 = fmul double %435, %438
  %440 = fcmp olt double %433, %439
  br i1 %440, label %441, label %469

441:                                              ; preds = %431
  %442 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %443 = load i32, i32* %12, align 4
  %444 = call %struct.window_global* @get_window_data(%struct.TYPE_9__* %442, i32 %443)
  %445 = bitcast %struct.window_global* %444 to %struct.window_data*
  store %struct.window_data* %445, %struct.window_data** %22, align 8
  %446 = load %struct.window_data*, %struct.window_data** %22, align 8
  %447 = getelementptr inbounds %struct.window_data, %struct.window_data* %446, i32 0, i32 4
  store i32 1, i32* %447, align 8
  %448 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %449 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %448, i32 0, i32 5
  %450 = load %struct.TYPE_11__*, %struct.TYPE_11__** %449, align 8
  %451 = load i32, i32* %12, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %450, i64 %452
  %454 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %453, i32 0, i32 3
  %455 = load i32, i32* %454, align 8
  %456 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %457 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %456, i32 0, i32 3
  %458 = load i32*, i32** %457, align 8
  %459 = load i32, i32* %12, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  %462 = load i32, i32* %461, align 4
  %463 = icmp sle i32 %455, %462
  br i1 %463, label %464, label %468

464:                                              ; preds = %441
  %465 = load i32*, i32** %5, align 8
  store i32 0, i32* %465, align 4
  %466 = load i32, i32* %12, align 4
  %467 = load i32*, i32** %6, align 8
  store i32 %466, i32* %467, align 4
  br label %468

468:                                              ; preds = %464, %441
  br label %469

469:                                              ; preds = %468, %431
  br label %470

470:                                              ; preds = %469, %427, %424, %421, %418
  br label %471

471:                                              ; preds = %470, %414
  br label %472

472:                                              ; preds = %471, %397
  br label %473

473:                                              ; preds = %472, %360
  ret void
}

declare dso_local i32 @global_pool_check(%struct.TYPE_9__*) #1

declare dso_local i32 @memset(%struct.window_global*, i32, i32) #1

declare dso_local i32 @window_global_sum(i32, %struct.window_global*, i32) #1

declare dso_local i32 @fill_item_stats_automove(%struct.TYPE_11__*) #1

declare dso_local i32 @fill_slab_stats_automove(%struct.TYPE_11__*) #1

declare dso_local i32 @memcheck(%struct.TYPE_9__*) #1

declare dso_local %struct.window_global* @get_window_data(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @window_sum(i32*, %struct.window_global*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
