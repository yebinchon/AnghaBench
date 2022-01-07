; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_BeginCopyFrom.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_BeginCopyFrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i8*, i32*, i32, i32, i32, i32, i8**, i32, i64, i32, i32*, i64, i32, i32**, i32*, i32*, i32, i32, i64, i64, i32, i32, i32*, i32*, i64, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i64 }
%struct.stat = type { i32 }

@InvalidOid = common dso_local global i32 0, align 4
@EOL_UNKNOWN = common dso_local global i32 0, align 4
@RAW_BUF_SIZE = common dso_local global i32 0, align 4
@COPY_CALLBACK = common dso_local global i32 0, align 4
@whereToSendOutput = common dso_local global i64 0, align 8
@DestRemote = common dso_local global i64 0, align 8
@stdin = common dso_local global i32* null, align 8
@PG_BINARY_R = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not execute command \22%s\22: %m\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"could not open file \22%s\22 for reading: %m\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [124 x i8] c"COPY FROM instructs the PostgreSQL server process to read a file. You may want a client-side facility such as psql's \\copy.\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"\22%s\22 is a directory\00", align 1
@BinarySignature = common dso_local global i32 0, align 4
@ERRCODE_BAD_COPY_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"COPY file signature not recognized\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"invalid COPY file header (missing flags)\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"invalid COPY file header (WITH OIDS)\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"unrecognized critical flags in COPY file header\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"invalid COPY file header (missing length)\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"invalid COPY file header (wrong length)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @BeginCopyFrom(%struct.TYPE_16__* %0, i32 %1, i8* %2, i32 %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32**, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_17__*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca %struct.stat, align 4
  %31 = alloca i32, align 4
  %32 = alloca [11 x i8], align 1
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = icmp eq i8* %35, null
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %16, align 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @InvalidOid, align 4
  %41 = load i32*, i32** %13, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = call %struct.TYPE_18__* @BeginCopy(%struct.TYPE_16__* %38, i32 1, i32 %39, i32* null, i32 %40, i32* %41, i32* %42)
  store %struct.TYPE_18__* %43, %struct.TYPE_18__** %15, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 29
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @MemoryContextSwitchTo(i32 %46)
  store i32 %47, i32* %26, align 4
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load i32, i32* @EOL_UNKNOWN, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 28
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 18
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @RelationGetRelationName(i32 %55)
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 27
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 26
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 25
  store i32* null, i32** %62, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 24
  store i32* null, i32** %64, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 23
  %67 = call i32 @initStringInfo(i32* %66)
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 22
  %70 = call i32 @initStringInfo(i32* %69)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  %73 = load i32, i32* @RAW_BUF_SIZE, align 4
  %74 = add nsw i32 %73, 1
  %75 = call i64 @palloc(i32 %74)
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 20
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 21
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %84 = icmp ne %struct.TYPE_16__* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %7
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 19
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %85, %7
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 18
  %94 = load i32, i32* %93, align 8
  %95 = call %struct.TYPE_15__* @RelationGetDescr(i32 %94)
  store %struct.TYPE_15__* %95, %struct.TYPE_15__** %17, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %27, align 4
  %99 = load i32, i32* %18, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 4
  %102 = trunc i64 %101 to i32
  %103 = call i64 @palloc(i32 %102)
  %104 = inttoptr i64 %103 to i32*
  store i32* %104, i32** %20, align 8
  %105 = load i32, i32* %18, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 4
  %108 = trunc i64 %107 to i32
  %109 = call i64 @palloc(i32 %108)
  %110 = inttoptr i64 %109 to i32*
  store i32* %110, i32** %21, align 8
  %111 = load i32, i32* %18, align 4
  %112 = sext i32 %111 to i64
  %113 = mul i64 %112, 4
  %114 = trunc i64 %113 to i32
  %115 = call i64 @palloc(i32 %114)
  %116 = inttoptr i64 %115 to i32*
  store i32* %116, i32** %24, align 8
  %117 = load i32, i32* %18, align 4
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 8
  %120 = trunc i64 %119 to i32
  %121 = call i64 @palloc(i32 %120)
  %122 = inttoptr i64 %121 to i32**
  store i32** %122, i32*** %25, align 8
  store i32 1, i32* %22, align 4
  br label %123

123:                                              ; preds = %215, %91
  %124 = load i32, i32* %22, align 4
  %125 = load i32, i32* %18, align 4
  %126 = icmp sle i32 %124, %125
  br i1 %126, label %127, label %218

127:                                              ; preds = %123
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %129 = load i32, i32* %22, align 4
  %130 = sub nsw i32 %129, 1
  %131 = call %struct.TYPE_17__* @TupleDescAttr(%struct.TYPE_15__* %128, i32 %130)
  store %struct.TYPE_17__* %131, %struct.TYPE_17__** %28, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  br label %215

137:                                              ; preds = %127
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 10
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %137
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %21, align 8
  %147 = load i32, i32* %22, align 4
  %148 = sub nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  %151 = call i32 @getTypeBinaryInputInfo(i32 %145, i32* %23, i32* %150)
  br label %162

152:                                              ; preds = %137
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %21, align 8
  %157 = load i32, i32* %22, align 4
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = call i32 @getTypeInputInfo(i32 %155, i32* %23, i32* %160)
  br label %162

162:                                              ; preds = %152, %142
  %163 = load i32, i32* %23, align 4
  %164 = load i32*, i32** %20, align 8
  %165 = load i32, i32* %22, align 4
  %166 = sub nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  %169 = call i32 @fmgr_info(i32 %163, i32* %168)
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 9
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %22, align 4
  %174 = call i32 @list_member_int(i32 %172, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %214, label %176

176:                                              ; preds = %162
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %214, label %181

181:                                              ; preds = %176
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 18
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %22, align 4
  %186 = call i64 @build_column_default(i32 %184, i32 %185)
  %187 = inttoptr i64 %186 to i32*
  store i32* %187, i32** %29, align 8
  %188 = load i32*, i32** %29, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %213

190:                                              ; preds = %181
  %191 = load i32*, i32** %29, align 8
  %192 = call i32* @expression_planner(i32* %191)
  store i32* %192, i32** %29, align 8
  %193 = load i32*, i32** %29, align 8
  %194 = call i32* @ExecInitExpr(i32* %193, i32* null)
  %195 = load i32**, i32*** %25, align 8
  %196 = load i32, i32* %19, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32*, i32** %195, i64 %197
  store i32* %194, i32** %198, align 8
  %199 = load i32, i32* %22, align 4
  %200 = sub nsw i32 %199, 1
  %201 = load i32*, i32** %24, align 8
  %202 = load i32, i32* %19, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  store i32 %200, i32* %204, align 4
  %205 = load i32, i32* %19, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %19, align 4
  %207 = load i32, i32* %27, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %190
  %210 = load i32*, i32** %29, align 8
  %211 = call i32 @contain_volatile_functions_not_nextval(i32* %210)
  store i32 %211, i32* %27, align 4
  br label %212

212:                                              ; preds = %209, %190
  br label %213

213:                                              ; preds = %212, %181
  br label %214

214:                                              ; preds = %213, %176, %162
  br label %215

215:                                              ; preds = %214, %136
  %216 = load i32, i32* %22, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %22, align 4
  br label %123

218:                                              ; preds = %123
  %219 = load i32*, i32** %20, align 8
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 17
  store i32* %219, i32** %221, align 8
  %222 = load i32*, i32** %21, align 8
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 16
  store i32* %222, i32** %224, align 8
  %225 = load i32*, i32** %24, align 8
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 3
  store i32* %225, i32** %227, align 8
  %228 = load i32**, i32*** %25, align 8
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 15
  store i32** %228, i32*** %230, align 8
  %231 = load i32, i32* %27, align 4
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 4
  store i32 %231, i32* %233, align 8
  %234 = load i32, i32* %19, align 4
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 5
  store i32 %234, i32* %236, align 4
  %237 = load i32, i32* %11, align 4
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 6
  store i32 %237, i32* %239, align 8
  %240 = load i64, i64* %12, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %218
  %243 = load i32, i32* @COPY_CALLBACK, align 4
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 14
  store i32 %243, i32* %245, align 8
  %246 = load i64, i64* %12, align 8
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 13
  store i64 %246, i64* %248, align 8
  br label %364

249:                                              ; preds = %218
  %250 = load i32, i32* %16, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %269

252:                                              ; preds = %249
  %253 = load i32, i32* %11, align 4
  %254 = icmp ne i32 %253, 0
  %255 = xor i1 %254, true
  %256 = zext i1 %255 to i32
  %257 = call i32 @Assert(i32 %256)
  %258 = load i64, i64* @whereToSendOutput, align 8
  %259 = load i64, i64* @DestRemote, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %264

261:                                              ; preds = %252
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %263 = call i32 @ReceiveCopyBegin(%struct.TYPE_18__* %262)
  br label %268

264:                                              ; preds = %252
  %265 = load i32*, i32** @stdin, align 8
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 12
  store i32* %265, i32** %267, align 8
  br label %268

268:                                              ; preds = %264, %261
  br label %363

269:                                              ; preds = %249
  %270 = load i8*, i8** %10, align 8
  %271 = call i32 @pstrdup(i8* %270)
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 11
  store i32 %271, i32* %273, align 8
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 6
  %276 = load i32, i32* %275, align 8
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %299

278:                                              ; preds = %269
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 11
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @PG_BINARY_R, align 4
  %283 = call i32* @OpenPipeStream(i32 %281, i32 %282)
  %284 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %284, i32 0, i32 12
  store i32* %283, i32** %285, align 8
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %286, i32 0, i32 12
  %288 = load i32*, i32** %287, align 8
  %289 = icmp eq i32* %288, null
  br i1 %289, label %290, label %298

290:                                              ; preds = %278
  %291 = load i32, i32* @ERROR, align 4
  %292 = call i32 (...) @errcode_for_file_access()
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %294 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i32 0, i32 11
  %295 = load i32, i32* %294, align 8
  %296 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %295)
  %297 = call i32 @ereport(i32 %291, i32 %296)
  br label %298

298:                                              ; preds = %290, %278
  br label %362

299:                                              ; preds = %269
  %300 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i32 0, i32 11
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @PG_BINARY_R, align 4
  %304 = call i32* @AllocateFile(i32 %302, i32 %303)
  %305 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %305, i32 0, i32 12
  store i32* %304, i32** %306, align 8
  %307 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %308 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %307, i32 0, i32 12
  %309 = load i32*, i32** %308, align 8
  %310 = icmp eq i32* %309, null
  br i1 %310, label %311, label %332

311:                                              ; preds = %299
  %312 = load i32, i32* @errno, align 4
  store i32 %312, i32* %31, align 4
  %313 = load i32, i32* @ERROR, align 4
  %314 = call i32 (...) @errcode_for_file_access()
  %315 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %315, i32 0, i32 11
  %317 = load i32, i32* %316, align 8
  %318 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %317)
  %319 = load i32, i32* %31, align 4
  %320 = load i32, i32* @ENOENT, align 4
  %321 = icmp eq i32 %319, %320
  br i1 %321, label %326, label %322

