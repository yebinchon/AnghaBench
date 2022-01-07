; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/ctrl/keymaps/matthewrobo/extr_keymap.c_rgb_matrix_indicators_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/ctrl/keymaps/matthewrobo/extr_keymap.c_rgb_matrix_indicators_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@g_suspend_state = common dso_local global i32 0, align 4
@rgb_matrix_config = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@layer_state = common dso_local global i32 0, align 4
@USB_LED_NUM_LOCK = common dso_local global i32 0, align 4
@autoshift_enabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgb_matrix_indicators_user() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_9__, align 8
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca %struct.TYPE_8__, align 4
  %10 = alloca { i64, i32 }, align 8
  %11 = alloca %struct.TYPE_8__, align 4
  %12 = alloca { i64, i32 }, align 8
  %13 = alloca %struct.TYPE_8__, align 4
  %14 = alloca { i64, i32 }, align 8
  %15 = alloca %struct.TYPE_8__, align 4
  %16 = alloca { i64, i32 }, align 8
  %17 = alloca %struct.TYPE_8__, align 4
  %18 = alloca { i64, i32 }, align 8
  %19 = alloca %struct.TYPE_8__, align 4
  %20 = alloca { i64, i32 }, align 8
  %21 = alloca %struct.TYPE_8__, align 4
  %22 = alloca { i64, i32 }, align 8
  %23 = call i32 (...) @host_keyboard_leds()
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* @g_suspend_state, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %303, label %26

26:                                               ; preds = %0
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rgb_matrix_config, i32 0, i32 1), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %303

29:                                               ; preds = %26
  %30 = load i32, i32* @layer_state, align 4
  %31 = call i32 @biton32(i32 %30)
  switch i32 %31, label %302 [
    i32 128, label %32
    i32 129, label %73
  ]

32:                                               ; preds = %29
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @USB_LED_NUM_LOCK, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i32 @rgb_matrix_set_color(i32 41, i32 255, i32 0, i32 0)
  br label %42

40:                                               ; preds = %32
  %41 = call i32 @rgb_matrix_set_color(i32 41, i32 0, i32 0, i32 0)
  br label %42

42:                                               ; preds = %40, %38
  %43 = call i32 @rgb_matrix_set_color(i32 50, i32 255, i32 255, i32 255)
  %44 = call i32 @rgb_matrix_set_color(i32 101, i32 255, i32 255, i32 255)
  %45 = call i32 @rgb_matrix_set_color(i32 36, i32 255, i32 0, i32 0)
  %46 = call i32 @rgb_matrix_set_color(i32 52, i32 255, i32 0, i32 0)
  %47 = call i32 @rgb_matrix_set_color(i32 53, i32 255, i32 0, i32 0)
  %48 = call i32 @rgb_matrix_set_color(i32 54, i32 255, i32 0, i32 0)
  %49 = call i32 @rgb_matrix_set_color(i32 35, i32 0, i32 255, i32 0)
  %50 = call i32 @rgb_matrix_set_color(i32 37, i32 0, i32 255, i32 0)
  %51 = call i32 @rgb_matrix_set_color(i32 34, i32 0, i32 0, i32 255)
  %52 = call i32 @rgb_matrix_set_color(i32 51, i32 0, i32 0, i32 255)
  %53 = call i32 @rgb_matrix_set_color(i32 23, i32 255, i32 255, i32 0)
  %54 = call i32 @rgb_matrix_set_color(i32 24, i32 255, i32 255, i32 0)
  %55 = call i32 @rgb_matrix_set_color(i32 25, i32 255, i32 255, i32 0)
  %56 = call i32 @rgb_matrix_set_color(i32 40, i32 255, i32 255, i32 0)
  %57 = call i32 @rgb_matrix_set_color(i32 42, i32 255, i32 255, i32 0)
  %58 = call i32 @rgb_matrix_set_color(i32 57, i32 255, i32 255, i32 0)
  %59 = call i32 @rgb_matrix_set_color(i32 58, i32 255, i32 255, i32 0)
  %60 = call i32 @rgb_matrix_set_color(i32 59, i32 255, i32 255, i32 0)
  %61 = call i32 @rgb_matrix_set_color(i32 69, i32 255, i32 0, i32 0)
  %62 = call i32 @rgb_matrix_set_color(i32 70, i32 255, i32 0, i32 0)
  %63 = call i32 @rgb_matrix_set_color(i32 71, i32 255, i32 0, i32 0)
  %64 = call i32 @rgb_matrix_set_color(i32 72, i32 0, i32 0, i32 255)
  %65 = call i32 @rgb_matrix_set_color(i32 26, i32 0, i32 0, i32 255)
  %66 = call i32 @rgb_matrix_set_color(i32 27, i32 0, i32 0, i32 255)
  %67 = call i32 @rgb_matrix_set_color(i32 28, i32 0, i32 0, i32 255)
  %68 = call i32 @rgb_matrix_set_color(i32 43, i32 0, i32 0, i32 255)
  %69 = call i32 @rgb_matrix_set_color(i32 46, i32 0, i32 0, i32 255)
  %70 = call i32 @rgb_matrix_set_color(i32 60, i32 0, i32 0, i32 255)
  %71 = call i32 @rgb_matrix_set_color(i32 61, i32 0, i32 0, i32 255)
  %72 = call i32 @rgb_matrix_set_color(i32 73, i32 0, i32 0, i32 255)
  br label %302

