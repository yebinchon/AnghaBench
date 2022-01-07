; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_basebackup.c_sendFile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_basebackup.c_sendFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.TYPE_2__ = type { i32 }

@TAR_SEND_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@noverify_checksums = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"invalid segment number %d in file \22%s\22\00", align 1
@BLCKSZ = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [94 x i8] c"could not verify checksum in file \22%s\22, block %d: read buffer size %d and page size %d differ\00", align 1
@startptr = common dso_local global i64 0, align 8
@RELSEG_SIZE = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"could not fseek in file \22%s\22: %m\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"could not reread block %d of file \22%s\22: %m\00", align 1
@.str.7 = private unnamed_addr constant [83 x i8] c"checksum verification failed in file \22%s\22, block %d: calculated %X but expected %X\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"further checksum verification failures in file \22%s\22 will not be reported\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"base backup could not send data, aborting backup\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"file \22%s\22 has a total of %d checksum verification failure\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"file \22%s\22 has a total of %d checksum verification failures\00", align 1
@total_checksum_failures = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.stat*, i32, i32)* @sendFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sendFile(i8* %0, i8* %1, %struct.stat* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_2__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.stat* %2, %struct.stat** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %30 = load i32, i32* @TAR_SEND_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %15, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %16, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %27, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = call i32* @AllocateFile(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %35, i32** %12, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %5
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @ENOENT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  store i32 1, i32* %28, align 4
  br label %354

46:                                               ; preds = %42, %38
  %47 = load i32, i32* @ERROR, align 4
  %48 = call i32 (...) @errcode_for_file_access()
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = call i32 @ereport(i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %46, %5
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.stat*, %struct.stat** %9, align 8
  %55 = call i32 @_tarWriteHeader(i8* %53, i32* null, %struct.stat* %54, i32 0)
  %56 = load i32, i32* @noverify_checksums, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %89, label %58

58:                                               ; preds = %52
  %59 = call i64 (...) @DataChecksumsEnabled()
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %89

61:                                               ; preds = %58
  %62 = load i8*, i8** %7, align 8
  %63 = call i8* @last_dir_separator(i8* %62)
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  store i8* %64, i8** %29, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i8*, i8** %29, align 8
  %67 = call i64 @is_checksummed_file(i8* %65, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %61
  store i32 1, i32* %27, align 4
  %70 = load i8*, i8** %29, align 8
  %71 = call i8* @strstr(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %71, i8** %26, align 8
  %72 = load i8*, i8** %26, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load i8*, i8** %26, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = call i32 @atoi(i8* %76)
  store i32 %77, i32* %25, align 4
  %78 = load i32, i32* %25, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i32, i32* @ERROR, align 4
  %82 = load i32, i32* %25, align 4
  %83 = load i8*, i8** %29, align 8
  %84 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %82, i8* %83)
  %85 = call i32 @ereport(i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %80, %74
  br label %87

87:                                               ; preds = %86, %69
  br label %88

88:                                               ; preds = %87, %61
  br label %89

89:                                               ; preds = %88, %58, %52
  br label %90

90:                                               ; preds = %286, %89
  %91 = trunc i64 %31 to i32
  %92 = load %struct.stat*, %struct.stat** %9, align 8
  %93 = getelementptr inbounds %struct.stat, %struct.stat* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %21, align 4
  %96 = sub nsw i32 %94, %95
  %97 = call i32 @Min(i32 %91, i32 %96)
  %98 = load i32*, i32** %12, align 8
  %99 = call i32 @fread(i8* %33, i32 1, i32 %97, i32* %98)
  store i32 %99, i32* %19, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %287

101:                                              ; preds = %90
  %102 = load i32, i32* @TAR_SEND_SIZE, align 4
  %103 = load i32, i32* @BLCKSZ, align 4
  %104 = srem i32 %102, %103
  %105 = icmp eq i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @Assert(i32 %106)
  %108 = load i32, i32* %27, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %101
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* @BLCKSZ, align 4
  %113 = srem i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load i32, i32* @WARNING, align 4
  %117 = load i8*, i8** %7, align 8
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* @BLCKSZ, align 4
  %121 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.4, i64 0, i64 0), i8* %117, i32 %118, i32 %119, i32 %120)
  %122 = call i32 @ereport(i32 %116, i32 %121)
  store i32 0, i32* %27, align 4
  br label %123

123:                                              ; preds = %115, %110, %101
  %124 = load i32, i32* %27, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %261

126:                                              ; preds = %123
  store i32 0, i32* %20, align 4
  br label %127

127:                                              ; preds = %257, %126
  %128 = load i32, i32* %20, align 4
  %129 = load i32, i32* %19, align 4
  %130 = load i32, i32* @BLCKSZ, align 4
  %131 = sdiv i32 %129, %130
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %260

133:                                              ; preds = %127
  %134 = load i32, i32* @BLCKSZ, align 4
  %135 = load i32, i32* %20, align 4
  %136 = mul nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %33, i64 %137
  store i8* %138, i8** %22, align 8
  %139 = load i8*, i8** %22, align 8
  %140 = call i32 @PageIsNew(i8* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %254, label %142

142:                                              ; preds = %133
  %143 = load i8*, i8** %22, align 8
  %144 = call i64 @PageGetLSN(i8* %143)
  %145 = load i64, i64* @startptr, align 8
  %146 = icmp slt i64 %144, %145
  br i1 %146, label %147, label %254

147:                                              ; preds = %142
  %148 = load i8*, i8** %22, align 8
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %25, align 4
  %151 = load i32, i32* @RELSEG_SIZE, align 4
  %152 = mul nsw i32 %150, %151
  %153 = add nsw i32 %149, %152
  %154 = call i32 @pg_checksum_page(i8* %148, i32 %153)
  store i32 %154, i32* %17, align 4
  %155 = load i8*, i8** %22, align 8
  %156 = bitcast i8* %155 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %156, %struct.TYPE_2__** %24, align 8
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %17, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %253

162:                                              ; preds = %147
  %163 = load i32, i32* %14, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %229

165:                                              ; preds = %162
  %166 = load i32*, i32** %12, align 8
  %167 = load i32, i32* %19, align 4
  %168 = load i32, i32* @BLCKSZ, align 4
  %169 = load i32, i32* %20, align 4
  %170 = mul nsw i32 %168, %169
  %171 = sub nsw i32 %167, %170
  %172 = sub nsw i32 0, %171
  %173 = load i32, i32* @SEEK_CUR, align 4
  %174 = call i32 @fseek(i32* %166, i32 %172, i32 %173)
  %175 = icmp eq i32 %174, -1
  br i1 %175, label %176, label %182

176:                                              ; preds = %165
  %177 = load i32, i32* @ERROR, align 4
  %178 = call i32 (...) @errcode_for_file_access()
  %179 = load i8*, i8** %7, align 8
  %180 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %179)
  %181 = call i32 @ereport(i32 %177, i32 %180)
  br label %182

182:                                              ; preds = %176, %165
  %183 = load i32, i32* @BLCKSZ, align 4
  %184 = load i32, i32* %20, align 4
  %185 = mul nsw i32 %183, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %33, i64 %186
  %188 = load i32, i32* @BLCKSZ, align 4
  %189 = load i32*, i32** %12, align 8
  %190 = call i32 @fread(i8* %187, i32 1, i32 %188, i32* %189)
  %191 = load i32, i32* @BLCKSZ, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %208

193:                                              ; preds = %182
  %194 = load i32*, i32** %12, align 8
  %195 = call i64 @feof(i32* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %193
  %198 = load i32, i32* @BLCKSZ, align 4
  %199 = load i32, i32* %20, align 4
  %200 = mul nsw i32 %198, %199
  store i32 %200, i32* %19, align 4
  br label %260

201:                                              ; preds = %193
  %202 = load i32, i32* @ERROR, align 4
  %203 = call i32 (...) @errcode_for_file_access()
  %204 = load i32, i32* %13, align 4
  %205 = load i8*, i8** %7, align 8
  %206 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %204, i8* %205)
  %207 = call i32 @ereport(i32 %202, i32 %206)
  br label %208

208:                                              ; preds = %201, %182
  %209 = load i32*, i32** %12, align 8
  %210 = load i32, i32* %19, align 4
  %211 = load i32, i32* @BLCKSZ, align 4
  %212 = load i32, i32* %20, align 4
  %213 = mul nsw i32 %211, %212
  %214 = sub nsw i32 %210, %213
  %215 = load i32, i32* @BLCKSZ, align 4
  %216 = sub nsw i32 %214, %215
  %217 = load i32, i32* @SEEK_CUR, align 4
  %218 = call i32 @fseek(i32* %209, i32 %216, i32 %217)
  %219 = icmp eq i32 %218, -1
  br i1 %219, label %220, label %226

220:                                              ; preds = %208
  %221 = load i32, i32* @ERROR, align 4
  %222 = call i32 (...) @errcode_for_file_access()
  %223 = load i8*, i8** %7, align 8
  %224 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %223)
  %225 = call i32 @ereport(i32 %221, i32 %224)
  br label %226

226:                                              ; preds = %220, %208
  store i32 1, i32* %14, align 4
  %227 = load i32, i32* %20, align 4
  %228 = add nsw i32 %227, -1
  store i32 %228, i32* %20, align 4
  br label %257

229:                                              ; preds = %162
  %230 = load i32, i32* %18, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %18, align 4
  %232 = load i32, i32* %18, align 4
  %233 = icmp sle i32 %232, 5
  br i1 %233, label %234, label %244

234:                                              ; preds = %229
  %235 = load i32, i32* @WARNING, align 4
  %236 = load i8*, i8** %7, align 8
  %237 = load i32, i32* %13, align 4
  %238 = load i32, i32* %17, align 4
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.7, i64 0, i64 0), i8* %236, i32 %237, i32 %238, i32 %241)
  %243 = call i32 @ereport(i32 %235, i32 %242)
  br label %244

