; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/dztech/dz60rgb/keymaps/matthewrobo/extr_keymap.c_rgb_matrix_indicators_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/dztech/dz60rgb/keymaps/matthewrobo/extr_keymap.c_rgb_matrix_indicators_user.c"
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
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4

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
  br i1 %25, label %264, label %26

26:                                               ; preds = %0
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rgb_matrix_config, i32 0, i32 1), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %264

29:                                               ; preds = %26
  %30 = load i32, i32* @layer_state, align 4
  %31 = call i32 @biton32(i32 %30)
  switch i32 %31, label %263 [
    i32 129, label %32
    i32 128, label %74
    i32 130, label %240
  ]

32:                                               ; preds = %29
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @USB_LED_NUM_LOCK, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = call i32 @rgb_matrix_set_color(i32 13, i32 255, i32 0, i32 0)
  %40 = call i32 @rgb_matrix_set_color(i32 19, i32 255, i32 255, i32 0)
  br label %44

41:                                               ; preds = %32
  %42 = call i32 @rgb_matrix_set_color(i32 13, i32 0, i32 0, i32 0)
  %43 = call i32 @rgb_matrix_set_color(i32 19, i32 255, i32 0, i32 0)
  br label %44

44:                                               ; preds = %41, %38
  %45 = call i32 @rgb_matrix_set_color(i32 40, i32 255, i32 255, i32 255)
  %46 = call i32 @rgb_matrix_set_color(i32 24, i32 255, i32 0, i32 0)
  %47 = call i32 @rgb_matrix_set_color(i32 38, i32 255, i32 0, i32 0)
  %48 = call i32 @rgb_matrix_set_color(i32 37, i32 255, i32 0, i32 0)
  %49 = call i32 @rgb_matrix_set_color(i32 36, i32 255, i32 0, i32 0)
  %50 = call i32 @rgb_matrix_set_color(i32 25, i32 0, i32 255, i32 0)
  %51 = call i32 @rgb_matrix_set_color(i32 23, i32 0, i32 255, i32 0)
  %52 = call i32 @rgb_matrix_set_color(i32 26, i32 0, i32 0, i32 255)
  %53 = call i32 @rgb_matrix_set_color(i32 39, i32 0, i32 0, i32 255)
  %54 = call i32 @rgb_matrix_set_color(i32 6, i32 255, i32 255, i32 0)
  %55 = call i32 @rgb_matrix_set_color(i32 5, i32 255, i32 255, i32 0)
  %56 = call i32 @rgb_matrix_set_color(i32 4, i32 255, i32 255, i32 0)
  %57 = call i32 @rgb_matrix_set_color(i32 20, i32 255, i32 255, i32 0)
  %58 = call i32 @rgb_matrix_set_color(i32 18, i32 255, i32 255, i32 0)
  %59 = call i32 @rgb_matrix_set_color(i32 33, i32 255, i32 255, i32 0)
  %60 = call i32 @rgb_matrix_set_color(i32 32, i32 255, i32 255, i32 0)
  %61 = call i32 @rgb_matrix_set_color(i32 31, i32 255, i32 255, i32 0)
  %62 = call i32 @rgb_matrix_set_color(i32 47, i32 255, i32 0, i32 0)
  %63 = call i32 @rgb_matrix_set_color(i32 46, i32 255, i32 0, i32 0)
  %64 = call i32 @rgb_matrix_set_color(i32 45, i32 255, i32 0, i32 0)
  %65 = call i32 @rgb_matrix_set_color(i32 44, i32 0, i32 0, i32 255)
  %66 = call i32 @rgb_matrix_set_color(i32 3, i32 0, i32 0, i32 255)
  %67 = call i32 @rgb_matrix_set_color(i32 2, i32 0, i32 0, i32 255)
  %68 = call i32 @rgb_matrix_set_color(i32 1, i32 0, i32 0, i32 255)
  %69 = call i32 @rgb_matrix_set_color(i32 0, i32 0, i32 0, i32 255)
  %70 = call i32 @rgb_matrix_set_color(i32 17, i32 0, i32 0, i32 255)
  %71 = call i32 @rgb_matrix_set_color(i32 16, i32 255, i32 255, i32 255)
  %72 = call i32 @rgb_matrix_set_color(i32 15, i32 255, i32 255, i32 255)
  %73 = call i32 @rgb_matrix_set_color(i32 14, i32 255, i32 255, i32 255)
  br label %263