73:                                               ; preds = %29
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rgb_matrix_config, i32 0, i32 0, i32 2), align 8
  store i32 %75, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rgb_matrix_config, i32 0, i32 0, i32 1), align 4
  store i32 %77, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rgb_matrix_config, i32 0, i32 0, i32 0), align 8
  store i32 %79, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 3
  store i32 0, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 4
  store i32 0, i32* %81, align 4
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 5
  store i32 0, i32* %82, align 4
  %83 = bitcast %struct.TYPE_9__* %3 to i8*
  %84 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 24, i1 false)
  %85 = bitcast %struct.TYPE_9__* %4 to i8*
  %86 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 4 %86, i64 24, i1 false)
  %87 = bitcast %struct.TYPE_9__* %5 to i8*
  %88 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 4 %88, i64 24, i1 false)
  %89 = bitcast %struct.TYPE_9__* %6 to i8*
  %90 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 %90, i64 24, i1 false)
  %91 = bitcast %struct.TYPE_9__* %7 to i8*
  %92 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 24, i1 false)
  %93 = bitcast %struct.TYPE_9__* %8 to i8*
  %94 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %93, i8* align 4 %94, i64 24, i1 false)
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  store i32 %97, i32* %98, align 4
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %100, 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  store i32 %101, i32* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add i32 %104, 16
  %106 = icmp ugt i32 %105, 255
  br i1 %106, label %107, label %108

107:                                              ; preds = %73
  br label %112

108:                                              ; preds = %73
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = add i32 %110, 16
  br label %112

112:                                              ; preds = %108, %107
  %113 = phi i32 [ 255, %107 ], [ %111, %108 ]
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i32 %113, i32* %114, align 4
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sub i32 %116, 16
  %118 = icmp ult i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %124

120:                                              ; preds = %112
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = sub i32 %122, 16
  br label %124

124:                                              ; preds = %120, %119
  %125 = phi i32 [ 0, %119 ], [ %123, %120 ]
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32 %125, i32* %126, align 4
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 16
  %130 = icmp sgt i32 %129, 255
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %136

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 16
  br label %136

136:                                              ; preds = %132, %131
  %137 = phi i32 [ 255, %131 ], [ %135, %132 ]
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i32 %137, i32* %138, align 4
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %140, 16
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  br label %148

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %146, 16
  br label %148

