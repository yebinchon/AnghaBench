; ModuleID = '/home/carl/AnghaBench/postgres/src/test/isolation/extr_isolationtester.c_try_complete_step.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/isolation/extr_isolationtester.c_try_complete_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_11__ = type { i32, i8*, i8*, i8* }
%struct.timeval = type { i32, i64 }
%struct.TYPE_12__ = type { i64, i8*, i8* }

@conns = common dso_local global i32** null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid socket: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"select failed: %s\0A\00", align 1
@STEP_NONBLOCK = common dso_local global i32 0, align 4
@PREP_WAITING = common dso_local global i32 0, align 4
@backend_pid_strs = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"lock wait query failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"PQconsumeInput failed: %s\0A\00", align 1
@STEP_RETRY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"step %s: %s <waiting ...>\0A\00", align 1
@USECS_PER_SEC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"PQcancel failed: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"step %s timed out after 200 seconds\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"step %s: <... completed>\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"step %s: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"WARNING: this step had a leftover error message\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@PG_DIAG_SEVERITY = common dso_local global i32 0, align 4
@PG_DIAG_MESSAGE_PRIMARY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"%s:  %s\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"unexpected result status: %s\0A\00", align 1
@backend_pids = common dso_local global i64* null, align 8
@.str.13 = private unnamed_addr constant [7 x i8] c"PID %d\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"%s: NOTIFY \22%s\22 with payload \22%s\22 from %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*, i32)* @try_complete_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_complete_step(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.timeval, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca [256 x i8], align 16
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca [32 x i8], align 16
  %26 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  %27 = load i32**, i32*** @conns, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 1, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %27, i64 %32
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %8, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @PQsocket(i32* %35)
  store i32 %36, i32* %12, align 4
  store i32 0, i32* %16, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %3
  %40 = load i32, i32* @stderr, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = call i8* @PQerrorMessage(i32* %41)
  %43 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = call i32 @exit(i32 1) #3
  unreachable

45:                                               ; preds = %3
  %46 = call i32 @gettimeofday(%struct.timeval* %10, i32* null)
  %47 = call i32 @FD_ZERO(i32* %9)
  br label %48

48:                                               ; preds = %221, %66, %45
  %49 = load i32*, i32** %8, align 8
  %50 = call i64 @PQisBusy(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %222

52:                                               ; preds = %48
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @FD_SET(i32 %53, i32* %9)
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i32 10000, i32* %56, align 8
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i32 @select(i32 %58, i32* %9, i32* null, i32* null, %struct.timeval* %11)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %52
  %63 = load i64, i64* @errno, align 8
  %64 = load i64, i64* @EINTR, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %48

67:                                               ; preds = %62
  %68 = load i32, i32* @stderr, align 4
  %69 = load i64, i64* @errno, align 8
  %70 = call i8* @strerror(i64 %69)
  %71 = call i32 @fprintf(i32 %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  %72 = call i32 @exit(i32 1) #3
  unreachable

73:                                               ; preds = %52
  %74 = load i32, i32* %13, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %209

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @STEP_NONBLOCK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %151

81:                                               ; preds = %76
  %82 = load i32**, i32*** @conns, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* @PREP_WAITING, align 4
  %86 = load i32*, i32** @backend_pid_strs, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %86, i64 %91
  %93 = call i32* @PQexecPrepared(i32* %84, i32 %85, i32 1, i32* %92, i32* null, i32* null, i32 0)
  store i32* %93, i32** %14, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = call i32 @PQresultStatus(i32* %94)
  %96 = icmp ne i32 %95, 128
  br i1 %96, label %101, label %97

97:                                               ; preds = %81
  %98 = load i32*, i32** %14, align 8
  %99 = call i32 @PQntuples(i32* %98)
  %100 = icmp ne i32 %99, 1
  br i1 %100, label %101, label %109

101:                                              ; preds = %97, %81
  %102 = load i32, i32* @stderr, align 4
  %103 = load i32**, i32*** @conns, align 8
  %104 = getelementptr inbounds i32*, i32** %103, i64 0
  %105 = load i32*, i32** %104, align 8
  %106 = call i8* @PQerrorMessage(i32* %105)
  %107 = call i32 @fprintf(i32 %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %106)
  %108 = call i32 @exit(i32 1) #3
  unreachable

109:                                              ; preds = %97
  %110 = load i32*, i32** %14, align 8
  %111 = call i8* @PQgetvalue(i32* %110, i32 0, i32 0)
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 116
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %19, align 4
  %117 = load i32*, i32** %14, align 8
  %118 = call i32 @PQclear(i32* %117)
  %119 = load i32, i32* %19, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %150

121:                                              ; preds = %109
  %122 = load i32*, i32** %8, align 8
  %123 = call i32 @PQconsumeInput(i32* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* @stderr, align 4
  %127 = load i32*, i32** %8, align 8
  %128 = call i8* @PQerrorMessage(i32* %127)
  %129 = call i32 @fprintf(i32 %126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %128)
  %130 = call i32 @exit(i32 1) #3
  unreachable

131:                                              ; preds = %121
  %132 = load i32*, i32** %8, align 8
  %133 = call i64 @PQisBusy(i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %131
  br label %222

136:                                              ; preds = %131
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @STEP_RETRY, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %149, label %141

141:                                              ; preds = %136
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 2
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %144, i8* %147)
  br label %149

149:                                              ; preds = %141, %136
  store i32 1, i32* %4, align 4
  br label %370

150:                                              ; preds = %109
  br label %151

151:                                              ; preds = %150, %76
  %152 = call i32 @gettimeofday(%struct.timeval* %17, i32* null)
  %153 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = trunc i64 %154 to i32
  %156 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = sub nsw i32 %155, %158
  store i32 %159, i32* %18, align 4
  %160 = load i32, i32* @USECS_PER_SEC, align 4
  %161 = load i32, i32* %18, align 4
  %162 = mul nsw i32 %161, %160
  store i32 %162, i32* %18, align 4
  %163 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sub nsw i32 %164, %166
  %168 = load i32, i32* %18, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %18, align 4
  %170 = load i32, i32* %18, align 4
  %171 = load i32, i32* @USECS_PER_SEC, align 4
  %172 = mul nsw i32 180, %171
  %173 = icmp sgt i32 %170, %172
  br i1 %173, label %174, label %196

174:                                              ; preds = %151
  %175 = load i32, i32* %16, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %196, label %177

177:                                              ; preds = %174
  %178 = load i32*, i32** %8, align 8
  %179 = call i32* @PQgetCancel(i32* %178)
  store i32* %179, i32** %20, align 8
  %180 = load i32*, i32** %20, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %195

182:                                              ; preds = %177
  %183 = load i32*, i32** %20, align 8
  %184 = getelementptr inbounds [256 x i8], [256 x i8]* %21, i64 0, i64 0
  %185 = call i64 @PQcancel(i32* %183, i8* %184, i32 256)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  store i32 1, i32* %16, align 4
  br label %192

188:                                              ; preds = %182
  %189 = load i32, i32* @stderr, align 4
  %190 = getelementptr inbounds [256 x i8], [256 x i8]* %21, i64 0, i64 0
  %191 = call i32 @fprintf(i32 %189, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %190)
  br label %192

192:                                              ; preds = %188, %187
  %193 = load i32*, i32** %20, align 8
  %194 = call i32 @PQfreeCancel(i32* %193)
  br label %195

195:                                              ; preds = %192, %177
  br label %196

196:                                              ; preds = %195, %174, %151
  %197 = load i32, i32* %18, align 4
  %198 = load i32, i32* @USECS_PER_SEC, align 4
  %199 = mul nsw i32 200, %198
  %200 = icmp sgt i32 %197, %199
  br i1 %200, label %201, label %208

201:                                              ; preds = %196
  %202 = load i32, i32* @stderr, align 4
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @fprintf(i32 %202, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %205)
  %207 = call i32 @exit(i32 1) #3
  unreachable

208:                                              ; preds = %196
  br label %220

209:                                              ; preds = %73
  %210 = load i32*, i32** %8, align 8
  %211 = call i32 @PQconsumeInput(i32* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %219, label %213

213:                                              ; preds = %209
  %214 = load i32, i32* @stderr, align 4
  %215 = load i32*, i32** %8, align 8
  %216 = call i8* @PQerrorMessage(i32* %215)
  %217 = call i32 @fprintf(i32 %214, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %216)
  %218 = call i32 @exit(i32 1) #3
  unreachable

219:                                              ; preds = %209
  br label %220

220:                                              ; preds = %219, %208
  br label %221

221:                                              ; preds = %220
  br label %48

222:                                              ; preds = %135, %48
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* @STEP_RETRY, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %222
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 1
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %230)
  br label %240

232:                                              ; preds = %222
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 1
  %235 = load i8*, i8** %234, align 8
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 2
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %235, i8* %238)
  br label %240

240:                                              ; preds = %232, %227
  br label %241

241:                                              ; preds = %293, %240
  %242 = load i32*, i32** %8, align 8
  %243 = call i32* @PQgetResult(i32* %242)
  store i32* %243, i32** %14, align 8
  %244 = icmp ne i32* %243, null
  br i1 %244, label %245, label %296

245:                                              ; preds = %241
  %246 = load i32*, i32** %14, align 8
  %247 = call i32 @PQresultStatus(i32* %246)
  switch i32 %247, label %288 [
    i32 130, label %248
    i32 128, label %249
    i32 129, label %252
  ]

248:                                              ; preds = %245
  br label %293

249:                                              ; preds = %245
  %250 = load i32*, i32** %14, align 8
  %251 = call i32 @printResultSet(i32* %250)
  br label %293

252:                                              ; preds = %245
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 3
  %255 = load i8*, i8** %254, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %257, label %263

257:                                              ; preds = %252
  %258 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0))
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 3
  %261 = load i8*, i8** %260, align 8
  %262 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %261)
  br label %263

