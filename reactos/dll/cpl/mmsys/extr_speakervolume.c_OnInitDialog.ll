; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_speakervolume.c_OnInitDialog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_speakervolume.c_OnInitDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_12__*, i64, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_18__*, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_12__*, i64, i32 }

@MIXER_OBJECTF_MIXER = common dso_local global i32 0, align 4
@CALLBACK_WINDOW = common dso_local global i32 0, align 4
@MMSYSERR_NOERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Cannot open mixer\00", align 1
@MB_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@MIXERLINE_COMPONENTTYPE_DST_SPEAKERS = common dso_local global i32 0, align 4
@MIXER_OBJECTF_HMIXER = common dso_local global i32 0, align 4
@MIXER_GETLINEINFOF_COMPONENTTYPE = common dso_local global i32 0, align 4
@MIXERCONTROL_CONTROLTYPE_VOLUME = common dso_local global i32 0, align 4
@MIXER_GETLINECONTROLSF_ONEBYTYPE = common dso_local global i32 0, align 4
@VOLUME_MAX = common dso_local global i32 0, align 4
@VOLUME_MIN = common dso_local global i32 0, align 4
@MIXER_GETCONTROLDETAILSF_VALUE = common dso_local global i32 0, align 4
@hApplet = common dso_local global i32 0, align 4
@IDS_SPEAKER_LEFT = common dso_local global i64 0, align 8
@TBM_SETRANGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@TBM_SETTICFREQ = common dso_local global i32 0, align 4
@VOLUME_TICFREQ = common dso_local global i32 0, align 4
@TBM_SETPAGESIZE = common dso_local global i32 0, align 4
@VOLUME_PAGESIZE = common dso_local global i32 0, align 4
@TBM_SETPOS = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, i32)* @OnInitDialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @OnInitDialog(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [256 x i32], align 16
  %7 = alloca %struct.TYPE_16__, align 4
  %8 = alloca %struct.TYPE_18__, align 4
  %9 = alloca %struct.TYPE_15__, align 8
  %10 = alloca %struct.TYPE_17__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 5
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @PtrToUlong(i32 %15)
  %17 = load i32, i32* @MIXER_OBJECTF_MIXER, align 4
  %18 = load i32, i32* @CALLBACK_WINDOW, align 4
  %19 = or i32 %17, %18
  %20 = call i64 @mixerOpen(i64* %14, i32 0, i32 %16, i32 0, i32 %19)
  %21 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @_T(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @MB_OK, align 4
  %27 = call i32 @MessageBox(i32 %24, i32 %25, i32* null, i32 %26)
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %3, align 8
  br label %252

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  store i32 16, i32* %30, align 4
  %31 = load i32, i32* @MIXERLINE_COMPONENTTYPE_DST_SPEAKERS, align 4
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @MIXER_OBJECTF_HMIXER, align 4
  %38 = load i32, i32* @MIXER_GETLINEINFOF_COMPONENTTYPE, align 4
  %39 = or i32 %37, %38
  %40 = call i64 @mixerGetLineInfo(i32 %36, %struct.TYPE_16__* %7, i32 %39)
  %41 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = load i64, i64* @FALSE, align 8
  store i64 %44, i64* %3, align 8
  br label %252

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  store i32 32, i32* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 5
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @MIXERCONTROL_CONTROLTYPE_VOLUME, align 4
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 4
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 2
  store i32 12, i32* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 3
  store %struct.TYPE_18__* %8, %struct.TYPE_18__** %58, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* @MIXER_OBJECTF_HMIXER, align 4
  %64 = load i32, i32* @MIXER_GETLINECONTROLSF_ONEBYTYPE, align 4
  %65 = or i32 %63, %64
  %66 = call i64 @mixerGetLineControls(i32 %62, %struct.TYPE_15__* %9, i32 %65)
  %67 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %45
  %70 = load i64, i64* @FALSE, align 8
  store i64 %70, i64* %3, align 8
  br label %252

71:                                               ; preds = %45
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %88, %91
  %93 = load i32, i32* @VOLUME_MAX, align 4
  %94 = load i32, i32* @VOLUME_MIN, align 4
  %95 = sub nsw i32 %93, %94
  %96 = sdiv i32 %92, %95
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = call i32 (...) @GetProcessHeap()
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 4
  %104 = trunc i64 %103 to i32
  %105 = call %struct.TYPE_12__* @HeapAlloc(i32 %99, i32 0, i32 %104)
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 4
  store %struct.TYPE_12__* %105, %struct.TYPE_12__** %107, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 4
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = icmp eq %struct.TYPE_12__* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %71
  %113 = load i64, i64* @FALSE, align 8
  store i64 %113, i64* %3, align 8
  br label %252

114:                                              ; preds = %71
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i32 40, i32* %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 5
  store i32 %117, i32* %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  store i32 %120, i32* %121, align 4
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 4
  store i64 0, i64* %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  store i32 4, i32* %123, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  store %struct.TYPE_12__* %126, %struct.TYPE_12__** %127, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = load i32, i32* @MIXER_OBJECTF_HMIXER, align 4
  %133 = load i32, i32* @MIXER_GETCONTROLDETAILSF_VALUE, align 4
  %134 = or i32 %132, %133
  %135 = call i64 @mixerGetControlDetails(i32 %131, %struct.TYPE_17__* %10, i32 %134)
  %136 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %114
  %139 = load i64, i64* @FALSE, align 8
  store i64 %139, i64* %3, align 8
  br label %252

140:                                              ; preds = %114
  store i32 0, i32* %11, align 4
  br label %141

141:                                              ; preds = %211, %140
  %142 = load i32, i32* %11, align 4
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @min(i32 %144, i32 5)
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %214

147:                                              ; preds = %141
  %148 = load i32, i32* %11, align 4
  %149 = mul nsw i32 %148, 4
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* @hApplet, align 4
  %151 = load i64, i64* @IDS_SPEAKER_LEFT, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %151, %153
  %155 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %156 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %157 = call i32 @_countof(i32* %156)
  %158 = call i32 @LoadString(i32 %150, i64 %154, i32* %155, i32 %157)
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 9472, %160
  %162 = call i32 @GetDlgItem(i32 %159, i32 %161)
  %163 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %164 = call i32 @SetWindowText(i32 %162, i32* %163)
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 9475, %166
  %168 = load i32, i32* @TBM_SETRANGE, align 4
  %169 = load i64, i64* @TRUE, align 8
  %170 = trunc i64 %169 to i32
  %171 = load i32, i32* @VOLUME_MIN, align 4
  %172 = load i32, i32* @VOLUME_MAX, align 4
  %173 = call i64 @MAKELONG(i32 %171, i32 %172)
  %174 = trunc i64 %173 to i32
  %175 = call i32 @SendDlgItemMessage(i32 %165, i32 %167, i32 %168, i32 %170, i32 %174)
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* %12, align 4
  %178 = add nsw i32 9475, %177
  %179 = load i32, i32* @TBM_SETTICFREQ, align 4
  %180 = load i32, i32* @VOLUME_TICFREQ, align 4
  %181 = call i32 @SendDlgItemMessage(i32 %176, i32 %178, i32 %179, i32 %180, i32 0)
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 9475, %183
  %185 = load i32, i32* @TBM_SETPAGESIZE, align 4
  %186 = load i32, i32* @VOLUME_PAGESIZE, align 4
  %187 = call i32 @SendDlgItemMessage(i32 %182, i32 %184, i32 %185, i32 0, i32 %186)
  %188 = load i32, i32* %5, align 4
  %189 = load i32, i32* %12, align 4
  %190 = add nsw i32 9475, %189
  %191 = load i32, i32* @TBM_SETPOS, align 4
  %192 = load i64, i64* @TRUE, align 8
  %193 = trunc i64 %192 to i32
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 4
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = sub nsw i32 %201, %204
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = sdiv i32 %205, %208
  %210 = call i32 @SendDlgItemMessage(i32 %188, i32 %190, i32 %191, i32 %193, i32 %209)
  br label %211

211:                                              ; preds = %147
  %212 = load i32, i32* %11, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %11, align 4
  br label %141

214:                                              ; preds = %141
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %11, align 4
  br label %217

217:                                              ; preds = %247, %214
  %218 = load i32, i32* %11, align 4
  %219 = icmp slt i32 %218, 8
  br i1 %219, label %220, label %250

220:                                              ; preds = %217
  %221 = load i32, i32* %11, align 4
  %222 = mul nsw i32 %221, 4
  store i32 %222, i32* %12, align 4
  %223 = load i32, i32* %5, align 4
  %224 = load i32, i32* %12, align 4
  %225 = add nsw i32 9472, %224
  %226 = call i32 @GetDlgItem(i32 %223, i32 %225)
  %227 = load i32, i32* @SW_HIDE, align 4
  %228 = call i32 @ShowWindow(i32 %226, i32 %227)
  %229 = load i32, i32* %5, align 4
  %230 = load i32, i32* %12, align 4
  %231 = add nsw i32 9473, %230
  %232 = call i32 @GetDlgItem(i32 %229, i32 %231)
  %233 = load i32, i32* @SW_HIDE, align 4
  %234 = call i32 @ShowWindow(i32 %232, i32 %233)
  %235 = load i32, i32* %5, align 4
  %236 = load i32, i32* %12, align 4
  %237 = add nsw i32 9474, %236
  %238 = call i32 @GetDlgItem(i32 %235, i32 %237)
  %239 = load i32, i32* @SW_HIDE, align 4
  %240 = call i32 @ShowWindow(i32 %238, i32 %239)
  %241 = load i32, i32* %5, align 4
  %242 = load i32, i32* %12, align 4
  %243 = add nsw i32 9475, %242
  %244 = call i32 @GetDlgItem(i32 %241, i32 %243)
  %245 = load i32, i32* @SW_HIDE, align 4
  %246 = call i32 @ShowWindow(i32 %244, i32 %245)
  br label %247

247:                                              ; preds = %220
  %248 = load i32, i32* %11, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %11, align 4
  br label %217

250:                                              ; preds = %217
  %251 = load i64, i64* @TRUE, align 8
  store i64 %251, i64* %3, align 8
  br label %252

252:                                              ; preds = %250, %138, %112, %69, %43, %23
  %253 = load i64, i64* %3, align 8
  ret i64 %253
}

declare dso_local i64 @mixerOpen(i64*, i32, i32, i32, i32) #1

declare dso_local i32 @PtrToUlong(i32) #1

declare dso_local i32 @MessageBox(i32, i32, i32*, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i64 @mixerGetLineInfo(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i64 @mixerGetLineControls(i32, %struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_12__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @mixerGetControlDetails(i32, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @LoadString(i32, i64, i32*, i32) #1

declare dso_local i32 @_countof(i32*) #1

declare dso_local i32 @SetWindowText(i32, i32*) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @SendDlgItemMessage(i32, i32, i32, i32, i32) #1

declare dso_local i64 @MAKELONG(i32, i32) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
