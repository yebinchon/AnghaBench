; ModuleID = '/home/carl/AnghaBench/memcached/extr_slab_automove.c_slab_automove_run.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_slab_automove.c_slab_automove_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, double, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.window_data* }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i32, i32 }
%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.window_data = type { i32, i32, i64 }

@POWER_SMALLEST = common dso_local global i32 0, align 4
@MAX_NUMBER_OF_SLAB_CLASSES = common dso_local global i32 0, align 4
@MIN_PAGES_FOR_RECLAIM = common dso_local global i32 0, align 4
@MIN_PAGES_FOR_SOURCE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slab_automove_run(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.window_data, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.window_data*, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %7, align 8
  store i32 -1, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i32 -1, i32* %12, align 4
  store i64 -1, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 -1, i32* %20, align 4
  %21 = load i32*, i32** %6, align 8
  store i32 -1, i32* %21, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = call i32 @fill_item_stats_automove(%struct.TYPE_8__* %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = call i32 @fill_slab_stats_automove(%struct.TYPE_8__* %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* @POWER_SMALLEST, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %222, %3
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @MAX_NUMBER_OF_SLAB_CLASSES, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %225

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  store i32 %44, i32* %15, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 7
  %47 = load %struct.window_data*, %struct.window_data** %46, align 8
  %48 = load i32, i32* %15, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = srem i32 %51, %54
  %56 = add nsw i32 %48, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.window_data, %struct.window_data* %47, i64 %57
  store %struct.window_data* %58, %struct.window_data** %16, align 8
  %59 = load %struct.window_data*, %struct.window_data** %16, align 8
  %60 = call i32 @memset(%struct.window_data* %59, i32 0, i32 16)
  %61 = call i32 @memset(%struct.window_data* %9, i32 0, i32 16)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 7
  %64 = load %struct.window_data*, %struct.window_data** %63, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.window_data, %struct.window_data* %64, i64 %66
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @window_sum(%struct.window_data* %67, %struct.window_data* %9, i32 %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 5
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 6
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %79, %87
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %109, label %90

90:                                               ; preds = %39
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 5
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 6
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %98, %106
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %90, %39
  %110 = load %struct.window_data*, %struct.window_data** %16, align 8
  %111 = getelementptr inbounds %struct.window_data, %struct.window_data* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  %112 = load %struct.window_data*, %struct.window_data** %16, align 8
  %113 = getelementptr inbounds %struct.window_data, %struct.window_data* %112, i32 0, i32 1
  store i32 1, i32* %113, align 4
  br label %114

114:                                              ; preds = %109, %90
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %122, %130
  %132 = icmp sgt i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %114
  %134 = load %struct.window_data*, %struct.window_data** %16, align 8
  %135 = getelementptr inbounds %struct.window_data, %struct.window_data* %134, i32 0, i32 1
  store i32 1, i32* %135, align 4
  br label %136

136:                                              ; preds = %133, %114
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 5
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.window_data*, %struct.window_data** %16, align 8
  %146 = getelementptr inbounds %struct.window_data, %struct.window_data* %145, i32 0, i32 2
  store i64 %144, i64* %146, align 8
  %147 = getelementptr inbounds %struct.window_data, %struct.window_data* %9, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = sdiv i64 %148, %152
  store i64 %153, i64* %17, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @MIN_PAGES_FOR_RECLAIM, align 4
  %171 = mul nsw i32 %169, %170
  %172 = icmp sgt i32 %161, %171
  br i1 %172, label %173, label %182

173:                                              ; preds = %136
  %174 = getelementptr inbounds %struct.window_data, %struct.window_data* %9, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = load i32, i32* %8, align 4
  %179 = load i32*, i32** %5, align 8
  store i32 %178, i32* %179, align 4
  %180 = load i32*, i32** %6, align 8
  store i32 0, i32* %180, align 4
  br label %225

181:                                              ; preds = %173
  br label %182

182:                                              ; preds = %181, %136
  %183 = load i64, i64* %17, align 8
  %184 = load i64, i64* %11, align 8
  %185 = icmp sgt i64 %183, %184
  br i1 %185, label %186, label %200

186:                                              ; preds = %182
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 3
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @MIN_PAGES_FOR_SOURCE, align 8
  %196 = icmp sgt i64 %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %186
  %198 = load i32, i32* %8, align 4
  store i32 %198, i32* %10, align 4
  %199 = load i64, i64* %17, align 8
  store i64 %199, i64* %11, align 8
  br label %200

200:                                              ; preds = %197, %186, %182
  %201 = load i64, i64* %17, align 8
  %202 = load i64, i64* %13, align 8
  %203 = icmp slt i64 %201, %202
  br i1 %203, label %204, label %221

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.window_data, %struct.window_data* %9, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = sdiv i32 %209, 2
  %211 = icmp sgt i32 %206, %210
  br i1 %211, label %212, label %221

212:                                              ; preds = %204
  %213 = load i32, i32* %8, align 4
  store i32 %213, i32* %12, align 4
  %214 = load i64, i64* %17, align 8
  store i64 %214, i64* %13, align 8
  %215 = load %struct.window_data*, %struct.window_data** %16, align 8
  %216 = getelementptr inbounds %struct.window_data, %struct.window_data* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  %219 = zext i1 %218 to i64
  %220 = select i1 %218, i32 1, i32 0
  store i32 %220, i32* %14, align 4
  br label %221

221:                                              ; preds = %212, %204, %200
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %8, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %8, align 4
  br label %35

225:                                              ; preds = %177, %35
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 6
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %227, align 8
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 5
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %230, align 8
  %232 = load i32, i32* @MAX_NUMBER_OF_SLAB_CLASSES, align 4
  %233 = sext i32 %232 to i64
  %234 = mul i64 4, %233
  %235 = trunc i64 %234 to i32
  %236 = call i32 @memcpy(%struct.TYPE_7__* %228, %struct.TYPE_8__* %231, i32 %235)
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 4
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %238, align 8
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 3
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %241, align 8
  %243 = load i32, i32* @MAX_NUMBER_OF_SLAB_CLASSES, align 4
  %244 = sext i32 %243 to i64
  %245 = mul i64 4, %244
  %246 = trunc i64 %245 to i32
  %247 = call i32 @memcpy(%struct.TYPE_7__* %239, %struct.TYPE_8__* %242, i32 %246)
  %248 = load i32, i32* %12, align 4
  %249 = icmp ne i32 %248, -1
  br i1 %249, label %250, label %280

250:                                              ; preds = %225
  %251 = load i32, i32* %10, align 4
  %252 = icmp ne i32 %251, -1
  br i1 %252, label %253, label %280

253:                                              ; preds = %250
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = icmp sgt i32 %256, %259
  br i1 %260, label %261, label %280

261:                                              ; preds = %253
  %262 = load i64, i64* %13, align 8
  %263 = sitofp i64 %262 to double
  %264 = load i64, i64* %11, align 8
  %265 = sitofp i64 %264 to double
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 2
  %268 = load double, double* %267, align 8
  %269 = fmul double %265, %268
  %270 = fcmp olt double %263, %269
  br i1 %270, label %271, label %279

271:                                              ; preds = %261
  %272 = load i32, i32* %14, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %271
  %275 = load i32, i32* %10, align 4
  %276 = load i32*, i32** %5, align 8
  store i32 %275, i32* %276, align 4
  %277 = load i32, i32* %12, align 4
  %278 = load i32*, i32** %6, align 8
  store i32 %277, i32* %278, align 4
  br label %279

279:                                              ; preds = %274, %271, %261
  br label %280

280:                                              ; preds = %279, %253, %250, %225
  ret void
}

declare dso_local i32 @fill_item_stats_automove(%struct.TYPE_8__*) #1

declare dso_local i32 @fill_slab_stats_automove(%struct.TYPE_8__*) #1

declare dso_local i32 @memset(%struct.window_data*, i32, i32) #1

declare dso_local i32 @window_sum(%struct.window_data*, %struct.window_data*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