263:                                              ; preds = %257, %252
  %264 = load i32*, i32** %14, align 8
  %265 = load i32, i32* @PG_DIAG_SEVERITY, align 4
  %266 = call i8* @PQresultErrorField(i32* %264, i32 %265)
  store i8* %266, i8** %22, align 8
  %267 = load i32*, i32** %14, align 8
  %268 = load i32, i32* @PG_DIAG_MESSAGE_PRIMARY, align 4
  %269 = call i8* @PQresultErrorField(i32* %267, i32 %268)
  store i8* %269, i8** %23, align 8
  %270 = load i8*, i8** %22, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %272, label %281

272:                                              ; preds = %263
  %273 = load i8*, i8** %23, align 8
  %274 = icmp ne i8* %273, null
  br i1 %274, label %275, label %281

275:                                              ; preds = %272
  %276 = load i8*, i8** %22, align 8
  %277 = load i8*, i8** %23, align 8
  %278 = call i8* @psprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %276, i8* %277)
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 3
  store i8* %278, i8** %280, align 8
  br label %287

281:                                              ; preds = %272, %263
  %282 = load i32*, i32** %14, align 8
  %283 = call i32 @PQresultErrorMessage(i32* %282)
  %284 = call i8* @pg_strdup(i32 %283)
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 3
  store i8* %284, i8** %286, align 8
  br label %287

