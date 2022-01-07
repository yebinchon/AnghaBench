; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_freepage.c_FreePageManagerGetInternal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_freepage.c_FreePageManagerGetInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32, i64, i64, i32, i32* }
%struct.TYPE_19__ = type { i64, i64, i32, i32 }
%struct.TYPE_21__ = type { i32, i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i32 }

@FPM_NUM_FREELISTS = common dso_local global i64 0, align 8
@FREE_PAGE_SPAN_LEADER_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i64, i64*)* @FreePageManagerGetInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FreePageManagerGetInternal(%struct.TYPE_20__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_21__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %18 = call i8* @fpm_segment_base(%struct.TYPE_20__* %17)
  store i8* %18, i8** %8, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %9, align 8
  store i64 0, i64* %13, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @FPM_NUM_FREELISTS, align 8
  %21 = call i64 @Min(i64 %19, i64 %20)
  %22 = sub i64 %21, 1
  store i64 %22, i64* %14, align 8
  br label %23

23:                                               ; preds = %97, %3
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* @FPM_NUM_FREELISTS, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %100

27:                                               ; preds = %23
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %14, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @relptr_is_null(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %97

37:                                               ; preds = %27
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* @FPM_NUM_FREELISTS, align 8
  %40 = sub i64 %39, 1
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %14, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.TYPE_19__* @relptr_access(i8* %43, i32 %49)
  store %struct.TYPE_19__* %50, %struct.TYPE_19__** %9, align 8
  br label %96

51:                                               ; preds = %37
  %52 = load i8*, i8** %8, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %14, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.TYPE_19__* @relptr_access(i8* %52, i32 %58)
  store %struct.TYPE_19__* %59, %struct.TYPE_19__** %15, align 8
  br label %60

60:                                               ; preds = %92, %51
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp uge i64 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %60
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %68 = icmp eq %struct.TYPE_19__* %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ugt i64 %72, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %69, %66
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  store %struct.TYPE_19__* %78, %struct.TYPE_19__** %9, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %95

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %69, %60
  %87 = load i8*, i8** %8, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call %struct.TYPE_19__* @relptr_access(i8* %87, i32 %90)
  store %struct.TYPE_19__* %91, %struct.TYPE_19__** %15, align 8
  br label %92

92:                                               ; preds = %86
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %94 = icmp ne %struct.TYPE_19__* %93, null
  br i1 %94, label %60, label %95

95:                                               ; preds = %92, %84
  br label %96

96:                                               ; preds = %95, %42
  br label %100

97:                                               ; preds = %36
  %98 = load i64, i64* %14, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %14, align 8
  br label %23

100:                                              ; preds = %96, %23
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %102 = icmp eq %struct.TYPE_19__* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 0, i32* %4, align 4
  br label %328

104:                                              ; preds = %100
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @FREE_PAGE_SPAN_LEADER_MAGIC, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @Assert(i32 %110)
  %112 = load i8*, i8** %8, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call %struct.TYPE_19__* @relptr_access(i8* %112, i32 %115)
  store %struct.TYPE_19__* %116, %struct.TYPE_19__** %10, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call %struct.TYPE_19__* @relptr_access(i8* %117, i32 %120)
  store %struct.TYPE_19__* %121, %struct.TYPE_19__** %11, align 8
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %123 = icmp ne %struct.TYPE_19__* %122, null
  br i1 %123, label %124, label %132

124:                                              ; preds = %104
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @relptr_copy(i32 %127, i32 %130)
  br label %143

132:                                              ; preds = %104
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 5
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* %14, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @relptr_copy(i32 %138, i32 %141)
  br label %143

143:                                              ; preds = %132, %124
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %145 = icmp ne %struct.TYPE_19__* %144, null
  br i1 %145, label %146, label %154

146:                                              ; preds = %143
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @relptr_copy(i32 %149, i32 %152)
  br label %154

154:                                              ; preds = %146, %143
  %155 = load i8*, i8** %8, align 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %157 = call i64 @fpm_pointer_to_page(i8* %155, %struct.TYPE_19__* %156)
  store i64 %157, i64* %13, align 8
  %158 = load i64, i64* %14, align 8
  %159 = load i64, i64* @FPM_NUM_FREELISTS, align 8
  %160 = sub i64 %159, 1
  %161 = icmp eq i64 %158, %160
  br i1 %161, label %162, label %173

162:                                              ; preds = %154
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %165, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %162
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 1
  store i32 1, i32* %172, align 8
  br label %193

173:                                              ; preds = %162, %154
  %174 = load i64, i64* %14, align 8
  %175 = add i64 %174, 1
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %175, %178
  br i1 %179, label %180, label %192

180:                                              ; preds = %173
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 5
  %183 = load i32*, i32** %182, align 8
  %184 = load i64, i64* %14, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @relptr_is_null(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %180
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 1
  store i32 1, i32* %191, align 8
  br label %192

192:                                              ; preds = %189, %180, %173
  br label %193

193:                                              ; preds = %192, %170
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = call i64 @relptr_is_null(i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %247

199:                                              ; preds = %193
  %200 = load i64, i64* %13, align 8
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = icmp eq i64 %200, %203
  %205 = zext i1 %204 to i32
  %206 = call i32 @Assert(i32 %205)
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %209, %212
  %214 = zext i1 %213 to i32
  %215 = call i32 @Assert(i32 %214)
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* %6, align 8
  %220 = icmp uge i64 %218, %219
  %221 = zext i1 %220 to i32
  %222 = call i32 @Assert(i32 %221)
  %223 = load i64, i64* %6, align 8
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = add i64 %226, %223
  store i64 %227, i64* %225, align 8
  %228 = load i64, i64* %6, align 8
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 3
  %231 = load i64, i64* %230, align 8
  %232 = sub i64 %231, %228
  store i64 %232, i64* %230, align 8
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = icmp sgt i64 %235, 0
  br i1 %236, label %237, label %246

237:                                              ; preds = %199
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = call i32 @FreePagePushSpanLeader(%struct.TYPE_20__* %238, i64 %241, i64 %244)
  br label %246

246:                                              ; preds = %237, %199
  br label %323

247:                                              ; preds = %193
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %249 = load i64, i64* %13, align 8
  %250 = call i32 @FreePageBtreeSearch(%struct.TYPE_20__* %248, i64 %249, %struct.TYPE_21__* %12)
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @Assert(i32 %252)
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* %6, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %266

259:                                              ; preds = %247
  %260 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 2
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = call i32 @FreePageBtreeRemove(%struct.TYPE_20__* %260, %struct.TYPE_17__* %262, i64 %264)
  br label %322

266:                                              ; preds = %247
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* %6, align 8
  %271 = icmp ugt i64 %269, %270
  %272 = zext i1 %271 to i32
  %273 = call i32 @Assert(i32 %272)
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 2
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_22__*, %struct.TYPE_22__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %278, i64 %280
  store %struct.TYPE_22__* %281, %struct.TYPE_22__** %16, align 8
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %283 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = icmp eq i64 %284, %287
  %289 = zext i1 %288 to i32
  %290 = call i32 @Assert(i32 %289)
  %291 = load i64, i64* %6, align 8
  %292 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = sext i32 %294 to i64
  %296 = add i64 %295, %291
  %297 = trunc i64 %296 to i32
  store i32 %297, i32* %293, align 8
  %298 = load i64, i64* %6, align 8
  %299 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %300 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = sub i64 %301, %298
  store i64 %302, i64* %300, align 8
  %303 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %306, label %311

306:                                              ; preds = %266
  %307 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 2
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %308, align 8
  %310 = call i32 @FreePageBtreeAdjustAncestorKeys(%struct.TYPE_20__* %307, %struct.TYPE_17__* %309)
  br label %311

311:                                              ; preds = %306, %266
  %312 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %313 = load i64, i64* %13, align 8
  %314 = load i64, i64* %6, align 8
  %315 = add i64 %313, %314
  %316 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %317 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* %6, align 8
  %320 = sub i64 %318, %319
  %321 = call i32 @FreePagePushSpanLeader(%struct.TYPE_20__* %312, i64 %315, i64 %320)
  br label %322

322:                                              ; preds = %311, %259
  br label %323

323:                                              ; preds = %322, %246
  %324 = load i8*, i8** %8, align 8
  %325 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %326 = call i64 @fpm_pointer_to_page(i8* %324, %struct.TYPE_19__* %325)
  %327 = load i64*, i64** %7, align 8
  store i64 %326, i64* %327, align 8
  store i32 1, i32* %4, align 4
  br label %328

328:                                              ; preds = %323, %103
  %329 = load i32, i32* %4, align 4
  ret i32 %329
}

declare dso_local i8* @fpm_segment_base(%struct.TYPE_20__*) #1

declare dso_local i64 @Min(i64, i64) #1

declare dso_local i64 @relptr_is_null(i32) #1

declare dso_local %struct.TYPE_19__* @relptr_access(i8*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @relptr_copy(i32, i32) #1

declare dso_local i64 @fpm_pointer_to_page(i8*, %struct.TYPE_19__*) #1

declare dso_local i32 @FreePagePushSpanLeader(%struct.TYPE_20__*, i64, i64) #1

declare dso_local i32 @FreePageBtreeSearch(%struct.TYPE_20__*, i64, %struct.TYPE_21__*) #1

declare dso_local i32 @FreePageBtreeRemove(%struct.TYPE_20__*, %struct.TYPE_17__*, i64) #1

declare dso_local i32 @FreePageBtreeAdjustAncestorKeys(%struct.TYPE_20__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
