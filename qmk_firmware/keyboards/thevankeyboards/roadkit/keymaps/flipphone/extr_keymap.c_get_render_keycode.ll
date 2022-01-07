; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/thevankeyboards/roadkit/keymaps/flipphone/extr_keymap.c_get_render_keycode.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/thevankeyboards/roadkit/keymaps/flipphone/extr_keymap.c_get_render_keycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KC_A = common dso_local global i32 0, align 4
@KC_B = common dso_local global i32 0, align 4
@KC_C = common dso_local global i32 0, align 4
@KC_D = common dso_local global i32 0, align 4
@KC_E = common dso_local global i32 0, align 4
@KC_F = common dso_local global i32 0, align 4
@KC_G = common dso_local global i32 0, align 4
@KC_H = common dso_local global i32 0, align 4
@KC_I = common dso_local global i32 0, align 4
@KC_J = common dso_local global i32 0, align 4
@KC_K = common dso_local global i32 0, align 4
@KC_L = common dso_local global i32 0, align 4
@KC_M = common dso_local global i32 0, align 4
@KC_N = common dso_local global i32 0, align 4
@KC_O = common dso_local global i32 0, align 4
@KC_P = common dso_local global i32 0, align 4
@KC_Q = common dso_local global i32 0, align 4
@KC_R = common dso_local global i32 0, align 4
@KC_S = common dso_local global i32 0, align 4
@KC_T = common dso_local global i32 0, align 4
@KC_U = common dso_local global i32 0, align 4
@KC_V = common dso_local global i32 0, align 4
@KC_W = common dso_local global i32 0, align 4
@KC_X = common dso_local global i32 0, align 4
@KC_Y = common dso_local global i32 0, align 4
@KC_Z = common dso_local global i32 0, align 4
@KC_COMM = common dso_local global i32 0, align 4
@KC_SLSH = common dso_local global i32 0, align 4
@KC_EXLM = common dso_local global i32 0, align 4
@KC_AT = common dso_local global i32 0, align 4
@KC_MINS = common dso_local global i32 0, align 4
@KC_UNDS = common dso_local global i32 0, align 4
@KC_PLUS = common dso_local global i32 0, align 4
@KC_SCLN = common dso_local global i32 0, align 4
@KC_QUOT = common dso_local global i32 0, align 4
@KC_TILD = common dso_local global i32 0, align 4
@KC_PIPE = common dso_local global i32 0, align 4
@KC_BSLS = common dso_local global i32 0, align 4
@KC_HASH = common dso_local global i32 0, align 4
@KC_4 = common dso_local global i32 0, align 4
@KC_PERC = common dso_local global i32 0, align 4
@KC_CIRC = common dso_local global i32 0, align 4
@KC_AMPR = common dso_local global i32 0, align 4
@KC_ASTR = common dso_local global i32 0, align 4
@KC_LBRC = common dso_local global i32 0, align 4
@KC_RBRC = common dso_local global i32 0, align 4
@KC_LCBR = common dso_local global i32 0, align 4
@KC_RCBR = common dso_local global i32 0, align 4
@KC_DOT = common dso_local global i32 0, align 4
@KC_NO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_render_keycode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca [3 x i32], align 4
  %13 = alloca [4 x i32], align 16
  %14 = alloca [26 x i32], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %270 [
    i32 135, label %18
    i32 134, label %41
    i32 133, label %64
    i32 132, label %87
    i32 131, label %110
    i32 130, label %133
    i32 129, label %158
    i32 128, label %181
    i32 136, label %206
  ]

18:                                               ; preds = %2
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %20 = load i32, i32* @KC_A, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  %22 = load i32, i32* @KC_B, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds i32, i32* %21, i64 1
  %24 = load i32, i32* @KC_C, align 4
  store i32 %24, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = srem i32 %25, 6
  %27 = icmp sgt i32 %26, 2
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load i32, i32* %5, align 4
  %30 = srem i32 %29, 3
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @LSFT(i32 %33)
  store i32 %34, i32* %3, align 4
  br label %272

35:                                               ; preds = %18
  %36 = load i32, i32* %5, align 4
  %37 = srem i32 %36, 3
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %3, align 4
  br label %272

