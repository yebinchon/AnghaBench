; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_capture.c_DirectSoundCaptureDevice_Initialize.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_capture.c_DirectSoundCaptureDevice_Initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_11__, %struct.TYPE_10__, i32*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@DSERR_INVALIDPARAM = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"(%p, %s)\0A\00", align 1
@GUID_NULL = common dso_local global i32 0, align 4
@DSDEVID_DefaultCapture = common dso_local global i32 0, align 4
@DS_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid parameter: lpcGUID\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"no audio devices found\0A\00", align 1
@DSERR_NODRIVER = common dso_local global i64 0, align 8
@DSOUND_capture_guids = common dso_local global i32* null, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"No device found matching given ID!\0A\00", align 1
@DSOUND_capture = common dso_local global i64* null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"already in use\0A\00", align 1
@DSERR_ALLOCATED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"DirectSoundCaptureDevice_Create failed\0A\00", align 1
@ds_hw_accel = common dso_local global i64 0, align 8
@DS_HW_ACCEL_EMULATION = common dso_local global i64 0, align 8
@DRV_QUERYDSOUNDIFACE = common dso_local global i32 0, align 4
@DSERR_UNSUPPORTED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"waveInMessage failed; err=%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"using DirectSound driver\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"IDsCaptureDriver_GetDriverDesc failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"using WINMM\0A\00", align 1
@DSDDESC_DOMMSYSTEMOPEN = common dso_local global i32 0, align 4
@DSDDESC_DOMMSYSTEMSETFORMAT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"IDsCaptureDriver_GetCaps failed\0A\00", align 1
@DSCCAPS_EMULDRIVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__**, i32*)* @DirectSoundCaptureDevice_Initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DirectSoundCaptureDevice_Initialize(%struct.TYPE_9__** %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_8__, align 4
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i64, i64* @DSERR_INVALIDPARAM, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %9, align 8
  %15 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %11, align 8
  %17 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @debugstr_guid(i32* %18)
  %20 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__** %17, i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @IsEqualGUID(i32* %24, i32* @GUID_NULL)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %2
  store i32* @DSDEVID_DefaultCapture, i32** %5, align 8
  br label %28

28:                                               ; preds = %27, %23
  %29 = load i32*, i32** %5, align 8
  %30 = call i64 @GetDeviceID(i32* %29, i32* %10)
  %31 = load i64, i64* @DS_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i64, i64* @DSERR_INVALIDPARAM, align 8
  store i64 %35, i64* %3, align 8
  br label %234

36:                                               ; preds = %28
  %37 = call i32 (...) @waveInGetNumDevs()
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i64, i64* @DSERR_NODRIVER, align 8
  store i64 %42, i64* %3, align 8
  br label %234

43:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %58, %43
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load i32*, i32** @DSOUND_capture_guids, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i64 @IsEqualGUID(i32* %10, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i64, i64* @TRUE, align 8
  store i64 %56, i64* %9, align 8
  br label %61

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %44

61:                                               ; preds = %55, %44
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* @FALSE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i64, i64* @DSERR_NODRIVER, align 8
  store i64 %67, i64* %3, align 8
  br label %234

68:                                               ; preds = %61
  %69 = load i64*, i64** @DSOUND_capture, align 8
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %77 = load i64, i64* @DSERR_ALLOCATED, align 8
  store i64 %77, i64* %3, align 8
  br label %234

78:                                               ; preds = %68
  %79 = call i64 @DirectSoundCaptureDevice_Create(%struct.TYPE_9__** %11)
  store i64 %79, i64* %6, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* @DS_OK, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %85 = load i64, i64* %6, align 8
  store i64 %85, i64* %3, align 8
  br label %234

86:                                               ; preds = %78
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %88 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %88, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  store i32* null, i32** %93, align 8
  %94 = load i64, i64* @ds_hw_accel, align 8
  %95 = load i64, i64* @DS_HW_ACCEL_EMULATION, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %118

97:                                               ; preds = %86
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @UlongToHandle(i32 %98)
  %100 = load i32, i32* @DRV_QUERYDSOUNDIFACE, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  %103 = ptrtoint i32** %102 to i32
  %104 = call i32 @waveInMessage(i32 %99, i32 %100, i32 %103, i32 0)
  %105 = call i64 @mmErr(i32 %104)
  store i64 %105, i64* %6, align 8
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* @DS_OK, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %97
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* @DSERR_UNSUPPORTED, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load i64, i64* %6, align 8
  %115 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i64 %114)
  %116 = load i64, i64* %6, align 8
  store i64 %116, i64* %3, align 8
  br label %234

117:                                              ; preds = %109, %97
  br label %118

118:                                              ; preds = %117, %86
  %119 = load i64, i64* @DS_OK, align 8
  store i64 %119, i64* %6, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %139

124:                                              ; preds = %118
  %125 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = call i64 @IDsCaptureDriver_GetDriverDesc(i32* %128, %struct.TYPE_10__* %130)
  store i64 %131, i64* %6, align 8
  %132 = load i64, i64* %6, align 8
  %133 = load i64, i64* @DS_OK, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %124
  %136 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %137 = load i64, i64* %6, align 8
  store i64 %137, i64* %3, align 8
  br label %234

138:                                              ; preds = %124
  br label %147

139:                                              ; preds = %118
  %140 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %141 = load i32, i32* @DSDDESC_DOMMSYSTEMOPEN, align 4
  %142 = load i32, i32* @DSDDESC_DOMMSYSTEMSETFORMAT, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  store i32 %143, i32* %146, align 8
  br label %147

147:                                              ; preds = %139, %138
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  store i32 %148, i32* %151, align 4
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %165

156:                                              ; preds = %147
  %157 = load i64, i64* %6, align 8
  %158 = load i64, i64* @DS_OK, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = call i64 @IDsCaptureDriver_Open(i32* %163)
  store i64 %164, i64* %6, align 8
  br label %165

165:                                              ; preds = %160, %156, %147
  %166 = load i64, i64* %6, align 8
  %167 = load i64, i64* @DS_OK, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %232

169:                                              ; preds = %165
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %171 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  store %struct.TYPE_9__* %170, %struct.TYPE_9__** %171, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %193

176:                                              ; preds = %169
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  store i32 16, i32* %179, align 8
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = call i64 @IDsCaptureDriver_GetCaps(i32* %182, %struct.TYPE_11__* %184)
  store i64 %185, i64* %6, align 8
  %186 = load i64, i64* %6, align 8
  %187 = load i64, i64* @DS_OK, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %176
  %190 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %191 = load i64, i64* %6, align 8
  store i64 %191, i64* %3, align 8
  br label %234

192:                                              ; preds = %176
  br label %231

193:                                              ; preds = %169
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @waveInGetDevCapsA(i32 %197, %struct.TYPE_8__* %12, i32 12)
  %199 = call i64 @mmErr(i32 %198)
  store i64 %199, i64* %6, align 8
  %200 = load i64, i64* %6, align 8
  %201 = load i64, i64* @DS_OK, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %230

203:                                              ; preds = %193
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 3
  store i32 0, i32* %206, align 4
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @lstrcpynA(i32 %210, i32 %212, i32 4)
  %214 = load i32, i32* @DSCCAPS_EMULDRIVER, align 4
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %218, %214
  store i32 %219, i32* %217, align 4
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 2
  store i32 %221, i32* %224, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 1
  store i32 %226, i32* %229, align 4
  br label %230

230:                                              ; preds = %203, %193
  br label %231

231:                                              ; preds = %230, %192
  br label %232

232:                                              ; preds = %231, %165
  %233 = load i64, i64* %6, align 8
  store i64 %233, i64* %3, align 8
  br label %234

234:                                              ; preds = %232, %189, %135, %113, %83, %75, %65, %40, %33
  %235 = load i64, i64* %3, align 8
  ret i64 %235
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_guid(i32*) #1

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

declare dso_local i64 @GetDeviceID(i32*, i32*) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @waveInGetNumDevs(...) #1

declare dso_local i64 @DirectSoundCaptureDevice_Create(%struct.TYPE_9__**) #1

declare dso_local i64 @mmErr(i32) #1

declare dso_local i32 @waveInMessage(i32, i32, i32, i32) #1

declare dso_local i32 @UlongToHandle(i32) #1

declare dso_local i64 @IDsCaptureDriver_GetDriverDesc(i32*, %struct.TYPE_10__*) #1

declare dso_local i64 @IDsCaptureDriver_Open(i32*) #1

declare dso_local i64 @IDsCaptureDriver_GetCaps(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @waveInGetDevCapsA(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @lstrcpynA(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
