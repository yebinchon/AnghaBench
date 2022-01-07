; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_XLogRead.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_XLogRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }

@sendSeg = common dso_local global %struct.TYPE_8__* null, align 8
@MAXPGPATH = common dso_local global i32 0, align 4
@sendTimeLine = common dso_local global i32 0, align 4
@sendTimeLineIsHistoric = common dso_local global i64 0, align 8
@sendTimeLineValidUpto = common dso_local global i32 0, align 4
@sendTimeLineNextTLI = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"requested WAL segment %s has already been removed\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"could not seek in log segment %s to offset %u: %m\00", align 1
@WAIT_EVENT_WAL_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"could not read from log segment %s, offset %u, length %zu: %m\00", align 1
@ERRCODE_DATA_CORRUPTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"could not read from log segment %s, offset %u: read %d of %zu\00", align 1
@ThisTimeLineID = common dso_local global i32 0, align 4
@am_cascading_walsender = common dso_local global i64 0, align 8
@MyWalSnd = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*, i32, i64)* @XLogRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XLogRead(%struct.TYPE_7__* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_6__*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  br label %21

21:                                               ; preds = %300, %4
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %9, align 8
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i64, i64* %8, align 8
  store i64 %24, i64* %11, align 8
  br label %25

25:                                               ; preds = %250, %21
  %26 = load i64, i64* %11, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %268

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @XLogSegmentOffset(i32 %29, i64 %32)
  store i64 %33, i64* %13, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @XLByteInSeg(i32 %39, i64 %42, i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %142, label %48

48:                                               ; preds = %38, %28
  %49 = load i32, i32* @MAXPGPATH, align 4
  %50 = zext i32 %49 to i64
  %51 = call i8* @llvm.stacksave()
  store i8* %51, i8** %16, align 8
  %52 = alloca i8, i64 %50, align 16
  store i64 %50, i64* %17, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @close(i32 %60)
  br label %62

62:                                               ; preds = %57, %48
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @XLByteToSeg(i32 %63, i64 %66, i64 %69)
  %71 = load i32, i32* @sendTimeLine, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load i64, i64* @sendTimeLineIsHistoric, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %62
  %77 = load i32, i32* @sendTimeLineValidUpto, align 4
  %78 = load i64, i64* %18, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @XLByteToSeg(i32 %77, i64 %78, i64 %81)
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %18, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %76
  %89 = load i32, i32* @sendTimeLineNextTLI, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %88, %76
  br label %93

93:                                               ; preds = %92, %62
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @XLogFilePath(i8* %52, i32 %96, i64 %99, i64 %102)
  %104 = load i32, i32* @O_RDONLY, align 4
  %105 = load i32, i32* @PG_BINARY, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @BasicOpenFile(i8* %52, i32 %106)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %138

114:                                              ; preds = %93
  %115 = load i64, i64* @errno, align 8
  %116 = load i64, i64* @ENOENT, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %114
  %119 = load i32, i32* @ERROR, align 4
  %120 = call i32 (...) @errcode_for_file_access()
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @XLogFileNameP(i32 %123, i64 %126)
  %128 = sext i32 %127 to i64
  %129 = inttoptr i64 %128 to i8*
  %130 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %129)
  %131 = call i32 @ereport(i32 %119, i32 %130)
  br label %137

132:                                              ; preds = %114
  %133 = load i32, i32* @ERROR, align 4
  %134 = call i32 (...) @errcode_for_file_access()
  %135 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  %136 = call i32 @ereport(i32 %133, i32 %135)
  br label %137

137:                                              ; preds = %132, %118
  br label %138

138:                                              ; preds = %137, %93
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  store i64 0, i64* %140, align 8
  %141 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %141)
  br label %142

142:                                              ; preds = %138, %38
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %13, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %176

148:                                              ; preds = %142
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i64, i64* %13, align 8
  %153 = trunc i64 %152 to i32
  %154 = load i32, i32* @SEEK_SET, align 4
  %155 = call i64 @lseek(i32 %151, i32 %153, i32 %154)
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %172

157:                                              ; preds = %148
  %158 = load i32, i32* @ERROR, align 4
  %159 = call i32 (...) @errcode_for_file_access()
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @XLogFileNameP(i32 %162, i64 %165)
  %167 = sext i32 %166 to i64
  %168 = inttoptr i64 %167 to i8*
  %169 = load i64, i64* %13, align 8
  %170 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %168, i64 %169)
  %171 = call i32 @ereport(i32 %158, i32 %170)
  br label %172

172:                                              ; preds = %157, %148
  %173 = load i64, i64* %13, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 2
  store i64 %173, i64* %175, align 8
  br label %176

176:                                              ; preds = %172, %142
  %177 = load i64, i64* %11, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* %13, align 8
  %182 = sub nsw i64 %180, %181
  %183 = icmp sgt i64 %177, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %176
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %13, align 8
  %189 = sub nsw i64 %187, %188
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %14, align 4
  br label %194

