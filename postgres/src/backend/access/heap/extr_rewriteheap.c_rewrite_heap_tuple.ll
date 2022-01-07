; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_rewriteheap.c_rewrite_heap_tuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_rewriteheap.c_rewrite_heap_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i32, i32, i32, i32, %struct.TYPE_29__*, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_26__*, i8* }
%struct.TYPE_26__ = type { i32, i8*, i32, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_31__ = type { i8*, i32 }
%struct.TYPE_33__ = type { i8* }
%struct.TYPE_30__ = type { i8*, %struct.TYPE_34__* }

@HEAP_XACT_MASK = common dso_local global i32 0, align 4
@HEAP2_XACT_MASK = common dso_local global i32 0, align 4
@HEAP_XMAX_INVALID = common dso_local global i32 0, align 4
@HASH_FIND = common dso_local global i32 0, align 4
@HASH_REMOVE = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@HEAP_UPDATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rewrite_heap_tuple(%struct.TYPE_32__* %0, %struct.TYPE_34__* %1, %struct.TYPE_34__* %2) #0 {
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca %struct.TYPE_34__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_31__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_33__*, align 8
  %13 = alloca %struct.TYPE_30__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_30__*, align 8
  %16 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %5, align 8
  store %struct.TYPE_34__* %2, %struct.TYPE_34__** %6, align 8
  %17 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @MemoryContextSwitchTo(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 0
  %31 = call i32 @memcpy(i32* %25, i32* %30, i32 4)
  %32 = load i32, i32* @HEAP_XACT_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %33
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* @HEAP2_XACT_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %41
  store i32 %47, i32* %45, align 8
  %48 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @HEAP_XACT_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %54
  store i32 %60, i32* %58, align 8
  %61 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %62, align 8
  %64 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %64, i32 0, i32 5
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %71, i32 0, i32 5
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @heap_freeze_tuple(%struct.TYPE_26__* %63, i32 %70, i32 %77, i32 %80, i32 %83)
  %85 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 1
  %89 = call i32 @ItemPointerSetInvalid(i8** %88)
  %90 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %179, label %98

98:                                               ; preds = %3
  %99 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %100, align 8
  %102 = call i64 @HeapTupleHeaderIsOnlyLocked(%struct.TYPE_26__* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %179, label %104

104:                                              ; preds = %98
  %105 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %106, align 8
  %108 = call i32 @HeapTupleHeaderIndicatesMovedPartitions(%struct.TYPE_26__* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %179, label %110

110:                                              ; preds = %104
  %111 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 1
  %117 = call i32 @ItemPointerEquals(i8** %112, i8** %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %179, label %119

119:                                              ; preds = %110
  %120 = call i32 @memset(%struct.TYPE_31__* %9, i32 0, i32 16)
  %121 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %122, align 8
  %124 = call i32 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_26__* %123)
  %125 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  store i32 %124, i32* %125, align 8
  %126 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  store i8* %130, i8** %131, align 8
  %132 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @HASH_FIND, align 4
  %136 = call i8* @hash_search(i32 %134, %struct.TYPE_31__* %9, i32 %135, i32* null)
  %137 = bitcast i8* %136 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %137, %struct.TYPE_33__** %12, align 8
  %138 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %139 = icmp ne %struct.TYPE_33__* %138, null
  br i1 %139, label %140, label %155

140:                                              ; preds = %119
  %141 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 1
  store i8* %143, i8** %147, align 8
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @HASH_REMOVE, align 4
  %152 = call i8* @hash_search(i32 %150, %struct.TYPE_31__* %9, i32 %151, i32* %10)
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @Assert(i32 %153)
  br label %178

155:                                              ; preds = %119
  %156 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @HASH_ENTER, align 4
  %160 = call i8* @hash_search(i32 %158, %struct.TYPE_31__* %9, i32 %159, i32* %10)
  %161 = bitcast i8* %160 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %161, %struct.TYPE_30__** %13, align 8
  %162 = load i32, i32* %10, align 4
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = call i32 @Assert(i32 %165)
  %167 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %170, i32 0, i32 0
  store i8* %169, i8** %171, align 8
  %172 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %173 = call %struct.TYPE_34__* @heap_copytuple(%struct.TYPE_34__* %172)
  %174 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %174, i32 0, i32 1
  store %struct.TYPE_34__* %173, %struct.TYPE_34__** %175, align 8
  %176 = load i32, i32* %7, align 4
  %177 = call i32 @MemoryContextSwitchTo(i32 %176)
  br label %280

178:                                              ; preds = %140
  br label %179

179:                                              ; preds = %178, %110, %104, %98, %3
  %180 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  store i8* %182, i8** %8, align 8
  store i32 0, i32* %11, align 4
  br label %183

183:                                              ; preds = %235, %179
  %184 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %185 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %186 = call i32 @raw_heap_insert(%struct.TYPE_32__* %184, %struct.TYPE_34__* %185)
  %187 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  store i8* %189, i8** %14, align 8
  %190 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %191 = load i8*, i8** %8, align 8
  %192 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %193 = call i32 @logical_rewrite_heap_tuple(%struct.TYPE_32__* %190, i8* %191, %struct.TYPE_34__* %192)
  %194 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @HEAP_UPDATED, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %270

202:                                              ; preds = %183
  %203 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %204, align 8
  %206 = call i32 @HeapTupleHeaderGetXmin(%struct.TYPE_26__* %205)
  %207 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @TransactionIdPrecedes(i32 %206, i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %270, label %212

212:                                              ; preds = %202
  %213 = call i32 @memset(%struct.TYPE_31__* %9, i32 0, i32 16)
  %214 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** %215, align 8
  %217 = call i32 @HeapTupleHeaderGetXmin(%struct.TYPE_26__* %216)
  %218 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  store i32 %217, i32* %218, align 8
  %219 = load i8*, i8** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  store i8* %219, i8** %220, align 8
  %221 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @HASH_FIND, align 4
  %225 = call i8* @hash_search(i32 %223, %struct.TYPE_31__* %9, i32 %224, i32* null)
  %226 = bitcast i8* %225 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %226, %struct.TYPE_30__** %15, align 8
  %227 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %228 = icmp ne %struct.TYPE_30__* %227, null
  br i1 %228, label %229, label %254

229:                                              ; preds = %212
  %230 = load i32, i32* %11, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %234 = call i32 @heap_freetuple(%struct.TYPE_34__* %233)
  br label %235

235:                                              ; preds = %232, %229
  %236 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %237 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_34__*, %struct.TYPE_34__** %237, align 8
  store %struct.TYPE_34__* %238, %struct.TYPE_34__** %6, align 8
  store i32 1, i32* %11, align 4
  %239 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %240 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %239, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  store i8* %241, i8** %8, align 8
  %242 = load i8*, i8** %14, align 8
  %243 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_26__*, %struct.TYPE_26__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %245, i32 0, i32 1
  store i8* %242, i8** %246, align 8
  %247 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @HASH_REMOVE, align 4
  %251 = call i8* @hash_search(i32 %249, %struct.TYPE_31__* %9, i32 %250, i32* %10)
  %252 = load i32, i32* %10, align 4
  %253 = call i32 @Assert(i32 %252)
  br label %183

254:                                              ; preds = %212
  %255 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @HASH_ENTER, align 4
  %259 = call i8* @hash_search(i32 %257, %struct.TYPE_31__* %9, i32 %258, i32* %10)
  %260 = bitcast i8* %259 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %260, %struct.TYPE_33__** %16, align 8
  %261 = load i32, i32* %10, align 4
  %262 = icmp ne i32 %261, 0
  %263 = xor i1 %262, true
  %264 = zext i1 %263 to i32
  %265 = call i32 @Assert(i32 %264)
  %266 = load i8*, i8** %14, align 8
  %267 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %268 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %267, i32 0, i32 0
  store i8* %266, i8** %268, align 8
  br label %269

269:                                              ; preds = %254
  br label %270

270:                                              ; preds = %269, %202, %183
  %271 = load i32, i32* %11, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %270
  %274 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %275 = call i32 @heap_freetuple(%struct.TYPE_34__* %274)
  br label %276

276:                                              ; preds = %273, %270
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %7, align 4
  %279 = call i32 @MemoryContextSwitchTo(i32 %278)
  br label %280

280:                                              ; preds = %277, %155
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @heap_freeze_tuple(%struct.TYPE_26__*, i32, i32, i32, i32) #1

declare dso_local i32 @ItemPointerSetInvalid(i8**) #1

declare dso_local i64 @HeapTupleHeaderIsOnlyLocked(%struct.TYPE_26__*) #1

declare dso_local i32 @HeapTupleHeaderIndicatesMovedPartitions(%struct.TYPE_26__*) #1

declare dso_local i32 @ItemPointerEquals(i8**, i8**) #1

declare dso_local i32 @memset(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_26__*) #1

declare dso_local i8* @hash_search(i32, %struct.TYPE_31__*, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_34__* @heap_copytuple(%struct.TYPE_34__*) #1

declare dso_local i32 @raw_heap_insert(%struct.TYPE_32__*, %struct.TYPE_34__*) #1

declare dso_local i32 @logical_rewrite_heap_tuple(%struct.TYPE_32__*, i8*, %struct.TYPE_34__*) #1

declare dso_local i32 @TransactionIdPrecedes(i32, i32) #1

declare dso_local i32 @HeapTupleHeaderGetXmin(%struct.TYPE_26__*) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
