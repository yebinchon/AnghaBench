; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_mkv_parse_and_add_packet.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_mkv_parse_and_add_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { double, %struct.TYPE_10__*, i32, i64, %struct.sh_stream* }
%struct.TYPE_10__ = type { double, double }
%struct.sh_stream = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.demux_packet = type { i32, i32, double, double, i32, i32 }

@STREAM_AUDIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"wavpack\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"prores\00", align 1
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@AV_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*, %struct.demux_packet*)* @mkv_parse_and_add_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mkv_parse_and_add_packet(i32* %0, %struct.TYPE_9__* %1, %struct.demux_packet* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.demux_packet*, align 8
  %7 = alloca %struct.sh_stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.demux_packet*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.demux_packet*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.demux_packet*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store %struct.demux_packet* %2, %struct.demux_packet** %6, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 4
  %25 = load %struct.sh_stream*, %struct.sh_stream** %24, align 8
  store %struct.sh_stream* %25, %struct.sh_stream** %7, align 8
  %26 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %27 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @STREAM_AUDIO, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %3
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %35 = call i64 @handle_realaudio(i32* %32, %struct.TYPE_9__* %33, %struct.demux_packet* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %350

38:                                               ; preds = %31, %3
  %39 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %40 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @strcmp(i32 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %38
  %47 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %48 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %8, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %52 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @libav_parse_wavpack(%struct.TYPE_9__* %50, i32 %53, i32** %9, i32* %8)
  %55 = icmp sge i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %46
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call %struct.demux_packet* @new_demux_packet_from(i32* %57, i32 %58)
  store %struct.demux_packet* %59, %struct.demux_packet** %10, align 8
  %60 = load %struct.demux_packet*, %struct.demux_packet** %10, align 8
  %61 = icmp ne %struct.demux_packet* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load %struct.demux_packet*, %struct.demux_packet** %10, align 8
  %64 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %65 = call i32 @demux_packet_copy_attribs(%struct.demux_packet* %63, %struct.demux_packet* %64)
  %66 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %67 = call i32 @talloc_free(%struct.demux_packet* %66)
  %68 = load i32*, i32** %4, align 8
  %69 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %70 = load %struct.demux_packet*, %struct.demux_packet** %10, align 8
  %71 = call i32 @add_packet(i32* %68, %struct.sh_stream* %69, %struct.demux_packet* %70)
  br label %350

72:                                               ; preds = %56
  br label %73

73:                                               ; preds = %72, %46
  br label %74

74:                                               ; preds = %73, %38
  %75 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %76 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @strcmp(i32 %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %126

82:                                               ; preds = %74
  %83 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %84 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 8
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %11, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call %struct.demux_packet* @new_demux_packet(i64 %88)
  store %struct.demux_packet* %89, %struct.demux_packet** %12, align 8
  %90 = load %struct.demux_packet*, %struct.demux_packet** %12, align 8
  %91 = icmp ne %struct.demux_packet* %90, null
  br i1 %91, label %92, label %125

92:                                               ; preds = %82
  %93 = load %struct.demux_packet*, %struct.demux_packet** %12, align 8
  %94 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 0
  %97 = load i64, i64* %11, align 8
  %98 = call i32 @AV_WB32(i32 %96, i64 %97)
  %99 = load %struct.demux_packet*, %struct.demux_packet** %12, align 8
  %100 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 4
  %103 = call i64 @MKBETAG(i8 signext 105, i8 signext 99, i8 signext 112, float 1.020000e+02)
  %104 = call i32 @AV_WB32(i32 %102, i64 %103)
  %105 = load %struct.demux_packet*, %struct.demux_packet** %12, align 8
  %106 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 8
  %109 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %110 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %113 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @memcpy(i32 %108, i32 %111, i32 %114)
  %116 = load %struct.demux_packet*, %struct.demux_packet** %12, align 8
  %117 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %118 = call i32 @demux_packet_copy_attribs(%struct.demux_packet* %116, %struct.demux_packet* %117)
  %119 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %120 = call i32 @talloc_free(%struct.demux_packet* %119)
  %121 = load i32*, i32** %4, align 8
  %122 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %123 = load %struct.demux_packet*, %struct.demux_packet** %12, align 8
  %124 = call i32 @add_packet(i32* %121, %struct.sh_stream* %122, %struct.demux_packet* %123)
  br label %350

125:                                              ; preds = %82
  br label %126

126:                                              ; preds = %125, %74
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %159

131:                                              ; preds = %126
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = icmp ne %struct.TYPE_10__* %134, null
  br i1 %135, label %159, label %136

136:                                              ; preds = %131
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 4
  %139 = load %struct.sh_stream*, %struct.sh_stream** %138, align 8
  %140 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %139, i32 0, i32 1
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @mp_codec_to_av_codec_id(i32 %143)
  store i32 %144, i32* %13, align 4
  %145 = load i32, i32* %13, align 4
  %146 = call i32* @avcodec_find_decoder(i32 %145)
  store i32* %146, i32** %14, align 8
  %147 = load i32, i32* %13, align 4
  %148 = call %struct.TYPE_10__* @av_parser_init(i32 %147)
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  store %struct.TYPE_10__* %148, %struct.TYPE_10__** %150, align 8
  %151 = load i32*, i32** %14, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %158

153:                                              ; preds = %136
  %154 = load i32*, i32** %14, align 8
  %155 = call i32 @avcodec_alloc_context3(i32* %154)
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  br label %158

158:                                              ; preds = %153, %136
  br label %159

159:                                              ; preds = %158, %131, %126
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %159
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = icmp ne %struct.TYPE_10__* %167, null
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %169, %164, %159
  %175 = load i32*, i32** %4, align 8
  %176 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %177 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %178 = call i32 @add_packet(i32* %175, %struct.sh_stream* %176, %struct.demux_packet* %177)
  br label %350

179:                                              ; preds = %169
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = load double, double* %181, align 8
  store double %182, double* %15, align 8
  %183 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %184 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %183, i32 0, i32 2
  %185 = load double, double* %184, align 8
  %186 = load double, double* @MP_NOPTS_VALUE, align 8
  %187 = fcmp oeq double %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %179
  %189 = load double, double* @AV_NOPTS_VALUE, align 8
  br label %196

190:                                              ; preds = %179
  %191 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %192 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %191, i32 0, i32 2
  %193 = load double, double* %192, align 8
  %194 = load double, double* %15, align 8
  %195 = fmul double %193, %194
  br label %196

196:                                              ; preds = %190, %188
  %197 = phi double [ %189, %188 ], [ %195, %190 ]
  store double %197, double* %16, align 8
  %198 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %199 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %198, i32 0, i32 3
  %200 = load double, double* %199, align 8
  %201 = load double, double* @MP_NOPTS_VALUE, align 8
  %202 = fcmp oeq double %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %196
  %204 = load double, double* @AV_NOPTS_VALUE, align 8
  br label %211

205:                                              ; preds = %196
  %206 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %207 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %206, i32 0, i32 3
  %208 = load double, double* %207, align 8
  %209 = load double, double* %15, align 8
  %210 = fmul double %208, %209
  br label %211

211:                                              ; preds = %205, %203
  %212 = phi double [ %204, %203 ], [ %210, %205 ]
  store double %212, double* %17, align 8
  store i32 1, i32* %18, align 4
  br label %213

213:                                              ; preds = %335, %211
  %214 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %215 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %337

218:                                              ; preds = %213
  store i32* null, i32** %19, align 8
  store i32 0, i32* %20, align 4
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %220, align 8
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %226 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %229 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load double, double* %16, align 8
  %232 = load double, double* %17, align 8
  %233 = call i32 @av_parser_parse2(%struct.TYPE_10__* %221, i32 %224, i32** %19, i32* %20, i32 %227, i32 %230, double %231, double %232, i32 0)
  store i32 %233, i32* %21, align 4
  %234 = load i32, i32* %21, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %242, label %236

236:                                              ; preds = %218
  %237 = load i32, i32* %21, align 4
  %238 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %239 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp sgt i32 %237, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %236, %218
  br label %337

243:                                              ; preds = %236
  %244 = load i32, i32* %21, align 4
  %245 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %246 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %247, %244
  store i32 %248, i32* %246, align 4
  %249 = load i32, i32* %21, align 4
  %250 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %251 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = sub nsw i32 %252, %249
  store i32 %253, i32* %251, align 8
  %254 = load i32, i32* %21, align 4
  %255 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %256 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = add nsw i32 %257, %254
  store i32 %258, i32* %256, align 8
  %259 = load i32, i32* %20, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %335

261:                                              ; preds = %243
  %262 = load i32*, i32** %19, align 8
  %263 = load i32, i32* %20, align 4
  %264 = call %struct.demux_packet* @new_demux_packet_from(i32* %262, i32 %263)
  store %struct.demux_packet* %264, %struct.demux_packet** %22, align 8
  %265 = load %struct.demux_packet*, %struct.demux_packet** %22, align 8
  %266 = icmp ne %struct.demux_packet* %265, null
  br i1 %266, label %268, label %267

267:                                              ; preds = %261
  br label %337

268:                                              ; preds = %261
  %269 = load i32, i32* %18, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %279

271:                                              ; preds = %268
  %272 = load %struct.demux_packet*, %struct.demux_packet** %22, align 8
  %273 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %276 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @av_packet_copy_props(i32 %274, i32 %277)
  br label %279

279:                                              ; preds = %271, %268
  store i32 0, i32* %18, align 4
  %280 = load %struct.demux_packet*, %struct.demux_packet** %22, align 8
  %281 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %282 = call i32 @demux_packet_copy_attribs(%struct.demux_packet* %280, %struct.demux_packet* %281)
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 0
  %285 = load double, double* %284, align 8
  %286 = fcmp une double %285, 0.000000e+00
  br i1 %286, label %287, label %330

287:                                              ; preds = %279
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 1
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 0
  %292 = load double, double* %291, align 8
  %293 = load double, double* @AV_NOPTS_VALUE, align 8
  %294 = fcmp oeq double %292, %293
  br i1 %294, label %295, label %297

295:                                              ; preds = %287
  %296 = load double, double* @MP_NOPTS_VALUE, align 8
  br label %305

297:                                              ; preds = %287
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 1
  %300 = load %struct.TYPE_10__*, %struct.TYPE_10__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 0
  %302 = load double, double* %301, align 8
  %303 = load double, double* %15, align 8
  %304 = fdiv double %302, %303
  br label %305

305:                                              ; preds = %297, %295
  %306 = phi double [ %296, %295 ], [ %304, %297 ]
  %307 = load %struct.demux_packet*, %struct.demux_packet** %22, align 8
  %308 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %307, i32 0, i32 2
  store double %306, double* %308, align 8
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 1
  %311 = load %struct.TYPE_10__*, %struct.TYPE_10__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 1
  %313 = load double, double* %312, align 8
  %314 = load double, double* @AV_NOPTS_VALUE, align 8
  %315 = fcmp oeq double %313, %314
  br i1 %315, label %316, label %318

316:                                              ; preds = %305
  %317 = load double, double* @MP_NOPTS_VALUE, align 8
  br label %326

318:                                              ; preds = %305
  %319 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i32 0, i32 1
  %321 = load %struct.TYPE_10__*, %struct.TYPE_10__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 1
  %323 = load double, double* %322, align 8
  %324 = load double, double* %15, align 8
  %325 = fdiv double %323, %324
  br label %326

326:                                              ; preds = %318, %316
  %327 = phi double [ %317, %316 ], [ %325, %318 ]
  %328 = load %struct.demux_packet*, %struct.demux_packet** %22, align 8
  %329 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %328, i32 0, i32 3
  store double %327, double* %329, align 8
  br label %330

330:                                              ; preds = %326, %279
  %331 = load i32*, i32** %4, align 8
  %332 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %333 = load %struct.demux_packet*, %struct.demux_packet** %22, align 8
  %334 = call i32 @add_packet(i32* %331, %struct.sh_stream* %332, %struct.demux_packet* %333)
  br label %335

335:                                              ; preds = %330, %243
  %336 = load double, double* @AV_NOPTS_VALUE, align 8
  store double %336, double* %17, align 8
  store double %336, double* %16, align 8
  br label %213

337:                                              ; preds = %267, %242, %213
  %338 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %339 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %347

342:                                              ; preds = %337
  %343 = load i32*, i32** %4, align 8
  %344 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %345 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %346 = call i32 @add_packet(i32* %343, %struct.sh_stream* %344, %struct.demux_packet* %345)
  br label %350

347:                                              ; preds = %337
  %348 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %349 = call i32 @talloc_free(%struct.demux_packet* %348)
  br label %350

350:                                              ; preds = %37, %62, %92, %174, %347, %342
  ret void
}

declare dso_local i64 @handle_realaudio(i32*, %struct.TYPE_9__*, %struct.demux_packet*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @libav_parse_wavpack(%struct.TYPE_9__*, i32, i32**, i32*) #1

declare dso_local %struct.demux_packet* @new_demux_packet_from(i32*, i32) #1

declare dso_local i32 @demux_packet_copy_attribs(%struct.demux_packet*, %struct.demux_packet*) #1

declare dso_local i32 @talloc_free(%struct.demux_packet*) #1

declare dso_local i32 @add_packet(i32*, %struct.sh_stream*, %struct.demux_packet*) #1

declare dso_local %struct.demux_packet* @new_demux_packet(i64) #1

declare dso_local i32 @AV_WB32(i32, i64) #1

declare dso_local i64 @MKBETAG(i8 signext, i8 signext, i8 signext, float) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mp_codec_to_av_codec_id(i32) #1

declare dso_local i32* @avcodec_find_decoder(i32) #1

declare dso_local %struct.TYPE_10__* @av_parser_init(i32) #1

declare dso_local i32 @avcodec_alloc_context3(i32*) #1

declare dso_local i32 @av_parser_parse2(%struct.TYPE_10__*, i32, i32**, i32*, i32, i32, double, double, i32) #1

declare dso_local i32 @av_packet_copy_props(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
