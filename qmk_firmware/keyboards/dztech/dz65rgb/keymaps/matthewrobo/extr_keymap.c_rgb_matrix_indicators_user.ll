; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/dztech/dz65rgb/keymaps/matthewrobo/extr_keymap.c_rgb_matrix_indicators_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/dztech/dz65rgb/keymaps/matthewrobo/extr_keymap.c_rgb_matrix_indicators_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
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
  %23 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %24 = call i64 @IS_HOST_LED_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %0
  %27 = call i32 @rgb_matrix_set_color(i32 8, i32 255, i32 255, i32 255)
  br label %28

28:                                               ; preds = %26, %0
  %29 = call i32 (...) @host_keyboard_leds()
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* @g_suspend_state, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %270, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rgb_matrix_config, i32 0, i32 1), align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %270

35:                                               ; preds = %32
  %36 = load i32, i32* @layer_state, align 4
  %37 = call i32 @biton32(i32 %36)
  switch i32 %37, label %269 [
    i32 128, label %38
    i32 129, label %80
  ]

38:                                               ; preds = %35
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @USB_LED_NUM_LOCK, align 4
  %41 = call i32 @IS_LED_ON(i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = call i32 @rgb_matrix_set_color(i32 17, i32 255, i32 0, i32 0)
  %45 = call i32 @rgb_matrix_set_color(i32 26, i32 255, i32 255, i32 0)
  br label %49

46:                                               ; preds = %38
  %47 = call i32 @rgb_matrix_set_color(i32 17, i32 0, i32 0, i32 0)
  %48 = call i32 @rgb_matrix_set_color(i32 26, i32 255, i32 0, i32 0)
  br label %49

49:                                               ; preds = %46, %43
  %50 = call i32 @rgb_matrix_set_color(i32 8, i32 255, i32 255, i32 255)
  %51 = call i32 @rgb_matrix_set_color(i32 4, i32 255, i32 0, i32 0)
  %52 = call i32 @rgb_matrix_set_color(i32 47, i32 255, i32 0, i32 0)
  %53 = call i32 @rgb_matrix_set_color(i32 46, i32 255, i32 0, i32 0)
  %54 = call i32 @rgb_matrix_set_color(i32 45, i32 255, i32 0, i32 0)
  %55 = call i32 @rgb_matrix_set_color(i32 5, i32 0, i32 255, i32 0)
  %56 = call i32 @rgb_matrix_set_color(i32 3, i32 0, i32 255, i32 0)
  %57 = call i32 @rgb_matrix_set_color(i32 6, i32 0, i32 0, i32 255)
  %58 = call i32 @rgb_matrix_set_color(i32 48, i32 0, i32 0, i32 255)
  %59 = call i32 @rgb_matrix_set_color(i32 10, i32 255, i32 255, i32 0)
  %60 = call i32 @rgb_matrix_set_color(i32 9, i32 255, i32 255, i32 0)
  %61 = call i32 @rgb_matrix_set_color(i32 18, i32 255, i32 255, i32 0)
  %62 = call i32 @rgb_matrix_set_color(i32 0, i32 255, i32 255, i32 0)
  %63 = call i32 @rgb_matrix_set_color(i32 27, i32 255, i32 255, i32 0)
  %64 = call i32 @rgb_matrix_set_color(i32 51, i32 255, i32 255, i32 0)
  %65 = call i32 @rgb_matrix_set_color(i32 52, i32 255, i32 255, i32 0)
  %66 = call i32 @rgb_matrix_set_color(i32 53, i32 255, i32 255, i32 0)
  %67 = call i32 @rgb_matrix_set_color(i32 60, i32 255, i32 0, i32 0)
  %68 = call i32 @rgb_matrix_set_color(i32 61, i32 255, i32 0, i32 0)
  %69 = call i32 @rgb_matrix_set_color(i32 62, i32 255, i32 0, i32 0)
  %70 = call i32 @rgb_matrix_set_color(i32 63, i32 0, i32 0, i32 255)
  %71 = call i32 @rgb_matrix_set_color(i32 19, i32 0, i32 0, i32 255)
  %72 = call i32 @rgb_matrix_set_color(i32 20, i32 0, i32 0, i32 255)
  %73 = call i32 @rgb_matrix_set_color(i32 21, i32 0, i32 0, i32 255)
  %74 = call i32 @rgb_matrix_set_color(i32 28, i32 0, i32 0, i32 255)
  %75 = call i32 @rgb_matrix_set_color(i32 24, i32 0, i32 0, i32 255)
  %76 = call i32 @rgb_matrix_set_color(i32 25, i32 0, i32 0, i32 255)
  %77 = call i32 @rgb_matrix_set_color(i32 29, i32 255, i32 255, i32 255)
  %78 = call i32 @rgb_matrix_set_color(i32 30, i32 255, i32 255, i32 255)
  %79 = call i32 @rgb_matrix_set_color(i32 31, i32 255, i32 255, i32 255)
  br label %269

80:                                               ; preds = %35
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rgb_matrix_config, i32 0, i32 0, i32 2), align 8
  store i32 %82, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rgb_matrix_config, i32 0, i32 0, i32 1), align 4
  store i32 %84, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rgb_matrix_config, i32 0, i32 0, i32 0), align 8
  store i32 %86, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 3
  store i32 0, i32* %87, align 4
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 4
  store i32 0, i32* %88, align 4
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 5
  store i32 0, i32* %89, align 4
  %90 = bitcast %struct.TYPE_9__* %3 to i8*
  %91 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %90, i8* align 4 %91, i64 24, i1 false)
  %92 = bitcast %struct.TYPE_9__* %4 to i8*
  %93 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 4 %93, i64 24, i1 false)
  %94 = bitcast %struct.TYPE_9__* %5 to i8*
  %95 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %94, i8* align 4 %95, i64 24, i1 false)
  %96 = bitcast %struct.TYPE_9__* %6 to i8*
  %97 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 %97, i64 24, i1 false)
  %98 = bitcast %struct.TYPE_9__* %7 to i8*
  %99 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 4 %99, i64 24, i1 false)
  %100 = bitcast %struct.TYPE_9__* %8 to i8*
  %101 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 24, i1 false)
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  store i32 %104, i32* %105, align 4
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %107, 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  store i32 %108, i32* %109, align 4
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = add i32 %111, 16
  %113 = icmp ugt i32 %112, 255
  br i1 %113, label %114, label %115