191:                                              ; preds = %176
  %192 = load i64, i64* %11, align 8
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %14, align 4
  br label %194

194:                                              ; preds = %191, %184
  %195 = load i32, i32* @WAIT_EVENT_WAL_READ, align 4
  %196 = call i32 @pgstat_report_wait_start(i32 %195)
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i8*, i8** %9, align 8
  %201 = load i32, i32* %14, align 4
  %202 = call i32 @read(i32 %199, i8* %200, i32 %201)
  store i32 %202, i32* %15, align 4
  %203 = call i32 (...) @pgstat_report_wait_end()
  %204 = load i32, i32* %15, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %225

206:                                              ; preds = %194
  %207 = load i32, i32* @ERROR, align 4
  %208 = call i32 (...) @errcode_for_file_access()
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @XLogFileNameP(i32 %211, i64 %214)
  %216 = sext i32 %215 to i64
  %217 = inttoptr i64 %216 to i8*
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load i32, i32* %14, align 4
  %222 = sext i32 %221 to i64
  %223 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i8* %217, i64 %220, i64 %222)
  %224 = call i32 @ereport(i32 %207, i32 %223)
  br label %250

225:                                              ; preds = %194
  %226 = load i32, i32* %15, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %249

228:                                              ; preds = %225
  %229 = load i32, i32* @ERROR, align 4
  %230 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %231 = call i32 @errcode(i32 %230)
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @XLogFileNameP(i32 %234, i64 %237)
  %239 = sext i32 %238 to i64
  %240 = inttoptr i64 %239 to i8*
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = load i32, i32* %15, align 4
  %245 = load i32, i32* %14, align 4
  %246 = sext i32 %245 to i64
  %247 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i8* %240, i64 %243, i32 %244, i64 %246)
  %248 = call i32 @ereport(i32 %229, i32 %247)
  br label %249

249:                                              ; preds = %228, %225
  br label %250

250:                                              ; preds = %249, %206
  %251 = load i32, i32* %15, align 4
  %252 = load i32, i32* %10, align 4
  %253 = add nsw i32 %252, %251
  store i32 %253, i32* %10, align 4
  %254 = load i32, i32* %15, align 4
  %255 = sext i32 %254 to i64
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = add nsw i64 %258, %255
  store i64 %259, i64* %257, align 8
  %260 = load i32, i32* %15, align 4
  %261 = sext i32 %260 to i64
  %262 = load i64, i64* %11, align 8
  %263 = sub nsw i64 %262, %261
  store i64 %263, i64* %11, align 8
  %264 = load i32, i32* %15, align 4
  %265 = load i8*, i8** %9, align 8
  %266 = sext i32 %264 to i64
  %267 = getelementptr inbounds i8, i8* %265, i64 %266
  store i8* %267, i8** %9, align 8
  br label %25

268:                                              ; preds = %25
  %269 = load i32, i32* %7, align 4
  %270 = load i64, i64* %12, align 8
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = call i32 @XLByteToSeg(i32 %269, i64 %270, i64 %273)
  %275 = load i64, i64* %12, align 8
  %276 = load i32, i32* @ThisTimeLineID, align 4
  %277 = call i32 @CheckXLogRemoved(i64 %275, i32 %276)
  %278 = load i64, i64* @am_cascading_walsender, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %308

280:                                              ; preds = %268
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyWalSnd, align 8
  store %struct.TYPE_6__* %281, %struct.TYPE_6__** %19, align 8
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 1
  %284 = call i32 @SpinLockAcquire(i32* %283)
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  store i32 %287, i32* %20, align 4
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 0
  store i32 0, i32* %289, align 4
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 1
  %292 = call i32 @SpinLockRelease(i32* %291)
  %293 = load i32, i32* %20, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %307

295:                                              ; preds = %280
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = icmp sge i32 %298, 0
  br i1 %299, label %300, label %307

300:                                              ; preds = %295
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @close(i32 %303)
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sendSeg, align 8
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 0
  store i32 -1, i32* %306, align 8
  br label %21

307:                                              ; preds = %295, %280
  br label %308

308:                                              ; preds = %307, %268
  ret void
}

declare dso_local i64 @XLogSegmentOffset(i32, i64) #1

declare dso_local i32 @XLByteInSeg(i32, i64, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @close(i32) #1

declare dso_local i32 @XLByteToSeg(i32, i64, i64) #1

declare dso_local i32 @XLogFilePath(i8*, i32, i64, i64) #1

declare dso_local i32 @BasicOpenFile(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i32 @XLogFileNameP(i32, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @pgstat_report_wait_start(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @pgstat_report_wait_end(...) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @CheckXLogRemoved(i64, i32) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