41:                                               ; preds = %2
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %43 = load i32, i32* @KC_D, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds i32, i32* %42, i64 1
  %45 = load i32, i32* @KC_E, align 4
  store i32 %45, i32* %44, align 4
  %46 = getelementptr inbounds i32, i32* %44, i64 1
  %47 = load i32, i32* @KC_F, align 4
  store i32 %47, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = srem i32 %48, 6
  %50 = icmp sgt i32 %49, 2
  br i1 %50, label %51, label %58

51:                                               ; preds = %41
  %52 = load i32, i32* %5, align 4
  %53 = srem i32 %52, 3
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @LSFT(i32 %56)
  store i32 %57, i32* %3, align 4
  br label %272

58:                                               ; preds = %41
  %59 = load i32, i32* %5, align 4
  %60 = srem i32 %59, 3
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %3, align 4
  br label %272

64:                                               ; preds = %2
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %66 = load i32, i32* @KC_G, align 4
  store i32 %66, i32* %65, align 4
  %67 = getelementptr inbounds i32, i32* %65, i64 1
  %68 = load i32, i32* @KC_H, align 4
  store i32 %68, i32* %67, align 4
  %69 = getelementptr inbounds i32, i32* %67, i64 1
  %70 = load i32, i32* @KC_I, align 4
  store i32 %70, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = srem i32 %71, 6
  %73 = icmp sgt i32 %72, 2
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  %75 = load i32, i32* %5, align 4
  %76 = srem i32 %75, 3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @LSFT(i32 %79)
  store i32 %80, i32* %3, align 4
  br label %272

81:                                               ; preds = %64
  %82 = load i32, i32* %5, align 4
  %83 = srem i32 %82, 3
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %3, align 4
  br label %272

87:                                               ; preds = %2
  %88 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %89 = load i32, i32* @KC_J, align 4
  store i32 %89, i32* %88, align 4
  %90 = getelementptr inbounds i32, i32* %88, i64 1
  %91 = load i32, i32* @KC_K, align 4
  store i32 %91, i32* %90, align 4
  %92 = getelementptr inbounds i32, i32* %90, i64 1
  %93 = load i32, i32* @KC_L, align 4
  store i32 %93, i32* %92, align 4
  %94 = load i32, i32* %5, align 4
  %95 = srem i32 %94, 6
  %96 = icmp sgt i32 %95, 2
  br i1 %96, label %97, label %104

97:                                               ; preds = %87
  %98 = load i32, i32* %5, align 4
  %99 = srem i32 %98, 3
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @LSFT(i32 %102)
  store i32 %103, i32* %3, align 4
  br label %272

104:                                              ; preds = %87
  %105 = load i32, i32* %5, align 4
  %106 = srem i32 %105, 3
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %3, align 4
  br label %272

110:                                              ; preds = %2
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %112 = load i32, i32* @KC_M, align 4
  store i32 %112, i32* %111, align 4
  %113 = getelementptr inbounds i32, i32* %111, i64 1
  %114 = load i32, i32* @KC_N, align 4
  store i32 %114, i32* %113, align 4
  %115 = getelementptr inbounds i32, i32* %113, i64 1
  %116 = load i32, i32* @KC_O, align 4
  store i32 %116, i32* %115, align 4
  %117 = load i32, i32* %5, align 4
  %118 = srem i32 %117, 6
  %119 = icmp sgt i32 %118, 2
  br i1 %119, label %120, label %127

120:                                              ; preds = %110
  %121 = load i32, i32* %5, align 4
  %122 = srem i32 %121, 3
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @LSFT(i32 %125)
  store i32 %126, i32* %3, align 4
  br label %272

127:                                              ; preds = %110
  %128 = load i32, i32* %5, align 4
  %129 = srem i32 %128, 3
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %3, align 4
  br label %272

133:                                              ; preds = %2
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %135 = load i32, i32* @KC_P, align 4
  store i32 %135, i32* %134, align 4
  %136 = getelementptr inbounds i32, i32* %134, i64 1
  %137 = load i32, i32* @KC_Q, align 4
  store i32 %137, i32* %136, align 4
  %138 = getelementptr inbounds i32, i32* %136, i64 1
  %139 = load i32, i32* @KC_R, align 4
  store i32 %139, i32* %138, align 4
  %140 = getelementptr inbounds i32, i32* %138, i64 1
  %141 = load i32, i32* @KC_S, align 4
  store i32 %141, i32* %140, align 4
  %142 = load i32, i32* %5, align 4
  %143 = srem i32 %142, 8
  %144 = icmp sgt i32 %143, 2
  br i1 %144, label %145, label %152

