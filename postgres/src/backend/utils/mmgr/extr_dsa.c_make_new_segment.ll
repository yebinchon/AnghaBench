; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_dsa.c_make_new_segment.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_dsa.c_make_new_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32*, i64, i32*, i32* }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_11__*, i64 }
%struct.TYPE_10__ = type { i64*, i64, i64, i64, i64, i64* }

@DSA_MAX_SEGMENTS = common dso_local global i64 0, align 8
@DSM_HANDLE_INVALID = common dso_local global i64 0, align 8
@DSA_INITIAL_SEGMENT_SIZE = common dso_local global i64 0, align 8
@DSA_NUM_SEGMENTS_AT_EACH_SIZE = common dso_local global i64 0, align 8
@DSA_MAX_SEGMENT_SIZE = common dso_local global i64 0, align 8
@FPM_PAGE_SIZE = common dso_local global i64 0, align 8
@DSA_SEGMENT_HEADER_MAGIC = common dso_local global i64 0, align 8
@DSA_SEGMENT_INDEX_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_13__*, i64)* @make_new_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @make_new_segment(%struct.TYPE_13__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = call i32 @DSA_AREA_LOCK(%struct.TYPE_13__* %14)
  %16 = call i32 @LWLockHeldByMe(i32 %15)
  %17 = call i32 @Assert(i32 %16)
  store i64 1, i64* %6, align 8
  br label %18

18:                                               ; preds = %35, %2
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @DSA_MAX_SEGMENTS, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DSM_HANDLE_INVALID, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %38

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %6, align 8
  br label %18

38:                                               ; preds = %33, %18
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @DSA_MAX_SEGMENTS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %391

43:                                               ; preds = %38
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %48, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %391

56:                                               ; preds = %43
  %57 = load i64, i64* @DSA_INITIAL_SEGMENT_SIZE, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @DSA_NUM_SEGMENTS_AT_EACH_SIZE, align 8
  %60 = udiv i64 %58, %59
  %61 = shl i64 1, %60
  %62 = mul i64 %57, %61
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @DSA_MAX_SEGMENT_SIZE, align 8
  %65 = call i64 @Min(i64 %63, i64 %64)
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %71, %76
  %78 = call i64 @Min(i64 %66, i64 %77)
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @FPM_PAGE_SIZE, align 8
  %81 = udiv i64 %79, %80
  store i64 %81, i64* %9, align 8
  %82 = call i64 @MAXALIGN(i32 56)
  %83 = call i64 @MAXALIGN(i32 4)
  %84 = add i64 %82, %83
  %85 = load i64, i64* %9, align 8
  %86 = mul i64 4, %85
  %87 = add i64 %84, %86
  store i64 %87, i64* %7, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @FPM_PAGE_SIZE, align 8
  %90 = urem i64 %88, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %56
  %93 = load i64, i64* @FPM_PAGE_SIZE, align 8
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* @FPM_PAGE_SIZE, align 8
  %96 = urem i64 %94, %95
  %97 = sub i64 %93, %96
  %98 = load i64, i64* %7, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %7, align 8
  br label %100

100:                                              ; preds = %92, %56
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %7, align 8
  %103 = icmp ule i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %391

105:                                              ; preds = %100
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* %7, align 8
  %108 = sub i64 %106, %107
  %109 = load i64, i64* @FPM_PAGE_SIZE, align 8
  %110 = udiv i64 %108, %109
  store i64 %110, i64* %10, align 8
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* @FPM_PAGE_SIZE, align 8
  %114 = mul i64 %112, %113
  %115 = add i64 %111, %114
  %116 = load i64, i64* %8, align 8
  %117 = icmp ule i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @Assert(i32 %118)
  %120 = load i64, i64* %5, align 8
  %121 = load i64, i64* %10, align 8
  %122 = icmp ugt i64 %120, %121
  br i1 %122, label %123, label %169

123:                                              ; preds = %105
  %124 = load i64, i64* %5, align 8
  store i64 %124, i64* %10, align 8
  %125 = call i64 @MAXALIGN(i32 56)
  %126 = call i64 @MAXALIGN(i32 4)
  %127 = add i64 %125, %126
  %128 = load i64, i64* %10, align 8
  %129 = mul i64 %128, 4
  %130 = add i64 %127, %129
  store i64 %130, i64* %7, align 8
  %131 = load i64, i64* %7, align 8
  %132 = load i64, i64* @FPM_PAGE_SIZE, align 8
  %133 = urem i64 %131, %132
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %123
  %136 = load i64, i64* @FPM_PAGE_SIZE, align 8
  %137 = load i64, i64* %7, align 8
  %138 = load i64, i64* @FPM_PAGE_SIZE, align 8
  %139 = urem i64 %137, %138
  %140 = sub i64 %136, %139
  %141 = load i64, i64* %7, align 8
  %142 = add i64 %141, %140
  store i64 %142, i64* %7, align 8
  br label %143

143:                                              ; preds = %135, %123
  %144 = load i64, i64* %7, align 8
  %145 = load i64, i64* %10, align 8
  %146 = load i64, i64* @FPM_PAGE_SIZE, align 8
  %147 = mul i64 %145, %146
  %148 = add i64 %144, %147
  store i64 %148, i64* %8, align 8
  %149 = load i64, i64* %8, align 8
  %150 = load i64, i64* @DSA_MAX_SEGMENT_SIZE, align 8
  %151 = icmp ugt i64 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %143
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %391

153:                                              ; preds = %143
  %154 = load i64, i64* %8, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %159, %164
  %166 = icmp ugt i64 %154, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %153
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %391

168:                                              ; preds = %153
  br label %169

169:                                              ; preds = %168, %105
  %170 = load i64, i64* %8, align 8
  %171 = call i32* @dsm_create(i64 %170, i32 0)
  store i32* %171, i32** %12, align 8
  %172 = load i32*, i32** %12, align 8
  %173 = icmp eq i32* %172, null
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %391

175:                                              ; preds = %169
  %176 = load i32*, i32** %12, align 8
  %177 = call i32 @dsm_pin_segment(i32* %176)
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %175
  %183 = load i32*, i32** %12, align 8
  %184 = call i32 @dsm_pin_mapping(i32* %183)
  br label %185

185:                                              ; preds = %182, %175
  %186 = load i32*, i32** %12, align 8
  %187 = call i64 @dsm_segment_handle(i32* %186)
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = load i64*, i64** %191, align 8
  %193 = load i64, i64* %6, align 8
  %194 = getelementptr inbounds i64, i64* %192, i64 %193
  store i64 %187, i64* %194, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* %6, align 8
  %201 = icmp ult i64 %199, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %185
  %203 = load i64, i64* %6, align 8
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 3
  store i64 %203, i64* %207, align 8
  br label %208

208:                                              ; preds = %202, %185
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* %6, align 8
  %213 = icmp ult i64 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %208
  %215 = load i64, i64* %6, align 8
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  store i64 %215, i64* %217, align 8
  br label %218

218:                                              ; preds = %214, %208
  %219 = load i64, i64* %8, align 8
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = add i64 %224, %219
  store i64 %225, i64* %223, align 8
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = icmp sle i64 %230, %235
  %237 = zext i1 %236 to i32
  %238 = call i32 @Assert(i32 %237)
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %240, align 8
  %242 = load i64, i64* %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i64 %242
  store %struct.TYPE_11__* %243, %struct.TYPE_11__** %11, align 8
  %244 = load i32*, i32** %12, align 8
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 4
  store i32* %244, i32** %246, align 8
  %247 = load i32*, i32** %12, align 8
  %248 = call i64 @dsm_segment_address(i32* %247)
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 2
  store i64 %248, i64* %250, align 8
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = inttoptr i64 %253 to %struct.TYPE_12__*
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  store %struct.TYPE_12__* %254, %struct.TYPE_12__** %256, align 8
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = call i64 @MAXALIGN(i32 56)
  %261 = add i64 %259, %260
  %262 = inttoptr i64 %261 to i32*
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 1
  store i32* %262, i32** %264, align 8
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = call i64 @MAXALIGN(i32 56)
  %269 = add i64 %267, %268
  %270 = call i64 @MAXALIGN(i32 4)
  %271 = add i64 %269, %270
  %272 = inttoptr i64 %271 to i32*
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 3
  store i32* %272, i32** %274, align 8
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 1
  %277 = load i32*, i32** %276, align 8
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 2
  %280 = load i64, i64* %279, align 8
  %281 = call i32 @FreePageManagerInitialize(i32* %277, i64 %280)
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 1
  %284 = load i32*, i32** %283, align 8
  %285 = load i64, i64* %7, align 8
  %286 = load i64, i64* @FPM_PAGE_SIZE, align 8
  %287 = udiv i64 %285, %286
  %288 = load i64, i64* %10, align 8
  %289 = call i32 @FreePageManagerPut(i32* %284, i64 %287, i64 %288)
  %290 = load i64, i64* @DSA_SEGMENT_HEADER_MAGIC, align 8
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 1
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 4
  %295 = load i64, i64* %294, align 8
  %296 = xor i64 %290, %295
  %297 = load i64, i64* %6, align 8
  %298 = xor i64 %296, %297
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_12__*, %struct.TYPE_12__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 0
  store i64 %298, i64* %302, align 8
  %303 = load i64, i64* %10, align 8
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_12__*, %struct.TYPE_12__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 1
  store i64 %303, i64* %307, align 8
  %308 = load i64, i64* %8, align 8
  %309 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 0
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 2
  store i64 %308, i64* %312, align 8
  %313 = load i64, i64* %10, align 8
  %314 = call i64 @contiguous_pages_to_segment_bin(i64 %313)
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_12__*, %struct.TYPE_12__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 3
  store i64 %314, i64* %318, align 8
  %319 = load i64, i64* @DSA_SEGMENT_INDEX_NONE, align 8
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 0
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 4
  store i64 %319, i64* %323, align 8
  %324 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %324, i32 0, i32 1
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 5
  %328 = load i64*, i64** %327, align 8
  %329 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %330 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %329, i32 0, i32 0
  %331 = load %struct.TYPE_12__*, %struct.TYPE_12__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 3
  %333 = load i64, i64* %332, align 8
  %334 = getelementptr inbounds i64, i64* %328, i64 %333
  %335 = load i64, i64* %334, align 8
  %336 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 0, i32 0
  %338 = load %struct.TYPE_12__*, %struct.TYPE_12__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %338, i32 0, i32 5
  store i64 %335, i64* %339, align 8
  %340 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 0
  %342 = load %struct.TYPE_12__*, %struct.TYPE_12__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %342, i32 0, i32 6
  store i32 0, i32* %343, align 8
  %344 = load i64, i64* %6, align 8
  %345 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %345, i32 0, i32 1
  %347 = load %struct.TYPE_10__*, %struct.TYPE_10__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 5
  %349 = load i64*, i64** %348, align 8
  %350 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %350, i32 0, i32 0
  %352 = load %struct.TYPE_12__*, %struct.TYPE_12__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %352, i32 0, i32 3
  %354 = load i64, i64* %353, align 8
  %355 = getelementptr inbounds i64, i64* %349, i64 %354
  store i64 %344, i64* %355, align 8
  %356 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %356, i32 0, i32 0
  %358 = load %struct.TYPE_12__*, %struct.TYPE_12__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %358, i32 0, i32 5
  %360 = load i64, i64* %359, align 8
  %361 = load i64, i64* @DSA_SEGMENT_INDEX_NONE, align 8
  %362 = icmp ne i64 %360, %361
  br i1 %362, label %363, label %389

363:                                              ; preds = %218
  %364 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %365 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i32 0, i32 0
  %367 = load %struct.TYPE_12__*, %struct.TYPE_12__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %367, i32 0, i32 5
  %369 = load i64, i64* %368, align 8
  %370 = call %struct.TYPE_11__* @get_segment_by_index(%struct.TYPE_13__* %364, i64 %369)
  store %struct.TYPE_11__* %370, %struct.TYPE_11__** %13, align 8
  %371 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %372 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %371, i32 0, i32 0
  %373 = load %struct.TYPE_12__*, %struct.TYPE_12__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %373, i32 0, i32 3
  %375 = load i64, i64* %374, align 8
  %376 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 0
  %378 = load %struct.TYPE_12__*, %struct.TYPE_12__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %378, i32 0, i32 3
  %380 = load i64, i64* %379, align 8
  %381 = icmp eq i64 %375, %380
  %382 = zext i1 %381 to i32
  %383 = call i32 @Assert(i32 %382)
  %384 = load i64, i64* %6, align 8
  %385 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %386 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %385, i32 0, i32 0
  %387 = load %struct.TYPE_12__*, %struct.TYPE_12__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %387, i32 0, i32 4
  store i64 %384, i64* %388, align 8
  br label %389

389:                                              ; preds = %363, %218
  %390 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %390, %struct.TYPE_11__** %3, align 8
  br label %391

391:                                              ; preds = %389, %174, %167, %152, %104, %55, %42
  %392 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %392
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockHeldByMe(i32) #1

declare dso_local i32 @DSA_AREA_LOCK(%struct.TYPE_13__*) #1

declare dso_local i64 @Min(i64, i64) #1

declare dso_local i64 @MAXALIGN(i32) #1

declare dso_local i32* @dsm_create(i64, i32) #1

declare dso_local i32 @dsm_pin_segment(i32*) #1

declare dso_local i32 @dsm_pin_mapping(i32*) #1

declare dso_local i64 @dsm_segment_handle(i32*) #1

declare dso_local i64 @dsm_segment_address(i32*) #1

declare dso_local i32 @FreePageManagerInitialize(i32*, i64) #1

declare dso_local i32 @FreePageManagerPut(i32*, i64, i64) #1

declare dso_local i64 @contiguous_pages_to_segment_bin(i64) #1

declare dso_local %struct.TYPE_11__* @get_segment_by_index(%struct.TYPE_13__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
