; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_miscinit.c_CreateLockFile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_miscinit.c_CreateLockFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"PG_GRANDPARENT_PID\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@pg_file_create_mode = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"could not create lock file \22%s\22: %m\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"could not open lock file \22%s\22: %m\00", align 1
@WAIT_EVENT_LOCK_FILE_CREATE_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"could not read lock file \22%s\22: %m\00", align 1
@ERRCODE_LOCK_FILE_EXISTS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"lock file \22%s\22 is empty\00", align 1
@.str.5 = private unnamed_addr constant [103 x i8] c"Either another server is starting, or the lock file is the remnant of a previous server startup crash.\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"bogus data in lock file \22%s\22: \22%s\22\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"lock file \22%s\22 already exists\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"Is another postgres (PID %d) running in data directory \22%s\22?\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"Is another postmaster (PID %d) running in data directory \22%s\22?\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"Is another postgres (PID %d) using socket file \22%s\22?\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"Is another postmaster (PID %d) using socket file \22%s\22?\00", align 1
@LOCK_FILE_LINE_SHMEM_KEY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"%lu %lu\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"pre-existing shared memory block (key %lu, ID %lu) is still in use\00", align 1
@.str.14 = private unnamed_addr constant [72 x i8] c"Terminate any old server processes associated with data directory \22%s\22.\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"could not remove old lock file \22%s\22: %m\00", align 1
@.str.16 = private unnamed_addr constant [114 x i8] c"The file seems accidentally left over, but it could not be removed. Please remove the file by hand and try again.\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"%d\0A%s\0A%ld\0A%d\0A%s\0A\00", align 1
@DataDir = common dso_local global i8* null, align 8
@MyStartTime = common dso_local global i64 0, align 8
@PostPortNumber = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@WAIT_EVENT_LOCK_FILE_CREATE_WRITE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [35 x i8] c"could not write lock file \22%s\22: %m\00", align 1
@WAIT_EVENT_LOCK_FILE_CREATE_SYNC = common dso_local global i32 0, align 4
@lock_files = common dso_local global i64 0, align 8
@NIL = common dso_local global i64 0, align 8
@UnlinkLockFiles = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32, i8*)* @CreateLockFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreateLockFile(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %29 = load i32, i32* @MAXPGPATH, align 4
  %30 = mul nsw i32 %29, 2
  %31 = add nsw i32 %30, 256
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %12, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %13, align 8
  %35 = call i64 (...) @getpid()
  store i64 %35, i64* %18, align 8
  %36 = call i64 (...) @getppid()
  store i64 %36, i64* %19, align 8
  %37 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* %37, i8** %21, align 8
  %38 = load i8*, i8** %21, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %5
  %41 = load i8*, i8** %21, align 8
  %42 = call i8* @atoi(i8* %41)
  %43 = ptrtoint i8* %42 to i64
  store i64 %43, i64* %20, align 8
  br label %45

44:                                               ; preds = %5
  store i64 0, i64* %20, align 8
  br label %45

45:                                               ; preds = %44, %40
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %264, %45
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* @O_RDWR, align 4
  %49 = load i32, i32* @O_CREAT, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @O_EXCL, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @pg_file_create_mode, align 4
  %54 = call i32 @open(i8* %47, i32 %52, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %267

58:                                               ; preds = %46
  %59 = load i32, i32* @errno, align 4
  %60 = load i32, i32* @EEXIST, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* @errno, align 4
  %64 = load i32, i32* @EACCES, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %69, label %66

66:                                               ; preds = %62, %58
  %67 = load i32, i32* %14, align 4
  %68 = icmp sgt i32 %67, 100
  br i1 %68, label %69, label %75

69:                                               ; preds = %66, %62
  %70 = load i32, i32* @FATAL, align 4
  %71 = call i32 (...) @errcode_for_file_access()
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  %74 = call i32 @ereport(i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %69, %66
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* @O_RDONLY, align 4
  %78 = load i32, i32* @pg_file_create_mode, align 4
  %79 = call i32 @open(i8* %76, i32 %77, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %75
  %83 = load i32, i32* @errno, align 4
  %84 = load i32, i32* @ENOENT, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %264

87:                                               ; preds = %82
  %88 = load i32, i32* @FATAL, align 4
  %89 = call i32 (...) @errcode_for_file_access()
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %90)
  %92 = call i32 @ereport(i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %87, %75
  %94 = load i32, i32* @WAIT_EVENT_LOCK_FILE_CREATE_READ, align 4
  %95 = call i32 @pgstat_report_wait_start(i32 %94)
  %96 = load i32, i32* %11, align 4
  %97 = sub i64 %32, 1
  %98 = trunc i64 %97 to i32
  %99 = call i32 @read(i32 %96, i8* %34, i32 %98)
  store i32 %99, i32* %15, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %93
  %102 = load i32, i32* @FATAL, align 4
  %103 = call i32 (...) @errcode_for_file_access()
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %104)
  %106 = call i32 @ereport(i32 %102, i32 %105)
  br label %107

107:                                              ; preds = %101, %93
  %108 = call i32 (...) @pgstat_report_wait_end()
  %109 = load i32, i32* %11, align 4
  %110 = call i64 @close(i32 %109)
  %111 = load i32, i32* %15, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %107
  %114 = load i32, i32* @FATAL, align 4
  %115 = load i32, i32* @ERRCODE_LOCK_FILE_EXISTS, align 4
  %116 = call i32 @errcode(i32 %115)
  %117 = load i8*, i8** %6, align 8
  %118 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %117)
  %119 = call i32 (i8*, ...) @errhint(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.5, i64 0, i64 0))
  %120 = call i32 @ereport(i32 %114, i32 %119)
  br label %121

121:                                              ; preds = %113, %107
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %34, i64 %123
  store i8 0, i8* %124, align 1
  %125 = call i8* @atoi(i8* %34)
  %126 = ptrtoint i8* %125 to i32
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* %16, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %121
  %130 = load i32, i32* %16, align 4
  %131 = sub nsw i32 0, %130
  br label %134

132:                                              ; preds = %121
  %133 = load i32, i32* %16, align 4
  br label %134

134:                                              ; preds = %132, %129
  %135 = phi i32 [ %131, %129 ], [ %133, %132 ]
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %17, align 8
  %137 = load i64, i64* %17, align 8
  %138 = icmp sle i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load i32, i32* @FATAL, align 4
  %141 = load i8*, i8** %6, align 8
  %142 = call i32 @elog(i32 %140, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %141, i8* %34)
  br label %143

143:                                              ; preds = %139, %134
  %144 = load i64, i64* %17, align 8
  %145 = load i64, i64* %18, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %209

147:                                              ; preds = %143
  %148 = load i64, i64* %17, align 8
  %149 = load i64, i64* %19, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %209

151:                                              ; preds = %147
  %152 = load i64, i64* %17, align 8
  %153 = load i64, i64* %20, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %209

155:                                              ; preds = %151
  %156 = load i64, i64* %17, align 8
  %157 = call i64 @kill(i64 %156, i32 0)
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %167, label %159

159:                                              ; preds = %155
  %160 = load i32, i32* @errno, align 4
  %161 = load i32, i32* @ESRCH, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %208

163:                                              ; preds = %159
  %164 = load i32, i32* @errno, align 4
  %165 = load i32, i32* @EPERM, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %208

167:                                              ; preds = %163, %155
  %168 = load i32, i32* @FATAL, align 4
  %169 = load i32, i32* @ERRCODE_LOCK_FILE_EXISTS, align 4
  %170 = call i32 @errcode(i32 %169)
  %171 = load i8*, i8** %6, align 8
  %172 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %171)
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %190