145:                                              ; preds = %133
  %146 = load i32, i32* %5, align 4
  %147 = srem i32 %146, 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @LSFT(i32 %150)
  store i32 %151, i32* %3, align 4
  br label %272

152:                                              ; preds = %133
  %153 = load i32, i32* %5, align 4
  %154 = srem i32 %153, 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %3, align 4
  br label %272

158:                                              ; preds = %2
  %159 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %160 = load i32, i32* @KC_T, align 4
  store i32 %160, i32* %159, align 4
  %161 = getelementptr inbounds i32, i32* %159, i64 1
  %162 = load i32, i32* @KC_U, align 4
  store i32 %162, i32* %161, align 4
  %163 = getelementptr inbounds i32, i32* %161, i64 1
  %164 = load i32, i32* @KC_V, align 4
  store i32 %164, i32* %163, align 4
  %165 = load i32, i32* %5, align 4
  %166 = srem i32 %165, 8
  %167 = icmp sgt i32 %166, 2
  br i1 %167, label %168, label %175

168:                                              ; preds = %158
  %169 = load i32, i32* %5, align 4
  %170 = srem i32 %169, 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @LSFT(i32 %173)
  store i32 %174, i32* %3, align 4
  br label %272

175:                                              ; preds = %158
  %176 = load i32, i32* %5, align 4
  %177 = srem i32 %176, 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %178
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %3, align 4
  br label %272

181:                                              ; preds = %2
  %182 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %183 = load i32, i32* @KC_W, align 4
  store i32 %183, i32* %182, align 4
  %184 = getelementptr inbounds i32, i32* %182, i64 1
  %185 = load i32, i32* @KC_X, align 4
  store i32 %185, i32* %184, align 4
  %186 = getelementptr inbounds i32, i32* %184, i64 1
  %187 = load i32, i32* @KC_Y, align 4
  store i32 %187, i32* %186, align 4
  %188 = getelementptr inbounds i32, i32* %186, i64 1
  %189 = load i32, i32* @KC_Z, align 4
  store i32 %189, i32* %188, align 4
  %190 = load i32, i32* %5, align 4
  %191 = srem i32 %190, 8
  %192 = icmp sgt i32 %191, 2
  br i1 %192, label %193, label %200

193:                                              ; preds = %181
  %194 = load i32, i32* %5, align 4
  %195 = srem i32 %194, 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @LSFT(i32 %198)
  store i32 %199, i32* %3, align 4
  br label %272

200:                                              ; preds = %181
  %201 = load i32, i32* %5, align 4
  %202 = srem i32 %201, 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %203
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %3, align 4
  br label %272

