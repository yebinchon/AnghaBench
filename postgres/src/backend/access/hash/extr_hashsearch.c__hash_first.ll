; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashsearch.c__hash_first.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashsearch.c__hash_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, %struct.TYPE_23__*, i32, %struct.TYPE_24__* }
%struct.TYPE_23__ = type { i32, i64, i32, i64, i32 }
%struct.TYPE_24__ = type { i64* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_22__, i32, i8*, i8*, i32 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_26__*, i8* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_28__ = type { i64, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"hash indexes do not support whole-index scans\00", align 1
@HTEqualStrategyNumber = common dso_local global i64 0, align 8
@SK_ISNULL = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@HASH_READ = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@LH_BUCKET_PAGE = common dso_local global i32 0, align 4
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hash_first(%struct.TYPE_25__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %6, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %24, %struct.TYPE_27__** %7, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %26 = call i32 @pgstat_count_index_scan(%struct.TYPE_24__* %25)
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %34 = call i32 @errcode(i32 %33)
  %35 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @ereport(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %31, %2
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i64 0
  store %struct.TYPE_23__* %41, %struct.TYPE_23__** %8, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 1
  %46 = zext i1 %45 to i32
  %47 = call i32 @Assert(i32 %46)
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @HTEqualStrategyNumber, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @Assert(i32 %53)
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SK_ISNULL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %245

62:                                               ; preds = %37
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %65, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %62
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @InvalidOid, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72, %62
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @_hash_datum2hashkey(%struct.TYPE_24__* %79, i32 %82)
  store i32 %83, i32* %9, align 4
  br label %93

84:                                               ; preds = %72
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @_hash_datum2hashkey_type(%struct.TYPE_24__* %85, i32 %88, i64 %91)
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %84, %78
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @HASH_READ, align 4
  %100 = call i8* @_hash_getbucketbuf_from_hashkey(%struct.TYPE_24__* %97, i32 %98, i32 %99, i32* null)
  store i8* %100, i8** %11, align 8
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = call i32 @BufferGetBlockNumber(i8* %102)
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @PredicateLockPage(%struct.TYPE_24__* %101, i32 %103, i32 %106)
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 @BufferGetPage(i8* %108)
  store i32 %109, i32* %12, align 4
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @TestForOldSnapshot(i32 %112, %struct.TYPE_24__* %113, i32 %114)
  %116 = load i32, i32* %12, align 4
  %117 = call i64 @PageGetSpecialPointer(i32 %116)
  %118 = inttoptr i64 %117 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %118, %struct.TYPE_28__** %13, align 8
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %10, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 4
  store i8* %122, i8** %124, align 8
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %126 = call i64 @H_BUCKET_BEING_POPULATED(%struct.TYPE_28__* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %184

128:                                              ; preds = %93
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %130 = load i64, i64* %10, align 8
  %131 = call i32 @_hash_get_oldblock_from_newbucket(%struct.TYPE_24__* %129, i64 %130)
  store i32 %131, i32* %15, align 4
  %132 = load i8*, i8** %11, align 8
  %133 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %134 = call i32 @LockBuffer(i8* %132, i32 %133)
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* @HASH_READ, align 4
  %138 = load i32, i32* @LH_BUCKET_PAGE, align 4
  %139 = call i8* @_hash_getbuf(%struct.TYPE_24__* %135, i32 %136, i32 %137, i32 %138)
  store i8* %139, i8** %16, align 8
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %144 = load i8*, i8** %16, align 8
  %145 = call i32 @BufferGetPage(i8* %144)
  %146 = call i32 @TestForOldSnapshot(i32 %142, %struct.TYPE_24__* %143, i32 %145)
  %147 = load i8*, i8** %16, align 8
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 3
  store i8* %147, i8** %149, align 8
  %150 = load i8*, i8** %16, align 8
  %151 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %152 = call i32 @LockBuffer(i8* %150, i32 %151)
  %153 = load i8*, i8** %11, align 8
  %154 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %155 = call i32 @LockBuffer(i8* %153, i32 %154)
  %156 = load i8*, i8** %11, align 8
  %157 = call i32 @BufferGetPage(i8* %156)
  store i32 %157, i32* %12, align 4
  %158 = load i32, i32* %12, align 4
  %159 = call i64 @PageGetSpecialPointer(i32 %158)
  %160 = inttoptr i64 %159 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %160, %struct.TYPE_28__** %13, align 8
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %10, align 8
  %165 = icmp eq i64 %163, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @Assert(i32 %166)
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %169 = call i64 @H_BUCKET_BEING_POPULATED(%struct.TYPE_28__* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %128
  %172 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 0
  store i32 1, i32* %173, align 8
  br label %183

174:                                              ; preds = %128
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %176, i32 0, i32 3
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @_hash_dropbuf(%struct.TYPE_24__* %175, i8* %178)
  %180 = load i8*, i8** @InvalidBuffer, align 8
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 0, i32 3
  store i8* %180, i8** %182, align 8
  br label %183

183:                                              ; preds = %174, %171
  br label %184

184:                                              ; preds = %183, %93
  %185 = load i32, i32* %5, align 4
  %186 = call i64 @ScanDirectionIsBackward(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %214

188:                                              ; preds = %184
  br label %189

189:                                              ; preds = %210, %188
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = call i64 @BlockNumberIsValid(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %208, label %195

195:                                              ; preds = %189
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %195
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  %205 = xor i1 %204, true
  br label %206

206:                                              ; preds = %200, %195
  %207 = phi i1 [ false, %195 ], [ %205, %200 ]
  br label %208

208:                                              ; preds = %206, %189
  %209 = phi i1 [ true, %189 ], [ %207, %206 ]
  br i1 %209, label %210, label %213

210:                                              ; preds = %208
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %212 = call i32 @_hash_readnext(%struct.TYPE_25__* %211, i8** %11, i32* %12, %struct.TYPE_28__** %13)
  br label %189

213:                                              ; preds = %208
  br label %214

214:                                              ; preds = %213, %184
  %215 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 2
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 @BufferIsInvalid(i8* %218)
  %220 = call i32 @Assert(i32 %219)
  %221 = load i8*, i8** %11, align 8
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 2
  store i8* %221, i8** %224, align 8
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %226 = load i32, i32* %5, align 4
  %227 = call i32 @_hash_readpage(%struct.TYPE_25__* %225, i8** %11, i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %214
  store i32 0, i32* %3, align 4
  br label %245

230:                                              ; preds = %214
  %231 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_26__*, %struct.TYPE_26__** %233, align 8
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %234, i64 %238
  store %struct.TYPE_26__* %239, %struct.TYPE_26__** %14, align 8
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 1
  store i32 %242, i32* %244, align 4
  store i32 1, i32* %3, align 4
  br label %245

245:                                              ; preds = %230, %229, %61
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local i32 @pgstat_count_index_scan(%struct.TYPE_24__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @_hash_datum2hashkey(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @_hash_datum2hashkey_type(%struct.TYPE_24__*, i32, i64) #1

declare dso_local i8* @_hash_getbucketbuf_from_hashkey(%struct.TYPE_24__*, i32, i32, i32*) #1

declare dso_local i32 @PredicateLockPage(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @BufferGetBlockNumber(i8*) #1

declare dso_local i32 @BufferGetPage(i8*) #1

declare dso_local i32 @TestForOldSnapshot(i32, %struct.TYPE_24__*, i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i64 @H_BUCKET_BEING_POPULATED(%struct.TYPE_28__*) #1

declare dso_local i32 @_hash_get_oldblock_from_newbucket(%struct.TYPE_24__*, i64) #1

declare dso_local i32 @LockBuffer(i8*, i32) #1

declare dso_local i8* @_hash_getbuf(%struct.TYPE_24__*, i32, i32, i32) #1

declare dso_local i32 @_hash_dropbuf(%struct.TYPE_24__*, i8*) #1

declare dso_local i64 @ScanDirectionIsBackward(i32) #1

declare dso_local i64 @BlockNumberIsValid(i32) #1

declare dso_local i32 @_hash_readnext(%struct.TYPE_25__*, i8**, i32*, %struct.TYPE_28__**) #1

declare dso_local i32 @BufferIsInvalid(i8*) #1

declare dso_local i32 @_hash_readpage(%struct.TYPE_25__*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
