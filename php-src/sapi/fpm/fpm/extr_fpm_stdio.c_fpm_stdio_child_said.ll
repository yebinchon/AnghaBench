; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_stdio.c_fpm_stdio_child_said.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_stdio.c_fpm_stdio_child_said.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_event_s = type { i32 }
%struct.fpm_child_s = type { i32, i32, i64, %struct.TYPE_4__*, %struct.zlog_stream*, %struct.fpm_event_s, %struct.fpm_event_s }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.zlog_stream = type { i32, i32 }

@fpm_stdio_child_said.max_buf_size = internal constant i32 1024, align 4
@ZLOG_WARNING = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@ZLOG_TRUE = common dso_local global i32 0, align 4
@STREAM_SET_MSG_PREFIX_FMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c", pipe is closed\00", align 1
@ZLOG_SYSERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"unable to read what child say\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fpm_event_s*, i16, i8*)* @fpm_stdio_child_said to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpm_stdio_child_said(%struct.fpm_event_s* %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca %struct.fpm_event_s*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1024 x i8], align 16
  %9 = alloca %struct.fpm_child_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fpm_event_s*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.zlog_stream*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store %struct.fpm_event_s* %0, %struct.fpm_event_s** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %22 = load %struct.fpm_event_s*, %struct.fpm_event_s** %4, align 8
  %23 = getelementptr inbounds %struct.fpm_event_s, %struct.fpm_event_s* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  br label %310

28:                                               ; preds = %3
  %29 = load i8*, i8** %6, align 8
  %30 = bitcast i8* %29 to %struct.fpm_child_s*
  store %struct.fpm_child_s* %30, %struct.fpm_child_s** %9, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.fpm_child_s*, %struct.fpm_child_s** %9, align 8
  %33 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %31, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load %struct.fpm_child_s*, %struct.fpm_child_s** %9, align 8
  %41 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %40, i32 0, i32 6
  store %struct.fpm_event_s* %41, %struct.fpm_event_s** %11, align 8
  br label %45

42:                                               ; preds = %28
  %43 = load %struct.fpm_child_s*, %struct.fpm_child_s** %9, align 8
  %44 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %43, i32 0, i32 5
  store %struct.fpm_event_s* %44, %struct.fpm_event_s** %11, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.fpm_child_s*, %struct.fpm_child_s** %9, align 8
  %47 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %46, i32 0, i32 4
  %48 = load %struct.zlog_stream*, %struct.zlog_stream** %47, align 8
  %49 = icmp ne %struct.zlog_stream* %48, null
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %104

54:                                               ; preds = %45
  %55 = call %struct.zlog_stream* @malloc(i32 8)
  %56 = load %struct.fpm_child_s*, %struct.fpm_child_s** %9, align 8
  %57 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %56, i32 0, i32 4
  store %struct.zlog_stream* %55, %struct.zlog_stream** %57, align 8
  store %struct.zlog_stream* %55, %struct.zlog_stream** %19, align 8
  %58 = load %struct.zlog_stream*, %struct.zlog_stream** %19, align 8
  %59 = load i32, i32* @ZLOG_WARNING, align 4
  %60 = load i32, i32* @STDERR_FILENO, align 4
  %61 = call i32 @zlog_stream_init_ex(%struct.zlog_stream* %58, i32 %59, i32 %60)
  %62 = load %struct.zlog_stream*, %struct.zlog_stream** %19, align 8
  %63 = load %struct.fpm_child_s*, %struct.fpm_child_s** %9, align 8
  %64 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @zlog_stream_set_decorating(%struct.zlog_stream* %62, i32 %69)
  %71 = load %struct.zlog_stream*, %struct.zlog_stream** %19, align 8
  %72 = load i32, i32* @ZLOG_TRUE, align 4
  %73 = call i32 @zlog_stream_set_wrapping(%struct.zlog_stream* %71, i32 %72)
  %74 = load %struct.zlog_stream*, %struct.zlog_stream** %19, align 8
  %75 = load i32, i32* @STREAM_SET_MSG_PREFIX_FMT, align 4
  %76 = load %struct.fpm_child_s*, %struct.fpm_child_s** %9, align 8
  %77 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %76, i32 0, i32 3
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.fpm_child_s*, %struct.fpm_child_s** %9, align 8
  %84 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %91 = call i32 @zlog_stream_set_msg_prefix(%struct.zlog_stream* %74, i32 %75, i32 %82, i32 %86, i8* %90)
  %92 = load %struct.zlog_stream*, %struct.zlog_stream** %19, align 8
  %93 = load i32, i32* @ZLOG_TRUE, align 4
  %94 = call i32 @zlog_stream_set_msg_quoting(%struct.zlog_stream* %92, i32 %93)
  %95 = load %struct.zlog_stream*, %struct.zlog_stream** %19, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @zlog_stream_set_is_stdout(%struct.zlog_stream* %95, i32 %96)
  %98 = load %struct.zlog_stream*, %struct.zlog_stream** %19, align 8
  %99 = load %struct.fpm_child_s*, %struct.fpm_child_s** %9, align 8
  %100 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i32 @zlog_stream_set_child_pid(%struct.zlog_stream* %98, i32 %102)
  br label %153