74:                                               ; preds = %29
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rgb_matrix_config, i32 0, i32 0, i32 2), align 8
  store i32 %76, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rgb_matrix_config, i32 0, i32 0, i32 1), align 4
  store i32 %78, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rgb_matrix_config, i32 0, i32 0, i32 0), align 8
  store i32 %80, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 3
  store i32 0, i32* %81, align 4
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 4
  store i32 0, i32* %82, align 4
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 5
  store i32 0, i32* %83, align 4
  %84 = bitcast %struct.TYPE_9__* %3 to i8*
  %85 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 %85, i64 24, i1 false)
  %86 = bitcast %struct.TYPE_9__* %4 to i8*
  %87 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 %87, i64 24, i1 false)
  %88 = bitcast %struct.TYPE_9__* %5 to i8*
  %89 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 4 %89, i64 24, i1 false)
  %90 = bitcast %struct.TYPE_9__* %6 to i8*
  %91 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %90, i8* align 4 %91, i64 24, i1 false)
  %92 = bitcast %struct.TYPE_9__* %7 to i8*
  %93 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 4 %93, i64 24, i1 false)
  %94 = bitcast %struct.TYPE_9__* %8 to i8*
  %95 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %94, i8* align 4 %95, i64 24, i1 false)
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  store i32 %98, i32* %99, align 4
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %101, 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  store i32 %102, i32* %103, align 4
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 16
  %107 = icmp sgt i32 %106, 255
  br i1 %107, label %108, label %109

108:                                              ; preds = %74
  br label %113

109:                                              ; preds = %74
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 16
  br label %113

113:                                              ; preds = %109, %108
  %114 = phi i32 [ 255, %108 ], [ %112, %109 ]
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i32 %114, i32* %115, align 4
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %117, 16
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %125

121:                                              ; preds = %113
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %123, 16
  br label %125

125:                                              ; preds = %121, %120
  %126 = phi i32 [ 0, %120 ], [ %124, %121 ]
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32 %126, i32* %127, align 4
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 16
  %131 = icmp sgt i32 %130, 255
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  br label %137

133:                                              ; preds = %125
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 16
  br label %137

137:                                              ; preds = %133, %132
  %138 = phi i32 [ 255, %132 ], [ %136, %133 ]
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i32 %138, i32* %139, align 4
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %141, 16
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %149

145:                                              ; preds = %137
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = sub nsw i32 %147, 16
  br label %149

