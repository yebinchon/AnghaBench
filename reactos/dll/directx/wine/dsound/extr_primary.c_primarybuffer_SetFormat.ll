; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_primary.c_primarybuffer_SetFormat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_primary.c_primarybuffer_SetFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64, i64, i32, i32, i32, %struct.TYPE_24__*, %struct.TYPE_25__**, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, %struct.TYPE_23__ }
%struct.TYPE_25__ = type { i32, i32, i64, i32, i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i64, i32, i64, i32, i32, i32, i32 }

@DSERR_BUFFERLOST = common dso_local global i64 0, align 8
@DSSCL_WRITEPRIMARY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"(%p,%p)\0A\00", align 1
@DSSCL_NORMAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"failed priority check!\0A\00", align 1
@DSERR_PRIOLEVELNEEDED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"invalid parameter: wfex==NULL!\0A\00", align 1
@DSERR_INVALIDPARAM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [97 x i8] c"(formattag=0x%04x,chans=%d,samplerate=%d,bytespersec=%d,blockalign=%d,bitspersamp=%d,cbSize=%d)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@DSERR_OUTOFMEMORY = common dso_local global i64 0, align 8
@DSDDESC_DOMMSYSTEMSETFORMAT = common dso_local global i32 0, align 4
@DSERR_BADFORMAT = common dso_local global i64 0, align 8
@WAVE_FORMAT_PCM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"IDsDriverBuffer_SetFormat failed\0A\00", align 1
@DS_OK = common dso_local global i64 0, align 8
@S_FALSE = common dso_local global i64 0, align 8
@DSBLOCK_ENTIREBUFFER = common dso_local global i32 0, align 4
@STATE_PLAYING = common dso_local global i64 0, align 8
@STATE_STARTING = common dso_local global i64 0, align 8
@STATE_STOPPING = common dso_local global i64 0, align 8
@STATE_STOPPED = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"DSOUND_ReopenDevice failed: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"DSOUND_PrimaryOpen failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"DSOUND_ReopenDevice(2) failed: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"DSOUND_PrimaryOpen(2) failed: %08x\0A\00", align 1
@mixfunctions = common dso_local global i32* null, align 8
@normfunctions = common dso_local global i32* null, align 8
@DSOUND_FREQSHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @primarybuffer_SetFormat(%struct.TYPE_26__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_25__**, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %16 = load i64, i64* @DSERR_BUFFERLOST, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DSSCL_WRITEPRIMARY, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %12, align 4
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %25 = ptrtoint %struct.TYPE_24__* %24 to i64
  %26 = call i32 (i8*, %struct.TYPE_26__*, i64, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.TYPE_26__* %23, i64 %25)
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DSSCL_NORMAL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i64, i64* @DSERR_PRIOLEVELNEEDED, align 8
  store i64 %34, i64* %3, align 8
  br label %459

35:                                               ; preds = %2
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %37 = icmp eq %struct.TYPE_24__* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i64, i64* @DSERR_INVALIDPARAM, align 8
  store i64 %40, i64* %3, align 8
  br label %459

41:                                               ; preds = %35
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to %struct.TYPE_26__*
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i8*, %struct.TYPE_26__*, i64, ...) @TRACE(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_26__* %46, i64 %49, i32 %52, i32 %55, i32 %58, i64 %61, i32 %64)
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 3
  %68 = load i32, i32* @TRUE, align 4
  %69 = call i32 @RtlAcquireResourceExclusive(i32* %67, i32 %68)
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 4
  %72 = call i32 @EnterCriticalSection(i32* %71)
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 5
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %8, align 8
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 5
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %9, align 8
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 5
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %10, align 8
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 5
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %90, align 8
  store %struct.TYPE_24__* %91, %struct.TYPE_24__** %11, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %93 = call %struct.TYPE_24__* @DSOUND_CopyFormat(%struct.TYPE_24__* %92)
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 5
  store %struct.TYPE_24__* %93, %struct.TYPE_24__** %95, align 8
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 5
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %97, align 8
  %99 = icmp eq %struct.TYPE_24__* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %41
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 5
  store %struct.TYPE_24__* %101, %struct.TYPE_24__** %103, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %11, align 8
  %104 = load i64, i64* @DSERR_OUTOFMEMORY, align 8
  store i64 %104, i64* %6, align 8
  br label %448

