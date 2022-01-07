; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_buffer.c_IDirectSoundBufferImpl_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_buffer.c_IDirectSoundBufferImpl_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_34__*, %struct.TYPE_33__, i64, %struct.TYPE_31__ }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_29__*, i32, %struct.TYPE_29__*, %struct.TYPE_29__*, i32, i32, %struct.TYPE_38__, %struct.TYPE_32__, i32, i64, i64, i32, i32, i32, i64, i64, i32*, i32*, i32*, %struct.TYPE_39__, %struct.TYPE_30__* }
%struct.TYPE_38__ = type { i32, i32, i32, i32, i32, %struct.TYPE_37__, i8*, i8*, %struct.TYPE_36__, %struct.TYPE_35__ }
%struct.TYPE_37__ = type { double, double, double }
%struct.TYPE_36__ = type { double, double, double }
%struct.TYPE_35__ = type { double, double, double }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_39__ = type { i32* }
%struct.TYPE_28__ = type { i64, i32, %struct.TYPE_40__*, i32 }
%struct.TYPE_40__ = type { i32, i32, i32, i32 }

@DS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"(%p,%p,%p)\0A\00", align 1
@DSBSIZE_MIN = common dso_local global i64 0, align 8
@DSBSIZE_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"invalid parameter: dsbd->dwBufferBytes = %d\0A\00", align 1
@DSERR_INVALIDPARAM = common dso_local global i64 0, align 8
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@DSERR_OUTOFMEMORY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Created buffer at %p\0A\00", align 1
@dsbvt = common dso_local global i32 0, align 4
@DSCAPS_SECONDARYSTEREO = common dso_local global i32 0, align 4
@DSCAPS_SECONDARYMONO = common dso_local global i32 0, align 4
@DSCAPS_SECONDARY16BIT = common dso_local global i32 0, align 4
@DSCAPS_SECONDARY8BIT = common dso_local global i32 0, align 4
@DSBCAPS_LOCHARDWARE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"use_hw = %d, capf = 0x%08x, device->drvcaps.dwFlags = 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Format not supported for hardware buffer\0A\00", align 1
@DSERR_BADFORMAT = common dso_local global i64 0, align 8
@DSERR_GENERIC = common dso_local global i64 0, align 8
@DSDDESC_USESYSTEMMEMORY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"Failed to create hardware secondary buffer: %08x\0A\00", align 1
@STATE_STOPPED = common dso_local global i32 0, align 4
@DSOUND_FREQSHIFT = common dso_local global i32 0, align 4
@DSBCAPS_CTRL3D = common dso_local global i32 0, align 4
@DS3D_DEFAULTCONEANGLE = common dso_local global i8* null, align 8
@DS3D_DEFAULTCONEOUTSIDEVOLUME = common dso_local global i32 0, align 4
@DS3D_DEFAULTMINDISTANCE = common dso_local global i32 0, align 4
@DS3D_DEFAULTMAXDISTANCE = common dso_local global i32 0, align 4
@DS3DMODE_NORMAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DSBCAPS_PRIMARYBUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @IDirectSoundBufferImpl_Create(%struct.TYPE_30__* %0, %struct.TYPE_29__** %1, %struct.TYPE_28__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca %struct.TYPE_29__**, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca %struct.TYPE_40__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %5, align 8
  store %struct.TYPE_29__** %1, %struct.TYPE_29__*** %6, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %7, align 8
  %13 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  store %struct.TYPE_40__* %15, %struct.TYPE_40__** %9, align 8
  %16 = load i64, i64* @DS_OK, align 8
  store i64 %16, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %18 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %6, align 8
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %20 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.TYPE_30__* %17, %struct.TYPE_29__** %18, %struct.TYPE_28__* %19)
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DSBSIZE_MIN, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %3
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DSBSIZE_MAX, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26, %3
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %6, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %37, align 8
  %38 = load i64, i64* @DSERR_INVALIDPARAM, align 8
  store i64 %38, i64* %4, align 8
  br label %552

39:                                               ; preds = %26
  %40 = call i32 (...) @GetProcessHeap()
  %41 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %42 = call i8* @HeapAlloc(i32 %40, i32 %41, i32 272)
  %43 = bitcast i8* %42 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %43, %struct.TYPE_29__** %8, align 8
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %45 = icmp eq %struct.TYPE_29__* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %6, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %48, align 8
  %49 = load i64, i64* @DSERR_OUTOFMEMORY, align 8
  store i64 %49, i64* %4, align 8
  br label %552

