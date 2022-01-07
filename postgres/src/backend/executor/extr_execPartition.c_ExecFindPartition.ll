; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execPartition.c_ExecFindPartition.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execPartition.c_ExecFindPartition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_34__ = type { i64, i64, i64, %struct.TYPE_33__**, %struct.TYPE_35__** }
%struct.TYPE_35__ = type { i64*, i32*, %struct.TYPE_36__*, i32, i32* }
%struct.TYPE_36__ = type { i64, i32*, i64* }
%struct.TYPE_38__ = type { i32* }
%struct.TYPE_32__ = type { %struct.TYPE_33__* }

@PARTITION_MAX_KEYS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_CHECK_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"no partition of relation \22%s\22 found for row\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Partition key of the failing row contains %s.\00", align 1
@HASH_FIND = common dso_local global i32 0, align 4
@CMD_INSERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_33__* @ExecFindPartition(%struct.TYPE_37__* %0, %struct.TYPE_33__* %1, %struct.TYPE_34__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_37__*, align 8
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca %struct.TYPE_34__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_35__**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_35__*, align 8
  %17 = alloca %struct.TYPE_36__*, align 8
  %18 = alloca %struct.TYPE_38__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_33__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_32__*, align 8
  %29 = alloca %struct.TYPE_35__*, align 8
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %6, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %7, align 8
  store %struct.TYPE_34__* %2, %struct.TYPE_34__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %30 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %31, align 8
  store %struct.TYPE_35__** %32, %struct.TYPE_35__*** %11, align 8
  %33 = load i32, i32* @PARTITION_MAX_KEYS, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %12, align 8
  %36 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %13, align 8
  %37 = load i32, i32* @PARTITION_MAX_KEYS, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %14, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = call %struct.TYPE_38__* @GetPerTupleExprContext(i32* %40)
  store %struct.TYPE_38__* %41, %struct.TYPE_38__** %18, align 8
  %42 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @GetPerTupleMemoryContext(i32* %45)
  %47 = call i32 @MemoryContextSwitchTo(i32 %46)
  store i32 %47, i32* %21, align 4
  %48 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %5
  %53 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @ExecPartitionCheck(%struct.TYPE_33__* %53, i32* %54, i32* %55, i32 1)
  br label %57

57:                                               ; preds = %52, %5
  %58 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_35__*, %struct.TYPE_35__** %58, i64 0
  %60 = load %struct.TYPE_35__*, %struct.TYPE_35__** %59, align 8
  store %struct.TYPE_35__* %60, %struct.TYPE_35__** %16, align 8
  br label %61

61:                                               ; preds = %312, %57
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %22, align 8
  store i32 -1, i32* %23, align 4
  %66 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %67 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %15, align 4
  %70 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_36__*, %struct.TYPE_36__** %71, align 8
  store %struct.TYPE_36__* %72, %struct.TYPE_36__** %17, align 8
  %73 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %20, align 8
  %76 = load i32*, i32** %20, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %62
  %79 = load i32*, i32** %22, align 8
  %80 = icmp ne i32* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i32 @Assert(i32 %81)
  %83 = load i32*, i32** %22, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load i32*, i32** %20, align 8
  %86 = call i32* @execute_attr_map_slot(i32* %83, i32* %84, i32* %85)
  store i32* %86, i32** %9, align 8
  br label %87

87:                                               ; preds = %78, %62
  %88 = load i32*, i32** %9, align 8
  %89 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %89, i32 0, i32 0
  store i32* %88, i32** %90, align 8
  %91 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @FormPartitionKeyDatum(%struct.TYPE_35__* %91, i32* %92, i32* %93, i32* %36, i32* %39)
  %95 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %87
  %100 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %101 = call i32 @get_partition_for_tuple(%struct.TYPE_35__* %100, i32* %36, i32* %39)
  store i32 %101, i32* %23, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %125

103:                                              ; preds = %99, %87
  %104 = load i32, i32* %15, align 4
  %105 = call i8* @ExecBuildSlotPartitionKeyDescription(i32 %104, i32* %36, i32* %39, i32 64)
  store i8* %105, i8** %24, align 8
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @RelationGetRelid(i32 %106)
  %108 = call i32 @OidIsValid(i32 %107)
  %109 = call i32 @Assert(i32 %108)
  %110 = load i32, i32* @ERROR, align 4
  %111 = load i32, i32* @ERRCODE_CHECK_VIOLATION, align 4
  %112 = call i32 @errcode(i32 %111)
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @RelationGetRelationName(i32 %113)
  %115 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %114)
  %116 = load i8*, i8** %24, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %103
  %119 = load i8*, i8** %24, align 8
  %120 = call i32 @errdetail(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %119)
  br label %122

