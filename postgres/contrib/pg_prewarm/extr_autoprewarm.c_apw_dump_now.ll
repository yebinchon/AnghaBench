; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_prewarm/extr_autoprewarm.c_apw_dump_now.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_prewarm/extr_autoprewarm.c_apw_dump_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@apw_state = common dso_local global %struct.TYPE_14__* null, align 8
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@InvalidPid = common dso_local global i64 0, align 8
@MyProcPid = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"could not perform block dump because dump file is being used by PID %lu\00", align 1
@LOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"skipping block dump because it is already being performed by PID %lu\00", align 1
@NBuffers = common dso_local global i32 0, align 4
@BM_TAG_VALID = common dso_local global i32 0, align 4
@BM_PERMANENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%s.tmp\00", align 1
@AUTOPREWARM_FILE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"<<%d>>\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"could not write to file \22%s\22: %m\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"%u,%u,%u,%u,%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"could not close file \22%s\22: %m\00", align 1
@DEBUG1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"wrote block details for %d blocks\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @apw_dump_now to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apw_dump_now(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %20 = load i32, i32* @MAXPGPATH, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** @apw_state, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load i32, i32* @LW_EXCLUSIVE, align 4
  %27 = call i32 @LWLockAcquire(i32* %25, i32 %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** @apw_state, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %14, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** @apw_state, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @InvalidPid, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load i64, i64* @MyProcPid, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** @apw_state, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %36, %2
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** @apw_state, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = call i32 @LWLockRelease(i32* %42)
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* @InvalidPid, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @ERROR, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** @apw_state, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i64 %54)
  %56 = call i32 @ereport(i32 %51, i32 %55)
  br label %57

57:                                               ; preds = %50, %47
  %58 = load i32, i32* @LOG, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** @apw_state, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i64 %61)
  %63 = call i32 @ereport(i32 %58, i32 %62)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %262

64:                                               ; preds = %40
  %65 = load i32, i32* @NBuffers, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 24, %66
  %68 = trunc i64 %67 to i32
  %69 = call i64 @palloc(i32 %68)
  %70 = inttoptr i64 %69 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %9, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %148, %64
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @NBuffers, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %151

75:                                               ; preds = %71
  %76 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %77 = load i32, i32* %7, align 4
  %78 = call %struct.TYPE_12__* @GetBufferDescriptor(i32 %77)
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %10, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %80 = call i32 @LockBufHdr(%struct.TYPE_12__* %79)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* @BM_TAG_VALID, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %144

85:                                               ; preds = %75
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* @BM_PERMANENT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %144

93:                                               ; preds = %90, %85
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  store i32 %98, i32* %103, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  store i32 %108, i32* %113, align 4
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 2
  store i32 %118, i32* %123, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 4
  store i64 %127, i64* %132, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 3
  store i32 %136, i32* %141, align 4
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %93, %90, %75
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %146 = load i32, i32* %16, align 4
  %147 = call i32 @UnlockBufHdr(%struct.TYPE_12__* %145, i32 %146)
  br label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %71

151:                                              ; preds = %71
  %152 = load i32, i32* @MAXPGPATH, align 4
  %153 = load i8*, i8** @AUTOPREWARM_FILE, align 8
  %154 = call i32 @snprintf(i8* %23, i32 %152, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %153)
  %155 = call i32* @AllocateFile(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %155, i32** %11, align 8
  %156 = load i32*, i32** %11, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %163, label %158

158:                                              ; preds = %151
  %159 = load i32, i32* @ERROR, align 4
  %160 = call i32 (...) @errcode_for_file_access()
  %161 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %23)
  %162 = call i32 @ereport(i32 %159, i32 %161)
  br label %163

163:                                              ; preds = %158, %151
  %164 = load i32*, i32** %11, align 8
  %165 = load i32, i32* %6, align 4
  %166 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %164, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %165)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %179