50:                                               ; preds = %39
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %52 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_29__* %51)
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 26
  store %struct.TYPE_30__* %57, %struct.TYPE_30__** %59, align 8
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %60, i32 0, i32 25
  %62 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %61, i32 0, i32 0
  store i32* @dsbvt, i32** %62, align 8
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i32 0, i32 24
  store i32* null, i32** %64, align 8
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %65, i32 0, i32 13
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @CopyMemory(%struct.TYPE_32__* %66, %struct.TYPE_28__* %67, i32 %70)
  %72 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %73 = call %struct.TYPE_29__* @DSOUND_CopyFormat(%struct.TYPE_40__* %72)
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 6
  store %struct.TYPE_29__* %73, %struct.TYPE_29__** %75, align 8
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 6
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %77, align 8
  %79 = icmp eq %struct.TYPE_29__* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %50
  %81 = call i32 (...) @GetProcessHeap()
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %83 = call i32 @HeapFree(i32 %81, i32 0, %struct.TYPE_29__* %82)
  %84 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %6, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %84, align 8
  %85 = load i64, i64* @DSERR_OUTOFMEMORY, align 8
  store i64 %85, i64* %4, align 8
  br label %552

86:                                               ; preds = %50
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_40__*, %struct.TYPE_40__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = srem i64 %89, %95
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %123

98:                                               ; preds = %86
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_40__*, %struct.TYPE_40__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_40__*, %struct.TYPE_40__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = srem i64 %110, %116
  %118 = sub nsw i64 %107, %117
  %119 = add nsw i64 %101, %118
  %120 = trunc i64 %119 to i32
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  br label %130

123:                                              ; preds = %86
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  br label %130

130:                                              ; preds = %123, %98
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_40__*, %struct.TYPE_40__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %138, i32 0, i32 23
  store i32* null, i32** %139, align 8
  %140 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %140, i32 0, i32 22
  store i32* null, i32** %141, align 8
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 21
  store i64 0, i64* %143, align 8
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %144, i32 0, i32 20
  store i64 0, i64* %145, align 8
  %146 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %150, label %154

150:                                              ; preds = %130
  %151 = load i32, i32* @DSCAPS_SECONDARYSTEREO, align 4
  %152 = load i32, i32* %11, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %11, align 4
  br label %158

154:                                              ; preds = %130
  %155 = load i32, i32* @DSCAPS_SECONDARYMONO, align 4
  %156 = load i32, i32* %11, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %11, align 4
  br label %158

158:                                              ; preds = %154, %150
  %159 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 16
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load i32, i32* @DSCAPS_SECONDARY16BIT, align 4
  %165 = load i32, i32* %11, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %11, align 4
  br label %171

167:                                              ; preds = %158
  %168 = load i32, i32* @DSCAPS_SECONDARY8BIT, align 4
  %169 = load i32, i32* %11, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %11, align 4
  br label %171

171:                                              ; preds = %167, %163
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @DSBCAPS_LOCHARDWARE, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  %178 = xor i1 %177, true
  %179 = xor i1 %178, true
  %180 = zext i1 %179 to i32
  store i32 %180, i32* %12, align 4
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %11, align 4
  %183 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i32 %181, i32 %182, i32 %186)
  %188 = load i32, i32* %12, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %233

190:                                              ; preds = %171
  %191 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %11, align 4
  %196 = and i32 %194, %195
  %197 = load i32, i32* %11, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %204, label %199

199:                                              ; preds = %190
  %200 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %233, label %204

204:                                              ; preds = %199, %190
  %205 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %204
  %210 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %211

211:                                              ; preds = %209, %204
  %212 = call i32 (...) @GetProcessHeap()
  %213 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %213, i32 0, i32 6
  %215 = load %struct.TYPE_29__*, %struct.TYPE_29__** %214, align 8
  %216 = call i32 @HeapFree(i32 %212, i32 0, %struct.TYPE_29__* %215)
  %217 = call i32 (...) @GetProcessHeap()
  %218 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %219 = call i32 @HeapFree(i32 %217, i32 0, %struct.TYPE_29__* %218)
  %220 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %6, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %220, align 8
  %221 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %11, align 4
  %226 = and i32 %224, %225
  %227 = load i32, i32* %11, align 4
  %228 = icmp ne i32 %226, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %211
  %230 = load i64, i64* @DSERR_BADFORMAT, align 8
  store i64 %230, i64* %4, align 8
  br label %552