121:                                              ; preds = %103
  br label %122

122:                                              ; preds = %121, %118
  %123 = phi i32 [ %120, %118 ], [ 0, %121 ]
  %124 = call i32 @ereport(i32 %110, i32 %123)
  br label %125

125:                                              ; preds = %122, %99
  %126 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %127 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %126, i32 0, i32 2
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %23, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %234

134:                                              ; preds = %125
  %135 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = load i32, i32* %23, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = icmp uge i64 %141, 0
  %143 = zext i1 %142 to i32
  %144 = call i64 @likely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %172

146:                                              ; preds = %134
  %147 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %147, i32 0, i32 0
  %149 = load i64*, i64** %148, align 8
  %150 = load i32, i32* %23, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ult i64 %153, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @Assert(i32 %158)
  %160 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %161, align 8
  %163 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %164 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = load i32, i32* %23, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %162, i64 %169
  %171 = load %struct.TYPE_33__*, %struct.TYPE_33__** %170, align 8
  store %struct.TYPE_33__* %171, %struct.TYPE_33__** %25, align 8
  br label %219

172:                                              ; preds = %134
  store i32 0, i32* %26, align 4
  %173 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %207

177:                                              ; preds = %172
  %178 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %179 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %23, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %27, align 4
  %185 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* @HASH_FIND, align 4
  %189 = call %struct.TYPE_32__* @hash_search(i64 %187, i32* %27, i32 %188, i32* null)
  store %struct.TYPE_32__* %189, %struct.TYPE_32__** %28, align 8
  %190 = load %struct.TYPE_32__*, %struct.TYPE_32__** %28, align 8
  %191 = icmp ne %struct.TYPE_32__* %190, null
  br i1 %191, label %192, label %206

192:                                              ; preds = %177
  store i32 1, i32* %26, align 4
  %193 = load %struct.TYPE_32__*, %struct.TYPE_32__** %28, align 8
  %194 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_33__*, %struct.TYPE_33__** %194, align 8
  store %struct.TYPE_33__* %195, %struct.TYPE_33__** %25, align 8
  %196 = load %struct.TYPE_33__*, %struct.TYPE_33__** %25, align 8
  %197 = load i32, i32* @CMD_INSERT, align 4
  %198 = call i32 @CheckValidResultRel(%struct.TYPE_33__* %196, i32 %197)
  %199 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %200 = load i32*, i32** %10, align 8
  %201 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %202 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %203 = load %struct.TYPE_33__*, %struct.TYPE_33__** %25, align 8
  %204 = load i32, i32* %23, align 4
  %205 = call i32 @ExecInitRoutingInfo(%struct.TYPE_37__* %199, i32* %200, %struct.TYPE_34__* %201, %struct.TYPE_35__* %202, %struct.TYPE_33__* %203, i32 %204)
  br label %206

206:                                              ; preds = %192, %177
  br label %207

207:                                              ; preds = %206, %172
  %208 = load i32, i32* %26, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %218, label %210

210:                                              ; preds = %207
  %211 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %212 = load i32*, i32** %10, align 8
  %213 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %214 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %215 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %216 = load i32, i32* %23, align 4
  %217 = call %struct.TYPE_33__* @ExecInitPartitionInfo(%struct.TYPE_37__* %211, i32* %212, %struct.TYPE_34__* %213, %struct.TYPE_35__* %214, %struct.TYPE_33__* %215, i32 %216)
  store %struct.TYPE_33__* %217, %struct.TYPE_33__** %25, align 8
  br label %218

218:                                              ; preds = %210, %207
  br label %219

219:                                              ; preds = %218, %146
  %220 = load i32*, i32** %9, align 8
  %221 = load i32*, i32** %20, align 8
  %222 = icmp eq i32* %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = load i32*, i32** %20, align 8
  %225 = call i32 @ExecClearTuple(i32* %224)
  br label %226

226:                                              ; preds = %223, %219
  %227 = load i32, i32* %21, align 4
  %228 = call i32 @MemoryContextSwitchTo(i32 %227)
  %229 = load i32*, i32** %19, align 8
  %230 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  %231 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %230, i32 0, i32 0
  store i32* %229, i32** %231, align 8
  %232 = load %struct.TYPE_33__*, %struct.TYPE_33__** %25, align 8
  %233 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %233)
  ret %struct.TYPE_33__* %232

