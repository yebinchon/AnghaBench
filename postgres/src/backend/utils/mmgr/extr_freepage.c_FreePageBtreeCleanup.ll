; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_freepage.c_FreePageBtreeCleanup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_freepage.c_FreePageBtreeCleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_21__, %struct.TYPE_19__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, %struct.TYPE_18__* }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32, i64, i32 }

@FREE_PAGE_LEAF_MAGIC = common dso_local global i64 0, align 8
@FREE_PAGE_INTERNAL_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_22__*)* @FreePageBtreeCleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @FreePageBtreeCleanup(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %14 = call i8* @fpm_segment_base(%struct.TYPE_22__* %13)
  store i8* %14, i8** %3, align 8
  store i64 0, i64* %4, align 8
  br label %15

15:                                               ; preds = %229, %1
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @relptr_is_null(i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %230

22:                                               ; preds = %15
  %23 = load i8*, i8** %3, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.TYPE_23__* @relptr_access(i8* %23, i32 %26)
  store %struct.TYPE_23__* %27, %struct.TYPE_23__** %5, align 8
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %111

33:                                               ; preds = %22
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @Assert(i32 %38)
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %41, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @FREE_PAGE_LEAF_MAGIC, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %33
  %51 = load i8*, i8** %3, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @relptr_store(i8* %51, i32 %54, %struct.TYPE_23__* null)
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  br label %105

74:                                               ; preds = %33
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @FREE_PAGE_INTERNAL_MAGIC, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @Assert(i32 %81)
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @relptr_copy(i32 %85, i32 %92)
  %94 = load i8*, i8** %3, align 8
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call %struct.TYPE_23__* @relptr_access(i8* %94, i32 %97)
  store %struct.TYPE_23__* %98, %struct.TYPE_23__** %6, align 8
  %99 = load i8*, i8** %3, align 8
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @relptr_store(i8* %99, i32 %103, %struct.TYPE_23__* null)
  br label %105

105:                                              ; preds = %74, %50
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %107 = load i8*, i8** %3, align 8
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %109 = call i64 @fpm_pointer_to_page(i8* %107, %struct.TYPE_23__* %108)
  %110 = call i32 @FreePageBtreeRecycle(%struct.TYPE_22__* %106, i64 %109)
  br label %229

111:                                              ; preds = %22
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %117, label %228

117:                                              ; preds = %111
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @FREE_PAGE_LEAF_MAGIC, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %228

124:                                              ; preds = %117
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %131, %138
  store i64 %139, i64* %7, align 8
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i64 1
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %8, align 8
  %147 = load i64, i64* %7, align 8
  %148 = add nsw i64 %147, 1
  %149 = load i64, i64* %8, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %227

151:                                              ; preds = %124
  %152 = load i8*, i8** %3, align 8
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %154 = call i64 @fpm_pointer_to_page(i8* %152, %struct.TYPE_23__* %153)
  store i64 %154, i64* %9, align 8
  %155 = load i64, i64* %7, align 8
  %156 = load i64, i64* %9, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %226

158:                                              ; preds = %151
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @FreePagePopSpanLeader(%struct.TYPE_22__* %159, i64 %166)
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i64 1
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @FreePagePopSpanLeader(%struct.TYPE_22__* %168, i64 %175)
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 1
  store i64 %183, i64* %185, align 8
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i64 0
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i64 1
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %192, %199
  %201 = add nsw i64 %200, 1
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 2
  store i64 %201, i64* %203, align 8
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 0
  store i64 0, i64* %205, align 8
  %206 = load i8*, i8** %3, align 8
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @relptr_store(i8* %206, i32 %209, %struct.TYPE_23__* null)
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @FreePagePushSpanLeader(%struct.TYPE_22__* %211, i64 %214, i64 %217)
  %219 = load i64, i64* %4, align 8
  %220 = icmp eq i64 %219, 0
  %221 = zext i1 %220 to i32
  %222 = call i32 @Assert(i32 %221)
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %4, align 8
  br label %226

226:                                              ; preds = %158, %151
  br label %227

227:                                              ; preds = %226, %124
  br label %230

228:                                              ; preds = %117, %111
  br label %230

229:                                              ; preds = %105
  br label %15

230:                                              ; preds = %228, %227, %15
  br label %231

231:                                              ; preds = %258, %230
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = icmp sgt i64 %234, 0
  br i1 %235, label %236, label %259

236:                                              ; preds = %231
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %238 = call %struct.TYPE_23__* @FreePageBtreeGetRecycled(%struct.TYPE_22__* %237)
  store %struct.TYPE_23__* %238, %struct.TYPE_23__** %10, align 8
  %239 = load i8*, i8** %3, align 8
  %240 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %241 = call i64 @fpm_pointer_to_page(i8* %239, %struct.TYPE_23__* %240)
  store i64 %241, i64* %11, align 8
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %243 = load i64, i64* %11, align 8
  %244 = call i64 @FreePageManagerPutInternal(%struct.TYPE_22__* %242, i64 %243, i32 1, i32 1)
  store i64 %244, i64* %12, align 8
  %245 = load i64, i64* %12, align 8
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %236
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %249 = load i64, i64* %11, align 8
  %250 = call i32 @FreePageBtreeRecycle(%struct.TYPE_22__* %248, i64 %249)
  br label %259

251:                                              ; preds = %236
  %252 = load i64, i64* %12, align 8
  %253 = load i64, i64* %4, align 8
  %254 = icmp sgt i64 %252, %253
  br i1 %254, label %255, label %257

255:                                              ; preds = %251
  %256 = load i64, i64* %12, align 8
  store i64 %256, i64* %4, align 8
  br label %257

257:                                              ; preds = %255, %251
  br label %258

258:                                              ; preds = %257
  br label %231

259:                                              ; preds = %247, %231
  %260 = load i64, i64* %4, align 8
  ret i64 %260
}

declare dso_local i8* @fpm_segment_base(%struct.TYPE_22__*) #1

declare dso_local i32 @relptr_is_null(i32) #1

declare dso_local %struct.TYPE_23__* @relptr_access(i8*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @relptr_store(i8*, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @relptr_copy(i32, i32) #1

declare dso_local i32 @FreePageBtreeRecycle(%struct.TYPE_22__*, i64) #1

declare dso_local i64 @fpm_pointer_to_page(i8*, %struct.TYPE_23__*) #1

declare dso_local i32 @FreePagePopSpanLeader(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @FreePagePushSpanLeader(%struct.TYPE_22__*, i64, i64) #1

declare dso_local %struct.TYPE_23__* @FreePageBtreeGetRecycled(%struct.TYPE_22__*) #1

declare dso_local i64 @FreePageManagerPutInternal(%struct.TYPE_22__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
