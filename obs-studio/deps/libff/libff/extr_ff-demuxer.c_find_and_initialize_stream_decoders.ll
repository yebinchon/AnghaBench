; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_find_and_initialize_stream_decoders.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_find_and_initialize_stream_decoders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_demuxer = type { i32*, i32, i32*, i32, %struct.TYPE_7__, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i64, i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@INT64_MAX = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AV_SYNC_AUDIO_MASTER = common dso_local global i32 0, align 4
@AV_SYNC_VIDEO_MASTER = common dso_local global i32 0, align 4
@AVDISCARD_ALL = common dso_local global i64 0, align 8
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ff_demuxer*)* @find_and_initialize_stream_decoders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_and_initialize_stream_decoders(%struct.ff_demuxer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ff_demuxer*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i64, align 8
  store %struct.ff_demuxer* %0, %struct.ff_demuxer** %3, align 8
  %14 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %15 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %14, i32 0, i32 5
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  %17 = load i64, i64* @INT64_MAX, align 8
  store i64 %17, i64* %8, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %68, %1
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %71

24:                                               ; preds = %18
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %27, i64 %29
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %9, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %24
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = icmp ne %struct.TYPE_8__* %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %45, i64 %47
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %7, align 8
  br label %50

50:                                               ; preds = %42, %39, %24
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = icmp ne %struct.TYPE_8__* %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %56
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %62, i64 %64
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %6, align 8
  br label %67

67:                                               ; preds = %59, %56, %50
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %18

71:                                               ; preds = %18
  %72 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %73 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %72, i32 0, i32 5
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = call i32 @av_find_default_stream_index(%struct.TYPE_9__* %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %113

78:                                               ; preds = %71
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %81, i64 %83
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  store %struct.TYPE_8__* %85, %struct.TYPE_8__** %11, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %78
  %94 = load i32, i32* @AV_SYNC_AUDIO_MASTER, align 4
  %95 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %96 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 4
  br label %112

98:                                               ; preds = %78
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = load i32, i32* @AV_SYNC_VIDEO_MASTER, align 4
  %108 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %109 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 4
  br label %111

111:                                              ; preds = %106, %98
  br label %112

112:                                              ; preds = %111, %93
  br label %113

113:                                              ; preds = %112, %71
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %115 = icmp ne %struct.TYPE_8__* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %119 = call i32 @find_decoder(%struct.ff_demuxer* %117, %struct.TYPE_8__* %118)
  br label %120

120:                                              ; preds = %116, %113
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %122 = icmp ne %struct.TYPE_8__* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %126 = call i32 @find_decoder(%struct.ff_demuxer* %124, %struct.TYPE_8__* %125)
  br label %127

127:                                              ; preds = %123, %120
  %128 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %129 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %134 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  store i32 0, i32* %2, align 4
  br label %280

138:                                              ; preds = %132, %127
  %139 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %140 = call i32 @set_clock_sync_type(%struct.ff_demuxer* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  store i32 0, i32* %2, align 4
  br label %280

143:                                              ; preds = %138
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %182, %143
  %145 = load i32, i32* %5, align 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ult i32 %145, %148
  br i1 %149, label %150, label %185

150:                                              ; preds = %144
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %152, align 8
  %154 = load i32, i32* %5, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %153, i64 %155
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  store %struct.TYPE_8__* %157, %struct.TYPE_8__** %12, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @AVDISCARD_ALL, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %169, label %163

163:                                              ; preds = %150
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %163, %150
  br label %182

170:                                              ; preds = %163
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %178 = call i64 @av_rescale_q(i64 %173, i32 %176, i32 %177)
  store i64 %178, i64* %13, align 8
  %179 = load i64, i64* %8, align 8
  %180 = load i64, i64* %13, align 8
  %181 = call i64 @FFMIN(i64 %179, i64 %180)
  store i64 %181, i64* %8, align 8
  br label %182

182:                                              ; preds = %170, %169
  %183 = load i32, i32* %5, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %5, align 4
  br label %144

185:                                              ; preds = %144
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %206

191:                                              ; preds = %185
  %192 = load i64, i64* %8, align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp sgt i64 %192, %195
  br i1 %196, label %201, label %197

197:                                              ; preds = %191
  %198 = load i64, i64* %8, align 8
  %199 = load i64, i64* @INT64_MAX, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %197, %191
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %8, align 8
  br label %205

205:                                              ; preds = %201, %197
  br label %206

206:                                              ; preds = %205, %185
  %207 = load i64, i64* %8, align 8
  %208 = load i64, i64* @INT64_MAX, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %221

210:                                              ; preds = %206
  %211 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %212 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = load i64, i64* %8, align 8
  %215 = call i32 @set_decoder_start_time(i32* %213, i64 %214)
  %216 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %217 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %216, i32 0, i32 2
  %218 = load i32*, i32** %217, align 8
  %219 = load i64, i64* %8, align 8
  %220 = call i32 @set_decoder_start_time(i32* %218, i64 %219)
  br label %221

221:                                              ; preds = %210, %206
  %222 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %223 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %222, i32 0, i32 2
  %224 = load i32*, i32** %223, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %249

226:                                              ; preds = %221
  %227 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %228 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %227, i32 0, i32 3
  %229 = call i64 @ff_callbacks_initialize(i32* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %233 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %232, i32 0, i32 2
  %234 = load i32*, i32** %233, align 8
  %235 = call i32 @ff_decoder_start(i32* %234)
  br label %248

236:                                              ; preds = %226
  %237 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %238 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %237, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = call i32 @ff_decoder_free(i32* %239)
  %241 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %242 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %241, i32 0, i32 2
  store i32* null, i32** %242, align 8
  %243 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %244 = call i32 @set_clock_sync_type(%struct.ff_demuxer* %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %236
  store i32 0, i32* %2, align 4
  br label %280

247:                                              ; preds = %236
  br label %248

248:                                              ; preds = %247, %231
  br label %249

249:                                              ; preds = %248, %221
  %250 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %251 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = icmp ne i32* %252, null
  br i1 %253, label %254, label %277

254:                                              ; preds = %249
  %255 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %256 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %255, i32 0, i32 1
  %257 = call i64 @ff_callbacks_initialize(i32* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %254
  %260 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %261 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = call i32 @ff_decoder_start(i32* %262)
  br label %276

264:                                              ; preds = %254
  %265 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %266 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %265, i32 0, i32 0
  %267 = load i32*, i32** %266, align 8
  %268 = call i32 @ff_decoder_free(i32* %267)
  %269 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %270 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %269, i32 0, i32 0
  store i32* null, i32** %270, align 8
  %271 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %272 = call i32 @set_clock_sync_type(%struct.ff_demuxer* %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %275, label %274

274:                                              ; preds = %264
  store i32 0, i32* %2, align 4
  br label %280

275:                                              ; preds = %264
  br label %276

276:                                              ; preds = %275, %259
  br label %277

277:                                              ; preds = %276, %249
  %278 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %279 = call i32 @set_clock_sync_type(%struct.ff_demuxer* %278)
  store i32 %279, i32* %2, align 4
  br label %280

280:                                              ; preds = %277, %274, %246, %142, %137
  %281 = load i32, i32* %2, align 4
  ret i32 %281
}

declare dso_local i32 @av_find_default_stream_index(%struct.TYPE_9__*) #1

declare dso_local i32 @find_decoder(%struct.ff_demuxer*, %struct.TYPE_8__*) #1

declare dso_local i32 @set_clock_sync_type(%struct.ff_demuxer*) #1

declare dso_local i64 @av_rescale_q(i64, i32, i32) #1

declare dso_local i64 @FFMIN(i64, i64) #1

declare dso_local i32 @set_decoder_start_time(i32*, i64) #1

declare dso_local i64 @ff_callbacks_initialize(i32*) #1

declare dso_local i32 @ff_decoder_start(i32*) #1

declare dso_local i32 @ff_decoder_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