231:                                              ; preds = %211
  %232 = load i64, i64* @DSERR_GENERIC, align 8
  store i64 %232, i64* %4, align 8
  br label %552

233:                                              ; preds = %199, %171
  %234 = call i32 (...) @GetProcessHeap()
  %235 = call i8* @HeapAlloc(i32 %234, i32 0, i32 272)
  %236 = bitcast i8* %235 to %struct.TYPE_29__*
  %237 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %237, i32 0, i32 8
  store %struct.TYPE_29__* %236, %struct.TYPE_29__** %238, align 8
  %239 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %239, i32 0, i32 8
  %241 = load %struct.TYPE_29__*, %struct.TYPE_29__** %240, align 8
  %242 = icmp eq %struct.TYPE_29__* %241, null
  br i1 %242, label %243, label %255

243:                                              ; preds = %233
  %244 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %245 = call i32 (...) @GetProcessHeap()
  %246 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %246, i32 0, i32 6
  %248 = load %struct.TYPE_29__*, %struct.TYPE_29__** %247, align 8
  %249 = call i32 @HeapFree(i32 %245, i32 0, %struct.TYPE_29__* %248)
  %250 = call i32 (...) @GetProcessHeap()
  %251 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %252 = call i32 @HeapFree(i32 %250, i32 0, %struct.TYPE_29__* %251)
  %253 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %6, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %253, align 8
  %254 = load i64, i64* @DSERR_OUTOFMEMORY, align 8
  store i64 %254, i64* %4, align 8
  br label %552

255:                                              ; preds = %233
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @DSDDESC_USESYSTEMMEMORY, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %255
  %264 = load i32, i32* %12, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %301, label %266

266:                                              ; preds = %263, %255
  %267 = call i32 (...) @GetProcessHeap()
  %268 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = call i8* @HeapAlloc(i32 %267, i32 0, i32 %270)
  %272 = bitcast i8* %271 to %struct.TYPE_29__*
  %273 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %273, i32 0, i32 8
  %275 = load %struct.TYPE_29__*, %struct.TYPE_29__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %275, i32 0, i32 9
  store %struct.TYPE_29__* %272, %struct.TYPE_29__** %276, align 8
  %277 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %277, i32 0, i32 8
  %279 = load %struct.TYPE_29__*, %struct.TYPE_29__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %279, i32 0, i32 9
  %281 = load %struct.TYPE_29__*, %struct.TYPE_29__** %280, align 8
  %282 = icmp eq %struct.TYPE_29__* %281, null
  br i1 %282, label %283, label %300

283:                                              ; preds = %266
  %284 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %285 = call i32 (...) @GetProcessHeap()
  %286 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %287 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %286, i32 0, i32 6
  %288 = load %struct.TYPE_29__*, %struct.TYPE_29__** %287, align 8
  %289 = call i32 @HeapFree(i32 %285, i32 0, %struct.TYPE_29__* %288)
  %290 = call i32 (...) @GetProcessHeap()
  %291 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %291, i32 0, i32 8
  %293 = load %struct.TYPE_29__*, %struct.TYPE_29__** %292, align 8
  %294 = call i32 @HeapFree(i32 %290, i32 0, %struct.TYPE_29__* %293)
  %295 = call i32 (...) @GetProcessHeap()
  %296 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %297 = call i32 @HeapFree(i32 %295, i32 0, %struct.TYPE_29__* %296)
  %298 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %6, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %298, align 8
  %299 = load i64, i64* @DSERR_OUTOFMEMORY, align 8
  store i64 %299, i64* %4, align 8
  br label %552

300:                                              ; preds = %266
  br label %301

301:                                              ; preds = %300, %263
  %302 = load i32, i32* %12, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %359

