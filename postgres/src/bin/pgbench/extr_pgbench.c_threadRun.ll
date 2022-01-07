; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_threadRun.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_threadRun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32*, i32, i32, i8*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32, i32* }

@progress = common dso_local global i64 0, align 8
@use_log = common dso_local global i64 0, align 8
@MAXPGPATH = common dso_local global i32 0, align 4
@logfile_prefix = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"pgbench_log\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@main_pid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%s.%d.%d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"could not open logfile \22%s\22: %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@is_connect = common dso_local global i32 0, align 4
@CSTATE_CHOOSE_SCRIPT = common dso_local global i64 0, align 8
@PG_INT64_MAX = common dso_local global i32 0, align 4
@CSTATE_SLEEP = common dso_local global i64 0, align 8
@CSTATE_THROTTLE = common dso_local global i64 0, align 8
@CSTATE_WAIT_RESULT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"invalid socket: %s\00", align 1
@CSTATE_ABORTED = common dso_local global i64 0, align 8
@CSTATE_FINISHED = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"%s() failed: %s\0A\00", align 1
@SOCKET_WAIT_METHOD = common dso_local global i8* null, align 8
@agg_interval = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @threadRun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @threadRun(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_10__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_10__*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %33 = load i8*, i8** %2, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %3, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 6
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %4, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32* @alloc_socket_set(i32 %42)
  store i32* %43, i32** %9, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @INSTR_TIME_GET_MICROSEC(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i64, i64* @progress, align 8
  %52 = trunc i64 %51 to i32
  %53 = mul nsw i32 %52, 1000000
  %54 = add nsw i32 %50, %53
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @INSTR_TIME_SET_CURRENT(i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = call i8* @INSTR_TIME_GET_MICROSEC(i32 %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @INSTR_TIME_SET_ZERO(i32 %63)
  %65 = call i32 @time(i32* null)
  %66 = call i32 @initStats(i32* %15, i32 %65)
  %67 = load i32, i32* %15, align 4
  store i32 %67, i32* %14, align 4
  %68 = load i64, i64* @use_log, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %117

70:                                               ; preds = %1
  %71 = load i32, i32* @MAXPGPATH, align 4
  %72 = zext i32 %71 to i64
  %73 = call i8* @llvm.stacksave()
  store i8* %73, i8** %16, align 8
  %74 = alloca i8, i64 %72, align 16
  store i64 %72, i64* %17, align 8
  %75 = load i8*, i8** @logfile_prefix, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i8*, i8** @logfile_prefix, align 8
  br label %80

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %77
  %81 = phi i8* [ %78, %77 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %79 ]
  store i8* %81, i8** %18, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = trunc i64 %72 to i32
  %88 = load i8*, i8** %18, align 8
  %89 = load i32, i32* @main_pid, align 4
  %90 = call i32 (i8*, i32, i8*, i8*, i32, ...) @snprintf(i8* %74, i32 %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %88, i32 %89)
  br label %99

91:                                               ; preds = %80
  %92 = trunc i64 %72 to i32
  %93 = load i8*, i8** %18, align 8
  %94 = load i32, i32* @main_pid, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (i8*, i32, i8*, i8*, i32, ...) @snprintf(i8* %74, i32 %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %93, i32 %94, i64 %97)
  br label %99

99:                                               ; preds = %91, %86
  %100 = call i32* @fopen(i8* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  store i32* %100, i32** %102, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %99
  %108 = load i32, i32* @stderr, align 4
  %109 = load i64, i64* @errno, align 8
  %110 = call i8* @strerror(i64 %109)
  %111 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %74, i8* %110)
  store i32 2, i32* %19, align 4
  br label %113

112:                                              ; preds = %99
  store i32 0, i32* %19, align 4
  br label %113

113:                                              ; preds = %107, %112
  %114 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %19, align 4
  switch i32 %115, label %492 [
    i32 0, label %116
    i32 2, label %457
  ]

116:                                              ; preds = %113
  br label %117

117:                                              ; preds = %116, %1
  %118 = load i32, i32* @is_connect, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %139, label %120

120:                                              ; preds = %117
  store i32 0, i32* %10, align 4
  br label %121

121:                                              ; preds = %135, %120
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %138

125:                                              ; preds = %121
  %126 = call i32* (...) @doConnect()
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 3
  store i32* %126, i32** %131, align 8
  %132 = icmp eq i32* %126, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  br label %457

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %121

138:                                              ; preds = %121
  br label %139

139:                                              ; preds = %138, %117
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @INSTR_TIME_SET_CURRENT(i32 %142)
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @INSTR_TIME_SUBTRACT(i32 %146, i32 %149)
  store i32 0, i32* %10, align 4
  br label %151

151:                                              ; preds = %162, %139
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %165

155:                                              ; preds = %151
  %156 = load i64, i64* @CSTATE_CHOOSE_SCRIPT, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  store i64 %156, i64* %161, align 8
  br label %162

162:                                              ; preds = %155
  %163 = load i32, i32* %10, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %10, align 4
  br label %151

165:                                              ; preds = %151
  br label %166

166:                                              ; preds = %455, %336, %165
  %167 = load i32, i32* %8, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %456

169:                                              ; preds = %166
  store i32 0, i32* %22, align 4
  %170 = load i32*, i32** %9, align 8
  %171 = call i32 @clear_socket_set(i32* %170)
  store i32 0, i32* %20, align 4
  %172 = load i32, i32* @PG_INT64_MAX, align 4
  store i32 %172, i32* %21, align 4
  store i32 0, i32* %10, align 4
  br label %173

173:                                              ; preds = %268, %169
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %271

177:                                              ; preds = %173
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i64 %180
  store %struct.TYPE_10__* %181, %struct.TYPE_10__** %23, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @CSTATE_SLEEP, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %193, label %187

187:                                              ; preds = %177
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @CSTATE_THROTTLE, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %226

193:                                              ; preds = %187, %177
  %194 = load i32, i32* %22, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %193
  %197 = load i32, i32* %25, align 4
  %198 = call i32 @INSTR_TIME_SET_CURRENT(i32 %197)
  %199 = load i32, i32* %25, align 4
  %200 = call i8* @INSTR_TIME_GET_MICROSEC(i32 %199)
  %201 = ptrtoint i8* %200 to i32
  store i32 %201, i32* %22, align 4
  br label %202

202:                                              ; preds = %196, %193
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @CSTATE_SLEEP, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %202
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  br label %216

212:                                              ; preds = %202
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  br label %216

216:                                              ; preds = %212, %208
  %217 = phi i32 [ %211, %208 ], [ %215, %212 ]
  %218 = load i32, i32* %22, align 4
  %219 = sub nsw i32 %217, %218
  store i32 %219, i32* %24, align 4
  %220 = load i32, i32* %21, align 4
  %221 = load i32, i32* %24, align 4
  %222 = icmp sgt i32 %220, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %216
  %224 = load i32, i32* %24, align 4
  store i32 %224, i32* %21, align 4
  br label %225

225:                                              ; preds = %223, %216
  br label %267

226:                                              ; preds = %187
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @CSTATE_WAIT_RESULT, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %252

232:                                              ; preds = %226
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 3
  %235 = load i32*, i32** %234, align 8
  %236 = call i32 @PQsocket(i32* %235)
  store i32 %236, i32* %26, align 4
  %237 = load i32, i32* %26, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %232
  %240 = load i32, i32* @stderr, align 4
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 3
  %243 = load i32*, i32** %242, align 8
  %244 = call i8* @PQerrorMessage(i32* %243)
  %245 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %240, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %244)
  br label %457

246:                                              ; preds = %232
  %247 = load i32*, i32** %9, align 8
  %248 = load i32, i32* %26, align 4
  %249 = load i32, i32* %20, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %20, align 4
  %251 = call i32 @add_socket_to_set(i32* %247, i32 %248, i32 %249)
  br label %266

252:                                              ; preds = %226
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @CSTATE_ABORTED, align 8
  %257 = icmp ne i64 %255, %256
  br i1 %257, label %258, label %265

258:                                              ; preds = %252
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @CSTATE_FINISHED, align 8
  %263 = icmp ne i64 %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %258
  store i32 0, i32* %21, align 4
  br label %271

265:                                              ; preds = %258, %252
  br label %266

266:                                              ; preds = %265, %246
  br label %267

267:                                              ; preds = %266, %225
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %10, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %10, align 4
  br label %173

271:                                              ; preds = %264, %173
  %272 = load i64, i64* @progress, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %308

274:                                              ; preds = %271
  %275 = load i32, i32* %21, align 4
  %276 = icmp sgt i32 %275, 0
  br i1 %276, label %277, label %308

277:                                              ; preds = %274
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %308

282:                                              ; preds = %277
  %283 = load i32, i32* %22, align 4
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %291

285:                                              ; preds = %282
  %286 = load i32, i32* %27, align 4
  %287 = call i32 @INSTR_TIME_SET_CURRENT(i32 %286)
  %288 = load i32, i32* %27, align 4
  %289 = call i8* @INSTR_TIME_GET_MICROSEC(i32 %288)
  %290 = ptrtoint i8* %289 to i32
  store i32 %290, i32* %22, align 4
  br label %291

291:                                              ; preds = %285, %282
  %292 = load i32, i32* %22, align 4
  %293 = load i32, i32* %13, align 4
  %294 = icmp sge i32 %292, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %291
  store i32 0, i32* %21, align 4
  br label %307

296:                                              ; preds = %291
  %297 = load i32, i32* %13, align 4
  %298 = load i32, i32* %22, align 4
  %299 = sub nsw i32 %297, %298
  %300 = load i32, i32* %21, align 4
  %301 = icmp slt i32 %299, %300
  br i1 %301, label %302, label %306

302:                                              ; preds = %296
  %303 = load i32, i32* %13, align 4
  %304 = load i32, i32* %22, align 4
  %305 = sub nsw i32 %303, %304
  store i32 %305, i32* %21, align 4
  br label %306

306:                                              ; preds = %302, %296
  br label %307

307:                                              ; preds = %306, %295
  br label %308

308:                                              ; preds = %307, %277, %274, %271
  %309 = load i32, i32* %21, align 4
  %310 = icmp sgt i32 %309, 0
  br i1 %310, label %311, label %344

311:                                              ; preds = %308
  store i32 0, i32* %28, align 4
  %312 = load i32, i32* %21, align 4
  %313 = load i32, i32* @PG_INT64_MAX, align 4
  %314 = icmp ne i32 %312, %313
  br i1 %314, label %315, label %326

315:                                              ; preds = %311
  %316 = load i32, i32* %20, align 4
  %317 = icmp sgt i32 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %315
  %319 = load i32*, i32** %9, align 8
  %320 = load i32, i32* %21, align 4
  %321 = call i32 @wait_on_socket_set(i32* %319, i32 %320)
  store i32 %321, i32* %28, align 4
  br label %325

322:                                              ; preds = %315
  %323 = load i32, i32* %21, align 4
  %324 = call i32 @pg_usleep(i32 %323)
  br label %325

325:                                              ; preds = %322, %318
  br label %329

326:                                              ; preds = %311
  %327 = load i32*, i32** %9, align 8
  %328 = call i32 @wait_on_socket_set(i32* %327, i32 0)
  store i32 %328, i32* %28, align 4
  br label %329

329:                                              ; preds = %326, %325
  %330 = load i32, i32* %28, align 4
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %332, label %343

332:                                              ; preds = %329
  %333 = load i64, i64* @errno, align 8
  %334 = load i64, i64* @EINTR, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %332
  br label %166

337:                                              ; preds = %332
  %338 = load i32, i32* @stderr, align 4
  %339 = load i8*, i8** @SOCKET_WAIT_METHOD, align 8
  %340 = load i64, i64* @errno, align 8
  %341 = call i8* @strerror(i64 %340)
  %342 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %338, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %339, i8* %341)
  br label %457

343:                                              ; preds = %329
  br label %347

344:                                              ; preds = %308
  %345 = load i32*, i32** %9, align 8
  %346 = call i32 @clear_socket_set(i32* %345)
  br label %347

347:                                              ; preds = %344, %343
  store i32 0, i32* %20, align 4
  store i32 0, i32* %10, align 4
  br label %348

348:                                              ; preds = %418, %347
  %349 = load i32, i32* %10, align 4
  %350 = load i32, i32* %7, align 4
  %351 = icmp slt i32 %349, %350
  br i1 %351, label %352, label %421

352:                                              ; preds = %348
  %353 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %354 = load i32, i32* %10, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i64 %355
  store %struct.TYPE_10__* %356, %struct.TYPE_10__** %29, align 8
  %357 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @CSTATE_WAIT_RESULT, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %385

362:                                              ; preds = %352
  %363 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %364 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i32 0, i32 3
  %365 = load i32*, i32** %364, align 8
  %366 = call i32 @PQsocket(i32* %365)
  store i32 %366, i32* %30, align 4
  %367 = load i32, i32* %30, align 4
  %368 = icmp slt i32 %367, 0
  br i1 %368, label %369, label %376

369:                                              ; preds = %362
  %370 = load i32, i32* @stderr, align 4
  %371 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %372 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %371, i32 0, i32 3
  %373 = load i32*, i32** %372, align 8
  %374 = call i8* @PQerrorMessage(i32* %373)
  %375 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %370, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %374)
  br label %457

376:                                              ; preds = %362
  %377 = load i32*, i32** %9, align 8
  %378 = load i32, i32* %30, align 4
  %379 = load i32, i32* %20, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %20, align 4
  %381 = call i32 @socket_has_input(i32* %377, i32 %378, i32 %379)
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %384, label %383

383:                                              ; preds = %376
  br label %418

384:                                              ; preds = %376
  br label %399

385:                                              ; preds = %352
  %386 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %387 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %386, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = load i64, i64* @CSTATE_FINISHED, align 8
  %390 = icmp eq i64 %388, %389
  br i1 %390, label %397, label %391

391:                                              ; preds = %385
  %392 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %393 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = load i64, i64* @CSTATE_ABORTED, align 8
  %396 = icmp eq i64 %394, %395
  br i1 %396, label %397, label %398

397:                                              ; preds = %391, %385
  br label %418

398:                                              ; preds = %391
  br label %399

399:                                              ; preds = %398, %384
  %400 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %401 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %402 = call i32 @advanceConnectionState(%struct.TYPE_9__* %400, %struct.TYPE_10__* %401, i32* %15)
  %403 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %404 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = load i64, i64* @CSTATE_FINISHED, align 8
  %407 = icmp eq i64 %405, %406
  br i1 %407, label %414, label %408

408:                                              ; preds = %399
  %409 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %410 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %409, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = load i64, i64* @CSTATE_ABORTED, align 8
  %413 = icmp eq i64 %411, %412
  br i1 %413, label %414, label %417

414:                                              ; preds = %408, %399
  %415 = load i32, i32* %8, align 4
  %416 = add nsw i32 %415, -1
  store i32 %416, i32* %8, align 4
  br label %417

417:                                              ; preds = %414, %408
  br label %418

418:                                              ; preds = %417, %397, %383
  %419 = load i32, i32* %10, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %10, align 4
  br label %348

421:                                              ; preds = %348
  %422 = load i64, i64* @progress, align 8
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %455

424:                                              ; preds = %421
  %425 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %426 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i32 0, i32 1
  %427 = load i64, i64* %426, align 8
  %428 = icmp eq i64 %427, 0
  br i1 %428, label %429, label %455

429:                                              ; preds = %424
  %430 = load i32, i32* %31, align 4
  %431 = call i32 @INSTR_TIME_SET_CURRENT(i32 %430)
  %432 = load i32, i32* %31, align 4
  %433 = call i8* @INSTR_TIME_GET_MICROSEC(i32 %432)
  %434 = ptrtoint i8* %433 to i32
  store i32 %434, i32* %32, align 4
  %435 = load i32, i32* %32, align 4
  %436 = load i32, i32* %13, align 4
  %437 = icmp sge i32 %435, %436
  br i1 %437, label %438, label %454

438:                                              ; preds = %429
  %439 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %440 = load i32, i32* %11, align 4
  %441 = load i32, i32* %32, align 4
  %442 = call i32 @printProgressReport(%struct.TYPE_9__* %439, i32 %440, i32 %441, i32* %14, i32* %12)
  br label %443

443:                                              ; preds = %449, %438
  %444 = load i64, i64* @progress, align 8
  %445 = trunc i64 %444 to i32
  %446 = mul nsw i32 %445, 1000000
  %447 = load i32, i32* %13, align 4
  %448 = add nsw i32 %447, %446
  store i32 %448, i32* %13, align 4
  br label %449

449:                                              ; preds = %443
  %450 = load i32, i32* %32, align 4
  %451 = load i32, i32* %13, align 4
  %452 = icmp sge i32 %450, %451
  br i1 %452, label %443, label %453

453:                                              ; preds = %449
  br label %454

454:                                              ; preds = %453, %429
  br label %455

455:                                              ; preds = %454, %424, %421
  br label %166

456:                                              ; preds = %166
  br label %457

457:                                              ; preds = %456, %369, %337, %239, %133, %113
  %458 = load i32, i32* %5, align 4
  %459 = call i32 @INSTR_TIME_SET_CURRENT(i32 %458)
  %460 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %461 = load i32, i32* %7, align 4
  %462 = call i32 @disconnect_all(%struct.TYPE_10__* %460, i32 %461)
  %463 = load i32, i32* %6, align 4
  %464 = call i32 @INSTR_TIME_SET_CURRENT(i32 %463)
  %465 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %466 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %465, i32 0, i32 3
  %467 = load i32, i32* %466, align 8
  %468 = load i32, i32* %6, align 4
  %469 = load i32, i32* %5, align 4
  %470 = call i32 @INSTR_TIME_ACCUM_DIFF(i32 %467, i32 %468, i32 %469)
  %471 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %472 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %471, i32 0, i32 2
  %473 = load i32*, i32** %472, align 8
  %474 = icmp ne i32* %473, null
  br i1 %474, label %475, label %489

475:                                              ; preds = %457
  %476 = load i64, i64* @agg_interval, align 8
  %477 = icmp sgt i64 %476, 0
  br i1 %477, label %478, label %482

478:                                              ; preds = %475
  %479 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %480 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %481 = call i32 @doLog(%struct.TYPE_9__* %479, %struct.TYPE_10__* %480, i32* %15, i32 0, i32 0, i32 0)
  br label %482

482:                                              ; preds = %478, %475
  %483 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %484 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %483, i32 0, i32 2
  %485 = load i32*, i32** %484, align 8
  %486 = call i32 @fclose(i32* %485)
  %487 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %488 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %487, i32 0, i32 2
  store i32* null, i32** %488, align 8
  br label %489

489:                                              ; preds = %482, %457
  %490 = load i32*, i32** %9, align 8
  %491 = call i32 @free_socket_set(i32* %490)
  ret i8* null

492:                                              ; preds = %113
  unreachable
}

