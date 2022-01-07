; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_mouse.c_dinput_mouse_hook.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_mouse.c_dinput_mouse_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__*, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32* }
%struct.TYPE_19__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"msg %lx @ (%d %d)\0A\00", align 1
@DIDF_ABSAXIS = common dso_local global i32 0, align 4
@WINE_MOUSE_X_AXIS_INSTANCE = common dso_local global i64 0, align 8
@DIDFT_RELAXIS = common dso_local global i32 0, align 4
@WINE_MOUSE_Y_AXIS_INSTANCE = common dso_local global i64 0, align 8
@WARP_FORCE_ON = common dso_local global i32 0, align 4
@WARP_DISABLE = common dso_local global i32 0, align 4
@DISCL_EXCLUSIVE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@WINE_MOUSE_Z_AXIS_INSTANCE = common dso_local global i64 0, align 8
@WINE_MOUSE_BUTTONS_INSTANCE = common dso_local global i64 0, align 8
@DIDFT_PSHBUTTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @dinput_mouse_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dinput_mouse_hook(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_19__, align 4
  %13 = alloca %struct.TYPE_19__, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %7, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.TYPE_18__* @impl_from_IDirectInputDevice8A(i32 %16)
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %22, i32 %26)
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = call i32 @EnterCriticalSection(i32* %30)
  %32 = load i32, i32* %5, align 4
  switch i32 %32, label %283 [
    i32 133, label %33
    i32 132, label %156
    i32 137, label %175
    i32 136, label %186
    i32 131, label %197
    i32 130, label %208
    i32 135, label %219
    i32 134, label %230
    i32 129, label %241
    i32 128, label %262
  ]

33:                                               ; preds = %3
  %34 = call i32 @GetCursorPos(%struct.TYPE_19__* %12)
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %38, %40
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, %41
  store i32 %47, i32* %45, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %51, %53
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %54
  store i32 %60, i32* %58, align 4
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @DIDF_ABSAXIS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %33
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  br label %85

82:                                               ; preds = %33
  %83 = bitcast %struct.TYPE_19__* %13 to i8*
  %84 = bitcast %struct.TYPE_19__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 8, i1 false)
  br label %85

85:                                               ; preds = %82, %71
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load i64, i64* @WINE_MOUSE_X_AXIS_INSTANCE, align 8
  %91 = call i32 @DIDFT_MAKEINSTANCE(i64 %90)
  %92 = load i32, i32* @DIDFT_RELAXIS, align 4
  %93 = or i32 %91, %92
  store i32 %93, i32* %10, align 4
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %89, %85
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %122

100:                                              ; preds = %96
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, -1
  br i1 %102, label %103, label %115

103:                                              ; preds = %100
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 (...) @GetCurrentTime()
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @queue_event(i32 %104, i32 %105, i32 %106, i32 %107, i32 %113)
  br label %115

115:                                              ; preds = %103, %100
  %116 = load i64, i64* @WINE_MOUSE_Y_AXIS_INSTANCE, align 8
  %117 = call i32 @DIDFT_MAKEINSTANCE(i64 %116)
  %118 = load i32, i32* @DIDFT_RELAXIS, align 4
  %119 = or i32 %117, %118
  store i32 %119, i32* %10, align 4
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %115, %96
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %155

130:                                              ; preds = %126, %122
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @WARP_FORCE_ON, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %150, label %136

136:                                              ; preds = %130
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @WARP_DISABLE, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %154

142:                                              ; preds = %136
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @DISCL_EXCLUSIVE, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %142, %130
  %151 = load i32, i32* @TRUE, align 4
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 8
  br label %154

154:                                              ; preds = %150, %142, %136
  br label %155

155:                                              ; preds = %154, %126
  br label %283

156:                                              ; preds = %3
  %157 = load i64, i64* @WINE_MOUSE_Z_AXIS_INSTANCE, align 8
  %158 = call i32 @DIDFT_MAKEINSTANCE(i64 %157)
  %159 = load i32, i32* @DIDFT_RELAXIS, align 4
  %160 = or i32 %158, %159
  store i32 %160, i32* %10, align 4
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @HIWORD(i32 %163)
  %165 = trunc i64 %164 to i16
  %166 = sext i16 %165 to i32
  store i32 %166, i32* %9, align 4
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %170, %166
  store i32 %171, i32* %169, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  store i32 %174, i32* %11, align 4
  br label %283

175:                                              ; preds = %3
  %176 = load i64, i64* @WINE_MOUSE_BUTTONS_INSTANCE, align 8
  %177 = add nsw i64 %176, 0
  %178 = call i32 @DIDFT_MAKEINSTANCE(i64 %177)
  %179 = load i32, i32* @DIDFT_PSHBUTTON, align 4
  %180 = or i32 %178, %179
  store i32 %180, i32* %10, align 4
  store i32 128, i32* %9, align 4
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 3
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  store i32 128, i32* %185, align 4
  br label %283

186:                                              ; preds = %3
  %187 = load i64, i64* @WINE_MOUSE_BUTTONS_INSTANCE, align 8
  %188 = add nsw i64 %187, 0
  %189 = call i32 @DIDFT_MAKEINSTANCE(i64 %188)
  %190 = load i32, i32* @DIDFT_PSHBUTTON, align 4
  %191 = or i32 %189, %190
  store i32 %191, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  store i32 0, i32* %196, align 4
  br label %283

