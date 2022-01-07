; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_dsound_main.c_setup_dsound_options.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_dsound_main.c_setup_dsound_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Software\\Wine\\DirectSound\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Software\\Wine\\AppDefaults\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"\\DirectSound\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"appname = [%s]\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"EmulDriver\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@ds_emuldriver = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"HelBuflen\00", align 1
@ds_hel_buflen = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"SndQueueMax\00", align 1
@ds_snd_queue_max = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"SndQueueMin\00", align 1
@ds_snd_queue_min = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"HardwareAcceleration\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@DS_HW_ACCEL_FULL = common dso_local global i64 0, align 8
@ds_hw_accel = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [9 x i8] c"Standard\00", align 1
@DS_HW_ACCEL_STANDARD = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c"Basic\00", align 1
@DS_HW_ACCEL_BASIC = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"Emulation\00", align 1
@DS_HW_ACCEL_EMULATION = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [16 x i8] c"DefaultPlayback\00", align 1
@ds_default_playback = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [14 x i8] c"MaxShadowSize\00", align 1
@ds_snd_shadow_maxsize = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [15 x i8] c"DefaultCapture\00", align 1
@ds_default_capture = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [18 x i8] c"DefaultSampleRate\00", align 1
@ds_default_sample_rate = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [21 x i8] c"DefaultBitsPerSample\00", align 1
@ds_default_bits_per_sample = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [20 x i8] c"ds_emuldriver = %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"ds_hel_buflen = %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"ds_snd_queue_max = %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"ds_snd_queue_min = %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"ds_hw_accel = %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"ds_default_playback = %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"ds_default_capture = %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"ds_default_sample_rate = %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"ds_default_bits_per_sample = %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"ds_snd_shadow_maxsize = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_dsound_options() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = add nsw i32 %9, 16
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %1, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %2, align 8
  store i64 0, i64* %4, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  store i8 0, i8* %16, align 1
  %17 = load i64, i64* @HKEY_CURRENT_USER, align 8
  %18 = call i64 @RegOpenKeyA(i64 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64* %3)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  store i64 0, i64* %3, align 8
  br label %21