148:                                              ; preds = %144, %143
  %149 = phi i32 [ 0, %143 ], [ %147, %144 ]
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  store i32 %149, i32* %150, align 4
  %151 = call { i64, i32 } @hsv_to_rgb(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %2)
  store { i64, i32 } %151, { i64, i32 }* %10, align 8
  %152 = bitcast { i64, i32 }* %10 to i8*
  %153 = bitcast %struct.TYPE_8__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %153, i8* align 8 %152, i64 12, i1 false)
  %154 = call { i64, i32 } @hsv_to_rgb(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %3)
  store { i64, i32 } %154, { i64, i32 }* %12, align 8
  %155 = bitcast { i64, i32 }* %12 to i8*
  %156 = bitcast %struct.TYPE_8__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %156, i8* align 8 %155, i64 12, i1 false)
  %157 = call { i64, i32 } @hsv_to_rgb(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %4)
  store { i64, i32 } %157, { i64, i32 }* %14, align 8
  %158 = bitcast { i64, i32 }* %14 to i8*
  %159 = bitcast %struct.TYPE_8__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %159, i8* align 8 %158, i64 12, i1 false)
  %160 = call { i64, i32 } @hsv_to_rgb(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %5)
  store { i64, i32 } %160, { i64, i32 }* %16, align 8
  %161 = bitcast { i64, i32 }* %16 to i8*
  %162 = bitcast %struct.TYPE_8__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %162, i8* align 8 %161, i64 12, i1 false)
  %163 = call { i64, i32 } @hsv_to_rgb(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %6)
  store { i64, i32 } %163, { i64, i32 }* %18, align 8
  %164 = bitcast { i64, i32 }* %18 to i8*
  %165 = bitcast %struct.TYPE_8__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %165, i8* align 8 %164, i64 12, i1 false)
  %166 = call { i64, i32 } @hsv_to_rgb(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %7)
  store { i64, i32 } %166, { i64, i32 }* %20, align 8
  %167 = bitcast { i64, i32 }* %20 to i8*
  %168 = bitcast %struct.TYPE_8__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %168, i8* align 8 %167, i64 12, i1 false)
  %169 = call { i64, i32 } @hsv_to_rgb(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %8)
  store { i64, i32 } %169, { i64, i32 }* %22, align 8
  %170 = bitcast { i64, i32 }* %22 to i8*
  %171 = bitcast %struct.TYPE_8__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %171, i8* align 8 %170, i64 12, i1 false)
  %172 = call i32 @rgb_matrix_set_color(i32 81, i32 255, i32 255, i32 255)
  %173 = call i32 @rgb_matrix_set_color(i32 91, i32 255, i32 255, i32 255)
  %174 = call i32 @rgb_matrix_set_color(i32 93, i32 0, i32 0, i32 0)
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @rgb_matrix_set_color(i32 94, i32 %176, i32 %178, i32 %180)
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @rgb_matrix_set_color(i32 95, i32 %183, i32 %185, i32 %187)
  %189 = call i32 @rgb_matrix_set_color(i32 96, i32 0, i32 0, i32 0)
  %190 = call i32 @rgb_matrix_set_color(i32 68, i32 255, i32 0, i32 0)
  %191 = call i32 @rgb_matrix_set_color(i32 69, i32 255, i32 0, i32 64)
  %192 = call i32 @rgb_matrix_set_color(i32 32, i32 0, i32 128, i32 255)
  %193 = call i32 @rgb_matrix_set_color(i32 49, i32 0, i32 128, i32 255)
  %194 = call i32 @rgb_matrix_set_color(i32 13, i32 255, i32 0, i32 0)
  %195 = call i32 @rgb_matrix_set_color(i32 30, i32 255, i32 0, i32 0)
  %196 = call i32 @rgb_matrix_set_color(i32 47, i32 255, i32 64, i32 0)
  %197 = call i32 @rgb_matrix_set_color(i32 48, i32 255, i32 64, i32 0)
  %198 = call i32 @rgb_matrix_set_color(i32 14, i32 0, i32 255, i32 0)
  %199 = call i32 @rgb_matrix_set_color(i32 31, i32 0, i32 255, i32 0)
  %200 = load i32, i32* %1, align 4
  %201 = load i32, i32* @autoshift_enabled, align 4
  %202 = icmp ne i32 %201, 0
  %203 = xor i1 %202, true
  %204 = zext i1 %203 to i32
  %205 = shl i32 1, %204
  %206 = and i32 %200, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %148
  %209 = call i32 @rgb_matrix_set_color(i32 15, i32 255, i32 0, i32 0)
  br label %212

