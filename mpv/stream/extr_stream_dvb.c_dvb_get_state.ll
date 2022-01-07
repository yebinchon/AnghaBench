; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_dvb.c_dvb_get_state.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_dvb.c_dvb_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, %struct.TYPE_21__*, i64 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_19__*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_20__*, %struct.mpv_global*, %struct.mp_log* }
%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i8*, i32 }
%struct.mpv_global = type { i32 }
%struct.mp_log = type { i32 }

@global_dvb_state = common dso_local global %struct.TYPE_19__* null, align 8
@MAX_FRONTENDS = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@MAX_ADAPTERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"/dev/dvb/adapter%u/frontend%u\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Opened device %s, FD: %d\0A\00", align 1
@DELSYS_SUPP_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Frontend device %s has no supported delivery systems.\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"Frontend device %s offers some supported delivery systems.\0A\00", align 1
@SYS_DVB__COUNT__ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"channels.conf.cbl\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"channels.conf.atsc\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"channels.conf.ter\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"channels.conf.sat\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Ignoring other channels.conf files.\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"channels.conf\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"DVB_CONFIG, can't realloc %d bytes, skipping\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @dvb_get_state(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.mp_log*, align 8
  %5 = alloca %struct.mpv_global*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca %struct.TYPE_21__*, align 8
  %18 = alloca %struct.TYPE_19__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** @global_dvb_state, align 8
  %24 = icmp ne %struct.TYPE_19__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** @global_dvb_state, align 8
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %2, align 8
  br label %300

27:                                               ; preds = %1
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 2
  %30 = load %struct.mp_log*, %struct.mp_log** %29, align 8
  store %struct.mp_log* %30, %struct.mp_log** %4, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 1
  %33 = load %struct.mpv_global*, %struct.mpv_global** %32, align 8
  store %struct.mpv_global* %33, %struct.mpv_global** %5, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  store %struct.TYPE_20__* %36, %struct.TYPE_20__** %6, align 8
  %37 = load i32, i32* @MAX_FRONTENDS, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %8, align 8
  %40 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %9, align 8
  %41 = load i32, i32* @PATH_MAX, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca i8, i64 %42, align 16
  store i64 %42, i64* %11, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %16, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %18, align 8
  %44 = call %struct.TYPE_19__* @malloc(i32 40)
  store %struct.TYPE_19__* %44, %struct.TYPE_19__** %18, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %46 = icmp eq %struct.TYPE_19__* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %27
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %2, align 8
  store i32 1, i32* %19, align 4
  br label %298

48:                                               ; preds = %27
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %50 = call i32 @memset(%struct.TYPE_19__* %49, i32 0, i32 40)
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 6
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 3
  store i32 -1, i32* %58, align 4
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 2
  store i32 -1, i32* %60, align 8
  store i32 0, i32* %20, align 4
  br label %61

61:                                               ; preds = %284, %48
  %62 = load i32, i32* %20, align 4
  %63 = load i32, i32* @MAX_ADAPTERS, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %287

65:                                               ; preds = %61
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %15, align 8
  store i32 0, i32* %21, align 4
  br label %66

66:                                               ; preds = %212, %65
  %67 = load i32, i32* %21, align 4
  %68 = load i32, i32* @MAX_FRONTENDS, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %215