21:                                               ; preds = %20, %0
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = call i32 @GetModuleFileNameA(i32 0, i8* %13, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @MAX_PATH, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %62

30:                                               ; preds = %26
  %31 = load i64, i64* @HKEY_CURRENT_USER, align 8
  %32 = call i64 @RegOpenKeyA(i64 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64* %6)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %61, label %34

34:                                               ; preds = %30
  store i8* %13, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i8* @strrchr(i8* %35, i8 signext 47)
  store i8* %36, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8* %40, i8** %8, align 8
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i8*, i8** %8, align 8
  %43 = call i8* @strrchr(i8* %42, i8 signext 92)
  store i8* %43, i8** %7, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8* %47, i8** %8, align 8
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @strcat(i8* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  %53 = load i64, i64* %6, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i64 @RegOpenKeyA(i64 %53, i8* %54, i64* %4)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i64 0, i64* %4, align 8
  br label %58

58:                                               ; preds = %57, %48
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @RegCloseKey(i64 %59)
  br label %61

61:                                               ; preds = %58, %30
  br label %62

62:                                               ; preds = %61, %26, %21
  %63 = load i64, i64* %3, align 8
  %64 = load i64, i64* %4, align 8
  %65 = load i32, i32* @MAX_PATH, align 4
  %66 = call i32 @get_config_key(i64 %63, i64 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %13, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %70 = inttoptr i64 %69 to i8*
  store i8* %70, i8** @ds_emuldriver, align 8
  br label %71

71:                                               ; preds = %68, %62
  %72 = load i64, i64* %3, align 8
  %73 = load i64, i64* %4, align 8
  %74 = load i32, i32* @MAX_PATH, align 4
  %75 = call i32 @get_config_key(i64 %72, i64 %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %13, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %71
  %78 = call i8* @atoi(i8* %13)
  store i8* %78, i8** @ds_hel_buflen, align 8
  br label %79

79:                                               ; preds = %77, %71
  %80 = load i64, i64* %3, align 8
  %81 = load i64, i64* %4, align 8
  %82 = load i32, i32* @MAX_PATH, align 4
  %83 = call i32 @get_config_key(i64 %80, i64 %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %13, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  %86 = call i8* @atoi(i8* %13)
  store i8* %86, i8** @ds_snd_queue_max, align 8
  br label %87

87:                                               ; preds = %85, %79
  %88 = load i64, i64* %3, align 8
  %89 = load i64, i64* %4, align 8
  %90 = load i32, i32* @MAX_PATH, align 4
  %91 = call i32 @get_config_key(i64 %88, i64 %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %13, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %87
  %94 = call i8* @atoi(i8* %13)
  store i8* %94, i8** @ds_snd_queue_min, align 8
  br label %95

95:                                               ; preds = %93, %87
  %96 = load i64, i64* %3, align 8
  %97 = load i64, i64* %4, align 8
  %98 = load i32, i32* @MAX_PATH, align 4
  %99 = call i32 @get_config_key(i64 %96, i64 %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %13, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %125, label %101

101:                                              ; preds = %95
  %102 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i64, i64* @DS_HW_ACCEL_FULL, align 8
  store i64 %105, i64* @ds_hw_accel, align 8
  br label %124

106:                                              ; preds = %101
  %107 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i64, i64* @DS_HW_ACCEL_STANDARD, align 8
  store i64 %110, i64* @ds_hw_accel, align 8
  br label %123

111:                                              ; preds = %106
  %112 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i64, i64* @DS_HW_ACCEL_BASIC, align 8
  store i64 %115, i64* @ds_hw_accel, align 8
  br label %122

116:                                              ; preds = %111
  %117 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i64, i64* @DS_HW_ACCEL_EMULATION, align 8
  store i64 %120, i64* @ds_hw_accel, align 8
  br label %121

121:                                              ; preds = %119, %116
  br label %122

122:                                              ; preds = %121, %114
  br label %123

123:                                              ; preds = %122, %109
  br label %124

124:                                              ; preds = %123, %104
  br label %125

125:                                              ; preds = %124, %95
  %126 = load i64, i64* %3, align 8
  %127 = load i64, i64* %4, align 8
  %128 = load i32, i32* @MAX_PATH, align 4
  %129 = call i32 @get_config_key(i64 %126, i64 %127, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* %13, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %125
  %132 = call i8* @atoi(i8* %13)
  store i8* %132, i8** @ds_default_playback, align 8
  br label %133

133:                                              ; preds = %131, %125
  %134 = load i64, i64* %3, align 8
  %135 = load i64, i64* %4, align 8
  %136 = load i32, i32* @MAX_PATH, align 4
  %137 = call i32 @get_config_key(i64 %134, i64 %135, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %13, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %133
  %140 = call i8* @atoi(i8* %13)
  store i8* %140, i8** @ds_snd_shadow_maxsize, align 8
  br label %141

141:                                              ; preds = %139, %133
  %142 = load i64, i64* %3, align 8
  %143 = load i64, i64* %4, align 8
  %144 = load i32, i32* @MAX_PATH, align 4
  %145 = call i32 @get_config_key(i64 %142, i64 %143, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* %13, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %141
  %148 = call i8* @atoi(i8* %13)
  store i8* %148, i8** @ds_default_capture, align 8
  br label %149

149:                                              ; preds = %147, %141
  %150 = load i64, i64* %3, align 8
  %151 = load i64, i64* %4, align 8
  %152 = load i32, i32* @MAX_PATH, align 4
  %153 = call i32 @get_config_key(i64 %150, i64 %151, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8* %13, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %149
  %156 = call i8* @atoi(i8* %13)
  store i8* %156, i8** @ds_default_sample_rate, align 8
  br label %157

157:                                              ; preds = %155, %149
  %158 = load i64, i64* %3, align 8
  %159 = load i64, i64* %4, align 8
  %160 = load i32, i32* @MAX_PATH, align 4
  %161 = call i32 @get_config_key(i64 %158, i64 %159, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i8* %13, i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %157
  %164 = call i8* @atoi(i8* %13)
  store i8* %164, i8** @ds_default_bits_per_sample, align 8
  br label %165

165:                                              ; preds = %163, %157
  %166 = load i64, i64* %4, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i64, i64* %4, align 8
  %170 = call i32 @RegCloseKey(i64 %169)
  br label %171

171:                                              ; preds = %168, %165
  %172 = load i64, i64* %3, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i64, i64* %3, align 8
  %176 = call i32 @RegCloseKey(i64 %175)
  br label %177

177:                                              ; preds = %174, %171
  %178 = load i8*, i8** @ds_emuldriver, align 8
  %179 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* %178)
  %180 = load i8*, i8** @ds_hel_buflen, align 8
  %181 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i8* %180)
  %182 = load i8*, i8** @ds_snd_queue_max, align 8
  %183 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i8* %182)
  %184 = load i8*, i8** @ds_snd_queue_min, align 8
  %185 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i8* %184)
  %186 = load i64, i64* @ds_hw_accel, align 8
  %187 = load i64, i64* @DS_HW_ACCEL_FULL, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %177
  br label %210

190:                                              ; preds = %177
  %191 = load i64, i64* @ds_hw_accel, align 8
  %192 = load i64, i64* @DS_HW_ACCEL_STANDARD, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %190
  br label %208

195:                                              ; preds = %190
  %196 = load i64, i64* @ds_hw_accel, align 8
  %197 = load i64, i64* @DS_HW_ACCEL_BASIC, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  br label %206

200:                                              ; preds = %195
  %201 = load i64, i64* @ds_hw_accel, align 8
  %202 = load i64, i64* @DS_HW_ACCEL_EMULATION, align 8
  %203 = icmp eq i64 %201, %202
  %204 = zext i1 %203 to i64
  %205 = select i1 %203, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)
  br label %206

206:                                              ; preds = %200, %199
  %207 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), %199 ], [ %205, %200 ]
  br label %208

208:                                              ; preds = %206, %194
  %209 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), %194 ], [ %207, %206 ]
  br label %210

210:                                              ; preds = %208, %189
  %211 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %189 ], [ %209, %208 ]
  %212 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i8* %211)
  %213 = load i8*, i8** @ds_default_playback, align 8
  %214 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0), i8* %213)
  %215 = load i8*, i8** @ds_default_playback, align 8
  %216 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i8* %215)
  %217 = load i8*, i8** @ds_default_sample_rate, align 8
  %218 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0), i8* %217)
  %219 = load i8*, i8** @ds_default_bits_per_sample, align 8
  %220 = call i32 @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0), i8* %219)
  %221 = load i8*, i8** @ds_snd_shadow_maxsize, align 8
  %222 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0), i8* %221)
  %223 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %223)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegOpenKeyA(i64, i8*, i64*) #2

declare dso_local i32 @GetModuleFileNameA(i32, i8*, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @TRACE(i8*, i8*) #2

declare dso_local i32 @RegCloseKey(i64) #2

declare dso_local i32 @get_config_key(i64, i64, i8*, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @atoi(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