287:                                              ; preds = %281, %275
  br label %293

288:                                              ; preds = %245
  %289 = load i32*, i32** %14, align 8
  %290 = call i32 @PQresultStatus(i32* %289)
  %291 = call i8* @PQresStatus(i32 %290)
  %292 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i8* %291)
  br label %293

293:                                              ; preds = %288, %287, %249, %248
  %294 = load i32*, i32** %14, align 8
  %295 = call i32 @PQclear(i32* %294)
  br label %241

296:                                              ; preds = %241
  %297 = load i32*, i32** %8, align 8
  %298 = call i32 @PQconsumeInput(i32* %297)
  br label %299

299:                                              ; preds = %345, %296
  %300 = load i32*, i32** %8, align 8
  %301 = call %struct.TYPE_12__* @PQnotifies(i32* %300)
  store %struct.TYPE_12__* %301, %struct.TYPE_12__** %15, align 8
  %302 = icmp ne %struct.TYPE_12__* %301, null
  br i1 %302, label %303, label %369

303:                                              ; preds = %299
  store i8* null, i8** %24, align 8
  store i32 0, i32* %26, align 4
  br label %304

304:                                              ; preds = %332, %303
  %305 = load i32, i32* %26, align 4
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = icmp slt i32 %305, %308
  br i1 %309, label %310, label %335