206:                                              ; preds = %2
  %207 = getelementptr inbounds [26 x i32], [26 x i32]* %14, i64 0, i64 0
  %208 = load i32, i32* @KC_COMM, align 4
  store i32 %208, i32* %207, align 4
  %209 = getelementptr inbounds i32, i32* %207, i64 1
  %210 = load i32, i32* @KC_SLSH, align 4
  %211 = call i32 @LSFT(i32 %210)
  store i32 %211, i32* %209, align 4
  %212 = getelementptr inbounds i32, i32* %209, i64 1
  %213 = load i32, i32* @KC_EXLM, align 4
  store i32 %213, i32* %212, align 4
  %214 = getelementptr inbounds i32, i32* %212, i64 1
  %215 = load i32, i32* @KC_AT, align 4
  store i32 %215, i32* %214, align 4
  %216 = getelementptr inbounds i32, i32* %214, i64 1
  %217 = load i32, i32* @KC_MINS, align 4
  store i32 %217, i32* %216, align 4
  %218 = getelementptr inbounds i32, i32* %216, i64 1
  %219 = load i32, i32* @KC_UNDS, align 4
  store i32 %219, i32* %218, align 4
  %220 = getelementptr inbounds i32, i32* %218, i64 1
  %221 = load i32, i32* @KC_PLUS, align 4
  store i32 %221, i32* %220, align 4
  %222 = getelementptr inbounds i32, i32* %220, i64 1
  %223 = load i32, i32* @KC_SCLN, align 4
  store i32 %223, i32* %222, align 4
  %224 = getelementptr inbounds i32, i32* %222, i64 1
  %225 = load i32, i32* @KC_SCLN, align 4
  %226 = call i32 @LSFT(i32 %225)
  store i32 %226, i32* %224, align 4
  %227 = getelementptr inbounds i32, i32* %224, i64 1
  %228 = load i32, i32* @KC_QUOT, align 4
  store i32 %228, i32* %227, align 4
  %229 = getelementptr inbounds i32, i32* %227, i64 1
  %230 = load i32, i32* @KC_QUOT, align 4
  %231 = call i32 @LSFT(i32 %230)
  store i32 %231, i32* %229, align 4
  %232 = getelementptr inbounds i32, i32* %229, i64 1
  %233 = load i32, i32* @KC_TILD, align 4
  store i32 %233, i32* %232, align 4
  %234 = getelementptr inbounds i32, i32* %232, i64 1
  %235 = load i32, i32* @KC_PIPE, align 4
  store i32 %235, i32* %234, align 4
  %236 = getelementptr inbounds i32, i32* %234, i64 1
  %237 = load i32, i32* @KC_BSLS, align 4
  store i32 %237, i32* %236, align 4
  %238 = getelementptr inbounds i32, i32* %236, i64 1
  %239 = load i32, i32* @KC_HASH, align 4
  store i32 %239, i32* %238, align 4
  %240 = getelementptr inbounds i32, i32* %238, i64 1
  %241 = load i32, i32* @KC_4, align 4
  %242 = call i32 @LSFT(i32 %241)
  store i32 %242, i32* %240, align 4
  %243 = getelementptr inbounds i32, i32* %240, i64 1
  %244 = load i32, i32* @KC_PERC, align 4
  store i32 %244, i32* %243, align 4
  %245 = getelementptr inbounds i32, i32* %243, i64 1
  %246 = load i32, i32* @KC_CIRC, align 4
  store i32 %246, i32* %245, align 4
  %247 = getelementptr inbounds i32, i32* %245, i64 1
  %248 = load i32, i32* @KC_AMPR, align 4
  store i32 %248, i32* %247, align 4
  %249 = getelementptr inbounds i32, i32* %247, i64 1
  %250 = load i32, i32* @KC_ASTR, align 4
  store i32 %250, i32* %249, align 4
  %251 = getelementptr inbounds i32, i32* %249, i64 1
  %252 = load i32, i32* @KC_LBRC, align 4
  store i32 %252, i32* %251, align 4
  %253 = getelementptr inbounds i32, i32* %251, i64 1
  %254 = load i32, i32* @KC_RBRC, align 4
  store i32 %254, i32* %253, align 4
  %255 = getelementptr inbounds i32, i32* %253, i64 1
  %256 = load i32, i32* @KC_LCBR, align 4
  store i32 %256, i32* %255, align 4
  %257 = getelementptr inbounds i32, i32* %255, i64 1
  %258 = load i32, i32* @KC_RCBR, align 4
  store i32 %258, i32* %257, align 4
  %259 = getelementptr inbounds i32, i32* %257, i64 1
  %260 = load i32, i32* @KC_COMM, align 4
  %261 = call i32 @LSFT(i32 %260)
  store i32 %261, i32* %259, align 4
  %262 = getelementptr inbounds i32, i32* %259, i64 1
  %263 = load i32, i32* @KC_DOT, align 4
  %264 = call i32 @LSFT(i32 %263)
  store i32 %264, i32* %262, align 4
  %265 = load i32, i32* %5, align 4
  %266 = srem i32 %265, 26
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [26 x i32], [26 x i32]* %14, i64 0, i64 %267
  %269 = load i32, i32* %268, align 4
  store i32 %269, i32* %3, align 4
  br label %272

270:                                              ; preds = %2
  %271 = load i32, i32* @KC_NO, align 4
  store i32 %271, i32* %3, align 4
  br label %272

272:                                              ; preds = %270, %206, %200, %193, %175, %168, %152, %145, %127, %120, %104, %97, %81, %74, %58, %51, %35, %28
  %273 = load i32, i32* %3, align 4
  ret i32 %273
}

declare dso_local i32 @LSFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