322:                                              ; preds = %311
  %323 = load i32, i32* %31, align 4
  %324 = load i32, i32* @EACCES, align 4
  %325 = icmp eq i32 %323, %324
  br i1 %325, label %326, label %328

326:                                              ; preds = %322, %311
  %327 = call i32 @errhint(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.2, i64 0, i64 0))
  br label %329

328:                                              ; preds = %322
  br label %329

329:                                              ; preds = %328, %326
  %330 = phi i32 [ %327, %326 ], [ 0, %328 ]
  %331 = call i32 @ereport(i32 %313, i32 %330)
  br label %332

332:                                              ; preds = %329, %299
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 12
  %335 = load i32*, i32** %334, align 8
  %336 = call i32 @fileno(i32* %335)
  %337 = call i64 @fstat(i32 %336, %struct.stat* %30)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %347

339:                                              ; preds = %332
  %340 = load i32, i32* @ERROR, align 4
  %341 = call i32 (...) @errcode_for_file_access()
  %342 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %343 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i32 0, i32 11
  %344 = load i32, i32* %343, align 8
  %345 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %344)
  %346 = call i32 @ereport(i32 %340, i32 %345)
  br label %347

347:                                              ; preds = %339, %332
  %348 = getelementptr inbounds %struct.stat, %struct.stat* %30, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = call i64 @S_ISDIR(i32 %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %361

352:                                              ; preds = %347
  %353 = load i32, i32* @ERROR, align 4
  %354 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %355 = call i32 @errcode(i32 %354)
  %356 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %357 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %356, i32 0, i32 11
  %358 = load i32, i32* %357, align 8
  %359 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %358)
  %360 = call i32 @ereport(i32 %353, i32 %359)
  br label %361