105:                                              ; preds = %41
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i32 0, i32 18
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @DSDDESC_DOMMSYSTEMSETFORMAT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %244, label %113

113:                                              ; preds = %105
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 17
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %244

118:                                              ; preds = %113
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 17
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 5
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %123, align 8
  %125 = call i64 @IDsDriverBuffer_SetFormat(i64 %121, %struct.TYPE_24__* %124)
  store i64 %125, i64* %6, align 8
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %166

128:                                              ; preds = %118
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 5
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = sdiv i32 %133, 100
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = sdiv i32 %137, 100
  %139 = icmp ne i32 %134, %138
  br i1 %139, label %144, label %140

140:                                              ; preds = %128
  %141 = load i64, i64* %6, align 8
  %142 = load i64, i64* @DSERR_BADFORMAT, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %166

144:                                              ; preds = %140, %128
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @WAVE_FORMAT_PCM, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %157

151:                                              ; preds = %144
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = add i64 4, %155
  br label %157

157:                                              ; preds = %151, %150
  %158 = phi i64 [ 4, %150 ], [ %156, %151 ]
  store i64 %158, i64* %13, align 8
  %159 = load i64, i64* @DSERR_BUFFERLOST, align 8
  store i64 %159, i64* %6, align 8
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 5
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %161, align 8
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %164 = load i64, i64* %13, align 8
  %165 = call i32 @CopyMemory(%struct.TYPE_24__* %162, %struct.TYPE_24__* %163, i64 %164)
  br label %166

166:                                              ; preds = %157, %140, %118
  %167 = load i64, i64* %6, align 8
  %168 = load i64, i64* @DSERR_BUFFERLOST, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %189