197:                                              ; preds = %3
  %198 = load i64, i64* @WINE_MOUSE_BUTTONS_INSTANCE, align 8
  %199 = add nsw i64 %198, 1
  %200 = call i32 @DIDFT_MAKEINSTANCE(i64 %199)
  %201 = load i32, i32* @DIDFT_PSHBUTTON, align 4
  %202 = or i32 %200, %201
  store i32 %202, i32* %10, align 4
  store i32 128, i32* %9, align 4
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 1
  store i32 128, i32* %207, align 4
  br label %283

208:                                              ; preds = %3
  %209 = load i64, i64* @WINE_MOUSE_BUTTONS_INSTANCE, align 8
  %210 = add nsw i64 %209, 1
  %211 = call i32 @DIDFT_MAKEINSTANCE(i64 %210)
  %212 = load i32, i32* @DIDFT_PSHBUTTON, align 4
  %213 = or i32 %211, %212
  store i32 %213, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 3
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 1
  store i32 0, i32* %218, align 4
  br label %283

219:                                              ; preds = %3
  %220 = load i64, i64* @WINE_MOUSE_BUTTONS_INSTANCE, align 8
  %221 = add nsw i64 %220, 2
  %222 = call i32 @DIDFT_MAKEINSTANCE(i64 %221)
  %223 = load i32, i32* @DIDFT_PSHBUTTON, align 4
  %224 = or i32 %222, %223
  store i32 %224, i32* %10, align 4
  store i32 128, i32* %9, align 4
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 3
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 2
  store i32 128, i32* %229, align 4
  br label %283

230:                                              ; preds = %3
  %231 = load i64, i64* @WINE_MOUSE_BUTTONS_INSTANCE, align 8
  %232 = add nsw i64 %231, 2
  %233 = call i32 @DIDFT_MAKEINSTANCE(i64 %232)
  %234 = load i32, i32* @DIDFT_PSHBUTTON, align 4
  %235 = or i32 %233, %234
  store i32 %235, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 3
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 2
  store i32 0, i32* %240, align 4
  br label %283

241:                                              ; preds = %3
  %242 = load i64, i64* @WINE_MOUSE_BUTTONS_INSTANCE, align 8
  %243 = add nsw i64 %242, 2
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i64 @HIWORD(i32 %246)
  %248 = add nsw i64 %243, %247
  %249 = call i32 @DIDFT_MAKEINSTANCE(i64 %248)
  %250 = load i32, i32* @DIDFT_PSHBUTTON, align 4
  %251 = or i32 %249, %250
  store i32 %251, i32* %10, align 4
  store i32 128, i32* %9, align 4
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 3
  %255 = load i32*, i32** %254, align 8
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call i64 @HIWORD(i32 %258)
  %260 = add nsw i64 2, %259
  %261 = getelementptr inbounds i32, i32* %255, i64 %260
  store i32 128, i32* %261, align 4
  br label %283

262:                                              ; preds = %3
  %263 = load i64, i64* @WINE_MOUSE_BUTTONS_INSTANCE, align 8
  %264 = add nsw i64 %263, 2
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = call i64 @HIWORD(i32 %267)
  %269 = add nsw i64 %264, %268
  %270 = call i32 @DIDFT_MAKEINSTANCE(i64 %269)
  %271 = load i32, i32* @DIDFT_PSHBUTTON, align 4
  %272 = or i32 %270, %271
  store i32 %272, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 3
  %276 = load i32*, i32** %275, align 8
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = call i64 @HIWORD(i32 %279)
  %281 = add nsw i64 2, %280
  %282 = getelementptr inbounds i32, i32* %276, i64 %281
  store i32 0, i32* %282, align 4
  br label %283

283:                                              ; preds = %3, %262, %241, %230, %219, %208, %197, %186, %175, %156, %155
  %284 = load i32, i32* %10, align 4
  %285 = icmp ne i32 %284, -1
  br i1 %285, label %286, label %302

286:                                              ; preds = %283
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 2
  %289 = call i32 @_dump_mouse_state(%struct.TYPE_12__* %288)
  %290 = load i32, i32* %4, align 4
  %291 = load i32, i32* %10, align 4
  %292 = load i32, i32* %9, align 4
  %293 = call i32 (...) @GetCurrentTime()
  %294 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 2
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %298, align 4
  %301 = call i32 @queue_event(i32 %290, i32 %291, i32 %292, i32 %293, i32 %299)
  br label %302

302:                                              ; preds = %286, %283
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 1
  %306 = call i32 @LeaveCriticalSection(i32* %305)
  %307 = load i32, i32* %11, align 4
  ret i32 %307
}

declare dso_local %struct.TYPE_18__* @impl_from_IDirectInputDevice8A(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @GetCursorPos(%struct.TYPE_19__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DIDFT_MAKEINSTANCE(i64) #1

declare dso_local i32 @queue_event(i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetCurrentTime(...) #1

declare dso_local i64 @HIWORD(i32) #1

declare dso_local i32 @_dump_mouse_state(%struct.TYPE_12__*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