361:                                              ; preds = %352, %347
  br label %362

362:                                              ; preds = %361, %298
  br label %363

363:                                              ; preds = %362, %268
  br label %364

364:                                              ; preds = %363, %242
  %365 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %366 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %365, i32 0, i32 10
  %367 = load i64, i64* %366, align 8
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %448

369:                                              ; preds = %364
  %370 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %371 = getelementptr inbounds [11 x i8], [11 x i8]* %32, i64 0, i64 0
  %372 = call i32 @CopyGetData(%struct.TYPE_18__* %370, i8* %371, i32 11, i32 11)
  %373 = icmp ne i32 %372, 11
  br i1 %373, label %379, label %374

374:                                              ; preds = %369
  %375 = getelementptr inbounds [11 x i8], [11 x i8]* %32, i64 0, i64 0
  %376 = load i32, i32* @BinarySignature, align 4
  %377 = call i64 @memcmp(i8* %375, i32 %376, i32 11)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %385

379:                                              ; preds = %374, %369
  %380 = load i32, i32* @ERROR, align 4
  %381 = load i32, i32* @ERRCODE_BAD_COPY_FILE_FORMAT, align 4
  %382 = call i32 @errcode(i32 %381)
  %383 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %384 = call i32 @ereport(i32 %380, i32 %383)
  br label %385