310:                                              ; preds = %304
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load i64*, i64** @backend_pids, align 8
  %315 = load i32, i32* %26, align 4
  %316 = add nsw i32 %315, 1
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i64, i64* %314, i64 %317
  %319 = load i64, i64* %318, align 8
  %320 = icmp eq i64 %313, %319
  br i1 %320, label %321, label %331

321:                                              ; preds = %310
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 1
  %324 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %323, align 8
  %325 = load i32, i32* %26, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %324, i64 %326
  %328 = load %struct.TYPE_9__*, %struct.TYPE_9__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 0
  %330 = load i8*, i8** %329, align 8
  store i8* %330, i8** %24, align 8
  br label %335

331:                                              ; preds = %310
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %26, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %26, align 4
  br label %304

335:                                              ; preds = %321, %304
  %336 = load i8*, i8** %24, align 8
  %337 = icmp eq i8* %336, null
  br i1 %337, label %338, label %345

338:                                              ; preds = %335
  %339 = getelementptr inbounds [32 x i8], [32 x i8]* %25, i64 0, i64 0
  %340 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = call i32 @snprintf(i8* %339, i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i64 %342)
  %344 = getelementptr inbounds [32 x i8], [32 x i8]* %25, i64 0, i64 0
  store i8* %344, i8** %24, align 8
  br label %345

345:                                              ; preds = %338, %335
  %346 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i32 0, i32 1
  %348 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %347, align 8
  %349 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %348, i64 %352
  %354 = load %struct.TYPE_9__*, %struct.TYPE_9__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 0
  %356 = load i8*, i8** %355, align 8
  %357 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 1
  %359 = load i8*, i8** %358, align 8
  %360 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %361 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %360, i32 0, i32 2
  %362 = load i8*, i8** %361, align 8
  %363 = load i8*, i8** %24, align 8
  %364 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i8* %356, i8* %359, i8* %362, i8* %363)
  %365 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %366 = call i32 @PQfreemem(%struct.TYPE_12__* %365)
  %367 = load i32*, i32** %8, align 8
  %368 = call i32 @PQconsumeInput(i32* %367)
  br label %299

369:                                              ; preds = %299
  store i32 0, i32* %4, align 4
  br label %370

370:                                              ; preds = %369, %149
  %371 = load i32, i32* %4, align 4
  ret i32 %371
}

declare dso_local i32 @PQsocket(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @PQerrorMessage(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i64 @PQisBusy(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32* @PQexecPrepared(i32*, i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @PQresultStatus(i32*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PQconsumeInput(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @PQgetCancel(i32*) #1

declare dso_local i64 @PQcancel(i32*, i8*, i32) #1

declare dso_local i32 @PQfreeCancel(i32*) #1

declare dso_local i32* @PQgetResult(i32*) #1

declare dso_local i32 @printResultSet(i32*) #1

declare dso_local i8* @PQresultErrorField(i32*, i32) #1

declare dso_local i8* @psprintf(i8*, i8*, i8*) #1

declare dso_local i8* @pg_strdup(i32) #1

declare dso_local i32 @PQresultErrorMessage(i32*) #1

declare dso_local i8* @PQresStatus(i32) #1

declare dso_local %struct.TYPE_12__* @PQnotifies(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @PQfreemem(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
