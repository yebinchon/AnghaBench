; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_image_writer.c_write_lavc.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_image_writer.c_write_lavc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_writer_ctx = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, i32*, i32*, i32, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, i32, i32 }
%struct.TYPE_26__ = type { i64, i32, i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.AVCodec = type { i64 }
%struct.TYPE_27__ = type { i64, i32, i32, i32, i32, i32 }

@AV_CODEC_ID_WEBP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"libwebp\00", align 1
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@AV_CODEC_ID_MJPEG = common dso_local global i64 0, align 8
@MP_CSP_LEVELS_PC = common dso_local global i64 0, align 8
@AV_PIX_FMT_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Image format %s not supported by lavc.\0A\00", align 1
@AV_CODEC_ID_PNG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"pred\00", align 1
@AV_OPT_SEARCH_CHILDREN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"lossless\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"quality\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"Could not open libavcodec encoder for saving images\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_writer_ctx*, %struct.TYPE_24__*, i32*)* @write_lavc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_lavc(%struct.image_writer_ctx* %0, %struct.TYPE_24__* %1, i32* %2) #0 {
  %4 = alloca %struct.image_writer_ctx*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_25__, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.AVCodec*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.image_writer_ctx* %0, %struct.image_writer_ctx** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %8, align 8
  %15 = bitcast %struct.TYPE_25__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 12, i1 false)
  store i32 0, i32* %10, align 4
  %16 = call i32 @av_init_packet(%struct.TYPE_25__* %9)
  %17 = load %struct.image_writer_ctx*, %struct.image_writer_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.image_writer_ctx, %struct.image_writer_ctx* %17, i32 0, i32 0
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AV_CODEC_ID_WEBP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = call %struct.AVCodec* @avcodec_find_encoder_by_name(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.AVCodec* %25, %struct.AVCodec** %11, align 8
  br label %33

26:                                               ; preds = %3
  %27 = load %struct.image_writer_ctx*, %struct.image_writer_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.image_writer_ctx, %struct.image_writer_ctx* %27, i32 0, i32 0
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.AVCodec* @avcodec_find_encoder(i64 %31)
  store %struct.AVCodec* %32, %struct.AVCodec** %11, align 8
  br label %33

33:                                               ; preds = %26, %24
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %12, align 8
  %34 = load %struct.AVCodec*, %struct.AVCodec** %11, align 8
  %35 = icmp ne %struct.AVCodec* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  br label %164

37:                                               ; preds = %33
  %38 = load %struct.AVCodec*, %struct.AVCodec** %11, align 8
  %39 = call %struct.TYPE_27__* @avcodec_alloc_context3(%struct.AVCodec* %38)
  store %struct.TYPE_27__* %39, %struct.TYPE_27__** %12, align 8
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %41 = icmp ne %struct.TYPE_27__* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %164

43:                                               ; preds = %37
  %44 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @mp_csp_levels_to_avcol_range(i64 %61)
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @imgfmt2pixfmt(i32 %67)
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.AVCodec*, %struct.AVCodec** %11, align 8
  %72 = getelementptr inbounds %struct.AVCodec, %struct.AVCodec* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @AV_CODEC_ID_MJPEG, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %43
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @MP_CSP_LEVELS_PC, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %76
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @replace_j_format(i64 %87)
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %84, %76
  br label %92

92:                                               ; preds = %91, %43
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @AV_PIX_FMT_NONE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load %struct.image_writer_ctx*, %struct.image_writer_ctx** %4, align 8
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @mp_imgfmt_to_name(i32 %102)
  %104 = call i32 (%struct.image_writer_ctx*, i8*, ...) @MP_ERR(%struct.image_writer_ctx* %99, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  br label %281

105:                                              ; preds = %92
  %106 = load %struct.AVCodec*, %struct.AVCodec** %11, align 8
  %107 = getelementptr inbounds %struct.AVCodec, %struct.AVCodec* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @AV_CODEC_ID_PNG, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %127

111:                                              ; preds = %105
  %112 = load %struct.image_writer_ctx*, %struct.image_writer_ctx** %4, align 8
  %113 = getelementptr inbounds %struct.image_writer_ctx, %struct.image_writer_ctx* %112, i32 0, i32 0
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %120 = load %struct.image_writer_ctx*, %struct.image_writer_ctx** %4, align 8
  %121 = getelementptr inbounds %struct.image_writer_ctx, %struct.image_writer_ctx* %120, i32 0, i32 0
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @AV_OPT_SEARCH_CHILDREN, align 4
  %126 = call i32 @av_opt_set_int(%struct.TYPE_27__* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %124, i32 %125)
  br label %158

127:                                              ; preds = %105
  %128 = load %struct.AVCodec*, %struct.AVCodec** %11, align 8
  %129 = getelementptr inbounds %struct.AVCodec, %struct.AVCodec* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @AV_CODEC_ID_WEBP, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %157

133:                                              ; preds = %127
  %134 = load %struct.image_writer_ctx*, %struct.image_writer_ctx** %4, align 8
  %135 = getelementptr inbounds %struct.image_writer_ctx, %struct.image_writer_ctx* %134, i32 0, i32 0
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 4
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %142 = load %struct.image_writer_ctx*, %struct.image_writer_ctx** %4, align 8
  %143 = getelementptr inbounds %struct.image_writer_ctx, %struct.image_writer_ctx* %142, i32 0, i32 0
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @AV_OPT_SEARCH_CHILDREN, align 4
  %148 = call i32 @av_opt_set_int(%struct.TYPE_27__* %141, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %146, i32 %147)
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %150 = load %struct.image_writer_ctx*, %struct.image_writer_ctx** %4, align 8
  %151 = getelementptr inbounds %struct.image_writer_ctx, %struct.image_writer_ctx* %150, i32 0, i32 0
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @AV_OPT_SEARCH_CHILDREN, align 4
  %156 = call i32 @av_opt_set_int(%struct.TYPE_27__* %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %133, %127
  br label %158

158:                                              ; preds = %157, %111
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %160 = load %struct.AVCodec*, %struct.AVCodec** %11, align 8
  %161 = call i64 @avcodec_open2(%struct.TYPE_27__* %159, %struct.AVCodec* %160, i32* null)
  %162 = icmp slt i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  br label %164

164:                                              ; preds = %163, %42, %36
  %165 = load %struct.image_writer_ctx*, %struct.image_writer_ctx** %4, align 8
  %166 = call i32 (%struct.image_writer_ctx*, i8*, ...) @MP_ERR(%struct.image_writer_ctx* %165, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  br label %281

167:                                              ; preds = %158
  %168 = call %struct.TYPE_26__* (...) @av_frame_alloc()
  store %struct.TYPE_26__* %168, %struct.TYPE_26__** %8, align 8
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %170 = icmp ne %struct.TYPE_26__* %169, null
  br i1 %170, label %172, label %171

171:                                              ; preds = %167
  br label %281

172:                                              ; preds = %167
  store i32 0, i32* %13, align 4
  br label %173

173:                                              ; preds = %203, %172
  %174 = load i32, i32* %13, align 4
  %175 = icmp slt i32 %174, 4
  br i1 %175, label %176, label %206

176:                                              ; preds = %173
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 7
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %13, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 %183, i32* %189, align 4
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i32 0, i32 6
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %13, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 %196, i32* %202, align 4
  br label %203

203:                                              ; preds = %176
  %204 = load i32, i32* %13, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %13, align 4
  br label %173

206:                                              ; preds = %173
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 0
  store i64 %209, i64* %211, align 8
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %215, i32 0, i32 5
  store i32 %214, i32* %216, align 8
  %217 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %220, i32 0, i32 4
  store i32 %219, i32* %221, align 4
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %225, i32 0, i32 3
  store i32 %224, i32* %226, align 8
  %227 = load %struct.image_writer_ctx*, %struct.image_writer_ctx** %4, align 8
  %228 = getelementptr inbounds %struct.image_writer_ctx, %struct.image_writer_ctx* %227, i32 0, i32 0
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %250

233:                                              ; preds = %206
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @mp_csp_prim_to_avcol_pri(i32 %238)
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 4
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @mp_csp_trc_to_avcol_trc(i32 %246)
  %248 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %248, i32 0, i32 1
  store i32 %247, i32* %249, align 8
  br label %250

250:                                              ; preds = %233, %206
  %251 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %253 = call i32 @avcodec_send_frame(%struct.TYPE_27__* %251, %struct.TYPE_26__* %252)
  store i32 %253, i32* %14, align 4
  %254 = load i32, i32* %14, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %250
  br label %281

257:                                              ; preds = %250
  %258 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %259 = call i32 @avcodec_send_frame(%struct.TYPE_27__* %258, %struct.TYPE_26__* null)
  store i32 %259, i32* %14, align 4
  %260 = load i32, i32* %14, align 4
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %257
  br label %281

263:                                              ; preds = %257
  %264 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %265 = call i32 @avcodec_receive_packet(%struct.TYPE_27__* %264, %struct.TYPE_25__* %9)
  store i32 %265, i32* %14, align 4
  %266 = load i32, i32* %14, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %263
  br label %281

269:                                              ; preds = %263
  store i32 1, i32* %10, align 4
  %270 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load i32*, i32** %6, align 8
  %275 = call i32 @fwrite(i32 %271, i32 %273, i32 1, i32* %274)
  %276 = load i32, i32* %10, align 4
  %277 = icmp ne i32 %276, 0
  %278 = xor i1 %277, true
  %279 = xor i1 %278, true
  %280 = zext i1 %279 to i32
  store i32 %280, i32* %7, align 4
  br label %281

281:                                              ; preds = %269, %268, %262, %256, %171, %164, %98
  %282 = call i32 @avcodec_free_context(%struct.TYPE_27__** %12)
  %283 = call i32 @av_frame_free(%struct.TYPE_26__** %8)
  %284 = call i32 @av_packet_unref(%struct.TYPE_25__* %9)
  %285 = load i32, i32* %7, align 4
  ret i32 %285
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_init_packet(%struct.TYPE_25__*) #2

declare dso_local %struct.AVCodec* @avcodec_find_encoder_by_name(i8*) #2

declare dso_local %struct.AVCodec* @avcodec_find_encoder(i64) #2

declare dso_local %struct.TYPE_27__* @avcodec_alloc_context3(%struct.AVCodec*) #2

declare dso_local i32 @mp_csp_levels_to_avcol_range(i64) #2

declare dso_local i64 @imgfmt2pixfmt(i32) #2

declare dso_local i64 @replace_j_format(i64) #2

declare dso_local i32 @MP_ERR(%struct.image_writer_ctx*, i8*, ...) #2

declare dso_local i32 @mp_imgfmt_to_name(i32) #2

declare dso_local i32 @av_opt_set_int(%struct.TYPE_27__*, i8*, i32, i32) #2

declare dso_local i64 @avcodec_open2(%struct.TYPE_27__*, %struct.AVCodec*, i32*) #2

declare dso_local %struct.TYPE_26__* @av_frame_alloc(...) #2

declare dso_local i32 @mp_csp_prim_to_avcol_pri(i32) #2

declare dso_local i32 @mp_csp_trc_to_avcol_trc(i32) #2

declare dso_local i32 @avcodec_send_frame(%struct.TYPE_27__*, %struct.TYPE_26__*) #2

declare dso_local i32 @avcodec_receive_packet(%struct.TYPE_27__*, %struct.TYPE_25__*) #2

declare dso_local i32 @fwrite(i32, i32, i32, i32*) #2

declare dso_local i32 @avcodec_free_context(%struct.TYPE_27__**) #2

declare dso_local i32 @av_frame_free(%struct.TYPE_26__**) #2

declare dso_local i32 @av_packet_unref(%struct.TYPE_25__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