114:                                              ; preds = %80
  br label %119

115:                                              ; preds = %80
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add i32 %117, 16
  br label %119

119:                                              ; preds = %115, %114
  %120 = phi i32 [ 255, %114 ], [ %118, %115 ]
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i32 %120, i32* %121, align 4
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sub i32 %123, 16
  %125 = icmp ult i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %131

127:                                              ; preds = %119
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sub i32 %129, 16
  br label %131

131:                                              ; preds = %127, %126
  %132 = phi i32 [ 0, %126 ], [ %130, %127 ]
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32 %132, i32* %133, align 4
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 16
  %137 = icmp sgt i32 %136, 255
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  br label %143

139:                                              ; preds = %131
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 16
  br label %143

143:                                              ; preds = %139, %138
  %144 = phi i32 [ 255, %138 ], [ %142, %139 ]
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i32 %144, i32* %145, align 4
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = sub nsw i32 %147, 16
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  br label %155

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sub nsw i32 %153, 16
  br label %155

155:                                              ; preds = %151, %150
  %156 = phi i32 [ 0, %150 ], [ %154, %151 ]
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  store i32 %156, i32* %157, align 4
  %158 = call { i64, i32 } @hsv_to_rgb(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %2)
  store { i64, i32 } %158, { i64, i32 }* %10, align 8
  %159 = bitcast { i64, i32 }* %10 to i8*
  %160 = bitcast %struct.TYPE_8__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %160, i8* align 8 %159, i64 12, i1 false)
  %161 = call { i64, i32 } @hsv_to_rgb(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %3)
  store { i64, i32 } %161, { i64, i32 }* %12, align 8
  %162 = bitcast { i64, i32 }* %12 to i8*
  %163 = bitcast %struct.TYPE_8__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %163, i8* align 8 %162, i64 12, i1 false)
  %164 = call { i64, i32 } @hsv_to_rgb(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %4)
  store { i64, i32 } %164, { i64, i32 }* %14, align 8
  %165 = bitcast { i64, i32 }* %14 to i8*
  %166 = bitcast %struct.TYPE_8__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %166, i8* align 8 %165, i64 12, i1 false)
  %167 = call { i64, i32 } @hsv_to_rgb(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %5)
  store { i64, i32 } %167, { i64, i32 }* %16, align 8
  %168 = bitcast { i64, i32 }* %16 to i8*
  %169 = bitcast %struct.TYPE_8__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %169, i8* align 8 %168, i64 12, i1 false)
  %170 = call { i64, i32 } @hsv_to_rgb(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %6)
  store { i64, i32 } %170, { i64, i32 }* %18, align 8
  %171 = bitcast { i64, i32 }* %18 to i8*
  %172 = bitcast %struct.TYPE_8__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %172, i8* align 8 %171, i64 12, i1 false)
  %173 = call { i64, i32 } @hsv_to_rgb(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %7)
  store { i64, i32 } %173, { i64, i32 }* %20, align 8
  %174 = bitcast { i64, i32 }* %20 to i8*
  %175 = bitcast %struct.TYPE_8__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %175, i8* align 8 %174, i64 12, i1 false)
  %176 = call { i64, i32 } @hsv_to_rgb(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %8)
  store { i64, i32 } %176, { i64, i32 }* %22, align 8
  %177 = bitcast { i64, i32 }* %22 to i8*
  %178 = bitcast %struct.TYPE_8__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %178, i8* align 8 %177, i64 12, i1 false)
  %179 = call i32 @rgb_matrix_set_color(i32 65, i32 255, i32 255, i32 255)
  %180 = call i32 @rgb_matrix_set_color(i32 36, i32 255, i32 0, i32 0)
  %181 = call i32 @rgb_matrix_set_color(i32 37, i32 255, i32 0, i32 64)
  %182 = call i32 @rgb_matrix_set_color(i32 37, i32 255, i32 0, i32 64)
  %183 = call i32 @rgb_matrix_set_color(i32 59, i32 0, i32 128, i32 255)
  %184 = call i32 @rgb_matrix_set_color(i32 34, i32 0, i32 128, i32 255)
  %185 = call i32 @rgb_matrix_set_color(i32 32, i32 255, i32 0, i32 0)
  %186 = call i32 @rgb_matrix_set_color(i32 24, i32 255, i32 64, i32 0)
  %187 = call i32 @rgb_matrix_set_color(i32 25, i32 255, i32 64, i32 0)
  %188 = load i32, i32* %1, align 4
  %189 = load i32, i32* @autoshift_enabled, align 4
  %190 = icmp ne i32 %189, 0
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  %193 = shl i32 1, %192
  %194 = and i32 %188, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %155
  %197 = call i32 @rgb_matrix_set_color(i32 15, i32 255, i32 0, i32 0)
  br label %200

