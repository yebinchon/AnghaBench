; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/sndvol32/extr_advanced.c_OnInitDialog.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/sndvol32/extr_advanced.c_OnInitDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32*, i32*, %struct.TYPE_17__*, i32*, i8** }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64, i64, i64, i64 }

@hAppInstance = common dso_local global i32 0, align 4
@IDS_ADVANCED_CONTROLS = common dso_local global i64 0, align 8
@IDC_ADV_BASS_LOW = common dso_local global i32 0, align 4
@IDC_ADV_TREBLE_SLIDER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@IDC_ADV_BASS_SLIDER = common dso_local global i32 0, align 4
@TBM_SETRANGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@VOLUME_MIN = common dso_local global i32 0, align 4
@VOLUME_MAX = common dso_local global i32 0, align 4
@TBM_SETPAGESIZE = common dso_local global i32 0, align 4
@VOLUME_PAGE_SIZE = common dso_local global i64 0, align 8
@TBM_SETPOS = common dso_local global i32 0, align 4
@VOLUME_TICKS = common dso_local global i32 0, align 4
@TBM_SETTIC = common dso_local global i32 0, align 4
@IDC_ADV_OTHER_CONTROLS = common dso_local global i32 0, align 4
@IDC_ADV_OTHER_CHECK2 = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@MIXERCONTROL_CONTROLTYPE_BASS = common dso_local global i32 0, align 4
@MIXERCONTROL_CONTROLTYPE_TREBLE = common dso_local global i32 0, align 4
@IDC_ADV_TREBLE_LOW = common dso_local global i32 0, align 4
@MIXERCONTROL_CT_CLASS_MASK = common dso_local global i32 0, align 4
@MIXERCONTROL_CT_SUBCLASS_MASK = common dso_local global i32 0, align 4
@MIXERCONTROL_CT_UNITS_MASK = common dso_local global i32 0, align 4
@MIXERCONTROL_CONTROLTYPE_BOOLEAN = common dso_local global i32 0, align 4
@MIXERCONTROL_CONTROLTYPE_MUTE = common dso_local global i32 0, align 4
@IDS_OTHER_CONTROLS1 = common dso_local global i64 0, align 8
@IDC_ADV_OTHER_CHECK1 = common dso_local global i32 0, align 4
@SW_SHOWNORMAL = common dso_local global i32 0, align 4
@BM_SETCHECK = common dso_local global i32 0, align 4
@IDC_ADV_OTHER_TEXT = common dso_local global i32 0, align 4
@HWND_TOP = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@IDOK = common dso_local global i32 0, align 4
@HWND_DESKTOP = common dso_local global i32 0, align 4
@SWP_NOSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_19__*)* @OnInitDialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnInitDialog(i32 %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__, align 4
  %7 = alloca %struct.TYPE_21__, align 8
  %8 = alloca [256 x i32], align 16
  %9 = alloca [256 x i32], align 16
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_18__, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %16, align 4
  %19 = load i32, i32* @hAppInstance, align 4
  %20 = load i64, i64* @IDS_ADVANCED_CONTROLS, align 8
  %21 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %22 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %23 = call i32 @ARRAYSIZE(i32* %22)
  %24 = call i32 @LoadStringW(i32 %19, i64 %20, i32* %21, i32 %23)
  %25 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %26 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %27 = call i32 @ARRAYSIZE(i32* %26)
  %28 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @StringCchPrintfW(i32* %25, i32 %27, i32* %28, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %37 = call i32 @SetWindowTextW(i32 %35, i32* %36)
  %38 = load i32, i32* @IDC_ADV_BASS_LOW, align 4
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %49, %2
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @IDC_ADV_TREBLE_SLIDER, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @GetDlgItem(i32 %44, i32 %45)
  %47 = load i8*, i8** @FALSE, align 8
  %48 = call i32 @EnableWindow(i32 %46, i8* %47)
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  br label %39

52:                                               ; preds = %39
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @IDC_ADV_BASS_SLIDER, align 4
  %55 = load i32, i32* @TBM_SETRANGE, align 4
  %56 = load i8*, i8** @TRUE, align 8
  %57 = ptrtoint i8* %56 to i32
  %58 = load i32, i32* @VOLUME_MIN, align 4
  %59 = load i32, i32* @VOLUME_MAX, align 4
  %60 = call i64 @MAKELONG(i32 %58, i32 %59)
  %61 = trunc i64 %60 to i32
  %62 = call i32 @SendDlgItemMessageW(i32 %53, i32 %54, i32 %55, i32 %57, i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @IDC_ADV_TREBLE_SLIDER, align 4
  %65 = load i32, i32* @TBM_SETRANGE, align 4
  %66 = load i8*, i8** @TRUE, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = load i32, i32* @VOLUME_MIN, align 4
  %69 = load i32, i32* @VOLUME_MAX, align 4
  %70 = call i64 @MAKELONG(i32 %68, i32 %69)
  %71 = trunc i64 %70 to i32
  %72 = call i32 @SendDlgItemMessageW(i32 %63, i32 %64, i32 %65, i32 %67, i32 %71)
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @IDC_ADV_BASS_SLIDER, align 4
  %75 = load i32, i32* @TBM_SETPAGESIZE, align 4
  %76 = load i64, i64* @VOLUME_PAGE_SIZE, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @SendDlgItemMessageW(i32 %73, i32 %74, i32 %75, i32 0, i32 %77)
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @IDC_ADV_TREBLE_SLIDER, align 4
  %81 = load i32, i32* @TBM_SETPAGESIZE, align 4
  %82 = load i64, i64* @VOLUME_PAGE_SIZE, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @SendDlgItemMessageW(i32 %79, i32 %80, i32 %81, i32 0, i32 %83)
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @IDC_ADV_BASS_SLIDER, align 4
  %87 = load i32, i32* @TBM_SETPOS, align 4
  %88 = load i8*, i8** @TRUE, align 8
  %89 = ptrtoint i8* %88 to i32
  %90 = call i32 @SendDlgItemMessageW(i32 %85, i32 %86, i32 %87, i32 %89, i32 0)
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @IDC_ADV_TREBLE_SLIDER, align 4
  %93 = load i32, i32* @TBM_SETPOS, align 4
  %94 = load i8*, i8** @TRUE, align 8
  %95 = ptrtoint i8* %94 to i32
  %96 = call i32 @SendDlgItemMessageW(i32 %91, i32 %92, i32 %93, i32 %95, i32 0)
  %97 = load i32, i32* @VOLUME_MAX, align 4
  %98 = load i32, i32* @VOLUME_TICKS, align 4
  %99 = add nsw i32 %98, 1
  %100 = sdiv i32 %97, %99
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* @VOLUME_MAX, align 4
  %102 = load i32, i32* @VOLUME_TICKS, align 4
  %103 = add nsw i32 %102, 1
  %104 = srem i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %52
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %106, %52
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %126, %109
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* @VOLUME_MAX, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %111
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @IDC_ADV_BASS_SLIDER, align 4
  %118 = load i32, i32* @TBM_SETTIC, align 4
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @SendDlgItemMessageW(i32 %116, i32 %117, i32 %118, i32 0, i32 %119)
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @IDC_ADV_TREBLE_SLIDER, align 4
  %123 = load i32, i32* @TBM_SETTIC, align 4
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @SendDlgItemMessageW(i32 %121, i32 %122, i32 %123, i32 0, i32 %124)
  br label %126

126:                                              ; preds = %115
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %13, align 4
  br label %111

130:                                              ; preds = %111
  %131 = load i32, i32* @IDC_ADV_OTHER_CONTROLS, align 4
  store i32 %131, i32* %13, align 4
  br label %132

132:                                              ; preds = %142, %130
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* @IDC_ADV_OTHER_CHECK2, align 4
  %135 = icmp sle i32 %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* %13, align 4
  %139 = call i32 @GetDlgItem(i32 %137, i32 %138)
  %140 = load i32, i32* @SW_HIDE, align 4
  %141 = call i32 @ShowWindow(i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %136
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %13, align 4
  br label %132

145:                                              ; preds = %132
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @SndMixerQueryControls(i32 %150, i64* %11, i32 %155, %struct.TYPE_22__** %10)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %495

158:                                              ; preds = %145
  store i64 0, i64* %12, align 8
  br label %159

159:                                              ; preds = %488, %158
  %160 = load i64, i64* %12, align 8
  %161 = load i64, i64* %11, align 8
  %162 = icmp ult i64 %160, %161
  br i1 %162, label %163, label %491

163:                                              ; preds = %159
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %165 = load i64, i64* %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @MIXERCONTROL_CONTROLTYPE_BASS, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %271

171:                                              ; preds = %163
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %178 = load i64, i64* %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = ptrtoint %struct.TYPE_20__* %6 to i32
  %183 = call i32 @SndMixerGetVolumeControlDetails(i32 %176, i32 %181, i32 1, i32 4, i32 %182)
  %184 = icmp ne i32 %183, -1
  br i1 %184, label %185, label %270

185:                                              ; preds = %171
  %186 = load i32, i32* @IDC_ADV_BASS_LOW, align 4
  store i32 %186, i32* %13, align 4
  br label %187

187:                                              ; preds = %197, %185
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* @IDC_ADV_BASS_SLIDER, align 4
  %190 = icmp sle i32 %188, %189
  br i1 %190, label %191, label %200

191:                                              ; preds = %187
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* %13, align 4
  %194 = call i32 @GetDlgItem(i32 %192, i32 %193)
  %195 = load i8*, i8** @TRUE, align 8
  %196 = call i32 @EnableWindow(i32 %194, i8* %195)
  br label %197

197:                                              ; preds = %191
  %198 = load i32, i32* %13, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %13, align 4
  br label %187

200:                                              ; preds = %187
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %202 = load i64, i64* %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %208 = load i64, i64* %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = sub nsw i32 %206, %212
  %214 = load i32, i32* @VOLUME_MAX, align 4
  %215 = load i32, i32* @VOLUME_MIN, align 4
  %216 = sub nsw i32 %214, %215
  %217 = sdiv i32 %213, %216
  store i32 %217, i32* %14, align 4
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %221 = load i64, i64* %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = sub nsw i32 %219, %225
  %227 = load i32, i32* %14, align 4
  %228 = sdiv i32 %226, %227
  store i32 %228, i32* %15, align 4
  %229 = load i32, i32* %4, align 4
  %230 = load i32, i32* @IDC_ADV_BASS_SLIDER, align 4
  %231 = load i32, i32* @TBM_SETPOS, align 4
  %232 = load i8*, i8** @TRUE, align 8
  %233 = ptrtoint i8* %232 to i32
  %234 = load i32, i32* %15, align 4
  %235 = call i32 @SendDlgItemMessageW(i32 %229, i32 %230, i32 %231, i32 %233, i32 %234)
  %236 = load i8*, i8** @TRUE, align 8
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 4
  %239 = load i8**, i8*** %238, align 8
  %240 = getelementptr inbounds i8*, i8** %239, i64 0
  store i8* %236, i8** %240, align 8
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %242 = load i64, i64* %12, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 3
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  store i32 %245, i32* %249, align 4
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %251 = load i64, i64* %12, align 8
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 0
  store i32 %255, i32* %259, align 4
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %261 = load i64, i64* %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 0
  store i32 %265, i32* %269, align 4
  br label %270

270:                                              ; preds = %200, %171
  br label %487

271:                                              ; preds = %163
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %273 = load i64, i64* %12, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @MIXERCONTROL_CONTROLTYPE_TREBLE, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %379

279:                                              ; preds = %271
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 2
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %286 = load i64, i64* %12, align 8
  %287 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %285, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = ptrtoint %struct.TYPE_20__* %6 to i32
  %291 = call i32 @SndMixerGetVolumeControlDetails(i32 %284, i32 %289, i32 1, i32 4, i32 %290)
  %292 = icmp ne i32 %291, -1
  br i1 %292, label %293, label %378

293:                                              ; preds = %279
  %294 = load i32, i32* @IDC_ADV_TREBLE_LOW, align 4
  store i32 %294, i32* %13, align 4
  br label %295

295:                                              ; preds = %305, %293
  %296 = load i32, i32* %13, align 4
  %297 = load i32, i32* @IDC_ADV_TREBLE_SLIDER, align 4
  %298 = icmp sle i32 %296, %297
  br i1 %298, label %299, label %308

299:                                              ; preds = %295
  %300 = load i32, i32* %4, align 4
  %301 = load i32, i32* %13, align 4
  %302 = call i32 @GetDlgItem(i32 %300, i32 %301)
  %303 = load i8*, i8** @TRUE, align 8
  %304 = call i32 @EnableWindow(i32 %302, i8* %303)
  br label %305

305:                                              ; preds = %299
  %306 = load i32, i32* %13, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %13, align 4
  br label %295

308:                                              ; preds = %295
  %309 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %310 = load i64, i64* %12, align 8
  %311 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %309, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %311, i32 0, i32 3
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %316 = load i64, i64* %12, align 8
  %317 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %315, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %317, i32 0, i32 3
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = sub nsw i32 %314, %320
  %322 = load i32, i32* @VOLUME_MAX, align 4
  %323 = load i32, i32* @VOLUME_MIN, align 4
  %324 = sub nsw i32 %322, %323
  %325 = sdiv i32 %321, %324
  store i32 %325, i32* %14, align 4
  %326 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %329 = load i64, i64* %12, align 8
  %330 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %328, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %330, i32 0, i32 3
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = sub nsw i32 %327, %333
  %335 = load i32, i32* %14, align 4
  %336 = sdiv i32 %334, %335
  store i32 %336, i32* %15, align 4
  %337 = load i32, i32* %4, align 4
  %338 = load i32, i32* @IDC_ADV_TREBLE_SLIDER, align 4
  %339 = load i32, i32* @TBM_SETPOS, align 4
  %340 = load i8*, i8** @TRUE, align 8
  %341 = ptrtoint i8* %340 to i32
  %342 = load i32, i32* %15, align 4
  %343 = call i32 @SendDlgItemMessageW(i32 %337, i32 %338, i32 %339, i32 %341, i32 %342)
  %344 = load i8*, i8** @TRUE, align 8
  %345 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %345, i32 0, i32 4
  %347 = load i8**, i8*** %346, align 8
  %348 = getelementptr inbounds i8*, i8** %347, i64 1
  store i8* %344, i8** %348, align 8
  %349 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %350 = load i64, i64* %12, align 8
  %351 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %349, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %354, i32 0, i32 3
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 1
  store i32 %353, i32* %357, align 4
  %358 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %359 = load i64, i64* %12, align 8
  %360 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %358, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %360, i32 0, i32 3
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %364, i32 0, i32 0
  %366 = load i32*, i32** %365, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 1
  store i32 %363, i32* %367, align 4
  %368 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %369 = load i64, i64* %12, align 8
  %370 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %368, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %370, i32 0, i32 3
  %372 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %375 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %374, i32 0, i32 1
  %376 = load i32*, i32** %375, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 1
  store i32 %373, i32* %377, align 4
  br label %378

378:                                              ; preds = %308, %279
  br label %486

379:                                              ; preds = %271
  %380 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %381 = load i64, i64* %12, align 8
  %382 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %380, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* @MIXERCONTROL_CT_CLASS_MASK, align 4
  %386 = load i32, i32* @MIXERCONTROL_CT_SUBCLASS_MASK, align 4
  %387 = or i32 %385, %386
  %388 = load i32, i32* @MIXERCONTROL_CT_UNITS_MASK, align 4
  %389 = or i32 %387, %388
  %390 = and i32 %384, %389
  %391 = load i32, i32* @MIXERCONTROL_CONTROLTYPE_BOOLEAN, align 4
  %392 = icmp eq i32 %390, %391
  br i1 %392, label %393, label %485

393:                                              ; preds = %379
  %394 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %395 = load i64, i64* %12, align 8
  %396 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %394, i64 %395
  %397 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = load i32, i32* @MIXERCONTROL_CONTROLTYPE_MUTE, align 4
  %400 = icmp ne i32 %398, %399
  br i1 %400, label %401, label %485

401:                                              ; preds = %393
  %402 = load i32, i32* %16, align 4
  %403 = icmp slt i32 %402, 2
  br i1 %403, label %404, label %484

404:                                              ; preds = %401
  %405 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %405, i32 0, i32 2
  %407 = load %struct.TYPE_17__*, %struct.TYPE_17__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 8
  %410 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %411 = load i64, i64* %12, align 8
  %412 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %410, i64 %411
  %413 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = ptrtoint %struct.TYPE_21__* %7 to i32
  %416 = call i32 @SndMixerGetVolumeControlDetails(i32 %409, i32 %414, i32 1, i32 8, i32 %415)
  %417 = icmp ne i32 %416, -1
  br i1 %417, label %418, label %483

418:                                              ; preds = %404
  %419 = load i32, i32* @hAppInstance, align 4
  %420 = load i64, i64* @IDS_OTHER_CONTROLS1, align 8
  %421 = load i32, i32* %16, align 4
  %422 = sext i32 %421 to i64
  %423 = add nsw i64 %420, %422
  %424 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %425 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %426 = call i32 @ARRAYSIZE(i32* %425)
  %427 = call i32 @LoadStringW(i32 %419, i64 %423, i32* %424, i32 %426)
  %428 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %429 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %430 = call i32 @ARRAYSIZE(i32* %429)
  %431 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %432 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %433 = load i64, i64* %12, align 8
  %434 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %432, i64 %433
  %435 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %434, i32 0, i32 2
  %436 = load i32, i32* %435, align 4
  %437 = call i32 @StringCchPrintfW(i32* %428, i32 %430, i32* %431, i32 %436)
  %438 = load i32, i32* %4, align 4
  %439 = load i32, i32* @IDC_ADV_OTHER_CHECK1, align 4
  %440 = load i32, i32* %16, align 4
  %441 = add nsw i32 %439, %440
  %442 = call i32 @GetDlgItem(i32 %438, i32 %441)
  %443 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %444 = call i32 @SetWindowTextW(i32 %442, i32* %443)
  %445 = load i32, i32* %4, align 4
  %446 = load i32, i32* @IDC_ADV_OTHER_CHECK1, align 4
  %447 = load i32, i32* %16, align 4
  %448 = add nsw i32 %446, %447
  %449 = call i32 @GetDlgItem(i32 %445, i32 %448)
  %450 = load i32, i32* @SW_SHOWNORMAL, align 4
  %451 = call i32 @ShowWindow(i32 %449, i32 %450)
  %452 = load i32, i32* %4, align 4
  %453 = load i32, i32* @IDC_ADV_OTHER_CHECK1, align 4
  %454 = load i32, i32* %16, align 4
  %455 = add nsw i32 %453, %454
  %456 = load i32, i32* @BM_SETCHECK, align 4
  %457 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  %458 = load i64, i64* %457, align 8
  %459 = trunc i64 %458 to i32
  %460 = call i32 @SendDlgItemMessageW(i32 %452, i32 %455, i32 %456, i32 %459, i32 0)
  %461 = load i8*, i8** @TRUE, align 8
  %462 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %463 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %462, i32 0, i32 4
  %464 = load i8**, i8*** %463, align 8
  %465 = load i32, i32* %16, align 4
  %466 = add nsw i32 %465, 2
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i8*, i8** %464, i64 %467
  store i8* %461, i8** %468, align 8
  %469 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %470 = load i64, i64* %12, align 8
  %471 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %469, i64 %470
  %472 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  %474 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %475 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %474, i32 0, i32 3
  %476 = load i32*, i32** %475, align 8
  %477 = load i32, i32* %16, align 4
  %478 = add nsw i32 %477, 2
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i32, i32* %476, i64 %479
  store i32 %473, i32* %480, align 4
  %481 = load i32, i32* %16, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %16, align 4
  br label %483

483:                                              ; preds = %418, %404
  br label %484

484:                                              ; preds = %483, %401
  br label %485

485:                                              ; preds = %484, %393, %379
  br label %486

486:                                              ; preds = %485, %378
  br label %487

487:                                              ; preds = %486, %270
  br label %488

488:                                              ; preds = %487
  %489 = load i64, i64* %12, align 8
  %490 = add i64 %489, 1
  store i64 %490, i64* %12, align 8
  br label %159

491:                                              ; preds = %159
  %492 = call i32 (...) @GetProcessHeap()
  %493 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %494 = call i32 @HeapFree(i32 %492, i32 0, %struct.TYPE_22__* %493)
  br label %495

495:                                              ; preds = %491, %145
  %496 = load i32, i32* %16, align 4
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %633

498:                                              ; preds = %495
  %499 = load i32, i32* %4, align 4
  %500 = load i32, i32* @IDC_ADV_OTHER_CONTROLS, align 4
  %501 = call i32 @GetDlgItem(i32 %499, i32 %500)
  %502 = load i32, i32* @SW_SHOWNORMAL, align 4
  %503 = call i32 @ShowWindow(i32 %501, i32 %502)
  %504 = load i32, i32* %4, align 4
  %505 = load i32, i32* @IDC_ADV_OTHER_TEXT, align 4
  %506 = call i32 @GetDlgItem(i32 %504, i32 %505)
  %507 = load i32, i32* @SW_SHOWNORMAL, align 4
  %508 = call i32 @ShowWindow(i32 %506, i32 %507)
  %509 = load i32, i32* %4, align 4
  %510 = call i32 @GetWindowRect(i32 %509, %struct.TYPE_18__* %17)
  %511 = load i32, i32* %16, align 4
  %512 = icmp eq i32 %511, 1
  %513 = zext i1 %512 to i64
  %514 = select i1 %512, i32 73, i32 88
  %515 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %516 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %515, i32 0, i32 2
  %517 = load %struct.TYPE_17__*, %struct.TYPE_17__** %516, align 8
  %518 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %517, i32 0, i32 0
  %519 = load %struct.TYPE_16__*, %struct.TYPE_16__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %519, i32 0, i32 0
  %521 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 4
  %523 = call i64 @MulDiv(i32 %514, i32 %522, i32 8)
  store i64 %523, i64* %18, align 8
  %524 = load i64, i64* %18, align 8
  %525 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %526 = load i64, i64* %525, align 8
  %527 = add nsw i64 %526, %524
  store i64 %527, i64* %525, align 8
  %528 = load i32, i32* %4, align 4
  %529 = load i32, i32* @HWND_TOP, align 4
  %530 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 2
  %531 = load i64, i64* %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %533 = load i64, i64* %532, align 8
  %534 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 3
  %535 = load i64, i64* %534, align 8
  %536 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 2
  %537 = load i64, i64* %536, align 8
  %538 = sub nsw i64 %535, %537
  %539 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %540 = load i64, i64* %539, align 8
  %541 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %542 = load i64, i64* %541, align 8
  %543 = sub nsw i64 %540, %542
  %544 = load i32, i32* @SWP_NOMOVE, align 4
  %545 = load i32, i32* @SWP_NOZORDER, align 4
  %546 = or i32 %544, %545
  %547 = call i32 @SetWindowPos(i32 %528, i32 %529, i64 %531, i64 %533, i64 %538, i64 %543, i32 %546)
  %548 = load i32, i32* %4, align 4
  %549 = load i32, i32* @IDOK, align 4
  %550 = call i32 @GetDlgItem(i32 %548, i32 %549)
  %551 = call i32 @GetWindowRect(i32 %550, %struct.TYPE_18__* %17)
  %552 = load i32, i32* @HWND_DESKTOP, align 4
  %553 = load i32, i32* %4, align 4
  %554 = ptrtoint %struct.TYPE_18__* %17 to i32
  %555 = call i32 @MapWindowPoints(i32 %552, i32 %553, i32 %554, i32 2)
  %556 = load i64, i64* %18, align 8
  %557 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %558 = load i64, i64* %557, align 8
  %559 = add nsw i64 %558, %556
  store i64 %559, i64* %557, align 8
  %560 = load i64, i64* %18, align 8
  %561 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %562 = load i64, i64* %561, align 8
  %563 = add nsw i64 %562, %560
  store i64 %563, i64* %561, align 8
  %564 = load i32, i32* %4, align 4
  %565 = load i32, i32* @IDOK, align 4
  %566 = call i32 @GetDlgItem(i32 %564, i32 %565)
  %567 = load i32, i32* @HWND_TOP, align 4
  %568 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 2
  %569 = load i64, i64* %568, align 8
  %570 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %571 = load i64, i64* %570, align 8
  %572 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 3
  %573 = load i64, i64* %572, align 8
  %574 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 2
  %575 = load i64, i64* %574, align 8
  %576 = sub nsw i64 %573, %575
  %577 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %578 = load i64, i64* %577, align 8
  %579 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %580 = load i64, i64* %579, align 8
  %581 = sub nsw i64 %578, %580
  %582 = load i32, i32* @SWP_NOSIZE, align 4
  %583 = load i32, i32* @SWP_NOZORDER, align 4
  %584 = or i32 %582, %583
  %585 = call i32 @SetWindowPos(i32 %566, i32 %567, i64 %569, i64 %571, i64 %576, i64 %581, i32 %584)
  %586 = load i32, i32* %16, align 4
  %587 = icmp eq i32 %586, 2
  br i1 %587, label %588, label %632

588:                                              ; preds = %498
  %589 = load i32, i32* %4, align 4
  %590 = load i32, i32* @IDC_ADV_OTHER_CONTROLS, align 4
  %591 = call i32 @GetDlgItem(i32 %589, i32 %590)
  %592 = call i32 @GetWindowRect(i32 %591, %struct.TYPE_18__* %17)
  %593 = load i32, i32* @HWND_DESKTOP, align 4
  %594 = load i32, i32* %4, align 4
  %595 = ptrtoint %struct.TYPE_18__* %17 to i32
  %596 = call i32 @MapWindowPoints(i32 %593, i32 %594, i32 %595, i32 2)
  %597 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %598 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %597, i32 0, i32 2
  %599 = load %struct.TYPE_17__*, %struct.TYPE_17__** %598, align 8
  %600 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %599, i32 0, i32 0
  %601 = load %struct.TYPE_16__*, %struct.TYPE_16__** %600, align 8
  %602 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %601, i32 0, i32 0
  %603 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %602, i32 0, i32 0
  %604 = load i32, i32* %603, align 4
  %605 = call i64 @MulDiv(i32 15, i32 %604, i32 8)
  store i64 %605, i64* %18, align 8
  %606 = load i64, i64* %18, align 8
  %607 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %608 = load i64, i64* %607, align 8
  %609 = add nsw i64 %608, %606
  store i64 %609, i64* %607, align 8
  %610 = load i32, i32* %4, align 4
  %611 = load i32, i32* @IDC_ADV_OTHER_CONTROLS, align 4
  %612 = call i32 @GetDlgItem(i32 %610, i32 %611)
  %613 = load i32, i32* @HWND_TOP, align 4
  %614 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 2
  %615 = load i64, i64* %614, align 8
  %616 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %617 = load i64, i64* %616, align 8
  %618 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 3
  %619 = load i64, i64* %618, align 8
  %620 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 2
  %621 = load i64, i64* %620, align 8
  %622 = sub nsw i64 %619, %621
  %623 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %624 = load i64, i64* %623, align 8
  %625 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %626 = load i64, i64* %625, align 8
  %627 = sub nsw i64 %624, %626
  %628 = load i32, i32* @SWP_NOMOVE, align 4
  %629 = load i32, i32* @SWP_NOZORDER, align 4
  %630 = or i32 %628, %629
  %631 = call i32 @SetWindowPos(i32 %612, i32 %613, i64 %615, i64 %617, i64 %622, i64 %627, i32 %630)
  br label %632

632:                                              ; preds = %588, %498
  br label %633

633:                                              ; preds = %632, %495
  %634 = load i32, i32* %3, align 4
  ret i32 %634
}

declare dso_local i32 @LoadStringW(i32, i64, i32*, i32) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i32 @StringCchPrintfW(i32*, i32, i32*, i32) #1

declare dso_local i32 @SetWindowTextW(i32, i32*) #1

declare dso_local i32 @EnableWindow(i32, i8*) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local i64 @MAKELONG(i32, i32) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

declare dso_local i64 @SndMixerQueryControls(i32, i64*, i32, %struct.TYPE_22__**) #1

declare dso_local i32 @SndMixerGetVolumeControlDetails(i32, i32, i32, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_18__*) #1

declare dso_local i64 @MulDiv(i32, i32, i32) #1

declare dso_local i32 @SetWindowPos(i32, i32, i64, i64, i64, i64, i32) #1

declare dso_local i32 @MapWindowPoints(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