70:                                               ; preds = %66
  %71 = trunc i64 %42 to i32
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* %21, align 4
  %74 = call i32 @snprintf(i8* %43, i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load i32, i32* @O_RDONLY, align 4
  %76 = load i32, i32* @O_NONBLOCK, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @O_CLOEXEC, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @open(i8* %43, i32 %79)
  store i32 %80, i32* %22, align 4
  %81 = load i32, i32* %22, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %70
  br label %212

84:                                               ; preds = %70
  %85 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %86 = load i32, i32* %22, align 4
  %87 = call i32 (%struct.mp_log*, i8*, ...) @mp_verbose(%struct.mp_log* %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %86)
  %88 = load i32, i32* %22, align 4
  %89 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %90 = call i32 @dvb_get_tuner_delsys_mask(i32 %88, %struct.mp_log* %89)
  %91 = load i32, i32* %21, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %40, i64 %92
  store i32 %90, i32* %93, align 4
  %94 = load i32, i32* @DELSYS_SUPP_MASK, align 4
  %95 = load i32, i32* %21, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %40, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %94
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* %22, align 4
  %101 = call i32 @close(i32 %100)
  %102 = load i32, i32* %21, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %40, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %84
  %108 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %109 = call i32 (%struct.mp_log*, i8*, ...) @mp_verbose(%struct.mp_log* %108, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  br label %212

110:                                              ; preds = %84
  %111 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %112 = call i32 (%struct.mp_log*, i8*, ...) @mp_verbose(%struct.mp_log* %111, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  store i32 0, i32* %7, align 4
  br label %113

113:                                              ; preds = %208, %110
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @SYS_DVB__COUNT__, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %211

117:                                              ; preds = %113
  %118 = load i32, i32* %21, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %40, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %7, align 4
  %123 = call i64 @DELSYS_IS_SET(i32 %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %117
  br label %208

126:                                              ; preds = %117
  %127 = load i32, i32* %7, align 4
  switch i32 %127, label %150 [
    i32 133, label %128
    i32 132, label %128
    i32 134, label %129
    i32 129, label %130
    i32 128, label %139
    i32 131, label %140
    i32 130, label %149
  ]

128:                                              ; preds = %126, %126
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  br label %151

129:                                              ; preds = %126
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  br label %151

130:                                              ; preds = %126
  %131 = load i32, i32* %21, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %40, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @DELSYS_IS_SET(i32 %134, i32 128)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %208

138:                                              ; preds = %130
  br label %139

139:                                              ; preds = %126, %138
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8** %13, align 8
  br label %151

140:                                              ; preds = %126
  %141 = load i32, i32* %21, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %40, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @DELSYS_IS_SET(i32 %144, i32 130)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  br label %208

148:                                              ; preds = %140
  br label %149

149:                                              ; preds = %126, %148
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8** %13, align 8
  br label %151

150:                                              ; preds = %126
  br label %208

151:                                              ; preds = %149, %139, %129, %128
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %174

158:                                              ; preds = %151
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 0
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %158
  store i8* null, i8** %14, align 8
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  store i8* %173, i8** %12, align 8
  br label %190

174:                                              ; preds = %158, %151
  %175 = call i8* @talloc_new(i32* null)
  store i8* %175, i8** %14, align 8
  %176 = load i8*, i8** %14, align 8
  %177 = load %struct.mpv_global*, %struct.mpv_global** %5, align 8
  %178 = load i8*, i8** %13, align 8
  %179 = call i8* @mp_find_config_file(i8* %176, %struct.mpv_global* %177, i8* %178)
  store i8* %179, i8** %12, align 8
  %180 = load i8*, i8** %12, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %185

182:                                              ; preds = %174
  %183 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %184 = call i32 (%struct.mp_log*, i8*, ...) @mp_verbose(%struct.mp_log* %183, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %189

185:                                              ; preds = %174
  %186 = load i8*, i8** %14, align 8
  %187 = load %struct.mpv_global*, %struct.mpv_global** %5, align 8
  %188 = call i8* @mp_find_config_file(i8* %186, %struct.mpv_global* %187, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store i8* %188, i8** %12, align 8
  br label %189

189:                                              ; preds = %185, %182
  br label %190

190:                                              ; preds = %189, %168
  %191 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load i8*, i8** %12, align 8
  %199 = load i32, i32* %21, align 4
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* %21, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %40, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call %struct.TYPE_19__* @dvb_get_channels(%struct.mp_log* %191, %struct.TYPE_19__* %192, i32 %197, i8* %198, i32 %199, i32 %200, i32 %204)
  store %struct.TYPE_19__* %205, %struct.TYPE_19__** %15, align 8
  %206 = load i8*, i8** %14, align 8
  %207 = call i32 @talloc_free(i8* %206)
  br label %208

208:                                              ; preds = %190, %150, %147, %137, %125
  %209 = load i32, i32* %7, align 4
  %210 = add i32 %209, 1
  store i32 %210, i32* %7, align 4
  br label %113

211:                                              ; preds = %113
  br label %212

212:                                              ; preds = %211, %107, %83
  %213 = load i32, i32* %21, align 4
  %214 = add i32 %213, 1
  store i32 %214, i32* %21, align 4
  br label %66

215:                                              ; preds = %66
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %217 = icmp eq %struct.TYPE_19__* %216, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %215
  br label %284

219:                                              ; preds = %215
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = add nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = mul i64 24, %224
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %10, align 4
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 5
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %228, align 8
  %230 = load i32, i32* %10, align 4
  %231 = call %struct.TYPE_21__* @realloc(%struct.TYPE_21__* %229, i32 %230)
  store %struct.TYPE_21__* %231, %struct.TYPE_21__** %17, align 8
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %233 = icmp eq %struct.TYPE_21__* %232, null
  br i1 %233, label %234, label %240

234:                                              ; preds = %219
  %235 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %236 = load i32, i32* %10, align 4
  %237 = call i32 @mp_err(%struct.mp_log* %235, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32 %236)
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %239 = call i32 @free(%struct.TYPE_19__* %238)
  br label %284

240:                                              ; preds = %219
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  store %struct.TYPE_21__* %241, %struct.TYPE_21__** %16, align 8
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 5
  store %struct.TYPE_21__* %242, %struct.TYPE_21__** %244, align 8
  %245 = load i32, i32* %20, align 4
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 5
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %247, align 8
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 0
  store i32 %245, i32* %254, align 8
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 5
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %256, align 8
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 8
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 2
  %264 = bitcast i32* %40 to i32**
  %265 = load i32, i32* @MAX_FRONTENDS, align 4
  %266 = sext i32 %265 to i64
  %267 = mul i64 4, %266
  %268 = trunc i64 %267 to i32
  %269 = call i32 @memcpy(i32* %263, i32** %264, i32 %268)
  %270 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 5
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %272, align 8
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 1
  store %struct.TYPE_19__* %270, %struct.TYPE_19__** %279, align 8
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 8
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %281, align 8
  br label %284

284:                                              ; preds = %240, %234, %218
  %285 = load i32, i32* %20, align 4
  %286 = add i32 %285, 1
  store i32 %286, i32* %20, align 4
  br label %61

287:                                              ; preds = %61
  %288 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 8
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %287
  %293 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %294 = call i32 @free(%struct.TYPE_19__* %293)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %18, align 8
  br label %295

295:                                              ; preds = %292, %287
  %296 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  store %struct.TYPE_19__* %296, %struct.TYPE_19__** @global_dvb_state, align 8
  %297 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  store %struct.TYPE_19__* %297, %struct.TYPE_19__** %2, align 8
  store i32 1, i32* %19, align 4
  br label %298

298:                                              ; preds = %295, %47
  %299 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %299)
  br label %300

300:                                              ; preds = %298, %25
  %301 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  ret %struct.TYPE_19__* %301
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_19__* @malloc(i32) #2

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @mp_verbose(%struct.mp_log*, i8*, ...) #2

declare dso_local i32 @dvb_get_tuner_delsys_mask(i32, %struct.mp_log*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @DELSYS_IS_SET(i32, i32) #2

declare dso_local i8* @talloc_new(i32*) #2

declare dso_local i8* @mp_find_config_file(i8*, %struct.mpv_global*, i8*) #2

declare dso_local %struct.TYPE_19__* @dvb_get_channels(%struct.mp_log*, %struct.TYPE_19__*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @talloc_free(i8*) #2

declare dso_local %struct.TYPE_21__* @realloc(%struct.TYPE_21__*, i32) #2

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, i32) #2

declare dso_local i32 @free(%struct.TYPE_19__*) #2

declare dso_local i32 @memcpy(i32*, i32**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