175:                                              ; preds = %167
  %176 = load i32, i32* %16, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %175
  %179 = load i64, i64* %17, align 8
  %180 = trunc i64 %179 to i32
  %181 = load i8*, i8** %10, align 8
  %182 = call i32 (i8*, ...) @errhint(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0), i32 %180, i8* %181)
  br label %188

183:                                              ; preds = %175
  %184 = load i64, i64* %17, align 8
  %185 = trunc i64 %184 to i32
  %186 = load i8*, i8** %10, align 8
  %187 = call i32 (i8*, ...) @errhint(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0), i32 %185, i8* %186)
  br label %188

188:                                              ; preds = %183, %178
  %189 = phi i32 [ %182, %178 ], [ %187, %183 ]
  br label %205

190:                                              ; preds = %167
  %191 = load i32, i32* %16, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %190
  %194 = load i64, i64* %17, align 8
  %195 = trunc i64 %194 to i32
  %196 = load i8*, i8** %10, align 8
  %197 = call i32 (i8*, ...) @errhint(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i32 %195, i8* %196)
  br label %203

198:                                              ; preds = %190
  %199 = load i64, i64* %17, align 8
  %200 = trunc i64 %199 to i32
  %201 = load i8*, i8** %10, align 8
  %202 = call i32 (i8*, ...) @errhint(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i64 0, i64 0), i32 %200, i8* %201)
  br label %203

203:                                              ; preds = %198, %193
  %204 = phi i32 [ %197, %193 ], [ %202, %198 ]
  br label %205

205:                                              ; preds = %203, %188
  %206 = phi i32 [ %189, %188 ], [ %204, %203 ]
  %207 = call i32 @ereport(i32 %168, i32 %206)
  br label %208