169:                                              ; preds = %163
  %170 = load i32, i32* @errno, align 4
  store i32 %170, i32* %17, align 4
  %171 = load i32*, i32** %11, align 8
  %172 = call i32 @FreeFile(i32* %171)
  %173 = call i32 @unlink(i8* %23)
  %174 = load i32, i32* %17, align 4
  store i32 %174, i32* @errno, align 4
  %175 = load i32, i32* @ERROR, align 4
  %176 = call i32 (...) @errcode_for_file_access()
  %177 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %23)
  %178 = call i32 @ereport(i32 %175, i32 %177)
  br label %179

179:                                              ; preds = %169, %163
  store i32 0, i32* %7, align 4
  br label %180

180:                                              ; preds = %232, %179
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %235

184:                                              ; preds = %180
  %185 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %186 = load i32*, i32** %11, align 8
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %200 = load i32, i32* %7, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %206 = load i32, i32* %7, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = trunc i64 %210 to i32
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %186, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %192, i32 %198, i32 %204, i32 %211, i32 %217)
  store i32 %218, i32* %8, align 4
  %219 = load i32, i32* %8, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %184
  %222 = load i32, i32* @errno, align 4
  store i32 %222, i32* %18, align 4
  %223 = load i32*, i32** %11, align 8
  %224 = call i32 @FreeFile(i32* %223)
  %225 = call i32 @unlink(i8* %23)
  %226 = load i32, i32* %18, align 4
  store i32 %226, i32* @errno, align 4
  %227 = load i32, i32* @ERROR, align 4
  %228 = call i32 (...) @errcode_for_file_access()
  %229 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %23)
  %230 = call i32 @ereport(i32 %227, i32 %229)
  br label %231

231:                                              ; preds = %221, %184
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %7, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %7, align 4
  br label %180

235:                                              ; preds = %180
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %237 = call i32 @pfree(%struct.TYPE_13__* %236)
  %238 = load i32*, i32** %11, align 8
  %239 = call i32 @FreeFile(i32* %238)
  store i32 %239, i32* %8, align 4
  %240 = load i32, i32* %8, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %235
  %243 = load i32, i32* @errno, align 4
  store i32 %243, i32* %19, align 4
  %244 = call i32 @unlink(i8* %23)
  %245 = load i32, i32* %19, align 4
  store i32 %245, i32* @errno, align 4
  %246 = load i32, i32* @ERROR, align 4
  %247 = call i32 (...) @errcode_for_file_access()
  %248 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8* %23)
  %249 = call i32 @ereport(i32 %246, i32 %248)
  br label %250

250:                                              ; preds = %242, %235
  %251 = load i8*, i8** @AUTOPREWARM_FILE, align 8
  %252 = load i32, i32* @ERROR, align 4
  %253 = call i32 @durable_rename(i8* %23, i8* %251, i32 %252)
  %254 = load i64, i64* @InvalidPid, align 8
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** @apw_state, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 0
  store i64 %254, i64* %256, align 8
  %257 = load i32, i32* @DEBUG1, align 4
  %258 = load i32, i32* %6, align 4
  %259 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %258)
  %260 = call i32 @ereport(i32 %257, i32 %259)
  %261 = load i32, i32* %6, align 4
  store i32 %261, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %262

262:                                              ; preds = %250, %57
  %263 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %263)
  %264 = load i32, i32* %3, align 4
  ret i32 %264
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LWLockAcquire(i32*, i32) #2

declare dso_local i32 @LWLockRelease(i32*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i64 @palloc(i32) #2

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #2

declare dso_local %struct.TYPE_12__* @GetBufferDescriptor(i32) #2

declare dso_local i32 @LockBufHdr(%struct.TYPE_12__*) #2

declare dso_local i32 @UnlockBufHdr(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32* @AllocateFile(i8*, i8*) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @fprintf(i32*, i8*, i32, ...) #2

declare dso_local i32 @FreeFile(i32*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @pfree(%struct.TYPE_13__*) #2

declare dso_local i32 @durable_rename(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