385:                                              ; preds = %379, %374
  %386 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %387 = call i32 @CopyGetInt32(%struct.TYPE_18__* %386, i32* %33)
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %395, label %389

389:                                              ; preds = %385
  %390 = load i32, i32* @ERROR, align 4
  %391 = load i32, i32* @ERRCODE_BAD_COPY_FILE_FORMAT, align 4
  %392 = call i32 @errcode(i32 %391)
  %393 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %394 = call i32 @ereport(i32 %390, i32 %393)
  br label %395

395:                                              ; preds = %389, %385
  %396 = load i32, i32* %33, align 4
  %397 = and i32 %396, 65536
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %405

399:                                              ; preds = %395
  %400 = load i32, i32* @ERROR, align 4
  %401 = load i32, i32* @ERRCODE_BAD_COPY_FILE_FORMAT, align 4
  %402 = call i32 @errcode(i32 %401)
  %403 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %404 = call i32 @ereport(i32 %400, i32 %403)
  br label %405

405:                                              ; preds = %399, %395
  %406 = load i32, i32* %33, align 4
  %407 = and i32 %406, -65537
  store i32 %407, i32* %33, align 4
  %408 = load i32, i32* %33, align 4
  %409 = ashr i32 %408, 16
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %417

411:                                              ; preds = %405
  %412 = load i32, i32* @ERROR, align 4
  %413 = load i32, i32* @ERRCODE_BAD_COPY_FILE_FORMAT, align 4
  %414 = call i32 @errcode(i32 %413)
  %415 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  %416 = call i32 @ereport(i32 %412, i32 %415)
  br label %417

417:                                              ; preds = %411, %405
  %418 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %419 = call i32 @CopyGetInt32(%struct.TYPE_18__* %418, i32* %33)
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %424