170:                                              ; preds = %166
  %171 = load i64, i64* %6, align 8
  %172 = call i64 @FAILED(i64 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %189

174:                                              ; preds = %170
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %176 = call i64 @DSOUND_GetFormatSize(%struct.TYPE_24__* %175)
  store i64 %176, i64* %14, align 8
  %177 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %178 = load i32, i32* %12, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %188, label %180

180:                                              ; preds = %174
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 5
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %182, align 8
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %185 = load i64, i64* %14, align 8
  %186 = call i32 @CopyMemory(%struct.TYPE_24__* %183, %struct.TYPE_24__* %184, i64 %185)
  %187 = load i64, i64* @DS_OK, align 8
  store i64 %187, i64* %6, align 8
  br label %188

188:                                              ; preds = %180, %174
  br label %448

189:                                              ; preds = %170, %166
  %190 = load i64, i64* %6, align 8
  %191 = load i64, i64* @S_FALSE, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %241

193:                                              ; preds = %189
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 17
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i32 0, i32 12
  %199 = bitcast i64* %198 to i32*
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %200, i32 0, i32 11
  %202 = load i32, i32* @DSBLOCK_ENTIREBUFFER, align 4
  %203 = call i32 @IDsDriverBuffer_Lock(i64 %196, i32* %199, i32* %201, i32* null, i32* null, i32 0, i32 0, i32 %202)
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %204, i32 0, i32 17
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %207, i32 0, i32 12
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @IDsDriverBuffer_Unlock(i64 %206, i64 %209, i32 0, i32* null, i32 0)
  %211 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @STATE_PLAYING, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %193
  %217 = load i64, i64* @STATE_STARTING, align 8
  %218 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %218, i32 0, i32 1
  store i64 %217, i64* %219, align 8
  br label %231

220:                                              ; preds = %193
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @STATE_STOPPING, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %220
  %227 = load i64, i64* @STATE_STOPPED, align 8
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %228, i32 0, i32 1
  store i64 %227, i64* %229, align 8
  br label %230

230:                                              ; preds = %226, %220
  br label %231

231:                                              ; preds = %230, %216
  %232 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %232, i32 0, i32 13
  store i64 0, i64* %233, align 8
  %234 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %234, i32 0, i32 14
  store i64 0, i64* %235, align 8
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 15
  store i64 0, i64* %237, align 8
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %238, i32 0, i32 16
  store i64 0, i64* %239, align 8
  %240 = load i64, i64* @DS_OK, align 8
  store i64 %240, i64* %6, align 8
  br label %241

241:                                              ; preds = %231, %189
  %242 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %243 = call i32 @DSOUND_RecalcPrimary(%struct.TYPE_26__* %242)
  br label %244

244:                                              ; preds = %241, %113, %105
  %245 = load i64, i64* %6, align 8
  %246 = load i64, i64* @DSERR_BUFFERLOST, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %318

248:                                              ; preds = %244
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %250 = call i32 @DSOUND_PrimaryClose(%struct.TYPE_26__* %249)
  %251 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %252 = load i32, i32* @FALSE, align 4
  %253 = call i64 @DSOUND_ReopenDevice(%struct.TYPE_26__* %251, i32 %252)
  store i64 %253, i64* %6, align 8
  %254 = load i64, i64* %6, align 8
  %255 = call i64 @FAILED(i64 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %248
  %258 = load i64, i64* %6, align 8
  %259 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i64 %258)
  br label %448

260:                                              ; preds = %248
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %262 = call i64 @DSOUND_PrimaryOpen(%struct.TYPE_26__* %261)
  store i64 %262, i64* %6, align 8
  %263 = load i64, i64* %6, align 8
  %264 = load i64, i64* @DS_OK, align 8
  %265 = icmp ne i64 %263, %264
  br i1 %265, label %266, label %268

266:                                              ; preds = %260
  %267 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %448

268:                                              ; preds = %260
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = sdiv i32 %271, 100
  %273 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i32 0, i32 5
  %275 = load %struct.TYPE_24__*, %struct.TYPE_24__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = sdiv i32 %277, 100
  %279 = icmp ne i32 %272, %278
  br i1 %279, label %280, label %317

280:                                              ; preds = %268
  %281 = load i32, i32* %12, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %317

283:                                              ; preds = %280
  %284 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %284, i32 0, i32 12
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %317

288:                                              ; preds = %283
  %289 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %290 = call i32 @DSOUND_PrimaryClose(%struct.TYPE_26__* %289)
  %291 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %294, i32 0, i32 5
  %296 = load %struct.TYPE_24__*, %struct.TYPE_24__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %296, i32 0, i32 1
  store i32 %293, i32* %297, align 8
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %299 = load i32, i32* @TRUE, align 4
  %300 = call i64 @DSOUND_ReopenDevice(%struct.TYPE_26__* %298, i32 %299)
  store i64 %300, i64* %6, align 8
  %301 = load i64, i64* %6, align 8
  %302 = call i64 @FAILED(i64 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %288
  %305 = load i64, i64* %6, align 8
  %306 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i64 %305)
  br label %316

307:                                              ; preds = %288
  %308 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %309 = call i64 @DSOUND_PrimaryOpen(%struct.TYPE_26__* %308)
  store i64 %309, i64* %6, align 8
  %310 = call i64 @FAILED(i64 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %307
  %313 = load i64, i64* %6, align 8
  %314 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i64 %313)
  br label %315

315:                                              ; preds = %312, %307
  br label %316

316:                                              ; preds = %315, %304
  br label %317

317:                                              ; preds = %316, %283, %280, %268
  br label %318

318:                                              ; preds = %317, %244
  %319 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %320 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %320, i32 0, i32 11
  %322 = load i32, i32* %321, align 8
  %323 = call i32 @DSOUND_bufpos_to_mixpos(%struct.TYPE_26__* %319, i32 %322)
  %324 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %324, i32 0, i32 9
  store i32 %323, i32* %325, align 8
  %326 = call i32 (...) @GetProcessHeap()
  %327 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %327, i32 0, i32 10
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %330, i32 0, i32 9
  %332 = load i32, i32* %331, align 8
  %333 = call i32 @HeapReAlloc(i32 %326, i32 0, i32 %329, i32 %332)
  %334 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %334, i32 0, i32 10
  store i32 %333, i32* %335, align 4
  %336 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %336, i32 0, i32 10
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %339, i32 0, i32 9
  %341 = load i32, i32* %340, align 8
  %342 = call i32 @FillMemory(i32 %338, i32 %341, i32 0)
  %343 = load i32*, i32** @mixfunctions, align 8
  %344 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %344, i32 0, i32 5
  %346 = load %struct.TYPE_24__*, %struct.TYPE_24__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %346, i32 0, i32 2
  %348 = load i64, i64* %347, align 8
  %349 = sdiv i64 %348, 8
  %350 = sub nsw i64 %349, 1
  %351 = getelementptr inbounds i32, i32* %343, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %353, i32 0, i32 8
  store i32 %352, i32* %354, align 4
  %355 = load i32*, i32** @normfunctions, align 8
  %356 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %357 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %356, i32 0, i32 5
  %358 = load %struct.TYPE_24__*, %struct.TYPE_24__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %358, i32 0, i32 2
  %360 = load i64, i64* %359, align 8
  %361 = sdiv i64 %360, 8
  %362 = sub nsw i64 %361, 1
  %363 = getelementptr inbounds i32, i32* %355, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %365, i32 0, i32 7
  store i32 %364, i32* %366, align 8
  %367 = load i64, i64* %8, align 8
  %368 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %368, i32 0, i32 5
  %370 = load %struct.TYPE_24__*, %struct.TYPE_24__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 8
  %373 = sext i32 %372 to i64
  %374 = icmp ne i64 %367, %373
  br i1 %374, label %391, label %375

375:                                              ; preds = %318
  %376 = load i64, i64* %9, align 8
  %377 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %377, i32 0, i32 5
  %379 = load %struct.TYPE_24__*, %struct.TYPE_24__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %379, i32 0, i32 2
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %376, %381
  br i1 %382, label %391, label %383

383:                                              ; preds = %375
  %384 = load i64, i64* %10, align 8
  %385 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %386 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %385, i32 0, i32 5
  %387 = load %struct.TYPE_24__*, %struct.TYPE_24__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = icmp ne i64 %384, %389
  br i1 %390, label %391, label %447

391:                                              ; preds = %383, %375, %318
  %392 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %392, i32 0, i32 6
  %394 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %393, align 8
  store %struct.TYPE_25__** %394, %struct.TYPE_25__*** %15, align 8
  store i32 0, i32* %7, align 4
  br label %395

395:                                              ; preds = %441, %391
  %396 = load i32, i32* %7, align 4
  %397 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %398 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %397, i32 0, i32 2
  %399 = load i32, i32* %398, align 8
  %400 = icmp slt i32 %396, %399
  br i1 %400, label %401, label %446

401:                                              ; preds = %395
  %402 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %15, align 8
  %403 = load %struct.TYPE_25__*, %struct.TYPE_25__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %403, i32 0, i32 1
  %405 = load i32, i32* @TRUE, align 4
  %406 = call i32 @RtlAcquireResourceExclusive(i32* %404, i32 %405)
  %407 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %15, align 8
  %408 = load %struct.TYPE_25__*, %struct.TYPE_25__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %408, i32 0, i32 4
  %410 = load i64, i64* %409, align 8
  %411 = trunc i64 %410 to i32
  %412 = load i32, i32* @DSOUND_FREQSHIFT, align 4
  %413 = shl i32 %411, %412
  %414 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %415 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %414, i32 0, i32 5
  %416 = load %struct.TYPE_24__*, %struct.TYPE_24__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 8
  %419 = sdiv i32 %413, %418
  %420 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %15, align 8
  %421 = load %struct.TYPE_25__*, %struct.TYPE_25__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %421, i32 0, i32 0
  store i32 %419, i32* %422, align 8
  %423 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %15, align 8
  %424 = load %struct.TYPE_25__*, %struct.TYPE_25__** %423, align 8
  %425 = call i32 @DSOUND_RecalcFormat(%struct.TYPE_25__* %424)
  %426 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %15, align 8
  %427 = load %struct.TYPE_25__*, %struct.TYPE_25__** %426, align 8
  %428 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %15, align 8
  %429 = load %struct.TYPE_25__*, %struct.TYPE_25__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %429, i32 0, i32 3
  %431 = load i32, i32* %430, align 8
  %432 = load i32, i32* @FALSE, align 4
  %433 = call i32 @DSOUND_MixToTemporary(%struct.TYPE_25__* %427, i32 0, i32 %431, i32 %432)
  %434 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %15, align 8
  %435 = load %struct.TYPE_25__*, %struct.TYPE_25__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %435, i32 0, i32 2
  store i64 0, i64* %436, align 8
  %437 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %15, align 8
  %438 = load %struct.TYPE_25__*, %struct.TYPE_25__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %438, i32 0, i32 1
  %440 = call i32 @RtlReleaseResource(i32* %439)
  br label %441

441:                                              ; preds = %401
  %442 = load i32, i32* %7, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %7, align 4
  %444 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %15, align 8
  %445 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %444, i32 1
  store %struct.TYPE_25__** %445, %struct.TYPE_25__*** %15, align 8
  br label %395

446:                                              ; preds = %395
  br label %447

447:                                              ; preds = %446, %383
  br label %448

448:                                              ; preds = %447, %266, %257, %188, %100
  %449 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %450 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %449, i32 0, i32 4
  %451 = call i32 @LeaveCriticalSection(i32* %450)
  %452 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %453 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %452, i32 0, i32 3
  %454 = call i32 @RtlReleaseResource(i32* %453)
  %455 = call i32 (...) @GetProcessHeap()
  %456 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %457 = call i32 @HeapFree(i32 %455, i32 0, %struct.TYPE_24__* %456)
  %458 = load i64, i64* %6, align 8
  store i64 %458, i64* %3, align 8
  br label %459

459:                                              ; preds = %448, %38, %32
  %460 = load i64, i64* %3, align 8
  ret i64 %460
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_26__*, i64, ...) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @RtlAcquireResourceExclusive(i32*, i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local %struct.TYPE_24__* @DSOUND_CopyFormat(%struct.TYPE_24__*) #1

declare dso_local i64 @IDsDriverBuffer_SetFormat(i64, %struct.TYPE_24__*) #1

declare dso_local i32 @CopyMemory(%struct.TYPE_24__*, %struct.TYPE_24__*, i64) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @DSOUND_GetFormatSize(%struct.TYPE_24__*) #1

declare dso_local i32 @IDsDriverBuffer_Lock(i64, i32*, i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @IDsDriverBuffer_Unlock(i64, i64, i32, i32*, i32) #1

declare dso_local i32 @DSOUND_RecalcPrimary(%struct.TYPE_26__*) #1

declare dso_local i32 @DSOUND_PrimaryClose(%struct.TYPE_26__*) #1

declare dso_local i64 @DSOUND_ReopenDevice(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @DSOUND_PrimaryOpen(%struct.TYPE_26__*) #1

declare dso_local i32 @DSOUND_bufpos_to_mixpos(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @HeapReAlloc(i32, i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @FillMemory(i32, i32, i32) #1

declare dso_local i32 @DSOUND_RecalcFormat(%struct.TYPE_25__*) #1

declare dso_local i32 @DSOUND_MixToTemporary(%struct.TYPE_25__*, i32, i32, i32) #1

declare dso_local i32 @RtlReleaseResource(i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
