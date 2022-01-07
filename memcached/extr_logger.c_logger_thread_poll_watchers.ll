; ModuleID = '/home/carl/AnghaBench/memcached/extr_logger.c_logger_thread_poll_watchers.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_logger.c_logger_thread_poll_watchers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 (i64, i8*, i32)*, i32 (i64, i8*, i32)* }

@WATCHER_LIMIT = common dso_local global i32 0, align 4
@watchers = common dso_local global %struct.TYPE_7__** null, align 8
@WATCHER_ALL = common dso_local global i32 0, align 4
@watchers_pollfds = common dso_local global %struct.TYPE_9__* null, align 8
@POLLOUT = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"something failed with logger thread watcher fd polling\00", align 1
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"LOGGER: watcher closed remotely\0A\00", align 1
@POLLHUP = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"LOGGER: watcher closed during poll() call\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"LOGGER: poll() wrote %d to %d (data_size: %d) (bipbuf_used: %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"LOGGER: watcher hit EAGAIN\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @logger_thread_poll_watchers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @logger_thread_poll_watchers(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca [1 x i8], align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %86, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @WATCHER_LIMIT, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %89

21:                                               ; preds = %17
  %22 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @watchers, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %22, i64 %24
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %11, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %28 = icmp eq %struct.TYPE_7__* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @WATCHER_ALL, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %21
  br label %86

38:                                               ; preds = %33, %29
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @bipbuf_peek_all(i32 %41, i32* %9)
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %62

45:                                               ; preds = %38
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** @watchers_pollfds, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* @POLLOUT, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @watchers_pollfds, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i32 %54, i32* %59, align 4
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %83

62:                                               ; preds = %38
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %62
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** @watchers_pollfds, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  store i32 %68, i32* %73, align 4
  %74 = load i32, i32* @POLLIN, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** @watchers_pollfds, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i32 %74, i32* %79, align 4
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %65, %62
  br label %83

83:                                               ; preds = %82, %45
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  br label %86

86:                                               ; preds = %83, %37
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %17

89:                                               ; preds = %17
  %90 = load i32, i32* %7, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 0, i32* %3, align 4
  br label %264

93:                                               ; preds = %89
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** @watchers_pollfds, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @poll(%struct.TYPE_9__* %94, i32 %95, i32 0)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = call i32 @perror(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %264

101:                                              ; preds = %93
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %102

102:                                              ; preds = %259, %101
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @WATCHER_LIMIT, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %262

106:                                              ; preds = %102
  %107 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @watchers, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %107, i64 %109
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  store %struct.TYPE_7__* %111, %struct.TYPE_7__** %13, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %113 = icmp eq %struct.TYPE_7__* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %259

115:                                              ; preds = %106
  store i32 0, i32* %9, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** @watchers_pollfds, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @POLLIN, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %157

125:                                              ; preds = %115
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to %struct.TYPE_8__*
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32 (i64, i8*, i32)*, i32 (i64, i8*, i32)** %130, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds [1 x i8], [1 x i8]* %14, i64 0, i64 0
  %136 = call i32 %131(i64 %134, i8* %135, i32 1)
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %150, label %139

139:                                              ; preds = %125
  %140 = load i32, i32* %15, align 4
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %156

142:                                              ; preds = %139
  %143 = load i64, i64* @errno, align 8
  %144 = load i64, i64* @EAGAIN, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %156

146:                                              ; preds = %142
  %147 = load i64, i64* @errno, align 8
  %148 = load i64, i64* @EWOULDBLOCK, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %146, %125
  %151 = call i32 (i8*, ...) @L_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %153 = call i32 @logger_thread_close_watcher(%struct.TYPE_7__* %152)
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %7, align 4
  br label %259

156:                                              ; preds = %146, %142, %139
  br label %157

157:                                              ; preds = %156, %115
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i8* @bipbuf_peek_all(i32 %160, i32* %9)
  store i8* %161, i8** %8, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %256

163:                                              ; preds = %157
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** @watchers_pollfds, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @POLLHUP, align 4
  %171 = load i32, i32* @POLLERR, align 4
  %172 = or i32 %170, %171
  %173 = and i32 %169, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %163
  %176 = call i32 (i8*, ...) @L_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %178 = call i32 @logger_thread_close_watcher(%struct.TYPE_7__* %177)
  br label %255

179:                                              ; preds = %163
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** @watchers_pollfds, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @POLLOUT, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %254

189:                                              ; preds = %179
  store i32 0, i32* %16, align 4
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  switch i32 %192, label %211 [
    i32 128, label %193
    i32 129, label %198
  ]

193:                                              ; preds = %189
  %194 = load i8*, i8** %8, align 8
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* @stderr, align 4
  %197 = call i32 @fwrite(i8* %194, i32 1, i32 %195, i32 %196)
  store i32 %197, i32* %16, align 4
  br label %211

198:                                              ; preds = %189
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = inttoptr i64 %201 to %struct.TYPE_8__*
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 1
  %204 = load i32 (i64, i8*, i32)*, i32 (i64, i8*, i32)** %203, align 8
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = load i8*, i8** %8, align 8
  %209 = load i32, i32* %9, align 4
  %210 = call i32 %204(i64 %207, i8* %208, i32 %209)
  store i32 %210, i32* %16, align 4
  br label %211

211:                                              ; preds = %189, %198, %193
  %212 = load i32, i32* %16, align 4
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %9, align 4
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @bipbuf_used(i32 %219)
  %221 = call i32 (i8*, ...) @L_DEBUG(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %212, i32 %215, i32 %216, i32 %220)
  %222 = load i32, i32* %16, align 4
  %223 = icmp eq i32 %222, -1
  br i1 %223, label %224, label %237

224:                                              ; preds = %211
  %225 = load i64, i64* @errno, align 8
  %226 = load i64, i64* @EAGAIN, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %228, label %235

228:                                              ; preds = %224
  %229 = load i64, i64* @errno, align 8
  %230 = load i64, i64* @EWOULDBLOCK, align 8
  %231 = icmp ne i64 %229, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %228
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %234 = call i32 @logger_thread_close_watcher(%struct.TYPE_7__* %233)
  br label %235

235:                                              ; preds = %232, %228, %224
  %236 = call i32 (i8*, ...) @L_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %253

237:                                              ; preds = %211
  %238 = load i32, i32* %16, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %242 = call i32 @logger_thread_close_watcher(%struct.TYPE_7__* %241)
  br label %252

243:                                              ; preds = %237
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* %16, align 4
  %248 = call i32 @bipbuf_poll(i32 %246, i32 %247)
  %249 = load i32, i32* %16, align 4
  %250 = load i32, i32* %10, align 4
  %251 = add nsw i32 %250, %249
  store i32 %251, i32* %10, align 4
  br label %252

252:                                              ; preds = %243, %240
  br label %253

253:                                              ; preds = %252, %235
  br label %254

254:                                              ; preds = %253, %179
  br label %255

255:                                              ; preds = %254, %175
  br label %256

256:                                              ; preds = %255, %157
  %257 = load i32, i32* %7, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %7, align 4
  br label %259

259:                                              ; preds = %256, %150, %114
  %260 = load i32, i32* %6, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %6, align 4
  br label %102

262:                                              ; preds = %102
  %263 = load i32, i32* %10, align 4
  store i32 %263, i32* %3, align 4
  br label %264

264:                                              ; preds = %262, %99, %92
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local i8* @bipbuf_peek_all(i32, i32*) #1

declare dso_local i32 @poll(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @L_DEBUG(i8*, ...) #1

declare dso_local i32 @logger_thread_close_watcher(%struct.TYPE_7__*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i32 @bipbuf_used(i32) #1

declare dso_local i32 @bipbuf_poll(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