210:                                              ; preds = %148
  %211 = call i32 @rgb_matrix_set_color(i32 15, i32 255, i32 255, i32 0)
  br label %212

212:                                              ; preds = %210, %208
  %213 = call i32 @rgb_matrix_set_color(i32 44, i32 255, i32 128, i32 0)
  %214 = call i32 @rgb_matrix_set_color(i32 45, i32 255, i32 128, i32 0)
  %215 = call i32 @rgb_matrix_set_color(i32 34, i32 255, i32 128, i32 0)
  %216 = call i32 @rgb_matrix_set_color(i32 51, i32 255, i32 128, i32 0)
  %217 = call i32 @rgb_matrix_set_color(i32 63, i32 255, i32 64, i32 0)
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @rgb_matrix_set_color(i32 64, i32 %219, i32 %221, i32 %223)
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @rgb_matrix_set_color(i32 36, i32 %226, i32 %228, i32 %230)
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @rgb_matrix_set_color(i32 53, i32 %233, i32 %235, i32 %237)
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @rgb_matrix_set_color(i32 37, i32 %240, i32 %242, i32 %244)
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @rgb_matrix_set_color(i32 54, i32 %247, i32 %249, i32 %251)
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @rgb_matrix_set_color(i32 38, i32 %254, i32 %256, i32 %258)
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @rgb_matrix_set_color(i32 55, i32 %261, i32 %263, i32 %265)
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @rgb_matrix_set_color(i32 79, i32 %268, i32 %270, i32 %272)
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @rgb_matrix_set_color(i32 75, i32 %275, i32 %277, i32 %279)
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @rgb_matrix_set_color(i32 85, i32 %282, i32 %284, i32 %286)
  %288 = call i32 @rgb_matrix_set_color(i32 35, i32 128, i32 128, i32 128)
  %289 = call i32 @rgb_matrix_set_color(i32 52, i32 128, i32 128, i32 128)
  %290 = call i32 @rgb_matrix_set_color(i32 84, i32 128, i32 128, i32 128)
  %291 = call i32 @rgb_matrix_set_color(i32 86, i32 128, i32 128, i32 128)
  %292 = call i32 @rgb_matrix_set_color(i32 41, i32 240, i32 0, i32 255)
  %293 = call i32 @rgb_matrix_set_color(i32 42, i32 0, i32 2, i32 255)
  %294 = call i32 @rgb_matrix_set_color(i32 57, i32 255, i32 0, i32 0)
  %295 = call i32 @rgb_matrix_set_color(i32 58, i32 0, i32 0, i32 0)
  %296 = call i32 @rgb_matrix_set_color(i32 59, i32 0, i32 255, i32 247)
  %297 = call i32 @rgb_matrix_set_color(i32 70, i32 255, i32 218, i32 0)
  %298 = call i32 @rgb_matrix_set_color(i32 71, i32 0, i32 255, i32 1)
  %299 = call i32 @rgb_matrix_set_color(i32 72, i32 255, i32 165, i32 24)
  %300 = call i32 @rgb_matrix_set_color(i32 60, i32 129, i32 60, i32 255)
  %301 = call i32 @rgb_matrix_set_color(i32 43, i32 255, i32 255, i32 255)
  br label %302

302:                                              ; preds = %29, %212, %42
  br label %303

303:                                              ; preds = %302, %26, %0
  ret void
}

declare dso_local i32 @host_keyboard_leds(...) #1

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @rgb_matrix_set_color(i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i64, i32 } @hsv_to_rgb(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