208:                                              ; preds = %205, %163, %159
  br label %209

209:                                              ; preds = %208, %151, %147, %143
  %210 = load i32, i32* %9, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %252

212:                                              ; preds = %209
  store i8* %34, i8** %22, align 8
  store i32 1, i32* %25, align 4
  br label %213

213:                                              ; preds = %225, %212
  %214 = load i32, i32* %25, align 4
  %215 = load i32, i32* @LOCK_FILE_LINE_SHMEM_KEY, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %228

217:                                              ; preds = %213
  %218 = load i8*, i8** %22, align 8
  %219 = call i8* @strchr(i8* %218, i8 signext 10)
  store i8* %219, i8** %22, align 8
  %220 = icmp eq i8* %219, null
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  br label %228

222:                                              ; preds = %217
  %223 = load i8*, i8** %22, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %22, align 8
  br label %225

225:                                              ; preds = %222
  %226 = load i32, i32* %25, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %25, align 4
  br label %213

228:                                              ; preds = %221, %213
  %229 = load i8*, i8** %22, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %251

231:                                              ; preds = %228
  %232 = load i8*, i8** %22, align 8
  %233 = call i32 @sscanf(i8* %232, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i64* %23, i64* %24)
  %234 = icmp eq i32 %233, 2
  br i1 %234, label %235, label %251

235:                                              ; preds = %231
  %236 = load i64, i64* %23, align 8
  %237 = load i64, i64* %24, align 8
  %238 = call i64 @PGSharedMemoryIsInUse(i64 %236, i64 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %250

240:                                              ; preds = %235
  %241 = load i32, i32* @FATAL, align 4
  %242 = load i32, i32* @ERRCODE_LOCK_FILE_EXISTS, align 4
  %243 = call i32 @errcode(i32 %242)
  %244 = load i64, i64* %23, align 8
  %245 = load i64, i64* %24, align 8
  %246 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.13, i64 0, i64 0), i64 %244, i64 %245)
  %247 = load i8*, i8** %10, align 8
  %248 = call i32 (i8*, ...) @errhint(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.14, i64 0, i64 0), i8* %247)
  %249 = call i32 @ereport(i32 %241, i32 %248)
  br label %250

250:                                              ; preds = %240, %235
  br label %251

251:                                              ; preds = %250, %231, %228
  br label %252

252:                                              ; preds = %251, %209
  %253 = load i8*, i8** %6, align 8
  %254 = call i64 @unlink(i8* %253)
  %255 = icmp slt i64 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %252
  %257 = load i32, i32* @FATAL, align 4
  %258 = call i32 (...) @errcode_for_file_access()
  %259 = load i8*, i8** %6, align 8
  %260 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0), i8* %259)
  %261 = call i32 (i8*, ...) @errhint(i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.16, i64 0, i64 0))
  %262 = call i32 @ereport(i32 %257, i32 %261)
  br label %263

263:                                              ; preds = %256, %252
  br label %264

264:                                              ; preds = %263, %86
  %265 = load i32, i32* %14, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %14, align 4
  br label %46

267:                                              ; preds = %57
  %268 = trunc i64 %32 to i32
  %269 = load i32, i32* %7, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %267
  %272 = load i64, i64* %18, align 8
  %273 = trunc i64 %272 to i32
  br label %278

274:                                              ; preds = %267
  %275 = load i64, i64* %18, align 8
  %276 = trunc i64 %275 to i32
  %277 = sub nsw i32 0, %276
  br label %278

278:                                              ; preds = %274, %271
  %279 = phi i32 [ %273, %271 ], [ %277, %274 ]
  %280 = load i8*, i8** @DataDir, align 8
  %281 = load i64, i64* @MyStartTime, align 8
  %282 = load i32, i32* @PostPortNumber, align 4
  %283 = load i8*, i8** %8, align 8
  %284 = call i32 @snprintf(i8* %34, i32 %268, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 %279, i8* %280, i64 %281, i32 %282, i8* %283)
  %285 = load i32, i32* %9, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %278
  %288 = load i32, i32* %7, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %293, label %290

290:                                              ; preds = %287
  %291 = trunc i64 %32 to i32
  %292 = call i32 @strlcat(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 %291)
  br label %293

293:                                              ; preds = %290, %287, %278
  store i32 0, i32* @errno, align 4
  %294 = load i32, i32* @WAIT_EVENT_LOCK_FILE_CREATE_WRITE, align 4
  %295 = call i32 @pgstat_report_wait_start(i32 %294)
  %296 = load i32, i32* %11, align 4
  %297 = call i64 @strlen(i8* %34)
  %298 = call i64 @write(i32 %296, i8* %34, i64 %297)
  %299 = call i64 @strlen(i8* %34)
  %300 = icmp ne i64 %298, %299
  br i1 %300, label %301, label %320