198:                                              ; preds = %155
  %199 = call i32 @rgb_matrix_set_color(i32 15, i32 255, i32 255, i32 0)
  br label %200

200:                                              ; preds = %198, %196
  %201 = call i32 @rgb_matrix_set_color(i32 6, i32 255, i32 128, i32 0)
  %202 = call i32 @rgb_matrix_set_color(i32 48, i32 255, i32 128, i32 0)
  %203 = call i32 @rgb_matrix_set_color(i32 29, i32 255, i32 128, i32 0)
  %204 = call i32 @rgb_matrix_set_color(i32 30, i32 255, i32 128, i32 0)
  %205 = call i32 @rgb_matrix_set_color(i32 40, i32 255, i32 64, i32 0)
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @rgb_matrix_set_color(i32 4, i32 %207, i32 %209, i32 %211)
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @rgb_matrix_set_color(i32 46, i32 %214, i32 %216, i32 %218)
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @rgb_matrix_set_color(i32 3, i32 %221, i32 %223, i32 %225)
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @rgb_matrix_set_color(i32 45, i32 %228, i32 %230, i32 %232)
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @rgb_matrix_set_color(i32 2, i32 %235, i32 %237, i32 %239)
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @rgb_matrix_set_color(i32 44, i32 %242, i32 %244, i32 %246)
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @rgb_matrix_set_color(i32 35, i32 %249, i32 %251, i32 %253)
  %255 = call i32 @rgb_matrix_set_color(i32 5, i32 128, i32 128, i32 128)
  %256 = call i32 @rgb_matrix_set_color(i32 47, i32 128, i32 128, i32 128)
  %257 = call i32 @rgb_matrix_set_color(i32 67, i32 128, i32 128, i32 128)
  %258 = call i32 @rgb_matrix_set_color(i32 33, i32 128, i32 128, i32 128)
  %259 = call i32 @rgb_matrix_set_color(i32 26, i32 240, i32 0, i32 255)
  %260 = call i32 @rgb_matrix_set_color(i32 27, i32 0, i32 2, i32 255)
  %261 = call i32 @rgb_matrix_set_color(i32 51, i32 255, i32 0, i32 0)
  %262 = call i32 @rgb_matrix_set_color(i32 52, i32 0, i32 0, i32 0)
  %263 = call i32 @rgb_matrix_set_color(i32 53, i32 0, i32 255, i32 247)
  %264 = call i32 @rgb_matrix_set_color(i32 61, i32 255, i32 218, i32 0)
  %265 = call i32 @rgb_matrix_set_color(i32 62, i32 0, i32 255, i32 1)
  %266 = call i32 @rgb_matrix_set_color(i32 63, i32 255, i32 165, i32 24)
  %267 = call i32 @rgb_matrix_set_color(i32 54, i32 129, i32 60, i32 255)
  %268 = call i32 @rgb_matrix_set_color(i32 28, i32 255, i32 255, i32 255)
  br label %269

269:                                              ; preds = %35, %200, %49
  br label %270

270:                                              ; preds = %269, %32, %28
  ret void
}

declare dso_local i64 @IS_HOST_LED_ON(i32) #1

declare dso_local i32 @rgb_matrix_set_color(i32, i32, i32, i32) #1

declare dso_local i32 @host_keyboard_leds(...) #1

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @IS_LED_ON(i32, i32) #1

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
