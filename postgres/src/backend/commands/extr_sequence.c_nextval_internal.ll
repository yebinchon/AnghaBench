; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_sequence.c_nextval_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_sequence.c_nextval_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i32, i64, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_20__ = type { i64, i64, i32 }
%struct.TYPE_16__ = type { i32 }

@ACL_USAGE = common dso_local global i32 0, align 4
@ACL_UPDATE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"permission denied for sequence %s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"nextval()\00", align 1
@NoLock = common dso_local global i32 0, align 4
@last_used_seq = common dso_local global %struct.TYPE_17__* null, align 8
@SEQRELID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"cache lookup failed for sequence %u\00", align 1
@SEQ_LOG_VALS = common dso_local global i64 0, align 8
@INT64_FORMAT = common dso_local global i8* null, align 8
@ERRCODE_SEQUENCE_GENERATOR_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"nextval: reached maximum value of sequence \22%s\22 (%s)\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"nextval: reached minimum value of sequence \22%s\22 (%s)\00", align 1
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@RM_SEQ_ID = common dso_local global i32 0, align 4
@XLOG_SEQ_LOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nextval_internal(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_19__, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca [100 x i8], align 16
  %28 = alloca [100 x i8], align 16
  %29 = alloca %struct.TYPE_16__, align 4
  %30 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %23, align 8
  store i32 0, i32* %25, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @init_sequence(i32 %31, %struct.TYPE_17__** %6, %struct.TYPE_18__** %7)
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %2
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (...) @GetUserId()
  %40 = load i32, i32* @ACL_USAGE, align 4
  %41 = load i32, i32* @ACL_UPDATE, align 4
  %42 = or i32 %40, %41
  %43 = call i64 @pg_class_aclcheck(i32 %38, i32 %39, i32 %42)
  %44 = load i64, i64* @ACLCHECK_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %35
  %47 = load i32, i32* @ERROR, align 4
  %48 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %49 = call i32 @errcode(i32 %48)
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %51 = call i32 @RelationGetRelationName(%struct.TYPE_18__* %50)
  %52 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = call i32 @ereport(i32 %47, i32 %52)
  br label %54

54:                                               ; preds = %46, %35, %2
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = call i32 @PreventCommandIfReadOnly(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %54
  %62 = call i32 @PreventCommandIfParallelMode(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %61
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @Assert(i32 %73)
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @Assert(i32 %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, %83
  store i64 %87, i64* %85, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %89 = load i32, i32* @NoLock, align 4
  %90 = call i32 @relation_close(%struct.TYPE_18__* %88, i32 %89)
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %91, %struct.TYPE_17__** @last_used_seq, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %3, align 8
  br label %371

95:                                               ; preds = %61
  %96 = load i32, i32* @SEQRELID, align 4
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @ObjectIdGetDatum(i32 %97)
  %99 = call i32 @SearchSysCache1(i32 %96, i32 %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @HeapTupleIsValid(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %95
  %104 = load i32, i32* @ERROR, align 4
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @elog(i32 %104, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %103, %95
  %108 = load i32, i32* %10, align 4
  %109 = call i64 @GETSTRUCT(i32 %108)
  %110 = inttoptr i64 %109 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %110, %struct.TYPE_21__** %11, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %14, align 8
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %15, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %16, align 8
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %17, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %24, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @ReleaseSysCache(i32 %126)
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %129 = call %struct.TYPE_20__* @read_seq_tuple(%struct.TYPE_18__* %128, i32* %8, %struct.TYPE_19__* %12)
  store %struct.TYPE_20__* %129, %struct.TYPE_20__** %13, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @BufferGetPage(i32 %130)
  store i32 %131, i32* %9, align 4
  %132 = load i64, i64* %14, align 8
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 3
  store i64 %132, i64* %134, align 8
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %21, align 8
  store i64 %137, i64* %22, align 8
  store i64 %137, i64* %20, align 8
  %138 = load i64, i64* %17, align 8
  store i64 %138, i64* %19, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %18, align 8
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %107
  %147 = load i64, i64* %23, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %23, align 8
  %149 = load i64, i64* %19, align 8
  %150 = add nsw i64 %149, -1
  store i64 %150, i64* %19, align 8
  br label %151

151:                                              ; preds = %146, %107
  %152 = load i64, i64* %18, align 8
  %153 = load i64, i64* %19, align 8
  %154 = icmp slt i64 %152, %153
  br i1 %154, label %160, label %155

155:                                              ; preds = %151
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %155, %151
  %161 = load i64, i64* %19, align 8
  %162 = load i64, i64* @SEQ_LOG_VALS, align 8
  %163 = add nsw i64 %161, %162
  store i64 %163, i64* %18, align 8
  store i64 %163, i64* %19, align 8
  store i32 1, i32* %25, align 4
  br label %175

164:                                              ; preds = %155
  %165 = call i64 (...) @GetRedoRecPtr()
  store i64 %165, i64* %26, align 8
  %166 = load i32, i32* %9, align 4
  %167 = call i64 @PageGetLSN(i32 %166)
  %168 = load i64, i64* %26, align 8
  %169 = icmp sle i64 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = load i64, i64* %19, align 8
  %172 = load i64, i64* @SEQ_LOG_VALS, align 8
  %173 = add nsw i64 %171, %172
  store i64 %173, i64* %18, align 8
  store i64 %173, i64* %19, align 8
  store i32 1, i32* %25, align 4
  br label %174

174:                                              ; preds = %170, %164
  br label %175

175:                                              ; preds = %174, %160
  br label %176

176:                                              ; preds = %289, %175
  %177 = load i64, i64* %19, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %290

179:                                              ; preds = %176
  %180 = load i64, i64* %14, align 8
  %181 = icmp sgt i64 %180, 0
  br i1 %181, label %182, label %227

182:                                              ; preds = %179
  %183 = load i64, i64* %15, align 8
  %184 = icmp sge i64 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %182
  %186 = load i64, i64* %22, align 8
  %187 = load i64, i64* %15, align 8
  %188 = load i64, i64* %14, align 8
  %189 = sub nsw i64 %187, %188
  %190 = icmp sgt i64 %186, %189
  br i1 %190, label %200, label %191

191:                                              ; preds = %185, %182
  %192 = load i64, i64* %15, align 8
  %193 = icmp slt i64 %192, 0
  br i1 %193, label %194, label %222

194:                                              ; preds = %191
  %195 = load i64, i64* %22, align 8
  %196 = load i64, i64* %14, align 8
  %197 = add nsw i64 %195, %196
  %198 = load i64, i64* %15, align 8
  %199 = icmp sgt i64 %197, %198
  br i1 %199, label %200, label %222

200:                                              ; preds = %194, %185
  %201 = load i64, i64* %23, align 8
  %202 = icmp sgt i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  br label %290

204:                                              ; preds = %200
  %205 = load i32, i32* %24, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %220, label %207

207:                                              ; preds = %204
  %208 = getelementptr inbounds [100 x i8], [100 x i8]* %27, i64 0, i64 0
  %209 = load i8*, i8** @INT64_FORMAT, align 8
  %210 = load i64, i64* %15, align 8
  %211 = call i32 @snprintf(i8* %208, i32 100, i8* %209, i64 %210)
  %212 = load i32, i32* @ERROR, align 4
  %213 = load i32, i32* @ERRCODE_SEQUENCE_GENERATOR_LIMIT_EXCEEDED, align 4
  %214 = call i32 @errcode(i32 %213)
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %216 = call i32 @RelationGetRelationName(%struct.TYPE_18__* %215)
  %217 = getelementptr inbounds [100 x i8], [100 x i8]* %27, i64 0, i64 0
  %218 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %216, i8* %217)
  %219 = call i32 @ereport(i32 %212, i32 %218)
  br label %220

220:                                              ; preds = %207, %204
  %221 = load i64, i64* %16, align 8
  store i64 %221, i64* %22, align 8
  br label %226

222:                                              ; preds = %194, %191
  %223 = load i64, i64* %14, align 8
  %224 = load i64, i64* %22, align 8
  %225 = add nsw i64 %224, %223
  store i64 %225, i64* %22, align 8
  br label %226

226:                                              ; preds = %222, %220
  br label %272

227:                                              ; preds = %179
  %228 = load i64, i64* %16, align 8
  %229 = icmp slt i64 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %227
  %231 = load i64, i64* %22, align 8
  %232 = load i64, i64* %16, align 8
  %233 = load i64, i64* %14, align 8
  %234 = sub nsw i64 %232, %233
  %235 = icmp slt i64 %231, %234
  br i1 %235, label %245, label %236

236:                                              ; preds = %230, %227
  %237 = load i64, i64* %16, align 8
  %238 = icmp sge i64 %237, 0
  br i1 %238, label %239, label %267

239:                                              ; preds = %236
  %240 = load i64, i64* %22, align 8
  %241 = load i64, i64* %14, align 8
  %242 = add nsw i64 %240, %241
  %243 = load i64, i64* %16, align 8
  %244 = icmp slt i64 %242, %243
  br i1 %244, label %245, label %267

245:                                              ; preds = %239, %230
  %246 = load i64, i64* %23, align 8
  %247 = icmp sgt i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %245
  br label %290

249:                                              ; preds = %245
  %250 = load i32, i32* %24, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %265, label %252

252:                                              ; preds = %249
  %253 = getelementptr inbounds [100 x i8], [100 x i8]* %28, i64 0, i64 0
  %254 = load i8*, i8** @INT64_FORMAT, align 8
  %255 = load i64, i64* %16, align 8
  %256 = call i32 @snprintf(i8* %253, i32 100, i8* %254, i64 %255)
  %257 = load i32, i32* @ERROR, align 4
  %258 = load i32, i32* @ERRCODE_SEQUENCE_GENERATOR_LIMIT_EXCEEDED, align 4
  %259 = call i32 @errcode(i32 %258)
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %261 = call i32 @RelationGetRelationName(%struct.TYPE_18__* %260)
  %262 = getelementptr inbounds [100 x i8], [100 x i8]* %28, i64 0, i64 0
  %263 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %261, i8* %262)
  %264 = call i32 @ereport(i32 %257, i32 %263)
  br label %265

265:                                              ; preds = %252, %249
  %266 = load i64, i64* %15, align 8
  store i64 %266, i64* %22, align 8
  br label %271

267:                                              ; preds = %239, %236
  %268 = load i64, i64* %14, align 8
  %269 = load i64, i64* %22, align 8
  %270 = add nsw i64 %269, %268
  store i64 %270, i64* %22, align 8
  br label %271

271:                                              ; preds = %267, %265
  br label %272

272:                                              ; preds = %271, %226
  %273 = load i64, i64* %19, align 8
  %274 = add nsw i64 %273, -1
  store i64 %274, i64* %19, align 8
  %275 = load i64, i64* %23, align 8
  %276 = load i64, i64* %17, align 8
  %277 = icmp slt i64 %275, %276
  br i1 %277, label %278, label %289

278:                                              ; preds = %272
  %279 = load i64, i64* %18, align 8
  %280 = add nsw i64 %279, -1
  store i64 %280, i64* %18, align 8
  %281 = load i64, i64* %23, align 8
  %282 = add nsw i64 %281, 1
  store i64 %282, i64* %23, align 8
  %283 = load i64, i64* %22, align 8
  store i64 %283, i64* %20, align 8
  %284 = load i64, i64* %23, align 8
  %285 = icmp eq i64 %284, 1
  br i1 %285, label %286, label %288

286:                                              ; preds = %278
  %287 = load i64, i64* %22, align 8
  store i64 %287, i64* %21, align 8
  br label %288

288:                                              ; preds = %286, %278
  br label %289

289:                                              ; preds = %288, %272
  br label %176

290:                                              ; preds = %248, %203, %176
  %291 = load i64, i64* %19, align 8
  %292 = load i64, i64* %18, align 8
  %293 = sub nsw i64 %292, %291
  store i64 %293, i64* %18, align 8
  %294 = load i64, i64* %18, align 8
  %295 = icmp sge i64 %294, 0
  %296 = zext i1 %295 to i32
  %297 = call i32 @Assert(i32 %296)
  %298 = load i64, i64* %21, align 8
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 0
  store i64 %298, i64* %300, align 8
  %301 = load i64, i64* %20, align 8
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 1
  store i64 %301, i64* %303, align 8
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 2
  store i32 1, i32* %305, align 8
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %306, %struct.TYPE_17__** @last_used_seq, align 8
  %307 = load i32, i32* %25, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %315

309:                                              ; preds = %290
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %311 = call i64 @RelationNeedsWAL(%struct.TYPE_18__* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %309
  %314 = call i32 (...) @GetTopTransactionId()
  br label %315

315:                                              ; preds = %313, %309, %290
  %316 = call i32 (...) @START_CRIT_SECTION()
  %317 = load i32, i32* %8, align 4
  %318 = call i32 @MarkBufferDirty(i32 %317)
  %319 = load i32, i32* %25, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %355

321:                                              ; preds = %315
  %322 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %323 = call i64 @RelationNeedsWAL(%struct.TYPE_18__* %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %355

325:                                              ; preds = %321
  %326 = call i32 (...) @XLogBeginInsert()
  %327 = load i32, i32* %8, align 4
  %328 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %329 = call i32 @XLogRegisterBuffer(i32 0, i32 %327, i32 %328)
  %330 = load i64, i64* %22, align 8
  %331 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %332 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %331, i32 0, i32 0
  store i64 %330, i64* %332, align 8
  %333 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %334 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %333, i32 0, i32 2
  store i32 1, i32* %334, align 8
  %335 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %336 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %335, i32 0, i32 1
  store i64 0, i64* %336, align 8
  %337 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  store i32 %339, i32* %340, align 4
  %341 = bitcast %struct.TYPE_16__* %29 to i8*
  %342 = call i32 @XLogRegisterData(i8* %341, i32 4)
  %343 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %344 = load i64, i64* %343, align 8
  %345 = inttoptr i64 %344 to i8*
  %346 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @XLogRegisterData(i8* %345, i32 %347)
  %349 = load i32, i32* @RM_SEQ_ID, align 4
  %350 = load i32, i32* @XLOG_SEQ_LOG, align 4
  %351 = call i64 @XLogInsert(i32 %349, i32 %350)
  store i64 %351, i64* %30, align 8
  %352 = load i32, i32* %9, align 4
  %353 = load i64, i64* %30, align 8
  %354 = call i32 @PageSetLSN(i32 %352, i64 %353)
  br label %355

355:                                              ; preds = %325, %321, %315
  %356 = load i64, i64* %20, align 8
  %357 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %358 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %357, i32 0, i32 0
  store i64 %356, i64* %358, align 8
  %359 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %360 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %359, i32 0, i32 2
  store i32 1, i32* %360, align 8
  %361 = load i64, i64* %18, align 8
  %362 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %363 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %362, i32 0, i32 1
  store i64 %361, i64* %363, align 8
  %364 = call i32 (...) @END_CRIT_SECTION()
  %365 = load i32, i32* %8, align 4
  %366 = call i32 @UnlockReleaseBuffer(i32 %365)
  %367 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %368 = load i32, i32* @NoLock, align 4
  %369 = call i32 @relation_close(%struct.TYPE_18__* %367, i32 %368)
  %370 = load i64, i64* %21, align 8
  store i64 %370, i64* %3, align 8
  br label %371

371:                                              ; preds = %355, %70
  %372 = load i64, i64* %3, align 8
  ret i64 %372
}

declare dso_local i32 @init_sequence(i32, %struct.TYPE_17__**, %struct.TYPE_18__**) #1

declare dso_local i64 @pg_class_aclcheck(i32, i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_18__*) #1

declare dso_local i32 @PreventCommandIfReadOnly(i8*) #1

declare dso_local i32 @PreventCommandIfParallelMode(i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @relation_close(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local %struct.TYPE_20__* @read_seq_tuple(%struct.TYPE_18__*, i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @GetRedoRecPtr(...) #1

declare dso_local i64 @PageGetLSN(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i64 @RelationNeedsWAL(%struct.TYPE_18__*) #1

declare dso_local i32 @GetTopTransactionId(...) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i64 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i64) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