304:                                              ; preds = %301
  %305 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %305, i32 0, i32 2
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %309 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %312, i32 0, i32 2
  %314 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %314, i32 0, i32 8
  %316 = load %struct.TYPE_29__*, %struct.TYPE_29__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %316, i32 0, i32 9
  %318 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %319 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %318, i32 0, i32 19
  %320 = call i64 @IDsDriver_CreateSoundBuffer(i64 %307, %struct.TYPE_40__* %308, i32 %311, i32 0, i32* %313, %struct.TYPE_29__** %317, i32* %319)
  store i64 %320, i64* %10, align 8
  %321 = load i64, i64* %10, align 8
  %322 = call i64 @FAILED(i64 %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %358

324:                                              ; preds = %304
  %325 = load i64, i64* %10, align 8
  %326 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i64 %325)
  %327 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @DSDDESC_USESYSTEMMEMORY, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %342

334:                                              ; preds = %324
  %335 = call i32 (...) @GetProcessHeap()
  %336 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %337 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %336, i32 0, i32 8
  %338 = load %struct.TYPE_29__*, %struct.TYPE_29__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %338, i32 0, i32 9
  %340 = load %struct.TYPE_29__*, %struct.TYPE_29__** %339, align 8
  %341 = call i32 @HeapFree(i32 %335, i32 0, %struct.TYPE_29__* %340)
  br label %342

342:                                              ; preds = %334, %324
  %343 = call i32 (...) @GetProcessHeap()
  %344 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %345 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %344, i32 0, i32 8
  %346 = load %struct.TYPE_29__*, %struct.TYPE_29__** %345, align 8
  %347 = call i32 @HeapFree(i32 %343, i32 0, %struct.TYPE_29__* %346)
  %348 = call i32 (...) @GetProcessHeap()
  %349 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %349, i32 0, i32 6
  %351 = load %struct.TYPE_29__*, %struct.TYPE_29__** %350, align 8
  %352 = call i32 @HeapFree(i32 %348, i32 0, %struct.TYPE_29__* %351)
  %353 = call i32 (...) @GetProcessHeap()
  %354 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %355 = call i32 @HeapFree(i32 %353, i32 0, %struct.TYPE_29__* %354)
  %356 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %6, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %356, align 8
  %357 = load i64, i64* @DSERR_GENERIC, align 8
  store i64 %357, i64* %4, align 8
  br label %552

358:                                              ; preds = %304
  br label %359

359:                                              ; preds = %358, %301
  %360 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %360, i32 0, i32 8
  %362 = load %struct.TYPE_29__*, %struct.TYPE_29__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %362, i32 0, i32 0
  store i32 1, i32* %363, align 8
  %364 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %365 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %364, i32 0, i32 8
  %366 = load %struct.TYPE_29__*, %struct.TYPE_29__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %366, i32 0, i32 18
  %368 = call i32 @list_init(i32* %367)
  %369 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %370 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %369, i32 0, i32 8
  %371 = load %struct.TYPE_29__*, %struct.TYPE_29__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %371, i32 0, i32 18
  %373 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %374 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %373, i32 0, i32 17
  %375 = call i32 @list_add_head(i32* %372, i32* %374)
  %376 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %377 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %376, i32 0, i32 8
  %378 = load %struct.TYPE_29__*, %struct.TYPE_29__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %378, i32 0, i32 9
  %380 = load %struct.TYPE_29__*, %struct.TYPE_29__** %379, align 8
  %381 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %382 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 8
  %384 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %384, i32 0, i32 2
  %386 = load %struct.TYPE_40__*, %struct.TYPE_40__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %386, i32 0, i32 3
  %388 = load i32, i32* %387, align 4
  %389 = icmp eq i32 %388, 8
  %390 = zext i1 %389 to i64
  %391 = select i1 %389, i32 128, i32 0
  %392 = call i32 @FillMemory(%struct.TYPE_29__* %380, i32 %383, i32 %391)
  %393 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %394 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %393, i32 0, i32 15
  store i64 0, i64* %394, align 8
  %395 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %396 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %395, i32 0, i32 16
  store i64 0, i64* %396, align 8
  %397 = load i32, i32* @STATE_STOPPED, align 4
  %398 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %399 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %398, i32 0, i32 14
  store i32 %397, i32* %399, align 4
  %400 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %401 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %400, i32 0, i32 3
  %402 = load i32, i32* %401, align 4
  %403 = load i32, i32* @DSOUND_FREQSHIFT, align 4
  %404 = shl i32 %402, %403
  %405 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %405, i32 0, i32 0
  %407 = load %struct.TYPE_34__*, %struct.TYPE_34__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = sdiv i32 %404, %409
  %411 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %412 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %411, i32 0, i32 4
  store i32 %410, i32* %412, align 8
  %413 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %414 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %413, i32 0, i32 3
  %415 = load i32, i32* %414, align 4
  %416 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %417 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %416, i32 0, i32 2
  %418 = load %struct.TYPE_40__*, %struct.TYPE_40__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = mul nsw i32 %415, %420
  %422 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %423 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %422, i32 0, i32 5
  store i32 %421, i32* %423, align 4
  %424 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %425 = call i32 @DSOUND_RecalcFormat(%struct.TYPE_29__* %424)
  %426 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %427 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %426, i32 0, i32 13
  %428 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = load i32, i32* @DSBCAPS_CTRL3D, align 4
  %431 = and i32 %429, %430
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %502