421:                                              ; preds = %417
  %422 = load i32, i32* %33, align 4
  %423 = icmp slt i32 %422, 0
  br i1 %423, label %424, label %430

424:                                              ; preds = %421, %417
  %425 = load i32, i32* @ERROR, align 4
  %426 = load i32, i32* @ERRCODE_BAD_COPY_FILE_FORMAT, align 4
  %427 = call i32 @errcode(i32 %426)
  %428 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %429 = call i32 @ereport(i32 %425, i32 %428)
  br label %430

430:                                              ; preds = %424, %421
  br label %431

431:                                              ; preds = %446, %430
  %432 = load i32, i32* %33, align 4
  %433 = add nsw i32 %432, -1
  store i32 %433, i32* %33, align 4
  %434 = icmp sgt i32 %432, 0
  br i1 %434, label %435, label %447

435:                                              ; preds = %431
  %436 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %437 = getelementptr inbounds [11 x i8], [11 x i8]* %32, i64 0, i64 0
  %438 = call i32 @CopyGetData(%struct.TYPE_18__* %436, i8* %437, i32 1, i32 1)
  %439 = icmp ne i32 %438, 1
  br i1 %439, label %440, label %446

440:                                              ; preds = %435
  %441 = load i32, i32* @ERROR, align 4
  %442 = load i32, i32* @ERRCODE_BAD_COPY_FILE_FORMAT, align 4
  %443 = call i32 @errcode(i32 %442)
  %444 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  %445 = call i32 @ereport(i32 %441, i32 %444)
  br label %446

446:                                              ; preds = %440, %435
  br label %431

447:                                              ; preds = %431
  br label %448

448:                                              ; preds = %447, %364
  %449 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %450 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %449, i32 0, i32 10
  %451 = load i64, i64* %450, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %469, label %453

453:                                              ; preds = %448
  %454 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %455 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %454, i32 0, i32 9
  %456 = load i32, i32* %455, align 8
  %457 = call i32 @list_length(i32 %456)
  store i32 %457, i32* %34, align 4
  %458 = load i32, i32* %34, align 4
  %459 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %460 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %459, i32 0, i32 7
  store i32 %458, i32* %460, align 4
  %461 = load i32, i32* %34, align 4
  %462 = sext i32 %461 to i64
  %463 = mul i64 %462, 8
  %464 = trunc i64 %463 to i32
  %465 = call i64 @palloc(i32 %464)
  %466 = inttoptr i64 %465 to i8**
  %467 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %468 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %467, i32 0, i32 8
  store i8** %466, i8*** %468, align 8
  br label %469

469:                                              ; preds = %453, %448
  %470 = load i32, i32* %26, align 4
  %471 = call i32 @MemoryContextSwitchTo(i32 %470)
  %472 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  ret %struct.TYPE_18__* %472
}

declare dso_local %struct.TYPE_18__* @BeginCopy(%struct.TYPE_16__*, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @initStringInfo(i32*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local %struct.TYPE_15__* @RelationGetDescr(i32) #1

declare dso_local %struct.TYPE_17__* @TupleDescAttr(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @getTypeBinaryInputInfo(i32, i32*, i32*) #1

declare dso_local i32 @getTypeInputInfo(i32, i32*, i32*) #1

declare dso_local i32 @fmgr_info(i32, i32*) #1

declare dso_local i32 @list_member_int(i32, i32) #1

declare dso_local i64 @build_column_default(i32, i32) #1

declare dso_local i32* @expression_planner(i32*) #1

declare dso_local i32* @ExecInitExpr(i32*, i32*) #1

declare dso_local i32 @contain_volatile_functions_not_nextval(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ReceiveCopyBegin(%struct.TYPE_18__*) #1

declare dso_local i32 @pstrdup(i8*) #1

declare dso_local i32* @OpenPipeStream(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32* @AllocateFile(i32, i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @CopyGetData(%struct.TYPE_18__*, i8*, i32, i32) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @CopyGetInt32(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @list_length(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