149:                                              ; preds = %145, %144
  %150 = phi i32 [ 0, %144 ], [ %148, %145 ]
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  store i32 %150, i32* %151, align 4
  %152 = call { i64, i32 } @hsv_to_rgb(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %2)
  store { i64, i32 } %152, { i64, i32 }* %10, align 8
  %153 = bitcast { i64, i32 }* %10 to i8*
  %154 = bitcast %struct.TYPE_8__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %154, i8* align 8 %153, i64 12, i1 false)
  %155 = call { i64, i32 } @hsv_to_rgb(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %3)
  store { i64, i32 } %155, { i64, i32 }* %12, align 8
  %156 = bitcast { i64, i32 }* %12 to i8*
  %157 = bitcast %struct.TYPE_8__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %157, i8* align 8 %156, i64 12, i1 false)
  %158 = call { i64, i32 } @hsv_to_rgb(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %4)
  store { i64, i32 } %158, { i64, i32 }* %14, align 8
  %159 = bitcast { i64, i32 }* %14 to i8*
  %160 = bitcast %struct.TYPE_8__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %160, i8* align 8 %159, i64 12, i1 false)
  %161 = call { i64, i32 } @hsv_to_rgb(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %5)
  store { i64, i32 } %161, { i64, i32 }* %16, align 8
  %162 = bitcast { i64, i32 }* %16 to i8*
  %163 = bitcast %struct.TYPE_8__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %163, i8* align 8 %162, i64 12, i1 false)
  %164 = call { i64, i32 } @hsv_to_rgb(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %6)
  store { i64, i32 } %164, { i64, i32 }* %18, align 8
  %165 = bitcast { i64, i32 }* %18 to i8*
  %166 = bitcast %struct.TYPE_8__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %166, i8* align 8 %165, i64 12, i1 false)
  %167 = call { i64, i32 } @hsv_to_rgb(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %7)
  store { i64, i32 } %167, { i64, i32 }* %20, align 8
  %168 = bitcast { i64, i32 }* %20 to i8*
  %169 = bitcast %struct.TYPE_8__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %169, i8* align 8 %168, i64 12, i1 false)
  %170 = call { i64, i32 } @hsv_to_rgb(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %8)
  store { i64, i32 } %170, { i64, i32 }* %22, align 8
  %171 = bitcast { i64, i32 }* %22 to i8*
  %172 = bitcast %struct.TYPE_8__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %172, i8* align 8 %171, i64 12, i1 false)
  %173 = call i32 @rgb_matrix_set_color(i32 41, i32 255, i32 255, i32 255)
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @rgb_matrix_set_color(i32 59, i32 %175, i32 %177, i32 %179)
  %181 = call i32 @rgb_matrix_set_color(i32 26, i32 255, i32 128, i32 0)
  %182 = call i32 @rgb_matrix_set_color(i32 39, i32 255, i32 128, i32 0)
  %183 = call i32 @rgb_matrix_set_color(i32 16, i32 255, i32 128, i32 0)
  %184 = call i32 @rgb_matrix_set_color(i32 15, i32 255, i32 128, i32 0)
  %185 = call i32 @rgb_matrix_set_color(i32 52, i32 255, i32 64, i32 0)
  %186 = call i32 @rgb_matrix_set_color(i32 25, i32 128, i32 128, i32 128)
  %187 = call i32 @rgb_matrix_set_color(i32 38, i32 128, i32 128, i32 128)
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @rgb_matrix_set_color(i32 24, i32 %189, i32 %191, i32 %193)
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @rgb_matrix_set_color(i32 37, i32 %196, i32 %198, i32 %200)
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @rgb_matrix_set_color(i32 23, i32 %203, i32 %205, i32 %207)
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @rgb_matrix_set_color(i32 36, i32 %210, i32 %212, i32 %214)
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @rgb_matrix_set_color(i32 22, i32 %217, i32 %219, i32 %221)
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @rgb_matrix_set_color(i32 35, i32 %224, i32 %226, i32 %228)
  %230 = call i32 @rgb_matrix_set_color(i32 19, i32 240, i32 0, i32 255)
  %231 = call i32 @rgb_matrix_set_color(i32 18, i32 0, i32 2, i32 255)
  %232 = call i32 @rgb_matrix_set_color(i32 33, i32 255, i32 0, i32 0)
  %233 = call i32 @rgb_matrix_set_color(i32 32, i32 0, i32 0, i32 0)
  %234 = call i32 @rgb_matrix_set_color(i32 31, i32 0, i32 255, i32 247)
  %235 = call i32 @rgb_matrix_set_color(i32 46, i32 255, i32 218, i32 0)
  %236 = call i32 @rgb_matrix_set_color(i32 45, i32 0, i32 255, i32 1)
  %237 = call i32 @rgb_matrix_set_color(i32 44, i32 255, i32 165, i32 24)
  %238 = call i32 @rgb_matrix_set_color(i32 30, i32 129, i32 60, i32 255)
  %239 = call i32 @rgb_matrix_set_color(i32 17, i32 255, i32 255, i32 255)
  br label %263

240:                                              ; preds = %29
  %241 = call i32 @rgb_matrix_set_color(i32 57, i32 255, i32 255, i32 255)
  %242 = call i32 @rgb_matrix_set_color(i32 48, i32 255, i32 0, i32 0)
  %243 = call i32 @rgb_matrix_set_color(i32 42, i32 0, i32 128, i32 255)
  %244 = call i32 @rgb_matrix_set_color(i32 55, i32 0, i32 128, i32 255)
  %245 = call i32 @rgb_matrix_set_color(i32 58, i32 255, i32 0, i32 0)
  %246 = call i32 @rgb_matrix_set_color(i32 56, i32 255, i32 128, i32 0)
  %247 = call i32 @rgb_matrix_set_color(i32 54, i32 255, i32 128, i32 0)
  %248 = call i32 @rgb_matrix_set_color(i32 41, i32 255, i32 0, i32 64)
  %249 = call i32 @rgb_matrix_set_color(i32 43, i32 255, i32 0, i32 64)
  %250 = load i32, i32* %1, align 4
  %251 = load i32, i32* @autoshift_enabled, align 4
  %252 = icmp ne i32 %251, 0
  %253 = xor i1 %252, true
  %254 = zext i1 %253 to i32
  %255 = shl i32 1, %254
  %256 = and i32 %250, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %240
  %259 = call i32 @rgb_matrix_set_color(i32 0, i32 255, i32 0, i32 0)
  br label %262

260:                                              ; preds = %240
  %261 = call i32 @rgb_matrix_set_color(i32 0, i32 255, i32 255, i32 0)
  br label %262

262:                                              ; preds = %260, %258
  br label %263

263:                                              ; preds = %29, %262, %149, %44
  br label %264

264:                                              ; preds = %263, %26, %0
  %265 = load i32, i32* %1, align 4
  %266 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %267 = shl i32 1, %266
  %268 = and i32 %265, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %264
  %271 = call i32 @rgb_matrix_set_color(i32 40, i32 255, i32 255, i32 255)
  br label %272

272:                                              ; preds = %270, %264
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