433:                                              ; preds = %359
  %434 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %435 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %434, i32 0, i32 12
  %436 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %435, i32 0, i32 0
  store i32 4, i32* %436, align 8
  %437 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %438 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %437, i32 0, i32 12
  %439 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %438, i32 0, i32 9
  %440 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %439, i32 0, i32 0
  store double 0.000000e+00, double* %440, align 8
  %441 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %442 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %441, i32 0, i32 12
  %443 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %442, i32 0, i32 9
  %444 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %443, i32 0, i32 1
  store double 0.000000e+00, double* %444, align 8
  %445 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %446 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %445, i32 0, i32 12
  %447 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %446, i32 0, i32 9
  %448 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %447, i32 0, i32 2
  store double 0.000000e+00, double* %448, align 8
  %449 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %450 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %449, i32 0, i32 12
  %451 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %450, i32 0, i32 8
  %452 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %451, i32 0, i32 0
  store double 0.000000e+00, double* %452, align 8
  %453 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %454 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %453, i32 0, i32 12
  %455 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %454, i32 0, i32 8
  %456 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %455, i32 0, i32 1
  store double 0.000000e+00, double* %456, align 8
  %457 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %458 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %457, i32 0, i32 12
  %459 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %458, i32 0, i32 8
  %460 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %459, i32 0, i32 2
  store double 0.000000e+00, double* %460, align 8
  %461 = load i8*, i8** @DS3D_DEFAULTCONEANGLE, align 8
  %462 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %463 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %462, i32 0, i32 12
  %464 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %463, i32 0, i32 7
  store i8* %461, i8** %464, align 8
  %465 = load i8*, i8** @DS3D_DEFAULTCONEANGLE, align 8
  %466 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %467 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %466, i32 0, i32 12
  %468 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %467, i32 0, i32 6
  store i8* %465, i8** %468, align 8
  %469 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %470 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %469, i32 0, i32 12
  %471 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %470, i32 0, i32 5
  %472 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %471, i32 0, i32 0
  store double 0.000000e+00, double* %472, align 8
  %473 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %474 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %473, i32 0, i32 12
  %475 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %474, i32 0, i32 5
  %476 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %475, i32 0, i32 1
  store double 0.000000e+00, double* %476, align 8
  %477 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %478 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %477, i32 0, i32 12
  %479 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %478, i32 0, i32 5
  %480 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %479, i32 0, i32 2
  store double 0.000000e+00, double* %480, align 8
  %481 = load i32, i32* @DS3D_DEFAULTCONEOUTSIDEVOLUME, align 4
  %482 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %483 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %482, i32 0, i32 12
  %484 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %483, i32 0, i32 4
  store i32 %481, i32* %484, align 8
  %485 = load i32, i32* @DS3D_DEFAULTMINDISTANCE, align 4
  %486 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %487 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %486, i32 0, i32 12
  %488 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %487, i32 0, i32 3
  store i32 %485, i32* %488, align 4
  %489 = load i32, i32* @DS3D_DEFAULTMAXDISTANCE, align 4
  %490 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %491 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %490, i32 0, i32 12
  %492 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %491, i32 0, i32 2
  store i32 %489, i32* %492, align 8
  %493 = load i32, i32* @DS3DMODE_NORMAL, align 4
  %494 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %495 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %494, i32 0, i32 12
  %496 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %495, i32 0, i32 1
  store i32 %493, i32* %496, align 4
  %497 = load i32, i32* @FALSE, align 4
  %498 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %499 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %498, i32 0, i32 11
  store i32 %497, i32* %499, align 4
  %500 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %501 = call i32 @DSOUND_Calc3DBuffer(%struct.TYPE_29__* %500)
  br label %506