104:                                              ; preds = %45
  %105 = load %struct.fpm_child_s*, %struct.fpm_child_s** %9, align 8
  %106 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %105, i32 0, i32 4
  %107 = load %struct.zlog_stream*, %struct.zlog_stream** %106, align 8
  store %struct.zlog_stream* %107, %struct.zlog_stream** %19, align 8
  %108 = load %struct.zlog_stream*, %struct.zlog_stream** %19, align 8
  %109 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %122, label %113

113:                                              ; preds = %104
  %114 = load %struct.zlog_stream*, %struct.zlog_stream** %19, align 8
  %115 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.fpm_child_s*, %struct.fpm_child_s** %9, align 8
  %118 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = icmp ne i32 %116, %120
  br i1 %121, label %122, label %152

122:                                              ; preds = %113, %104
  %123 = load %struct.zlog_stream*, %struct.zlog_stream** %19, align 8
  %124 = call i32 @zlog_stream_finish(%struct.zlog_stream* %123)
  %125 = load %struct.zlog_stream*, %struct.zlog_stream** %19, align 8
  %126 = load i32, i32* @STREAM_SET_MSG_PREFIX_FMT, align 4
  %127 = load %struct.fpm_child_s*, %struct.fpm_child_s** %9, align 8
  %128 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %127, i32 0, i32 3
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.fpm_child_s*, %struct.fpm_child_s** %9, align 8
  %135 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %142 = call i32 @zlog_stream_set_msg_prefix(%struct.zlog_stream* %125, i32 %126, i32 %133, i32 %137, i8* %141)
  %143 = load %struct.zlog_stream*, %struct.zlog_stream** %19, align 8
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @zlog_stream_set_is_stdout(%struct.zlog_stream* %143, i32 %144)
  %146 = load %struct.zlog_stream*, %struct.zlog_stream** %19, align 8
  %147 = load %struct.fpm_child_s*, %struct.fpm_child_s** %9, align 8
  %148 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = trunc i64 %149 to i32
  %151 = call i32 @zlog_stream_set_child_pid(%struct.zlog_stream* %146, i32 %150)
  br label %152

152:                                              ; preds = %122, %113
  br label %153

153:                                              ; preds = %152, %54
  br label %154

154:                                              ; preds = %265, %153
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %158, 0
  br label %160

160:                                              ; preds = %157, %154
  %161 = phi i1 [ true, %154 ], [ %159, %157 ]
  br i1 %161, label %162, label %266

162:                                              ; preds = %160
  %163 = load i32, i32* %12, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %211

