; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_mixer.c_DSOUND_MixInBuffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_mixer.c_DSOUND_MixInBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i64, i32, i64, i64, %struct.TYPE_16__*, %struct.TYPE_14__, i32, i64, %struct.TYPE_12__*, i32* }
%struct.TYPE_16__ = type { i64, i64, i32 (i32*, i64, i32)*, i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32* }

@.str = private unnamed_addr constant [35 x i8] c"buf_mixpos=%d/%d sec_mixpos=%d/%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"(%p,%d,%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"length not a multiple of block size, len = %d, block size = %d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Mixpos (%u) past buflen (%u), capping...\0A\00", align 1
@DSBPLAY_LOOPING = common dso_local global i32 0, align 4
@STATE_STOPPED = common dso_local global i64 0, align 8
@DSBCAPS_CTRLPOSITIONNOTIFY = common dso_local global i32 0, align 4
@STATE_STARTING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, i64, i64)* @DSOUND_MixInBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DSOUND_MixInBuffer(%struct.TYPE_15__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 11
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 11
  %24 = load i32*, i32** %23, align 8
  br label %31

25:                                               ; preds = %3
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 10
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  br label %31

31:                                               ; preds = %25, %21
  %32 = phi i32* [ %24, %21 ], [ %30, %25 ]
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  store i32* %37, i32** %9, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %40, i64 %43, i64 %46, i32 %49)
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_15__* %51, i64 %52, i64 %53)
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp sle i64 %60, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 6
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = srem i32 %67, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %31
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 6
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @ERR(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %13, align 4
  %90 = srem i32 %88, %89
  %91 = load i32, i32* %7, align 4
  %92 = sub nsw i32 %91, %90
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %77, %31
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = call i64 @DSOUND_bufpos_to_secpos(%struct.TYPE_15__* %98, i64 %104)
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %105, %108
  %110 = load i32, i32* @TRUE, align 4
  %111 = call i32 @DSOUND_MixToTemporary(%struct.TYPE_15__* %94, i64 %97, i64 %109, i32 %110)
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 9
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %93
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 6
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  store i32* %121, i32** %9, align 8
  br label %122

122:                                              ; preds = %116, %93
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i32* @DSOUND_MixerVol(%struct.TYPE_15__* %123, i32 %124)
  store i32* %125, i32** %10, align 8
  %126 = load i32*, i32** %10, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32*, i32** %10, align 8
  store i32* %129, i32** %9, align 8
  br label %130

130:                                              ; preds = %128, %122
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 6
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = load i64, i64* %5, align 8
  %135 = call i64 @DSOUND_bufpos_to_mixpos(%struct.TYPE_16__* %133, i64 %134)
  store i64 %135, i64* %12, align 8
  %136 = load i64, i64* %5, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %136, %138
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 6
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp sle i64 %139, %144
  br i1 %145, label %146, label %162

146:                                              ; preds = %130
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 6
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 2
  %151 = load i32 (i32*, i64, i32)*, i32 (i32*, i64, i32)** %150, align 8
  %152 = load i32*, i32** %9, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 6
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %12, align 8
  %159 = add nsw i64 %157, %158
  %160 = load i32, i32* %7, align 4
  %161 = call i32 %151(i32* %152, i64 %159, i32 %160)
  br label %205

162:                                              ; preds = %130
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 6
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %5, align 8
  %169 = sub nsw i64 %167, %168
  store i64 %169, i64* %14, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 6
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 2
  %174 = load i32 (i32*, i64, i32)*, i32 (i32*, i64, i32)** %173, align 8
  %175 = load i32*, i32** %9, align 8
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 6
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* %12, align 8
  %182 = add nsw i64 %180, %181
  %183 = load i64, i64* %14, align 8
  %184 = trunc i64 %183 to i32
  %185 = call i32 %174(i32* %175, i64 %182, i32 %184)
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 6
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 2
  %190 = load i32 (i32*, i64, i32)*, i32 (i32*, i64, i32)** %189, align 8
  %191 = load i32*, i32** %9, align 8
  %192 = load i64, i64* %14, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 6
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = load i64, i64* %14, align 8
  %202 = sub nsw i64 %200, %201
  %203 = trunc i64 %202 to i32
  %204 = call i32 %190(i32* %193, i64 %198, i32 %203)
  br label %205

205:                                              ; preds = %162, %146
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %11, align 8
  %209 = load i32, i32* %7, align 4
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = add nsw i32 %212, %209
  store i32 %213, i32* %211, align 8
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = sext i32 %216 to i64
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp sge i64 %217, %220
  br i1 %221, label %222, label %278

222:                                              ; preds = %205
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = icmp sgt i64 %226, %229
  br i1 %230, label %231, label %240

231:                                              ; preds = %222
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = trunc i64 %237 to i32
  %239 = call i32 @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %234, i32 %238)
  br label %240

