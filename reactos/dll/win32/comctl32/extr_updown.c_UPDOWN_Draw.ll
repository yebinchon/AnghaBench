; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_updown.c_UPDOWN_Draw.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_updown.c_UPDOWN_Draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@FLAG_PRESSED = common dso_local global i32 0, align 4
@FLAG_INCR = common dso_local global i32 0, align 4
@FLAG_MOUSEIN = common dso_local global i32 0, align 4
@FLAG_DECR = common dso_local global i32 0, align 4
@UDS_HORZ = common dso_local global i32 0, align 4
@SPNP_UPHORZ = common dso_local global i32 0, align 4
@SPNP_UP = common dso_local global i32 0, align 4
@WS_DISABLED = common dso_local global i32 0, align 4
@DNS_DISABLED = common dso_local global i32 0, align 4
@DNS_PRESSED = common dso_local global i32 0, align 4
@DNS_HOT = common dso_local global i32 0, align 4
@DNS_NORMAL = common dso_local global i32 0, align 4
@SPNP_DOWNHORZ = common dso_local global i32 0, align 4
@SPNP_DOWN = common dso_local global i32 0, align 4
@EDGE_SUNKEN = common dso_local global i32 0, align 4
@BF_BOTTOM = common dso_local global i32 0, align 4
@BF_TOP = common dso_local global i32 0, align 4
@UDS_ALIGNLEFT = common dso_local global i32 0, align 4
@BF_LEFT = common dso_local global i32 0, align 4
@BF_RIGHT = common dso_local global i32 0, align 4
@DFC_SCROLL = common dso_local global i32 0, align 4
@DFCS_SCROLLRIGHT = common dso_local global i32 0, align 4
@DFCS_SCROLLUP = common dso_local global i32 0, align 4
@UDS_HOTTRACK = common dso_local global i32 0, align 4
@DFCS_HOT = common dso_local global i32 0, align 4
@DFCS_PUSHED = common dso_local global i32 0, align 4
@DFCS_INACTIVE = common dso_local global i32 0, align 4
@DFCS_SCROLLLEFT = common dso_local global i32 0, align 4
@DFCS_SCROLLDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @UPDOWN_Draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UPDOWN_Draw(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @GetWindowTheme(i32 %18)
  store i64 %19, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %15, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FLAG_PRESSED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FLAG_INCR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %27, %2
  %35 = phi i1 [ false, %2 ], [ %33, %27 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %5, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FLAG_INCR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @FLAG_MOUSEIN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %43, %34
  %51 = phi i1 [ false, %34 ], [ %49, %43 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %6, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @FLAG_PRESSED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %50
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @FLAG_DECR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %59, %50
  %67 = phi i1 [ false, %50 ], [ %65, %59 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %7, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @FLAG_DECR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %66
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @FLAG_MOUSEIN, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br label %82

82:                                               ; preds = %75, %66
  %83 = phi i1 [ false, %66 ], [ %81, %75 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %8, align 4
  %85 = load i64, i64* %10, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %186

87:                                               ; preds = %82
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @UDS_HORZ, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* @SPNP_UPHORZ, align 4
  br label %98

96:                                               ; preds = %87
  %97 = load i32, i32* @SPNP_UP, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  store i32 %99, i32* %11, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @WS_DISABLED, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = load i32, i32* @DNS_DISABLED, align 4
  br label %124

108:                                              ; preds = %98
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* @DNS_PRESSED, align 4
  br label %122

113:                                              ; preds = %108
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* @DNS_HOT, align 4
  br label %120

118:                                              ; preds = %113
  %119 = load i32, i32* @DNS_NORMAL, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  br label %122

122:                                              ; preds = %120, %111
  %123 = phi i32 [ %112, %111 ], [ %121, %120 ]
  br label %124

124:                                              ; preds = %122, %106
  %125 = phi i32 [ %107, %106 ], [ %123, %122 ]
  store i32 %125, i32* %12, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @UDS_HORZ, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %124
  %133 = load i32, i32* @SPNP_DOWNHORZ, align 4
  br label %136

134:                                              ; preds = %124
  %135 = load i32, i32* @SPNP_DOWN, align 4
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  store i32 %137, i32* %13, align 4
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @WS_DISABLED, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %136
  %145 = load i32, i32* @DNS_DISABLED, align 4
  br label %162

146:                                              ; preds = %136
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = load i32, i32* @DNS_PRESSED, align 4
  br label %160

151:                                              ; preds = %146
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i32, i32* @DNS_HOT, align 4
  br label %158

156:                                              ; preds = %151
  %157 = load i32, i32* @DNS_NORMAL, align 4
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i32 [ %155, %154 ], [ %157, %156 ]
  br label %160

160:                                              ; preds = %158, %149
  %161 = phi i32 [ %150, %149 ], [ %159, %158 ]
  br label %162

162:                                              ; preds = %160, %144
  %163 = phi i32 [ %145, %144 ], [ %161, %160 ]
  store i32 %163, i32* %14, align 4
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @IsWindow(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %162
  %170 = load i64, i64* %10, align 8
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %12, align 4
  %173 = call i64 @IsThemeBackgroundPartiallyTransparent(i64 %170, i32 %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %169
  %176 = load i64, i64* %10, align 8
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* %14, align 4
  %179 = call i64 @IsThemeBackgroundPartiallyTransparent(i64 %176, i32 %177, i32 %178)
  %180 = icmp ne i64 %179, 0
  br label %181

181:                                              ; preds = %175, %169
  %182 = phi i1 [ true, %169 ], [ %180, %175 ]
  br label %183

183:                                              ; preds = %181, %162
  %184 = phi i1 [ false, %162 ], [ %182, %181 ]
  %185 = zext i1 %184 to i32
  store i32 %185, i32* %15, align 4
  br label %186

186:                                              ; preds = %183, %82
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %188 = call i64 @UPDOWN_HasBuddyBorder(%struct.TYPE_6__* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %15, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %226

193:                                              ; preds = %190, %186
  %194 = load i64, i64* %10, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %193
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %198 = load i32, i32* %4, align 4
  %199 = call i32 @UPDOWN_DrawBuddyBackground(%struct.TYPE_6__* %197, i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %225, label %201

201:                                              ; preds = %196, %193
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @GetClientRect(i32 %204, i32* %9)
  %206 = load i32, i32* %4, align 4
  %207 = load i32, i32* @EDGE_SUNKEN, align 4
  %208 = load i32, i32* @BF_BOTTOM, align 4
  %209 = load i32, i32* @BF_TOP, align 4
  %210 = or i32 %208, %209
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @UDS_ALIGNLEFT, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %201
  %218 = load i32, i32* @BF_LEFT, align 4
  br label %221

219:                                              ; preds = %201
  %220 = load i32, i32* @BF_RIGHT, align 4
  br label %221

221:                                              ; preds = %219, %217
  %222 = phi i32 [ %218, %217 ], [ %220, %219 ]
  %223 = or i32 %210, %222
  %224 = call i32 @DrawEdge(i32 %206, i32* %9, i32 %207, i32 %223)
  br label %225

225:                                              ; preds = %221, %196
  br label %226

226:                                              ; preds = %225, %190
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %228 = load i32, i32* @FLAG_INCR, align 4
  %229 = call i32 @UPDOWN_GetArrowRect(%struct.TYPE_6__* %227, i32* %9, i32 %228)
  %230 = load i64, i64* %10, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %226
  %233 = load i64, i64* %10, align 8
  %234 = load i32, i32* %4, align 4
  %235 = load i32, i32* %11, align 4
  %236 = load i32, i32* %12, align 4
  %237 = call i32 @DrawThemeBackground(i64 %233, i32 %234, i32 %235, i32 %236, i32* %9, i32* null)
  br label %289

238:                                              ; preds = %226
  %239 = load i32, i32* %4, align 4
  %240 = load i32, i32* @DFC_SCROLL, align 4
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @UDS_HORZ, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %238
  %248 = load i32, i32* @DFCS_SCROLLRIGHT, align 4
  br label %251

249:                                              ; preds = %238
  %250 = load i32, i32* @DFCS_SCROLLUP, align 4
  br label %251

251:                                              ; preds = %249, %247
  %252 = phi i32 [ %248, %247 ], [ %250, %249 ]
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @UDS_HOTTRACK, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %251
  %260 = load i32, i32* %6, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %259
  %263 = load i32, i32* @DFCS_HOT, align 4
  br label %265

264:                                              ; preds = %259, %251
  br label %265

265:                                              ; preds = %264, %262
  %266 = phi i32 [ %263, %262 ], [ 0, %264 ]
  %267 = or i32 %252, %266
  %268 = load i32, i32* %5, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %265
  %271 = load i32, i32* @DFCS_PUSHED, align 4
  br label %273

272:                                              ; preds = %265
  br label %273

273:                                              ; preds = %272, %270
  %274 = phi i32 [ %271, %270 ], [ 0, %272 ]
  %275 = or i32 %267, %274
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @WS_DISABLED, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %273
  %283 = load i32, i32* @DFCS_INACTIVE, align 4
  br label %285

284:                                              ; preds = %273
  br label %285

285:                                              ; preds = %284, %282
  %286 = phi i32 [ %283, %282 ], [ 0, %284 ]
  %287 = or i32 %275, %286
  %288 = call i32 @DrawFrameControl(i32 %239, i32* %9, i32 %240, i32 %287)
  br label %289

289:                                              ; preds = %285, %232
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %291 = load i32, i32* @FLAG_DECR, align 4
  %292 = call i32 @UPDOWN_GetArrowRect(%struct.TYPE_6__* %290, i32* %9, i32 %291)
  %293 = load i64, i64* %10, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %301

295:                                              ; preds = %289
  %296 = load i64, i64* %10, align 8
  %297 = load i32, i32* %4, align 4
  %298 = load i32, i32* %13, align 4
  %299 = load i32, i32* %14, align 4
  %300 = call i32 @DrawThemeBackground(i64 %296, i32 %297, i32 %298, i32 %299, i32* %9, i32* null)
  br label %352

301:                                              ; preds = %289
  %302 = load i32, i32* %4, align 4
  %303 = load i32, i32* @DFC_SCROLL, align 4
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @UDS_HORZ, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %301
  %311 = load i32, i32* @DFCS_SCROLLLEFT, align 4
  br label %314

312:                                              ; preds = %301
  %313 = load i32, i32* @DFCS_SCROLLDOWN, align 4
  br label %314

314:                                              ; preds = %312, %310
  %315 = phi i32 [ %311, %310 ], [ %313, %312 ]
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @UDS_HOTTRACK, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %327

322:                                              ; preds = %314
  %323 = load i32, i32* %8, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %327

325:                                              ; preds = %322
  %326 = load i32, i32* @DFCS_HOT, align 4
  br label %328

327:                                              ; preds = %322, %314
  br label %328

328:                                              ; preds = %327, %325
  %329 = phi i32 [ %326, %325 ], [ 0, %327 ]
  %330 = or i32 %315, %329
  %331 = load i32, i32* %7, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %335

333:                                              ; preds = %328
  %334 = load i32, i32* @DFCS_PUSHED, align 4
  br label %336

335:                                              ; preds = %328
  br label %336

336:                                              ; preds = %335, %333
  %337 = phi i32 [ %334, %333 ], [ 0, %335 ]
  %338 = or i32 %330, %337
  %339 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @WS_DISABLED, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %347

345:                                              ; preds = %336
  %346 = load i32, i32* @DFCS_INACTIVE, align 4
  br label %348

347:                                              ; preds = %336
  br label %348

348:                                              ; preds = %347, %345
  %349 = phi i32 [ %346, %345 ], [ 0, %347 ]
  %350 = or i32 %338, %349
  %351 = call i32 @DrawFrameControl(i32 %302, i32* %9, i32 %303, i32 %350)
  br label %352

352:                                              ; preds = %348, %295
  ret i32 0
}

declare dso_local i64 @GetWindowTheme(i32) #1

declare dso_local i64 @IsWindow(i32) #1

declare dso_local i64 @IsThemeBackgroundPartiallyTransparent(i64, i32, i32) #1

declare dso_local i64 @UPDOWN_HasBuddyBorder(%struct.TYPE_6__*) #1

declare dso_local i32 @UPDOWN_DrawBuddyBackground(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @GetClientRect(i32, i32*) #1

declare dso_local i32 @DrawEdge(i32, i32*, i32, i32) #1

declare dso_local i32 @UPDOWN_GetArrowRect(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @DrawThemeBackground(i64, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @DrawFrameControl(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