244:                                              ; preds = %234, %229
  %245 = load i32, i32* %18, align 4
  %246 = icmp eq i32 %245, 5
  br i1 %246, label %247, label %252

247:                                              ; preds = %244
  %248 = load i32, i32* @WARNING, align 4
  %249 = load i8*, i8** %7, align 8
  %250 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8, i64 0, i64 0), i8* %249)
  %251 = call i32 @ereport(i32 %248, i32 %250)
  br label %252

252:                                              ; preds = %247, %244
  br label %253

253:                                              ; preds = %252, %147
  br label %254

254:                                              ; preds = %253, %142, %133
  store i32 0, i32* %14, align 4
  %255 = load i32, i32* %13, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %13, align 4
  br label %257

257:                                              ; preds = %254, %226
  %258 = load i32, i32* %20, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %20, align 4
  br label %127

260:                                              ; preds = %197, %127
  br label %261

261:                                              ; preds = %260, %123
  %262 = load i32, i32* %19, align 4
  %263 = sext i32 %262 to i64
  %264 = call i64 @pq_putmessage(i8 signext 100, i8* %33, i64 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %261
  %267 = load i32, i32* @ERROR, align 4
  %268 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0))
  %269 = call i32 @ereport(i32 %267, i32 %268)
  br label %270