240:                                              ; preds = %231, %222
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @DSBPLAY_LOOPING, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %257

247:                                              ; preds = %240
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = sext i32 %253 to i64
  %255 = sub nsw i64 %254, %250
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* %252, align 8
  br label %275

257:                                              ; preds = %240
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = sext i32 %260 to i64
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = icmp sge i64 %261, %264
  br i1 %265, label %266, label %274

266:                                              ; preds = %257
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 2
  store i64 0, i64* %268, align 8
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 0
  store i32 0, i32* %270, align 8
  %271 = load i64, i64* @STATE_STOPPED, align 8
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 4
  store i64 %271, i64* %273, align 8
  br label %274

274:                                              ; preds = %266, %257
  br label %275

275:                                              ; preds = %274, %247
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %277 = call i32 @DSOUND_RecalcFreqAcc(%struct.TYPE_15__* %276)
  br label %278

278:                                              ; preds = %275, %205
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = sext i32 %282 to i64
  %284 = call i64 @DSOUND_bufpos_to_secpos(%struct.TYPE_15__* %279, i64 %283)
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 2
  store i64 %284, i64* %286, align 8
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 8
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 2
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* %11, align 8
  %294 = call i32 @DSOUND_BufPtrDiff(i32 %289, i64 %292, i64 %293)
  store i32 %294, i32* %8, align 4
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 7
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @DSBCAPS_CTRLPOSITIONNOTIFY, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %313

302:                                              ; preds = %278
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i32 0, i32 4
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @STATE_STARTING, align 8
  %307 = icmp ne i64 %305, %306
  br i1 %307, label %308, label %313

308:                                              ; preds = %302
  %309 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %310 = load i64, i64* %11, align 8
  %311 = load i32, i32* %8, align 4
  %312 = call i32 @DSOUND_CheckEvent(%struct.TYPE_15__* %309, i64 %310, i32 %311)
  br label %313

313:                                              ; preds = %308, %302, %278
  %314 = load i32, i32* %7, align 4
  %315 = sext i32 %314 to i64
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 5
  %318 = load i64, i64* %317, align 8
  %319 = add nsw i64 %318, %315
  store i64 %319, i64* %317, align 8
  %320 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 5
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %323, i32 0, i32 6
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = icmp sge i64 %322, %327
  br i1 %328, label %329, label %339

329:                                              ; preds = %313
  %330 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %330, i32 0, i32 6
  %332 = load %struct.TYPE_16__*, %struct.TYPE_16__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 5
  %337 = load i64, i64* %336, align 8
  %338 = sub nsw i64 %337, %334
  store i64 %338, i64* %336, align 8
  br label %339

339:                                              ; preds = %329, %313
  %340 = load i32, i32* %7, align 4
  %341 = sext i32 %340 to i64
  ret i64 %341
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ERR(i8*, i32, i32) #1

declare dso_local i32 @DSOUND_MixToTemporary(%struct.TYPE_15__*, i64, i64, i32) #1

declare dso_local i64 @DSOUND_bufpos_to_secpos(%struct.TYPE_15__*, i64) #1

declare dso_local i32* @DSOUND_MixerVol(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @DSOUND_bufpos_to_mixpos(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @DSOUND_RecalcFreqAcc(%struct.TYPE_15__*) #1

declare dso_local i32 @DSOUND_BufPtrDiff(i32, i64, i64) #1

declare dso_local i32 @DSOUND_CheckEvent(%struct.TYPE_15__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
