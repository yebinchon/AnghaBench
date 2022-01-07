; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_cdda.c_open_cdda.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_cdda.c_open_cdda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i8*, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.TYPE_27__*, i32 }
%struct.TYPE_27__ = type { i32, i32, i8*, i64, i32*, i64, i64, i64, i32*, i64, i32, i64, %struct.TYPE_26__*, i64 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_24__*, i64 }
%struct.TYPE_24__ = type { i32 }

@stream_cdda_conf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"cdrom-device\00", align 1
@m_option_type_string = common dso_local global i32 0, align 4
@DEFAULT_CDROM_DEVICE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Can't open CDDA device.\0A\00", align 1
@STREAM_ERROR = common dso_local global i32 0, align 4
@CDDA_MESSAGE_FORGETIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Can't open disc.\0A\00", align 1
@PARANOIA_MODE_DISABLE = common dso_local global i32 0, align 4
@PARANOIA_MODE_OVERLAP = common dso_local global i32 0, align 4
@PARANOIA_MODE_FULL = common dso_local global i32 0, align 4
@PARANOIA_MODE_NEVERSKIP = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@fill_buffer = common dso_local global i32 0, align 4
@seek = common dso_local global i32 0, align 4
@control = common dso_local global i32 0, align 4
@get_size = common dso_local global i32 0, align 4
@close_cdda = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"+disc\00", align 1
@STREAM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*)* @open_cdda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_cdda(%struct.TYPE_25__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  %12 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.TYPE_27__* @mp_get_config_group(%struct.TYPE_25__* %12, i32 %15, i32* @stream_cdda_conf)
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 9
  store %struct.TYPE_27__* %16, %struct.TYPE_27__** %18, align 8
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 9
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  store %struct.TYPE_27__* %21, %struct.TYPE_27__** %4, align 8
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_27__* %22, %struct.TYPE_27__** %5, align 8
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %6, align 4
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %8, align 8
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @mp_read_option_raw(i32 %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* @m_option_type_string, i8** %10)
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @talloc_steal(%struct.TYPE_25__* %33, i8* %34)
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %1
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  br label %66

48:                                               ; preds = %1
  %49 = load i8*, i8** %10, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i8*, i8** %10, align 8
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  br label %65

61:                                               ; preds = %51, %48
  %62 = load i8*, i8** @DEFAULT_CDROM_DEVICE, align 8
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %61, %57
  br label %66

66:                                               ; preds = %65, %42
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = call %struct.TYPE_26__* @cdda_identify(i8* %69, i32 0, i32* null)
  store %struct.TYPE_26__* %70, %struct.TYPE_26__** %8, align 8
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %72 = icmp ne %struct.TYPE_26__* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %66
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %75 = call i32 @MP_ERR(%struct.TYPE_25__* %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @STREAM_ERROR, align 4
  store i32 %76, i32* %2, align 4
  br label %371

77:                                               ; preds = %66
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %79 = load i32, i32* @CDDA_MESSAGE_FORGETIT, align 4
  %80 = load i32, i32* @CDDA_MESSAGE_FORGETIT, align 4
  %81 = call i32 @cdda_verbose_set(%struct.TYPE_26__* %78, i32 %79, i32 %80)
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 13
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %77
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 13
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %86, %77
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %94 = call i64 @cdda_open(%struct.TYPE_26__* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %98 = call i32 @MP_ERR(%struct.TYPE_25__* %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %100 = call i32 @cdda_close(%struct.TYPE_26__* %99)
  %101 = load i32, i32* @STREAM_ERROR, align 4
  store i32 %101, i32* %2, align 4
  br label %371

102:                                              ; preds = %92
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 12
  store %struct.TYPE_26__* %103, %struct.TYPE_26__** %105, align 8
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 11
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %102
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %112 = call i64 @cdda_track_firstsector(%struct.TYPE_26__* %111, i32 1)
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = sub nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %110, %102
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %143

120:                                              ; preds = %117
  store i32 0, i32* %11, align 4
  br label %121

121:                                              ; preds = %139, %120
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  %127 = icmp slt i32 %122, %126
  br i1 %127, label %128, label %142

128:                                              ; preds = %121
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, %129
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %128
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %121

142:                                              ; preds = %121
  br label %143

143:                                              ; preds = %142, %117
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp sgt i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @cdda_speed_set(%struct.TYPE_26__* %149, i64 %152)
  br label %154

154:                                              ; preds = %148, %143
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %156 = call i32 @cdda_tracks(%struct.TYPE_26__* %155)
  store i32 %156, i32* %9, align 4
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 4
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp sgt i32 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %154
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i32 0, i32 4
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  store i32 %165, i32* %169, align 4
  br label %170

170:                                              ; preds = %164, %154
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 4
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %176, i32 0, i32 4
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp slt i32 %175, %180
  br i1 %181, label %182, label %192

182:                                              ; preds = %170
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %183, i32 0, i32 4
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %188, i32 0, i32 4
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  store i32 %187, i32* %191, align 4
  br label %192

192:                                              ; preds = %182, %170
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 4
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %9, align 4
  %199 = icmp sgt i32 %197, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %192
  %201 = load i32, i32* %9, align 4
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i32 0, i32 4
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  store i32 %201, i32* %205, align 4
  br label %206

206:                                              ; preds = %200, %192
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %207, i32 0, i32 4
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %223

213:                                              ; preds = %206
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %215 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %215, i32 0, i32 4
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = call i64 @cdda_track_firstsector(%struct.TYPE_26__* %214, i32 %219)
  %221 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %221, i32 0, i32 6
  store i64 %220, i64* %222, align 8
  br label %228

223:                                              ; preds = %206
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %225 = call i64 @cdda_disc_firstsector(%struct.TYPE_26__* %224)
  %226 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %226, i32 0, i32 6
  store i64 %225, i64* %227, align 8
  br label %228

228:                                              ; preds = %223, %213
  %229 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %229, i32 0, i32 4
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %245

235:                                              ; preds = %228
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %237 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %237, i32 0, i32 4
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @cdda_track_lastsector(%struct.TYPE_26__* %236, i32 %241)
  %243 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %243, i32 0, i32 10
  store i32 %242, i32* %244, align 8
  br label %250

245:                                              ; preds = %228
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %247 = call i32 @cdda_disc_lastsector(%struct.TYPE_26__* %246)
  %248 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %248, i32 0, i32 10
  store i32 %247, i32* %249, align 8
  br label %250

250:                                              ; preds = %245, %235
  %251 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %252 = call i32* @paranoia_init(%struct.TYPE_26__* %251)
  %253 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %253, i32 0, i32 8
  store i32* %252, i32** %254, align 8
  %255 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %255, i32 0, i32 8
  %257 = load i32*, i32** %256, align 8
  %258 = icmp eq i32* %257, null
  br i1 %258, label %259, label %265

259:                                              ; preds = %250
  %260 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %261 = call i32 @cdda_close(%struct.TYPE_26__* %260)
  %262 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %263 = call i32 @free(%struct.TYPE_27__* %262)
  %264 = load i32, i32* @STREAM_ERROR, align 4
  store i32 %264, i32* %2, align 4
  br label %371

265:                                              ; preds = %250
  %266 = load i32, i32* %6, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %265
  %269 = load i32, i32* @PARANOIA_MODE_DISABLE, align 4
  store i32 %269, i32* %6, align 4
  br label %278

270:                                              ; preds = %265
  %271 = load i32, i32* %6, align 4
  %272 = icmp eq i32 %271, 1
  br i1 %272, label %273, label %275

273:                                              ; preds = %270
  %274 = load i32, i32* @PARANOIA_MODE_OVERLAP, align 4
  store i32 %274, i32* %6, align 4
  br label %277

275:                                              ; preds = %270
  %276 = load i32, i32* @PARANOIA_MODE_FULL, align 4
  store i32 %276, i32* %6, align 4
  br label %277

277:                                              ; preds = %275, %273
  br label %278

278:                                              ; preds = %277, %268
  %279 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %279, i32 0, i32 9
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %278
  %284 = load i32, i32* @PARANOIA_MODE_NEVERSKIP, align 4
  %285 = xor i32 %284, -1
  %286 = load i32, i32* %6, align 4
  %287 = and i32 %286, %285
  store i32 %287, i32* %6, align 4
  br label %292

288:                                              ; preds = %278
  %289 = load i32, i32* @PARANOIA_MODE_NEVERSKIP, align 4
  %290 = load i32, i32* %6, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %6, align 4
  br label %292

292:                                              ; preds = %288, %283
  %293 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %293, i32 0, i32 5
  %295 = load i64, i64* %294, align 8
  %296 = icmp sgt i64 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %292
  %298 = load i32, i32* @PARANOIA_MODE_OVERLAP, align 4
  %299 = load i32, i32* %6, align 4
  %300 = or i32 %299, %298
  store i32 %300, i32* %6, align 4
  br label %312

301:                                              ; preds = %292
  %302 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %302, i32 0, i32 5
  %304 = load i64, i64* %303, align 8
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %306, label %311

306:                                              ; preds = %301
  %307 = load i32, i32* @PARANOIA_MODE_OVERLAP, align 4
  %308 = xor i32 %307, -1
  %309 = load i32, i32* %6, align 4
  %310 = and i32 %309, %308
  store i32 %310, i32* %6, align 4
  br label %311

311:                                              ; preds = %306, %301
  br label %312

312:                                              ; preds = %311, %297
  %313 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %313, i32 0, i32 8
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %6, align 4
  %317 = call i32 @paranoia_modeset(i32* %315, i32 %316)
  %318 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %318, i32 0, i32 5
  %320 = load i64, i64* %319, align 8
  %321 = icmp sgt i64 %320, 0
  br i1 %321, label %322, label %330

322:                                              ; preds = %312
  %323 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %323, i32 0, i32 8
  %325 = load i32*, i32** %324, align 8
  %326 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %326, i32 0, i32 5
  %328 = load i64, i64* %327, align 8
  %329 = call i32 @paranoia_overlapset(i32* %325, i64 %328)
  br label %330

330:                                              ; preds = %322, %312
  %331 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %331, i32 0, i32 8
  %333 = load i32*, i32** %332, align 8
  %334 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %334, i32 0, i32 6
  %336 = load i64, i64* %335, align 8
  %337 = load i32, i32* @SEEK_SET, align 4
  %338 = call i32 @paranoia_seek(i32* %333, i64 %336, i32 %337)
  %339 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %339, i32 0, i32 6
  %341 = load i64, i64* %340, align 8
  %342 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %342, i32 0, i32 7
  store i64 %341, i64* %343, align 8
  %344 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %345 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %345, i32 0, i32 9
  store %struct.TYPE_27__* %344, %struct.TYPE_27__** %346, align 8
  %347 = load i32, i32* @fill_buffer, align 4
  %348 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %348, i32 0, i32 8
  store i32 %347, i32* %349, align 8
  %350 = load i32, i32* @seek, align 4
  %351 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %351, i32 0, i32 7
  store i32 %350, i32* %352, align 4
  %353 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %353, i32 0, i32 1
  store i32 1, i32* %354, align 8
  %355 = load i32, i32* @control, align 4
  %356 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %356, i32 0, i32 6
  store i32 %355, i32* %357, align 8
  %358 = load i32, i32* @get_size, align 4
  %359 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %359, i32 0, i32 5
  store i32 %358, i32* %360, align 4
  %361 = load i32, i32* @close_cdda, align 4
  %362 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %363 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %362, i32 0, i32 4
  store i32 %361, i32* %363, align 8
  %364 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %364, i32 0, i32 2
  store i32 1, i32* %365, align 4
  %366 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %366, i32 0, i32 3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %367, align 8
  %368 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %369 = call i32 @print_cdtext(%struct.TYPE_25__* %368, i32 0)
  %370 = load i32, i32* @STREAM_OK, align 4
  store i32 %370, i32* %2, align 4
  br label %371

371:                                              ; preds = %330, %259, %96, %73
  %372 = load i32, i32* %2, align 4
  ret i32 %372
}

declare dso_local %struct.TYPE_27__* @mp_get_config_group(%struct.TYPE_25__*, i32, i32*) #1

declare dso_local i32 @mp_read_option_raw(i32, i8*, i32*, i8**) #1

declare dso_local i32 @talloc_steal(%struct.TYPE_25__*, i8*) #1

declare dso_local %struct.TYPE_26__* @cdda_identify(i8*, i32, i32*) #1

declare dso_local i32 @MP_ERR(%struct.TYPE_25__*, i8*) #1

declare dso_local i32 @cdda_verbose_set(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i64 @cdda_open(%struct.TYPE_26__*) #1

declare dso_local i32 @cdda_close(%struct.TYPE_26__*) #1

declare dso_local i64 @cdda_track_firstsector(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @cdda_speed_set(%struct.TYPE_26__*, i64) #1

declare dso_local i32 @cdda_tracks(%struct.TYPE_26__*) #1

declare dso_local i64 @cdda_disc_firstsector(%struct.TYPE_26__*) #1

declare dso_local i32 @cdda_track_lastsector(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @cdda_disc_lastsector(%struct.TYPE_26__*) #1

declare dso_local i32* @paranoia_init(%struct.TYPE_26__*) #1

declare dso_local i32 @free(%struct.TYPE_27__*) #1

declare dso_local i32 @paranoia_modeset(i32*, i32) #1

declare dso_local i32 @paranoia_overlapset(i32*, i64) #1

declare dso_local i32 @paranoia_seek(i32*, i64, i32) #1

declare dso_local i32 @print_cdtext(%struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