165:                                              ; preds = %162
  %166 = load i32, i32* %7, align 4
  %167 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = load i32, i32* %14, align 4
  %172 = sub nsw i32 1023, %171
  %173 = call i32 @read(i32 %166, i8* %170, i32 %172)
  store i32 %173, i32* %18, align 4
  %174 = load i32, i32* %18, align 4
  %175 = icmp sle i32 %174, 0
  br i1 %175, label %176, label %196

176:                                              ; preds = %165
  store i32 0, i32* %12, align 4
  %177 = load i32, i32* %18, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %187, label %179

179:                                              ; preds = %176
  %180 = load i64, i64* @errno, align 8
  %181 = load i64, i64* @EAGAIN, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %195

183:                                              ; preds = %179
  %184 = load i64, i64* @errno, align 8
  %185 = load i64, i64* @EWOULDBLOCK, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %195

187:                                              ; preds = %183, %176
  %188 = load i32, i32* %18, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %187
  %191 = load i32, i32* %18, align 4
  br label %193

192:                                              ; preds = %187
  br label %193

193:                                              ; preds = %192, %190
  %194 = phi i32 [ %191, %190 ], [ 1, %192 ]
  store i32 %194, i32* %15, align 4
  br label %195

195:                                              ; preds = %193, %183, %179
  br label %210

196:                                              ; preds = %165
  %197 = load i32, i32* %18, align 4
  %198 = load i32, i32* %14, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* %14, align 4
  %200 = load i32, i32* %14, align 4
  %201 = sub nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = icmp ne i8 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %196
  store i32 1, i32* %16, align 4
  %207 = load i32, i32* %14, align 4
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %14, align 4
  br label %209

209:                                              ; preds = %206, %196
  br label %210

210:                                              ; preds = %209, %195
  br label %211

211:                                              ; preds = %210, %162
  %212 = load i32, i32* %13, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %265

214:                                              ; preds = %211
  %215 = load i32, i32* %14, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %214
  store i32 0, i32* %13, align 4
  br label %264

218:                                              ; preds = %214
  %219 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %220 = load i32, i32* %14, align 4
  %221 = call i8* @memchr(i8* %219, i8 signext 10, i32 %220)
  store i8* %221, i8** %20, align 8
  %222 = load i8*, i8** %20, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %224, label %251

224:                                              ; preds = %218
  %225 = load i8*, i8** %20, align 8
  %226 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %227 = ptrtoint i8* %225 to i64
  %228 = ptrtoint i8* %226 to i64
  %229 = sub i64 %227, %228
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %21, align 4
  %231 = load %struct.zlog_stream*, %struct.zlog_stream** %19, align 8
  %232 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %233 = load i32, i32* %21, align 4
  %234 = call i32 @zlog_stream_str(%struct.zlog_stream* %231, i8* %232, i32 %233)
  %235 = load %struct.zlog_stream*, %struct.zlog_stream** %19, align 8
  %236 = call i32 @zlog_stream_finish(%struct.zlog_stream* %235)
  %237 = load i32, i32* %21, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %21, align 4
  %239 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %240 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %241 = load i32, i32* %21, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* %240, i64 %242
  %244 = load i32, i32* %14, align 4
  %245 = load i32, i32* %21, align 4
  %246 = sub nsw i32 %244, %245
  %247 = call i32 @memmove(i8* %239, i8* %243, i32 %246)
  %248 = load i32, i32* %21, align 4
  %249 = load i32, i32* %14, align 4
  %250 = sub nsw i32 %249, %248
  store i32 %250, i32* %14, align 4
  br label %263

251:                                              ; preds = %218
  %252 = load i32, i32* %14, align 4
  %253 = icmp eq i32 %252, 1023
  br i1 %253, label %257, label %254

254:                                              ; preds = %251
  %255 = load i32, i32* %12, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %262, label %257

