; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_w48.c_process_message.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_w48.c_process_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8, i8, i32 }
%struct.TYPE_14__ = type { i32, i32, i64 }
%struct.TYPE_12__ = type { i64, i8, i64, i32 }

@WM_KEYDOWN = common dso_local global i64 0, align 8
@WM_SYSKEYDOWN = common dso_local global i64 0, align 8
@dead_key = common dso_local global i64 0, align 8
@VK_SHIFT = common dso_local global i8 0, align 1
@VK_MENU = common dso_local global i8 0, align 1
@VK_CONTROL = common dso_local global i8 0, align 1
@VK_SPACE = common dso_local global i8 0, align 1
@VK_CANCEL = common dso_local global i8 0, align 1
@TRUE = common dso_local global i32 0, align 4
@got_int = common dso_local global i32 0, align 4
@Ctrl_C = common dso_local global i8 0, align 1
@special_keys = common dso_local global %struct.TYPE_13__* null, align 8
@MOD_MASK_SHIFT = common dso_local global i32 0, align 4
@MOD_MASK_CTRL = common dso_local global i32 0, align 4
@MOD_MASK_ALT = common dso_local global i32 0, align 4
@NUL = common dso_local global i8 0, align 1
@K_CSI = common dso_local global i32 0, align 4
@KS_MODIFIER = common dso_local global i8 0, align 1
@FALSE = common dso_local global i32 0, align 4
@Ctrl_HAT = common dso_local global i8 0, align 1
@Ctrl__ = common dso_local global i8 0, align 1
@Ctrl_AT = common dso_local global i8 0, align 1
@State = common dso_local global i32 0, align 4
@VK_F10 = common dso_local global i8 0, align 1
@WM_IME_NOTIFY = common dso_local global i64 0, align 8
@WM_IME_STARTCOMPOSITION = common dso_local global i64 0, align 8
@WM_KEYUP = common dso_local global i64 0, align 8
@WM_NETBEANS = common dso_local global i64 0, align 8
@WM_OLE = common dso_local global i64 0, align 8
@WM_USER = common dso_local global i64 0, align 8
@gui = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@norm_logfont = common dso_local global i32 0, align 4
@s_findrep_hwnd = common dso_local global i32* null, align 8
@s_hwnd = common dso_local global i32 0, align 4
@s_textArea = common dso_local global i32 0, align 4
@sniff_request_waiting = common dso_local global i64 0, align 8
@want_sniff_request = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @process_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_message() #0 {
  %1 = alloca %struct.TYPE_12__, align 8
  %2 = alloca i8, align 1
  %3 = alloca [40 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca i32, align 4
  store i8 0, i8* %2, align 1
  store i32 0, i32* %5, align 4
  %9 = call i32 @pGetMessage(%struct.TYPE_12__* %1, i32* null, i32 0, i32 0)
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @WM_KEYDOWN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @WM_SYSKEYDOWN, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %308

19:                                               ; preds = %14, %0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %21 = load i8, i8* %20, align 8
  %22 = sext i8 %21 to i32
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %2, align 1
  %24 = load i64, i64* @dead_key, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %84

26:                                               ; preds = %19
  %27 = load i8, i8* %2, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* @VK_SHIFT, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %84

32:                                               ; preds = %26
  %33 = load i8, i8* %2, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8, i8* @VK_MENU, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %84

38:                                               ; preds = %32
  %39 = load i8, i8* %2, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8, i8* @VK_CONTROL, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %84

44:                                               ; preds = %38
  store i64 0, i64* @dead_key, align 8
  %45 = load i8, i8* %2, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp slt i32 %46, 65
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load i8, i8* %2, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sgt i32 %50, 90
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = load i8, i8* @VK_CONTROL, align 1
  %54 = call i32 @GetKeyState(i8 signext %53)
  %55 = and i32 %54, 32768
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %83

57:                                               ; preds = %52, %48, %44
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 3
  store i32 %62, i32* %63, align 8
  %64 = load i8, i8* @VK_SPACE, align 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  store i8 %64, i8* %65, align 8
  %66 = call i32 @MyTranslateMessage(%struct.TYPE_12__* %7)
  %67 = load i8, i8* %2, align 1
  %68 = sext i8 %67 to i32
  %69 = load i8, i8* @VK_SPACE, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %57
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %78 = load i8, i8* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @PostMessage(i32 %74, i64 %76, i8 signext %78, i64 %80)
  br label %82

82:                                               ; preds = %72, %57
  br label %310

83:                                               ; preds = %52
  br label %84

84:                                               ; preds = %83, %38, %32, %26, %19
  %85 = load i8, i8* %2, align 1
  %86 = sext i8 %85 to i32
  %87 = load i8, i8* @VK_CANCEL, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = call i32 (...) @trash_input_buf()
  %92 = load i32, i32* @TRUE, align 4
  store i32 %92, i32* @got_int, align 4
  %93 = load i8, i8* @Ctrl_C, align 1
  %94 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  store i8 %93, i8* %94, align 16
  %95 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %96 = call i32 @add_to_input_buf(i8* %95, i32 1)
  br label %97

97:                                               ; preds = %90, %84
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %231, %97
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** @special_keys, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i8, i8* %103, align 4
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %234

107:                                              ; preds = %98
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** @special_keys, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i8, i8* %112, align 4
  %114 = sext i8 %113 to i32
  %115 = load i8, i8* %2, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %230

118:                                              ; preds = %107
  %119 = load i8, i8* %2, align 1
  %120 = sext i8 %119 to i32
  %121 = load i8, i8* @VK_SPACE, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %120, %122
  br i1 %123, label %129, label %124

124:                                              ; preds = %118
  %125 = load i8, i8* @VK_MENU, align 1
  %126 = call i32 @GetKeyState(i8 signext %125)
  %127 = and i32 %126, 32768
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %230, label %129

129:                                              ; preds = %124, %118
  %130 = load i8, i8* @VK_SHIFT, align 1
  %131 = call i32 @GetKeyState(i8 signext %130)
  %132 = and i32 %131, 32768
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %136 = load i32, i32* %5, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %134, %129
  %139 = load i8, i8* @VK_CONTROL, align 1
  %140 = call i32 @GetKeyState(i8 signext %139)
  %141 = and i32 %140, 32768
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load i32, i32* @MOD_MASK_CTRL, align 4
  %145 = load i32, i32* %5, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %143, %138
  %148 = load i8, i8* @VK_MENU, align 1
  %149 = call i32 @GetKeyState(i8 signext %148)
  %150 = and i32 %149, 32768
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load i32, i32* @MOD_MASK_ALT, align 4
  %154 = load i32, i32* %5, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %152, %147
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** @special_keys, align 8
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 1
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = load i8, i8* @NUL, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %163, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %156
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** @special_keys, align 8
  %169 = load i32, i32* %4, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %6, align 4
  br label %188

174:                                              ; preds = %156
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** @special_keys, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** @special_keys, align 8
  %182 = load i32, i32* %4, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  %186 = load i8, i8* %185, align 1
  %187 = call i32 @TO_SPECIAL(i32 %180, i8 signext %186)
  store i32 %187, i32* %6, align 4
  br label %188

188:                                              ; preds = %174, %167
  %189 = load i32, i32* %6, align 4
  %190 = call i32 @simplify_key(i32 %189, i32* %5)
  store i32 %190, i32* %6, align 4
  %191 = load i32, i32* %6, align 4
  %192 = icmp eq i32 %191, 131
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = load i32, i32* @K_CSI, align 4
  store i32 %194, i32* %6, align 4
  br label %195

195:                                              ; preds = %193, %188
  %196 = load i32, i32* %5, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %195
  %199 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  store i8 -125, i8* %199, align 16
  %200 = load i8, i8* @KS_MODIFIER, align 1
  %201 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 1
  store i8 %200, i8* %201, align 1
  %202 = load i32, i32* %5, align 4
  %203 = trunc i32 %202 to i8
  %204 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 2
  store i8 %203, i8* %204, align 2
  %205 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %206 = call i32 @add_to_input_buf(i8* %205, i32 3)
  br label %207

207:                                              ; preds = %198, %195
  %208 = load i32, i32* %6, align 4
  %209 = call i64 @IS_SPECIAL(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %221

211:                                              ; preds = %207
  %212 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  store i8 -125, i8* %212, align 16
  %213 = load i32, i32* %6, align 4
  %214 = call signext i8 @K_SECOND(i32 %213)
  %215 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 1
  store i8 %214, i8* %215, align 1
  %216 = load i32, i32* %6, align 4
  %217 = call signext i8 @K_THIRD(i32 %216)
  %218 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 2
  store i8 %217, i8* %218, align 2
  %219 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %220 = call i32 @add_to_input_buf(i8* %219, i32 3)
  br label %229

221:                                              ; preds = %207
  %222 = load i32, i32* %6, align 4
  %223 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %224 = load i32, i32* @FALSE, align 4
  %225 = call i32 @char_to_string(i32 %222, i8* %223, i32 40, i32 %224)
  store i32 %225, i32* %8, align 4
  %226 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %227 = load i32, i32* %8, align 4
  %228 = call i32 @add_to_input_buf(i8* %226, i32 %227)
  br label %229

229:                                              ; preds = %221, %211
  br label %234

230:                                              ; preds = %124, %107
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %4, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %4, align 4
  br label %98

234:                                              ; preds = %229, %98
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** @special_keys, align 8
  %236 = load i32, i32* %4, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 0
  %240 = load i8, i8* %239, align 4
  %241 = sext i8 %240 to i32
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %307

243:                                              ; preds = %234
  %244 = load i8, i8* %2, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp ne i32 %245, 255
  br i1 %246, label %247, label %304

247:                                              ; preds = %243
  %248 = load i8, i8* @VK_CONTROL, align 1
  %249 = call i32 @GetKeyState(i8 signext %248)
  %250 = and i32 %249, 32768
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %304

252:                                              ; preds = %247
  %253 = load i8, i8* @VK_SHIFT, align 1
  %254 = call i32 @GetKeyState(i8 signext %253)
  %255 = and i32 %254, 32768
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %304, label %257

257:                                              ; preds = %252
  %258 = load i8, i8* @VK_MENU, align 1
  %259 = call i32 @GetKeyState(i8 signext %258)
  %260 = and i32 %259, 32768
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %304, label %262

262:                                              ; preds = %257
  %263 = load i8, i8* %2, align 1
  %264 = sext i8 %263 to i32
  %265 = icmp eq i32 %264, 54
  br i1 %265, label %271, label %266

266:                                              ; preds = %262
  %267 = load i8, i8* %2, align 1
  %268 = call signext i8 @MapVirtualKey(i8 signext %267, i32 2)
  %269 = sext i8 %268 to i32
  %270 = icmp eq i32 %269, 94
  br i1 %270, label %271, label %276

271:                                              ; preds = %266, %262
  %272 = load i8, i8* @Ctrl_HAT, align 1
  %273 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  store i8 %272, i8* %273, align 16
  %274 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %275 = call i32 @add_to_input_buf(i8* %274, i32 1)
  br label %303

276:                                              ; preds = %266
  %277 = load i8, i8* %2, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp eq i32 %278, 189
  br i1 %279, label %280, label %285

280:                                              ; preds = %276
  %281 = load i8, i8* @Ctrl__, align 1
  %282 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  store i8 %281, i8* %282, align 16
  %283 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %284 = call i32 @add_to_input_buf(i8* %283, i32 1)
  br label %302

285:                                              ; preds = %276
  %286 = load i8, i8* %2, align 1
  %287 = sext i8 %286 to i32
  %288 = icmp eq i32 %287, 50
  br i1 %288, label %294, label %289

289:                                              ; preds = %285
  %290 = load i8, i8* %2, align 1
  %291 = call signext i8 @MapVirtualKey(i8 signext %290, i32 2)
  %292 = sext i8 %291 to i32
  %293 = icmp eq i32 %292, 64
  br i1 %293, label %294, label %299

294:                                              ; preds = %289, %285
  %295 = load i8, i8* @Ctrl_AT, align 1
  %296 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  store i8 %295, i8* %296, align 16
  %297 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %298 = call i32 @add_to_input_buf(i8* %297, i32 1)
  br label %301

299:                                              ; preds = %289
  %300 = call i32 @MyTranslateMessage(%struct.TYPE_12__* %1)
  br label %301

301:                                              ; preds = %299, %294
  br label %302

302:                                              ; preds = %301, %280
  br label %303

303:                                              ; preds = %302, %271
  br label %306

304:                                              ; preds = %257, %252, %247, %243
  %305 = call i32 @MyTranslateMessage(%struct.TYPE_12__* %1)
  br label %306

306:                                              ; preds = %304, %303
  br label %307

307:                                              ; preds = %306, %234
  br label %308

308:                                              ; preds = %307, %14
  %309 = call i32 @pDispatchMessage(%struct.TYPE_12__* %1)
  br label %310

310:                                              ; preds = %308, %82
  ret void
}

declare dso_local i32 @pGetMessage(%struct.TYPE_12__*, i32*, i32, i32) #1

declare dso_local i32 @GetKeyState(i8 signext) #1

declare dso_local i32 @MyTranslateMessage(%struct.TYPE_12__*) #1

declare dso_local i32 @PostMessage(i32, i64, i8 signext, i64) #1

declare dso_local i32 @trash_input_buf(...) #1

declare dso_local i32 @add_to_input_buf(i8*, i32) #1

declare dso_local i32 @TO_SPECIAL(i32, i8 signext) #1

declare dso_local i32 @simplify_key(i32, i32*) #1

declare dso_local i64 @IS_SPECIAL(i32) #1

declare dso_local signext i8 @K_SECOND(i32) #1

declare dso_local signext i8 @K_THIRD(i32) #1

declare dso_local i32 @char_to_string(i32, i8*, i32, i32) #1

declare dso_local signext i8 @MapVirtualKey(i8 signext, i32) #1

declare dso_local i32 @pDispatchMessage(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
