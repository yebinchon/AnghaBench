; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecHashIncreaseNumBatches.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecHashIncreaseNumBatches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_30__**, %struct.TYPE_27__, %struct.TYPE_29__*, i32, i32, %struct.TYPE_30__**, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_30__** }
%struct.TYPE_29__ = type { i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_29__* }
%struct.TYPE_30__ = type { i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_30__* }
%struct.TYPE_28__ = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@MaxAllocSize = common dso_local global i32 0, align 4
@HJTUPLE_OVERHEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_31__*)* @ExecHashIncreaseNumBatches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExecHashIncreaseNumBatches(%struct.TYPE_31__* %0) #0 {
  %2 = alloca %struct.TYPE_31__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %2, align 8
  %18 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %3, align 4
  %21 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  %24 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  br label %295

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @INT_MAX, align 4
  %32 = sdiv i32 %31, 2
  %33 = load i32, i32* @MaxAllocSize, align 4
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %34, 16
  %36 = trunc i64 %35 to i32
  %37 = call i32 @Min(i32 %32, i32 %36)
  %38 = icmp sgt i32 %30, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %295

40:                                               ; preds = %29
  %41 = load i32, i32* %3, align 4
  %42 = mul nsw i32 %41, 2
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp sgt i32 %43, 1
  %45 = zext i1 %44 to i32
  %46 = call i32 @Assert(i32 %45)
  %47 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %47, i32 0, i32 12
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @MemoryContextSwitchTo(i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 6
  %53 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %52, align 8
  %54 = icmp eq %struct.TYPE_30__** %53, null
  br i1 %54, label %55, label %73

55:                                               ; preds = %40
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 8
  %59 = trunc i64 %58 to i32
  %60 = call i64 @palloc0(i32 %59)
  %61 = inttoptr i64 %60 to %struct.TYPE_30__**
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %62, i32 0, i32 6
  store %struct.TYPE_30__** %61, %struct.TYPE_30__*** %63, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 8
  %67 = trunc i64 %66 to i32
  %68 = call i64 @palloc0(i32 %67)
  %69 = inttoptr i64 %68 to %struct.TYPE_30__**
  %70 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %70, i32 0, i32 11
  store %struct.TYPE_30__** %69, %struct.TYPE_30__*** %71, align 8
  %72 = call i32 (...) @PrepareTempTablespaces()
  br label %120

73:                                               ; preds = %40
  %74 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %74, i32 0, i32 6
  %76 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 8
  %80 = trunc i64 %79 to i32
  %81 = call %struct.TYPE_30__** @repalloc(%struct.TYPE_30__** %76, i32 %80)
  %82 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %82, i32 0, i32 6
  store %struct.TYPE_30__** %81, %struct.TYPE_30__*** %83, align 8
  %84 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %84, i32 0, i32 11
  %86 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 8
  %90 = trunc i64 %89 to i32
  %91 = call %struct.TYPE_30__** @repalloc(%struct.TYPE_30__** %86, i32 %90)
  %92 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 11
  store %struct.TYPE_30__** %91, %struct.TYPE_30__*** %93, align 8
  %94 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %94, i32 0, i32 6
  %96 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %96, i64 %98
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %3, align 4
  %102 = sub nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = mul i64 %103, 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 @MemSet(%struct.TYPE_30__** %99, i32 0, i32 %105)
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %107, i32 0, i32 11
  %109 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %109, i64 %111
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %3, align 4
  %115 = sub nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 8
  %118 = trunc i64 %117 to i32
  %119 = call i32 @MemSet(%struct.TYPE_30__** %112, i32 0, i32 %118)
  br label %120

120:                                              ; preds = %73, %55
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @MemoryContextSwitchTo(i32 %121)
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  %126 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %128, %131
  br i1 %132, label %133, label %167

133:                                              ; preds = %120
  %134 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = icmp sgt i32 %136, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @Assert(i32 %141)
  %143 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 4
  %148 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %148, i32 0, i32 9
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %151, i32 0, i32 10
  store i32 %150, i32* %152, align 4
  %153 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %153, i32 0, i32 7
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %155, align 8
  %157 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = mul i64 8, %160
  %162 = trunc i64 %161 to i32
  %163 = call %struct.TYPE_30__** @repalloc(%struct.TYPE_30__** %156, i32 %162)
  %164 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %164, i32 0, i32 7
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 0
  store %struct.TYPE_30__** %163, %struct.TYPE_30__*** %166, align 8
  br label %167

167:                                              ; preds = %133, %120
  %168 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %168, i32 0, i32 7
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %170, align 8
  %172 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = mul i64 8, %175
  %177 = trunc i64 %176 to i32
  %178 = call i32 @memset(%struct.TYPE_30__** %171, i32 0, i32 %177)
  %179 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %179, i32 0, i32 8
  %181 = load %struct.TYPE_29__*, %struct.TYPE_29__** %180, align 8
  store %struct.TYPE_29__* %181, %struct.TYPE_29__** %9, align 8
  %182 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %182, i32 0, i32 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %183, align 8
  br label %184

184:                                              ; preds = %281, %167
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %186 = icmp ne %struct.TYPE_29__* %185, null
  br i1 %186, label %187, label %285

187:                                              ; preds = %184
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_29__*, %struct.TYPE_29__** %190, align 8
  store %struct.TYPE_29__* %191, %struct.TYPE_29__** %10, align 8
  store i64 0, i64* %11, align 8
  br label %192

192:                                              ; preds = %275, %187
  %193 = load i64, i64* %11, align 8
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ult i64 %193, %196
  br i1 %197, label %198, label %281

198:                                              ; preds = %192
  %199 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %200 = call i64 @HASH_CHUNK_DATA(%struct.TYPE_29__* %199)
  %201 = load i64, i64* %11, align 8
  %202 = add i64 %200, %201
  %203 = inttoptr i64 %202 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %203, %struct.TYPE_30__** %12, align 8
  %204 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %205 = call %struct.TYPE_28__* @HJTUPLE_MINTUPLE(%struct.TYPE_30__* %204)
  store %struct.TYPE_28__* %205, %struct.TYPE_28__** %13, align 8
  %206 = load i32, i32* @HJTUPLE_OVERHEAD, align 4
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %206, %209
  store i32 %210, i32* %14, align 4
  %211 = load i64, i64* %7, align 8
  %212 = add nsw i64 %211, 1
  store i64 %212, i64* %7, align 8
  %213 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %214 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @ExecHashGetBucketAndBatch(%struct.TYPE_31__* %213, i32 %216, i32* %15, i32* %16)
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* %4, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %250

221:                                              ; preds = %198
  %222 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %223 = load i32, i32* %14, align 4
  %224 = call i32 @dense_alloc(%struct.TYPE_31__* %222, i32 %223)
  %225 = sext i32 %224 to i64
  %226 = inttoptr i64 %225 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %226, %struct.TYPE_30__** %17, align 8
  %227 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %228 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %229 = load i32, i32* %14, align 4
  %230 = call i32 @memcpy(%struct.TYPE_30__* %227, %struct.TYPE_30__* %228, i32 %229)
  %231 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %231, i32 0, i32 7
  %233 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %233, align 8
  %235 = load i32, i32* %15, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %234, i64 %236
  %238 = load %struct.TYPE_30__*, %struct.TYPE_30__** %237, align 8
  %239 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %240 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 0
  store %struct.TYPE_30__* %238, %struct.TYPE_30__** %241, align 8
  %242 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %243 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %243, i32 0, i32 7
  %245 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %245, align 8
  %247 = load i32, i32* %15, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %246, i64 %248
  store %struct.TYPE_30__* %242, %struct.TYPE_30__** %249, align 8
  br label %275

250:                                              ; preds = %198
  %251 = load i32, i32* %16, align 4
  %252 = load i32, i32* %4, align 4
  %253 = icmp sgt i32 %251, %252
  %254 = zext i1 %253 to i32
  %255 = call i32 @Assert(i32 %254)
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %257 = call %struct.TYPE_28__* @HJTUPLE_MINTUPLE(%struct.TYPE_30__* %256)
  %258 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %259 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %261, i32 0, i32 6
  %263 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %262, align 8
  %264 = load i32, i32* %16, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %263, i64 %265
  %267 = call i32 @ExecHashJoinSaveTuple(%struct.TYPE_28__* %257, i32 %260, %struct.TYPE_30__** %266)
  %268 = load i32, i32* %14, align 4
  %269 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = sub nsw i32 %271, %268
  store i32 %272, i32* %270, align 4
  %273 = load i64, i64* %8, align 8
  %274 = add nsw i64 %273, 1
  store i64 %274, i64* %8, align 8
  br label %275

275:                                              ; preds = %250, %221
  %276 = load i32, i32* %14, align 4
  %277 = call i64 @MAXALIGN(i32 %276)
  %278 = load i64, i64* %11, align 8
  %279 = add i64 %278, %277
  store i64 %279, i64* %11, align 8
  %280 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %192

281:                                              ; preds = %192
  %282 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %283 = call i32 @pfree(%struct.TYPE_29__* %282)
  %284 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  store %struct.TYPE_29__* %284, %struct.TYPE_29__** %9, align 8
  br label %184

285:                                              ; preds = %184
  %286 = load i64, i64* %8, align 8
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %292, label %288

288:                                              ; preds = %285
  %289 = load i64, i64* %8, align 8
  %290 = load i64, i64* %7, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %295

292:                                              ; preds = %288, %285
  %293 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %294 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %293, i32 0, i32 2
  store i32 0, i32* %294, align 8
  br label %295

295:                                              ; preds = %28, %39, %292, %288
  ret void
}

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @PrepareTempTablespaces(...) #1

declare dso_local %struct.TYPE_30__** @repalloc(%struct.TYPE_30__**, i32) #1

declare dso_local i32 @MemSet(%struct.TYPE_30__**, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_30__**, i32, i32) #1

declare dso_local i64 @HASH_CHUNK_DATA(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_28__* @HJTUPLE_MINTUPLE(%struct.TYPE_30__*) #1

declare dso_local i32 @ExecHashGetBucketAndBatch(%struct.TYPE_31__*, i32, i32*, i32*) #1

declare dso_local i32 @dense_alloc(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_30__*, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @ExecHashJoinSaveTuple(%struct.TYPE_28__*, i32, %struct.TYPE_30__**) #1

declare dso_local i64 @MAXALIGN(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @pfree(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