301:                                              ; preds = %293
  %302 = load i32, i32* @errno, align 4
  store i32 %302, i32* %26, align 4
  %303 = load i32, i32* %11, align 4
  %304 = call i64 @close(i32 %303)
  %305 = load i8*, i8** %6, align 8
  %306 = call i64 @unlink(i8* %305)
  %307 = load i32, i32* %26, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %301
  %310 = load i32, i32* %26, align 4
  br label %313

311:                                              ; preds = %301
  %312 = load i32, i32* @ENOSPC, align 4
  br label %313

313:                                              ; preds = %311, %309
  %314 = phi i32 [ %310, %309 ], [ %312, %311 ]
  store i32 %314, i32* @errno, align 4
  %315 = load i32, i32* @FATAL, align 4
  %316 = call i32 (...) @errcode_for_file_access()
  %317 = load i8*, i8** %6, align 8
  %318 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i8* %317)
  %319 = call i32 @ereport(i32 %315, i32 %318)
  br label %320

320:                                              ; preds = %313, %293
  %321 = call i32 (...) @pgstat_report_wait_end()
  %322 = load i32, i32* @WAIT_EVENT_LOCK_FILE_CREATE_SYNC, align 4
  %323 = call i32 @pgstat_report_wait_start(i32 %322)
  %324 = load i32, i32* %11, align 4
  %325 = call i64 @pg_fsync(i32 %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %339

327:                                              ; preds = %320
  %328 = load i32, i32* @errno, align 4
  store i32 %328, i32* %27, align 4
  %329 = load i32, i32* %11, align 4
  %330 = call i64 @close(i32 %329)
  %331 = load i8*, i8** %6, align 8
  %332 = call i64 @unlink(i8* %331)
  %333 = load i32, i32* %27, align 4
  store i32 %333, i32* @errno, align 4
  %334 = load i32, i32* @FATAL, align 4
  %335 = call i32 (...) @errcode_for_file_access()
  %336 = load i8*, i8** %6, align 8
  %337 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i8* %336)
  %338 = call i32 @ereport(i32 %334, i32 %337)
  br label %339

339:                                              ; preds = %327, %320
  %340 = call i32 (...) @pgstat_report_wait_end()
  %341 = load i32, i32* %11, align 4
  %342 = call i64 @close(i32 %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %354

344:                                              ; preds = %339
  %345 = load i32, i32* @errno, align 4
  store i32 %345, i32* %28, align 4
  %346 = load i8*, i8** %6, align 8
  %347 = call i64 @unlink(i8* %346)
  %348 = load i32, i32* %28, align 4
  store i32 %348, i32* @errno, align 4
  %349 = load i32, i32* @FATAL, align 4
  %350 = call i32 (...) @errcode_for_file_access()
  %351 = load i8*, i8** %6, align 8
  %352 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i8* %351)
  %353 = call i32 @ereport(i32 %349, i32 %352)
  br label %354

354:                                              ; preds = %344, %339
  %355 = load i64, i64* @lock_files, align 8
  %356 = load i64, i64* @NIL, align 8
  %357 = icmp eq i64 %355, %356
  br i1 %357, label %358, label %361

358:                                              ; preds = %354
  %359 = load i32, i32* @UnlinkLockFiles, align 4
  %360 = call i32 @on_proc_exit(i32 %359, i32 0)
  br label %361

361:                                              ; preds = %358, %354
  %362 = load i8*, i8** %6, align 8
  %363 = call i32 @pstrdup(i8* %362)
  %364 = load i64, i64* @lock_files, align 8
  %365 = call i64 @lcons(i32 %363, i64 %364)
  store i64 %365, i64* @lock_files, align 8
  %366 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %366)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @getpid(...) #2

declare dso_local i64 @getppid(...) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i8* @atoi(i8*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i32 @pgstat_report_wait_start(i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @pgstat_report_wait_end(...) #2

declare dso_local i64 @close(i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errhint(i8*, ...) #2

declare dso_local i32 @elog(i32, i8*, i8*, i8*) #2

declare dso_local i64 @kill(i64, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*) #2

declare dso_local i64 @PGSharedMemoryIsInUse(i64, i64) #2

declare dso_local i64 @unlink(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*, i64, i32, i8*) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i64 @write(i32, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @pg_fsync(i32) #2

declare dso_local i32 @on_proc_exit(i32, i32) #2

declare dso_local i64 @lcons(i32, i64) #2

declare dso_local i32 @pstrdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
