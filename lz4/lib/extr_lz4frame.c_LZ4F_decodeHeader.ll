; ModuleID = '/home/carl/AnghaBench/lz4/lib/extr_lz4frame.c_LZ4F_decodeHeader.c'
source_filename = "/home/carl/AnghaBench/lz4/lib/extr_lz4frame.c_LZ4F_decodeHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64*, i64, i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@minFHSize = common dso_local global i64 0, align 8
@LZ4F_ERROR_frameHeader_incomplete = common dso_local global i32 0, align 4
@LZ4F_MAGIC_SKIPPABLE_START = common dso_local global i32 0, align 4
@LZ4F_skippableFrame = common dso_local global i32 0, align 4
@dstage_storeSFrameSize = common dso_local global i32 0, align 4
@dstage_getSFrameSize = common dso_local global i32 0, align 4
@LZ4F_MAGICNUMBER = common dso_local global i32 0, align 4
@LZ4F_ERROR_frameType_unknown = common dso_local global i32 0, align 4
@LZ4F_frame = common dso_local global i32 0, align 4
@_2BITS = common dso_local global i32 0, align 4
@_1BIT = common dso_local global i32 0, align 4
@LZ4F_ERROR_reservedFlag_set = common dso_local global i32 0, align 4
@LZ4F_ERROR_headerVersion_wrong = common dso_local global i32 0, align 4
@dstage_storeFrameHeader = common dso_local global i32 0, align 4
@_3BITS = common dso_local global i32 0, align 4
@LZ4F_ERROR_maxBlockSize_invalid = common dso_local global i32 0, align 4
@_4BITS = common dso_local global i32 0, align 4
@LZ4F_ERROR_headerChecksum_invalid = common dso_local global i32 0, align 4
@dstage_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i8*, i64)* @LZ4F_decodeHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LZ4F_decodeHeader(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to i64*
  store i64* %21, i64** %15, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @minFHSize, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @LZ4F_ERROR_frameHeader_incomplete, align 4
  %27 = call i64 @err0r(i32 %26)
  store i64 %27, i64* %4, align 8
  br label %259

28:                                               ; preds = %3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  %31 = call i32 @MEM_INIT(%struct.TYPE_5__* %30, i32 0, i32 28)
  %32 = load i64*, i64** %15, align 8
  %33 = call i32 @LZ4F_readLE32(i64* %32)
  %34 = and i32 %33, -16
  %35 = load i32, i32* @LZ4F_MAGIC_SKIPPABLE_START, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %28
  %38 = load i32, i32* @LZ4F_skippableFrame, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 6
  store i32 %38, i32* %41, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = bitcast i64* %45 to i8*
  %47 = icmp eq i8* %42, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %37
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i32 8, i32* %53, align 8
  %54 = load i32, i32* @dstage_storeSFrameSize, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load i64, i64* %7, align 8
  store i64 %57, i64* %4, align 8
  br label %259

58:                                               ; preds = %37
  %59 = load i32, i32* @dstage_getSFrameSize, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  store i64 4, i64* %4, align 8
  br label %259

62:                                               ; preds = %28
  %63 = load i64*, i64** %15, align 8
  %64 = call i32 @LZ4F_readLE32(i64* %63)
  %65 = load i32, i32* @LZ4F_MAGICNUMBER, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @LZ4F_ERROR_frameType_unknown, align 4
  %69 = call i64 @err0r(i32 %68)
  store i64 %69, i64* %4, align 8
  br label %259

70:                                               ; preds = %62
  %71 = load i32, i32* @LZ4F_frame, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 6
  store i32 %71, i32* %74, align 8
  %75 = load i64*, i64** %15, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 4
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = ashr i32 %79, 6
  %81 = load i32, i32* @_2BITS, align 4
  %82 = and i32 %80, %81
  store i32 %82, i32* %17, align 4
  %83 = load i32, i32* %16, align 4
  %84 = ashr i32 %83, 4
  %85 = load i32, i32* @_1BIT, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %16, align 4
  %88 = ashr i32 %87, 5
  %89 = load i32, i32* @_1BIT, align 4
  %90 = and i32 %88, %89
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %16, align 4
  %92 = ashr i32 %91, 3
  %93 = load i32, i32* @_1BIT, align 4
  %94 = and i32 %92, %93
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %16, align 4
  %96 = ashr i32 %95, 2
  %97 = load i32, i32* @_1BIT, align 4
  %98 = and i32 %96, %97
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* @_1BIT, align 4
  %101 = and i32 %99, %100
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %16, align 4
  %103 = ashr i32 %102, 1
  %104 = load i32, i32* @_1BIT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %70
  %108 = load i32, i32* @LZ4F_ERROR_reservedFlag_set, align 4
  %109 = call i64 @err0r(i32 %108)
  store i64 %109, i64* %4, align 8
  br label %259

110:                                              ; preds = %70
  %111 = load i32, i32* %17, align 4
  %112 = icmp ne i32 %111, 1
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32, i32* @LZ4F_ERROR_headerVersion_wrong, align 4
  %115 = call i64 @err0r(i32 %114)
  store i64 %115, i64* %4, align 8
  br label %259

116:                                              ; preds = %110
  %117 = load i64, i64* @minFHSize, align 8
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 8, i32 0
  %122 = sext i32 %121 to i64
  %123 = add i64 %117, %122
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 4, i32 0
  %128 = sext i32 %127 to i64
  %129 = add i64 %123, %128
  store i64 %129, i64* %14, align 8
  %130 = load i64, i64* %7, align 8
  %131 = load i64, i64* %14, align 8
  %132 = icmp ult i64 %130, %131
  br i1 %132, label %133, label %158

133:                                              ; preds = %116
  %134 = load i64*, i64** %15, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = icmp ne i64* %134, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %133
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = load i64*, i64** %15, align 8
  %144 = load i64, i64* %7, align 8
  %145 = call i32 @memcpy(i64* %142, i64* %143, i64 %144)
  br label %146

146:                                              ; preds = %139, %133
  %147 = load i64, i64* %7, align 8
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  %150 = load i64, i64* %14, align 8
  %151 = trunc i64 %150 to i32
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load i32, i32* @dstage_storeFrameHeader, align 4
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 4
  %157 = load i64, i64* %7, align 8
  store i64 %157, i64* %4, align 8
  br label %259

158:                                              ; preds = %116
  %159 = load i64*, i64** %15, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 5
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %18, align 4
  %163 = load i32, i32* %18, align 4
  %164 = ashr i32 %163, 4
  %165 = load i32, i32* @_3BITS, align 4
  %166 = and i32 %164, %165
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %18, align 4
  %168 = ashr i32 %167, 7
  %169 = load i32, i32* @_1BIT, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %158
  %173 = load i32, i32* @LZ4F_ERROR_reservedFlag_set, align 4
  %174 = call i64 @err0r(i32 %173)
  store i64 %174, i64* %4, align 8
  br label %259

175:                                              ; preds = %158
  %176 = load i32, i32* %13, align 4
  %177 = icmp ult i32 %176, 4
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, i32* @LZ4F_ERROR_maxBlockSize_invalid, align 4
  %180 = call i64 @err0r(i32 %179)
  store i64 %180, i64* %4, align 8
  br label %259

181:                                              ; preds = %175
  %182 = load i32, i32* %18, align 4
  %183 = ashr i32 %182, 0
  %184 = load i32, i32* @_4BITS, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %181
  %188 = load i32, i32* @LZ4F_ERROR_reservedFlag_set, align 4
  %189 = call i64 @err0r(i32 %188)
  store i64 %189, i64* %4, align 8
  br label %259

190:                                              ; preds = %181
  %191 = load i64, i64* %14, align 8
  %192 = icmp ugt i64 %191, 5
  %193 = zext i1 %192 to i32
  %194 = call i32 @assert(i32 %193)
  %195 = load i64*, i64** %15, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 4
  %197 = load i64, i64* %14, align 8
  %198 = sub i64 %197, 5
  %199 = call i64 @LZ4F_headerChecksum(i64* %196, i64 %198)
  store i64 %199, i64* %19, align 8
  %200 = load i64, i64* %19, align 8
  %201 = load i64*, i64** %15, align 8
  %202 = load i64, i64* %14, align 8
  %203 = sub i64 %202, 1
  %204 = getelementptr inbounds i64, i64* %201, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %200, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %190
  %208 = load i32, i32* @LZ4F_ERROR_headerChecksum_invalid, align 4
  %209 = call i64 @err0r(i32 %208)
  store i64 %209, i64* %4, align 8
  br label %259

210:                                              ; preds = %190
  %211 = load i32, i32* %8, align 4
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 4
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 5
  store i32 %211, i32* %214, align 4
  %215 = load i32, i32* %9, align 4
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 4
  store i32 %215, i32* %218, align 8
  %219 = load i32, i32* %11, align 4
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 4
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 3
  store i32 %219, i32* %222, align 4
  %223 = load i32, i32* %13, align 4
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 2
  store i32 %223, i32* %226, align 8
  %227 = load i32, i32* %13, align 4
  %228 = call i32 @LZ4F_getBlockSize(i32 %227)
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 6
  store i32 %228, i32* %230, align 8
  %231 = load i32, i32* %10, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %210
  %234 = load i64*, i64** %15, align 8
  %235 = getelementptr inbounds i64, i64* %234, i64 6
  %236 = call i32 @LZ4F_readLE64(i64* %235)
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 4
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 1
  store i32 %236, i32* %239, align 4
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 5
  store i32 %236, i32* %241, align 4
  br label %242

242:                                              ; preds = %233, %210
  %243 = load i32, i32* %12, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %254

245:                                              ; preds = %242
  %246 = load i64*, i64** %15, align 8
  %247 = load i64, i64* %14, align 8
  %248 = getelementptr inbounds i64, i64* %246, i64 %247
  %249 = getelementptr inbounds i64, i64* %248, i64 -5
  %250 = call i32 @LZ4F_readLE32(i64* %249)
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 4
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  store i32 %250, i32* %253, align 8
  br label %254

254:                                              ; preds = %245, %242
  %255 = load i32, i32* @dstage_init, align 4
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 3
  store i32 %255, i32* %257, align 4
  %258 = load i64, i64* %14, align 8
  store i64 %258, i64* %4, align 8
  br label %259

259:                                              ; preds = %254, %207, %187, %178, %172, %146, %113, %107, %67, %58, %48, %25
  %260 = load i64, i64* %4, align 8
  ret i64 %260
}

declare dso_local i64 @err0r(i32) #1

declare dso_local i32 @MEM_INIT(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @LZ4F_readLE32(i64*) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @LZ4F_headerChecksum(i64*, i64) #1

declare dso_local i32 @LZ4F_getBlockSize(i32) #1

declare dso_local i32 @LZ4F_readLE64(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