502:                                              ; preds = %359
  %503 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %504 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %503, i32 0, i32 10
  %505 = call i32 @DSOUND_RecalcVolPan(i32* %504)
  br label %506

506:                                              ; preds = %502, %433
  %507 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %508 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %507, i32 0, i32 7
  %509 = call i32 @RtlInitializeResource(i32* %508)
  %510 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %511 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %510, i32 0, i32 1
  %512 = load i32, i32* %511, align 8
  %513 = load i32, i32* @DSBCAPS_PRIMARYBUFFER, align 4
  %514 = and i32 %512, %513
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %548, label %516

516:                                              ; preds = %506
  %517 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %518 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %519 = call i64 @DirectSoundDevice_AddBuffer(%struct.TYPE_30__* %517, %struct.TYPE_29__* %518)
  store i64 %519, i64* %10, align 8
  %520 = load i64, i64* %10, align 8
  %521 = load i64, i64* @DS_OK, align 8
  %522 = icmp ne i64 %520, %521
  br i1 %522, label %523, label %547

523:                                              ; preds = %516
  %524 = call i32 (...) @GetProcessHeap()
  %525 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %526 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %525, i32 0, i32 8
  %527 = load %struct.TYPE_29__*, %struct.TYPE_29__** %526, align 8
  %528 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %527, i32 0, i32 9
  %529 = load %struct.TYPE_29__*, %struct.TYPE_29__** %528, align 8
  %530 = call i32 @HeapFree(i32 %524, i32 0, %struct.TYPE_29__* %529)
  %531 = call i32 (...) @GetProcessHeap()
  %532 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %533 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %532, i32 0, i32 8
  %534 = load %struct.TYPE_29__*, %struct.TYPE_29__** %533, align 8
  %535 = call i32 @HeapFree(i32 %531, i32 0, %struct.TYPE_29__* %534)
  %536 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %537 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %536, i32 0, i32 7
  %538 = call i32 @RtlDeleteResource(i32* %537)
  %539 = call i32 (...) @GetProcessHeap()
  %540 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %541 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %540, i32 0, i32 6
  %542 = load %struct.TYPE_29__*, %struct.TYPE_29__** %541, align 8
  %543 = call i32 @HeapFree(i32 %539, i32 0, %struct.TYPE_29__* %542)
  %544 = call i32 (...) @GetProcessHeap()
  %545 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %546 = call i32 @HeapFree(i32 %544, i32 0, %struct.TYPE_29__* %545)
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %8, align 8
  br label %547

547:                                              ; preds = %523, %516
  br label %548

548:                                              ; preds = %547, %506
  %549 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %550 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %6, align 8
  store %struct.TYPE_29__* %549, %struct.TYPE_29__** %550, align 8
  %551 = load i64, i64* %10, align 8
  store i64 %551, i64* %4, align 8
  br label %552

552:                                              ; preds = %548, %342, %283, %243, %231, %229, %80, %46, %32
  %553 = load i64, i64* %4, align 8
  ret i64 %553
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @CopyMemory(%struct.TYPE_32__*, %struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_29__* @DSOUND_CopyFormat(%struct.TYPE_40__*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_29__*) #1

declare dso_local i64 @IDsDriver_CreateSoundBuffer(i64, %struct.TYPE_40__*, i32, i32, i32*, %struct.TYPE_29__**, i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

declare dso_local i32 @FillMemory(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @DSOUND_RecalcFormat(%struct.TYPE_29__*) #1

declare dso_local i32 @DSOUND_Calc3DBuffer(%struct.TYPE_29__*) #1

declare dso_local i32 @DSOUND_RecalcVolPan(i32*) #1

declare dso_local i32 @RtlInitializeResource(i32*) #1

declare dso_local i64 @DirectSoundDevice_AddBuffer(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @RtlDeleteResource(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