257:                                              ; preds = %254, %251
  %258 = load %struct.zlog_stream*, %struct.zlog_stream** %19, align 8
  %259 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %260 = load i32, i32* %14, align 4
  %261 = call i32 @zlog_stream_str(%struct.zlog_stream* %258, i8* %259, i32 %260)
  store i32 0, i32* %14, align 4
  br label %262

262:                                              ; preds = %257, %254
  br label %263

263:                                              ; preds = %262, %224
  br label %264

264:                                              ; preds = %263, %217
  br label %265

265:                                              ; preds = %264, %211
  br label %154

266:                                              ; preds = %160
  %267 = load i32, i32* %15, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %303

269:                                              ; preds = %266
  %270 = load i32, i32* %17, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %269
  %273 = load %struct.zlog_stream*, %struct.zlog_stream** %19, align 8
  %274 = call i32 @zlog_stream_set_msg_suffix(%struct.zlog_stream* %273, i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %275 = load %struct.zlog_stream*, %struct.zlog_stream** %19, align 8
  %276 = call i32 @zlog_stream_finish(%struct.zlog_stream* %275)
  br label %277

277:                                              ; preds = %272, %269
  %278 = load i32, i32* %15, align 4
  %279 = icmp slt i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %277
  %281 = load i32, i32* @ZLOG_SYSERROR, align 4
  %282 = call i32 @zlog(i32 %281, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %283

283:                                              ; preds = %280, %277
  %284 = load %struct.fpm_event_s*, %struct.fpm_event_s** %11, align 8
  %285 = call i32 @fpm_event_del(%struct.fpm_event_s* %284)
  %286 = load i32, i32* %10, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %295

288:                                              ; preds = %283
  %289 = load %struct.fpm_child_s*, %struct.fpm_child_s** %9, align 8
  %290 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @close(i32 %291)
  %293 = load %struct.fpm_child_s*, %struct.fpm_child_s** %9, align 8
  %294 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %293, i32 0, i32 0
  store i32 -1, i32* %294, align 8
  br label %302

295:                                              ; preds = %283
  %296 = load %struct.fpm_child_s*, %struct.fpm_child_s** %9, align 8
  %297 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @close(i32 %298)
  %300 = load %struct.fpm_child_s*, %struct.fpm_child_s** %9, align 8
  %301 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %300, i32 0, i32 1
  store i32 -1, i32* %301, align 4
  br label %302

302:                                              ; preds = %295, %288
  br label %310

303:                                              ; preds = %266
  %304 = load i32, i32* %16, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %303
  %307 = load %struct.zlog_stream*, %struct.zlog_stream** %19, align 8
  %308 = call i32 @zlog_stream_finish(%struct.zlog_stream* %307)
  br label %309

309:                                              ; preds = %306, %303
  br label %310

310:                                              ; preds = %27, %309, %302
  ret void
}

declare dso_local %struct.zlog_stream* @malloc(i32) #1

declare dso_local i32 @zlog_stream_init_ex(%struct.zlog_stream*, i32, i32) #1

declare dso_local i32 @zlog_stream_set_decorating(%struct.zlog_stream*, i32) #1

declare dso_local i32 @zlog_stream_set_wrapping(%struct.zlog_stream*, i32) #1

declare dso_local i32 @zlog_stream_set_msg_prefix(%struct.zlog_stream*, i32, i32, i32, i8*) #1

declare dso_local i32 @zlog_stream_set_msg_quoting(%struct.zlog_stream*, i32) #1

declare dso_local i32 @zlog_stream_set_is_stdout(%struct.zlog_stream*, i32) #1

declare dso_local i32 @zlog_stream_set_child_pid(%struct.zlog_stream*, i32) #1

declare dso_local i32 @zlog_stream_finish(%struct.zlog_stream*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @zlog_stream_str(%struct.zlog_stream*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @zlog_stream_set_msg_suffix(%struct.zlog_stream*, i32*, i8*) #1

declare dso_local i32 @zlog(i32, i8*) #1

declare dso_local i32 @fpm_event_del(%struct.fpm_event_s*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
