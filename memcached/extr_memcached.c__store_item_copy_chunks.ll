; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c__store_item_copy_chunks.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c__store_item_copy_chunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i32, %struct.TYPE_9__* }

@ITEM_CHUNKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_10__*, i32)* @_store_item_copy_chunks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_store_item_copy_chunks(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = call i64 @ITEM_schunk(%struct.TYPE_10__* %17)
  %19 = inttoptr i64 %18 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %8, align 8
  br label %20

20:                                               ; preds = %38, %3
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %20
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = icmp ne %struct.TYPE_9__* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %8, align 8
  br label %38

37:                                               ; preds = %28
  br label %39

38:                                               ; preds = %33
  br label %20

39:                                               ; preds = %37, %20
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ITEM_CHUNKED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %189

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %9, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = call i64 @ITEM_schunk(%struct.TYPE_10__* %48)
  %50 = inttoptr i64 %49 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %10, align 8
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %183, %46
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %53 = icmp ne %struct.TYPE_9__* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %56 = icmp ne %struct.TYPE_9__* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br label %60

60:                                               ; preds = %57, %54, %51
  %61 = phi i1 [ false, %54 ], [ false, %51 ], [ %59, %57 ]
  br i1 %61, label %62, label %184

62:                                               ; preds = %60
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sle i64 %65, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %74, %77
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = sub nsw i64 %81, %83
  %85 = icmp slt i64 %78, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %62
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %89, %92
  br label %101

94:                                               ; preds = %62
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = sub nsw i64 %97, %99
  br label %101

101:                                              ; preds = %94, %86
  %102 = phi i64 [ %93, %86 ], [ %100, %94 ]
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %107, %101
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %113, %116
  %118 = trunc i64 %117 to i32
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @memcpy(i32 %118, i32 %123, i32 %124)
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, %127
  store i64 %131, i64* %129, align 8
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %9, align 4
  %137 = sub nsw i32 %136, %135
  store i32 %137, i32* %9, align 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp sle i64 %140, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %149, %152
  br i1 %153, label %154, label %164

154:                                              ; preds = %109
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %156 = load i32, i32* %9, align 4
  %157 = call %struct.TYPE_9__* @do_item_alloc_chunk(%struct.TYPE_9__* %155, i32 %156)
  store %struct.TYPE_9__* %157, %struct.TYPE_9__** %13, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %159 = icmp ne %struct.TYPE_9__* %158, null
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %161, %struct.TYPE_9__** %8, align 8
  br label %163

162:                                              ; preds = %154
  store i32 -1, i32* %4, align 4
  br label %288

163:                                              ; preds = %160
  br label %164

164:                                              ; preds = %163, %109
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp sle i64 %166, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @assert(i32 %171)
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %174, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %164
  store i32 0, i32* %11, align 4
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 3
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %181, align 8
  store %struct.TYPE_9__* %182, %struct.TYPE_9__** %10, align 8
  br label %183

183:                                              ; preds = %179, %164
  br label %51

184:                                              ; preds = %60
  %185 = load i32, i32* %9, align 4
  %186 = icmp eq i32 %185, 0
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  br label %287

189:                                              ; preds = %39
  store i32 0, i32* %14, align 4
  br label %190

190:                                              ; preds = %280, %189
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* %14, align 4
  %193 = icmp sgt i32 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %190
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %196 = icmp ne %struct.TYPE_9__* %195, null
  br label %197

197:                                              ; preds = %194, %190
  %198 = phi i1 [ false, %190 ], [ %196, %194 ]
  br i1 %198, label %199, label %281

199:                                              ; preds = %197
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = sub nsw i64 %202, %205
  %207 = load i32, i32* %7, align 4
  %208 = load i32, i32* %14, align 4
  %209 = sub nsw i32 %207, %208
  %210 = sext i32 %209 to i64
  %211 = icmp slt i64 %206, %210
  br i1 %211, label %212, label %220

212:                                              ; preds = %199
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = sub nsw i64 %215, %218
  br label %225

220:                                              ; preds = %199
  %221 = load i32, i32* %7, align 4
  %222 = load i32, i32* %14, align 4
  %223 = sub nsw i32 %221, %222
  %224 = sext i32 %223 to i64
  br label %225

225:                                              ; preds = %220, %212
  %226 = phi i64 [ %219, %212 ], [ %224, %220 ]
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %15, align 4
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = sext i32 %230 to i64
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = add nsw i64 %231, %234
  %236 = trunc i64 %235 to i32
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %238 = call i32 @ITEM_data(%struct.TYPE_10__* %237)
  %239 = load i32, i32* %14, align 4
  %240 = add nsw i32 %238, %239
  %241 = load i32, i32* %15, align 4
  %242 = call i32 @memcpy(i32 %236, i32 %240, i32 %241)
  %243 = load i32, i32* %15, align 4
  %244 = load i32, i32* %14, align 4
  %245 = add nsw i32 %244, %243
  store i32 %245, i32* %14, align 4
  %246 = load i32, i32* %15, align 4
  %247 = sext i32 %246 to i64
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = add nsw i64 %250, %247
  store i64 %251, i64* %249, align 8
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = icmp sle i64 %254, %257
  %259 = zext i1 %258 to i32
  %260 = call i32 @assert(i32 %259)
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = icmp eq i64 %263, %266
  br i1 %267, label %268, label %280

268:                                              ; preds = %225
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %270 = load i32, i32* %7, align 4
  %271 = load i32, i32* %14, align 4
  %272 = sub nsw i32 %270, %271
  %273 = call %struct.TYPE_9__* @do_item_alloc_chunk(%struct.TYPE_9__* %269, i32 %272)
  store %struct.TYPE_9__* %273, %struct.TYPE_9__** %16, align 8
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %275 = icmp ne %struct.TYPE_9__* %274, null
  br i1 %275, label %276, label %278

276:                                              ; preds = %268
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %277, %struct.TYPE_9__** %8, align 8
  br label %279

278:                                              ; preds = %268
  store i32 -1, i32* %4, align 4
  br label %288

279:                                              ; preds = %276
  br label %280

280:                                              ; preds = %279, %225
  br label %190

281:                                              ; preds = %197
  %282 = load i32, i32* %7, align 4
  %283 = load i32, i32* %14, align 4
  %284 = icmp eq i32 %282, %283
  %285 = zext i1 %284 to i32
  %286 = call i32 @assert(i32 %285)
  br label %287

287:                                              ; preds = %281, %184
  store i32 0, i32* %4, align 4
  br label %288

288:                                              ; preds = %287, %278, %162
  %289 = load i32, i32* %4, align 4
  ret i32 %289
}

declare dso_local i64 @ITEM_schunk(%struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @do_item_alloc_chunk(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ITEM_data(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