declare dso_local i32* @alloc_socket_set(i32) #1

declare dso_local i8* @INSTR_TIME_GET_MICROSEC(i32) #1

declare dso_local i32 @INSTR_TIME_SET_CURRENT(i32) #1

declare dso_local i32 @INSTR_TIME_SET_ZERO(i32) #1

declare dso_local i32 @initStats(i32*, i32) #1

declare dso_local i32 @time(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @strerror(i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @doConnect(...) #1

declare dso_local i32 @INSTR_TIME_SUBTRACT(i32, i32) #1

declare dso_local i32 @clear_socket_set(i32*) #1

declare dso_local i32 @PQsocket(i32*) #1

declare dso_local i8* @PQerrorMessage(i32*) #1

declare dso_local i32 @add_socket_to_set(i32*, i32, i32) #1

declare dso_local i32 @wait_on_socket_set(i32*, i32) #1

declare dso_local i32 @pg_usleep(i32) #1

declare dso_local i32 @socket_has_input(i32*, i32, i32) #1

declare dso_local i32 @advanceConnectionState(%struct.TYPE_9__*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @printProgressReport(%struct.TYPE_9__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @disconnect_all(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @INSTR_TIME_ACCUM_DIFF(i32, i32, i32) #1

declare dso_local i32 @doLog(%struct.TYPE_9__*, %struct.TYPE_10__*, i32*, i32, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free_socket_set(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