270:                                              ; preds = %266, %261
  %271 = load i32, i32* %19, align 4
  %272 = load i32, i32* %21, align 4
  %273 = add nsw i32 %272, %271
  store i32 %273, i32* %21, align 4
  %274 = load i32, i32* %19, align 4
  %275 = call i32 @throttle(i32 %274)
  %276 = load i32*, i32** %12, align 8
  %277 = call i64 @feof(i32* %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %285, label %279

279:                                              ; preds = %270
  %280 = load i32, i32* %21, align 4
  %281 = load %struct.stat*, %struct.stat** %9, align 8
  %282 = getelementptr inbounds %struct.stat, %struct.stat* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = icmp sge i32 %280, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %279, %270
  br label %287

286:                                              ; preds = %279
  br label %90

287:                                              ; preds = %285, %90
  %288 = load i32*, i32** %12, align 8
  %289 = load i8*, i8** %7, align 8
  %290 = call i32 @CHECK_FREAD_ERROR(i32* %288, i8* %289)
  %291 = load i32, i32* %21, align 4
  %292 = load %struct.stat*, %struct.stat** %9, align 8
  %293 = getelementptr inbounds %struct.stat, %struct.stat* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = icmp slt i32 %291, %294
  br i1 %295, label %296, label %321

296:                                              ; preds = %287
  %297 = call i32 @MemSet(i8* %33, i32 0, i64 %31)
  br label %298

298:                                              ; preds = %304, %296
  %299 = load i32, i32* %21, align 4
  %300 = load %struct.stat*, %struct.stat** %9, align 8
  %301 = getelementptr inbounds %struct.stat, %struct.stat* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = icmp slt i32 %299, %302
  br i1 %303, label %304, label %320

304:                                              ; preds = %298
  %305 = trunc i64 %31 to i32
  %306 = load %struct.stat*, %struct.stat** %9, align 8
  %307 = getelementptr inbounds %struct.stat, %struct.stat* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %21, align 4
  %310 = sub nsw i32 %308, %309
  %311 = call i32 @Min(i32 %305, i32 %310)
  store i32 %311, i32* %19, align 4
  %312 = load i32, i32* %19, align 4
  %313 = sext i32 %312 to i64
  %314 = call i64 @pq_putmessage(i8 signext 100, i8* %33, i64 %313)
  %315 = load i32, i32* %19, align 4
  %316 = load i32, i32* %21, align 4
  %317 = add nsw i32 %316, %315
  store i32 %317, i32* %21, align 4
  %318 = load i32, i32* %19, align 4
  %319 = call i32 @throttle(i32 %318)
  br label %298

320:                                              ; preds = %298
  br label %321

321:                                              ; preds = %320, %287
  %322 = load i32, i32* %21, align 4
  %323 = add nsw i32 %322, 511
  %324 = and i32 %323, -512
  %325 = load i32, i32* %21, align 4
  %326 = sub nsw i32 %324, %325
  %327 = sext i32 %326 to i64
  store i64 %327, i64* %23, align 8
  %328 = load i64, i64* %23, align 8
  %329 = icmp ugt i64 %328, 0
  br i1 %329, label %330, label %335

330:                                              ; preds = %321
  %331 = load i64, i64* %23, align 8
  %332 = call i32 @MemSet(i8* %33, i32 0, i64 %331)
  %333 = load i64, i64* %23, align 8
  %334 = call i64 @pq_putmessage(i8 signext 100, i8* %33, i64 %333)
  br label %335

335:                                              ; preds = %330, %321
  %336 = load i32*, i32** %12, align 8
  %337 = call i32 @FreeFile(i32* %336)
  %338 = load i32, i32* %18, align 4
  %339 = icmp sgt i32 %338, 1
  br i1 %339, label %340, label %350

340:                                              ; preds = %335
  %341 = load i32, i32* @WARNING, align 4
  %342 = load i32, i32* %18, align 4
  %343 = load i8*, i8** %7, align 8
  %344 = load i32, i32* %18, align 4
  %345 = call i32 @errmsg_plural(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i64 0, i64 0), i32 %342, i8* %343, i32 %344)
  %346 = call i32 @ereport(i32 %341, i32 %345)
  %347 = load i32, i32* %11, align 4
  %348 = load i32, i32* %18, align 4
  %349 = call i32 @pgstat_report_checksum_failures_in_db(i32 %347, i32 %348)
  br label %350