234:                                              ; preds = %125
  %235 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %236 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %235, i32 0, i32 0
  %237 = load i64*, i64** %236, align 8
  %238 = load i32, i32* %23, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i64, i64* %237, i64 %239
  %241 = load i64, i64* %240, align 8
  %242 = icmp uge i64 %241, 0
  %243 = zext i1 %242 to i32
  %244 = call i64 @likely(i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %270

246:                                              ; preds = %234
  %247 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %248 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %247, i32 0, i32 0
  %249 = load i64*, i64** %248, align 8
  %250 = load i32, i32* %23, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i64, i64* %249, i64 %251
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = icmp ult i64 %253, %256
  %258 = zext i1 %257 to i32
  %259 = call i32 @Assert(i32 %258)
  %260 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %11, align 8
  %261 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %262 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %261, i32 0, i32 0
  %263 = load i64*, i64** %262, align 8
  %264 = load i32, i32* %23, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i64, i64* %263, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_35__*, %struct.TYPE_35__** %260, i64 %267
  %269 = load %struct.TYPE_35__*, %struct.TYPE_35__** %268, align 8
  store %struct.TYPE_35__* %269, %struct.TYPE_35__** %16, align 8
  br label %311

270:                                              ; preds = %234
  %271 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %276 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %277 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %23, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %284 = load i32, i32* %23, align 4
  %285 = call %struct.TYPE_35__* @ExecInitPartitionDispatchInfo(i32 %274, %struct.TYPE_34__* %275, i32 %282, %struct.TYPE_35__* %283, i32 %284)
  store %struct.TYPE_35__* %285, %struct.TYPE_35__** %29, align 8
  %286 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %287 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %286, i32 0, i32 0
  %288 = load i64*, i64** %287, align 8
  %289 = load i32, i32* %23, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i64, i64* %288, i64 %290
  %292 = load i64, i64* %291, align 8
  %293 = icmp uge i64 %292, 0
  br i1 %293, label %294, label %306

294:                                              ; preds = %270
  %295 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %296 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %295, i32 0, i32 0
  %297 = load i64*, i64** %296, align 8
  %298 = load i32, i32* %23, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i64, i64* %297, i64 %299
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = icmp ult i64 %301, %304
  br label %306

306:                                              ; preds = %294, %270
  %307 = phi i1 [ false, %270 ], [ %305, %294 ]
  %308 = zext i1 %307 to i32
  %309 = call i32 @Assert(i32 %308)
  %310 = load %struct.TYPE_35__*, %struct.TYPE_35__** %29, align 8
  store %struct.TYPE_35__* %310, %struct.TYPE_35__** %16, align 8
  br label %311

311:                                              ; preds = %306, %246
  br label %312

312:                                              ; preds = %311
  br label %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_38__* @GetPerTupleExprContext(i32*) #2

declare dso_local i32 @MemoryContextSwitchTo(i32) #2

declare dso_local i32 @GetPerTupleMemoryContext(i32*) #2

declare dso_local i32 @ExecPartitionCheck(%struct.TYPE_33__*, i32*, i32*, i32) #2

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i32* @execute_attr_map_slot(i32*, i32*, i32*) #2

declare dso_local i32 @FormPartitionKeyDatum(%struct.TYPE_35__*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @get_partition_for_tuple(%struct.TYPE_35__*, i32*, i32*) #2

declare dso_local i8* @ExecBuildSlotPartitionKeyDescription(i32, i32*, i32*, i32) #2

declare dso_local i32 @OidIsValid(i32) #2

declare dso_local i32 @RelationGetRelid(i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i32) #2

declare dso_local i32 @RelationGetRelationName(i32) #2

declare dso_local i32 @errdetail(i8*, i8*) #2

declare dso_local i64 @likely(i32) #2

declare dso_local %struct.TYPE_32__* @hash_search(i64, i32*, i32, i32*) #2

declare dso_local i32 @CheckValidResultRel(%struct.TYPE_33__*, i32) #2

declare dso_local i32 @ExecInitRoutingInfo(%struct.TYPE_37__*, i32*, %struct.TYPE_34__*, %struct.TYPE_35__*, %struct.TYPE_33__*, i32) #2

declare dso_local %struct.TYPE_33__* @ExecInitPartitionInfo(%struct.TYPE_37__*, i32*, %struct.TYPE_34__*, %struct.TYPE_35__*, %struct.TYPE_33__*, i32) #2

declare dso_local i32 @ExecClearTuple(i32*) #2

declare dso_local %struct.TYPE_35__* @ExecInitPartitionDispatchInfo(i32, %struct.TYPE_34__*, i32, %struct.TYPE_35__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