350:                                              ; preds = %340, %335
  %351 = load i32, i32* %18, align 4
  %352 = load i32, i32* @total_checksum_failures, align 4
  %353 = add nsw i32 %352, %351
  store i32 %353, i32* @total_checksum_failures, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %28, align 4
  br label %354

354:                                              ; preds = %350, %45
  %355 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %355)
  %356 = load i32, i32* %6, align 4
  ret i32 %356
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @AllocateFile(i8*, i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i32 @_tarWriteHeader(i8*, i32*, %struct.stat*, i32) #2

declare dso_local i64 @DataChecksumsEnabled(...) #2

declare dso_local i8* @last_dir_separator(i8*) #2

declare dso_local i64 @is_checksummed_file(i8*, i8*) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @fread(i8*, i32, i32, i32*) #2

declare dso_local i32 @Min(i32, i32) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @PageIsNew(i8*) #2

declare dso_local i64 @PageGetLSN(i8*) #2

declare dso_local i32 @pg_checksum_page(i8*, i32) #2

declare dso_local i32 @fseek(i32*, i32, i32) #2

declare dso_local i64 @feof(i32*) #2

declare dso_local i64 @pq_putmessage(i8 signext, i8*, i64) #2

declare dso_local i32 @throttle(i32) #2

declare dso_local i32 @CHECK_FREAD_ERROR(i32*, i8*) #2

declare dso_local i32 @MemSet(i8*, i32, i64) #2

declare dso_local i32 @FreeFile(i32*) #2

declare dso_local i32 @errmsg_plural(i8*, i8*, i32, i8*, i32) #2

declare dso_local i32 @pgstat_report_checksum_failures_in_db(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
