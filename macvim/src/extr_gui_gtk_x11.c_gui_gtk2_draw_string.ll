; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_gui_gtk2_draw_string.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_gui_gtk2_draw_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i32, i32, i32*, i64, i32*, i32, %struct.TYPE_35__*, i32, i32, %struct.TYPE_34__* }
%struct.TYPE_35__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { %struct.TYPE_33__, %struct.TYPE_31__ }
%struct.TYPE_33__ = type { i64, i32 }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_34__ = type { i32* }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_39__ = type { i32, i32, i32, i32 }
%struct.TYPE_37__ = type { i32*, i32, %struct.TYPE_38__* }
%struct.TYPE_40__ = type { i64 }
%struct.TYPE_36__ = type { i32, %struct.TYPE_30__, i32 }
%struct.TYPE_30__ = type { i32, i32, i32 }

@gui = common dso_local global %struct.TYPE_32__ zeroinitializer, align 8
@output_conv = common dso_local global %struct.TYPE_29__ zeroinitializer, align 8
@CONV_NONE = common dso_local global i64 0, align 8
@DRAW_ITALIC = common dso_local global i32 0, align 4
@DRAW_BOLD = common dso_local global i32 0, align 4
@PANGO_SCALE = common dso_local global i32 0, align 4
@PANGO_WEIGHT_BOLD = common dso_local global i32 0, align 4
@PANGO_STYLE_ITALIC = common dso_local global i32 0, align 4
@default_shape_engine = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gui_gtk2_draw_string(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_39__, align 4
  %13 = alloca %struct.TYPE_37__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_40__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_36__*, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_38__*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32* null, i32** %16, align 8
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @gui, i32 0, i32 3), align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %5
  %37 = load %struct.TYPE_34__*, %struct.TYPE_34__** getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @gui, i32 0, i32 10), align 8
  %38 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36, %5
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %6, align 4
  br label %503

43:                                               ; preds = %36
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @output_conv, i32 0, i32 0), align 8
  %45 = load i64, i64* @CONV_NONE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %147

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %18, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = call i32* @string_convert(%struct.TYPE_29__* @output_conv, i32* %49, i32* %18)
  store i32* %50, i32** %16, align 8
  %51 = load i32*, i32** %16, align 8
  %52 = icmp ne i32* %51, null
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @g_return_val_if_fail(i32 %53, i32 %54)
  %56 = load i32*, i32** %9, align 8
  store i32* %56, i32** %19, align 8
  %57 = load i32*, i32** %16, align 8
  store i32* %57, i32** %20, align 8
  br label %58

58:                                               ; preds = %134, %47
  %59 = load i32*, i32** %19, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = icmp ult i32* %59, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load i32*, i32** %20, align 8
  %67 = load i32*, i32** %16, align 8
  %68 = load i32, i32* %18, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = icmp ult i32* %66, %70
  br label %72

72:                                               ; preds = %65, %58
  %73 = phi i1 [ false, %58 ], [ %71, %65 ]
  br i1 %73, label %74, label %144

74:                                               ; preds = %72
  %75 = load i32*, i32** %20, align 8
  %76 = call i32 @utf_ptr2len(i32* %75)
  store i32 %76, i32* %21, align 4
  %77 = load i32*, i32** %19, align 8
  %78 = call i32 @mb_ptr2cells(i32* %77)
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %80, label %134

80:                                               ; preds = %74
  %81 = load i32*, i32** %20, align 8
  %82 = call i32 @utf_ptr2cells(i32* %81)
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %134

84:                                               ; preds = %80
  %85 = load i32, i32* %18, align 4
  %86 = add nsw i32 %85, 2
  %87 = call i32* @alloc(i32 %86)
  store i32* %87, i32** %17, align 8
  %88 = load i32*, i32** %17, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %6, align 4
  br label %503

92:                                               ; preds = %84
  %93 = load i32*, i32** %20, align 8
  %94 = load i32*, i32** %16, align 8
  %95 = ptrtoint i32* %93 to i64
  %96 = ptrtoint i32* %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 4
  %99 = load i32, i32* %21, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %21, align 4
  %103 = load i32*, i32** %17, align 8
  %104 = load i32*, i32** %16, align 8
  %105 = load i32, i32* %21, align 4
  %106 = call i32 @mch_memmove(i32* %103, i32* %104, i32 %105)
  %107 = load i32*, i32** %17, align 8
  %108 = load i32, i32* %21, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 32, i32* %110, align 4
  %111 = load i32*, i32** %17, align 8
  %112 = load i32, i32* %21, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32*, i32** %16, align 8
  %117 = load i32, i32* %21, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* %21, align 4
  %122 = sub nsw i32 %120, %121
  %123 = add nsw i32 %122, 1
  %124 = call i32 @mch_memmove(i32* %115, i32* %119, i32 %123)
  %125 = load i32*, i32** %16, align 8
  %126 = call i32 @vim_free(i32* %125)
  %127 = load i32*, i32** %17, align 8
  store i32* %127, i32** %16, align 8
  %128 = load i32, i32* %18, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %18, align 4
  %130 = load i32*, i32** %16, align 8
  %131 = load i32, i32* %21, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32* %133, i32** %20, align 8
  store i32 1, i32* %21, align 4
  br label %134

134:                                              ; preds = %92, %80, %74
  %135 = load i32*, i32** %19, align 8
  %136 = call i32 @mb_ptr2len(i32* %135)
  %137 = load i32*, i32** %19, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32* %139, i32** %19, align 8
  %140 = load i32, i32* %21, align 4
  %141 = load i32*, i32** %20, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32* %143, i32** %20, align 8
  br label %58

144:                                              ; preds = %72
  %145 = load i32*, i32** %16, align 8
  store i32* %145, i32** %9, align 8
  %146 = load i32, i32* %18, align 4
  store i32 %146, i32* %10, align 4
  br label %147

147:                                              ; preds = %144, %43
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @gui, i32 0, i32 9), align 4
  %149 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %12, i32 0, i32 3
  store i32 %148, i32* %149, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @FILL_Y(i32 %150)
  %152 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %12, i32 0, i32 2
  store i32 %151, i32* %152, align 4
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @gui, i32 0, i32 0), align 8
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @gui, i32 0, i32 1), align 4
  %155 = mul nsw i32 %153, %154
  %156 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %12, i32 0, i32 0
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @gui, i32 0, i32 8), align 8
  %158 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %12, i32 0, i32 1
  store i32 %157, i32* %158, align 4
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @gui, i32 0, i32 2), align 8
  %160 = call i32 @gdk_gc_set_clip_origin(i32 %159, i32 0, i32 0)
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @gui, i32 0, i32 2), align 8
  %162 = call i32 @gdk_gc_set_clip_rectangle(i32 %161, %struct.TYPE_39__* %12)
  %163 = call %struct.TYPE_37__* (...) @pango_glyph_string_new()
  store %struct.TYPE_37__* %163, %struct.TYPE_37__** %13, align 8
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* @DRAW_ITALIC, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %244, label %168

168:                                              ; preds = %147
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @DRAW_BOLD, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load i64, i64* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @gui, i32 0, i32 4), align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %244, label %176

176:                                              ; preds = %173, %168
  %177 = load %struct.TYPE_35__*, %struct.TYPE_35__** getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @gui, i32 0, i32 7), align 8
  %178 = icmp ne %struct.TYPE_35__* %177, null
  br i1 %178, label %179, label %244

179:                                              ; preds = %176
  %180 = load i32*, i32** %9, align 8
  store i32* %180, i32** %22, align 8
  br label %181

181:                                              ; preds = %195, %179
  %182 = load i32*, i32** %22, align 8
  %183 = load i32*, i32** %9, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = icmp ult i32* %182, %186
  br i1 %187, label %188, label %198

188:                                              ; preds = %181
  %189 = load i32*, i32** %22, align 8
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, 128
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %245

194:                                              ; preds = %188
  br label %195

195:                                              ; preds = %194
  %196 = load i32*, i32** %22, align 8
  %197 = getelementptr inbounds i32, i32* %196, i32 1
  store i32* %197, i32** %22, align 8
  br label %181

198:                                              ; preds = %181
  %199 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %200 = load i32, i32* %10, align 4
  %201 = call i32 @pango_glyph_string_set_size(%struct.TYPE_37__* %199, i32 %200)
  store i32 0, i32* %15, align 4
  br label %202

202:                                              ; preds = %232, %198
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* %10, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %235

206:                                              ; preds = %202
  %207 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_38__*, %struct.TYPE_38__** %208, align 8
  %210 = load i32, i32* %15, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %209, i64 %211
  %213 = load %struct.TYPE_35__*, %struct.TYPE_35__** getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @gui, i32 0, i32 7), align 8
  %214 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_38__*, %struct.TYPE_38__** %214, align 8
  %216 = load i32*, i32** %9, align 8
  %217 = load i32, i32* %15, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %215, i64 %221
  %223 = bitcast %struct.TYPE_38__* %212 to i8*
  %224 = bitcast %struct.TYPE_38__* %222 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %223, i8* align 8 %224, i64 24, i1 false)
  %225 = load i32, i32* %15, align 4
  %226 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %227 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %15, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  store i32 %225, i32* %231, align 4
  br label %232

232:                                              ; preds = %206
  %233 = load i32, i32* %15, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %15, align 4
  br label %202

235:                                              ; preds = %202
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* %10, align 4
  %239 = load i32, i32* %11, align 4
  %240 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @gui, i32 0, i32 6), align 8
  %241 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %242 = call i32 @draw_glyph_string(i32 %236, i32 %237, i32 %238, i32 %239, i32 %240, %struct.TYPE_37__* %241)
  %243 = load i32, i32* %10, align 4
  store i32 %243, i32* %14, align 4
  br label %489

244:                                              ; preds = %176, %173, %147
  br label %245

245:                                              ; preds = %244, %193
  store i32 0, i32* %27, align 4
  %246 = load i32*, i32** %9, align 8
  %247 = load i32*, i32** %9, align 8
  %248 = load i32, i32* %10, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = call i32 @utf_valid_string(i32* %246, i32* %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %255, label %253

253:                                              ; preds = %245
  %254 = load i32, i32* %10, align 4
  store i32 %254, i32* %14, align 4
  br label %490

255:                                              ; preds = %245
  %256 = load i32, i32* @PANGO_SCALE, align 4
  %257 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @gui, i32 0, i32 1), align 4
  %258 = mul nsw i32 %256, %257
  store i32 %258, i32* %25, align 4
  %259 = load i32, i32* @PANGO_SCALE, align 4
  %260 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @gui, i32 0, i32 1), align 4
  %261 = mul nsw i32 %259, %260
  store i32 %261, i32* %26, align 4
  %262 = call i32* (...) @pango_attr_list_new()
  store i32* %262, i32** %23, align 8
  %263 = load i32*, i32** getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @gui, i32 0, i32 5), align 8
  %264 = icmp ne i32* %263, null
  br i1 %264, label %265, label %270

265:                                              ; preds = %255
  %266 = load i32*, i32** %9, align 8
  %267 = load i32, i32* %10, align 4
  %268 = load i32*, i32** %23, align 8
  %269 = call i32 @apply_wide_font_attr(i32* %266, i32 %267, i32* %268)
  br label %270

270:                                              ; preds = %265, %255
  %271 = load i32, i32* %11, align 4
  %272 = load i32, i32* @DRAW_BOLD, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %284

275:                                              ; preds = %270
  %276 = load i64, i64* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @gui, i32 0, i32 4), align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %284

278:                                              ; preds = %275
  %279 = load i32, i32* @PANGO_WEIGHT_BOLD, align 4
  %280 = call i32 @pango_attr_weight_new(i32 %279)
  %281 = load i32*, i32** %23, align 8
  %282 = load i32, i32* %10, align 4
  %283 = call i32 @INSERT_PANGO_ATTR(i32 %280, i32* %281, i32 0, i32 %282)
  br label %284

284:                                              ; preds = %278, %275, %270
  %285 = load i32, i32* %11, align 4
  %286 = load i32, i32* @DRAW_ITALIC, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %284
  %290 = load i32, i32* @PANGO_STYLE_ITALIC, align 4
  %291 = call i32 @pango_attr_style_new(i32 %290)
  %292 = load i32*, i32** %23, align 8
  %293 = load i32, i32* %10, align 4
  %294 = call i32 @INSERT_PANGO_ATTR(i32 %291, i32* %292, i32 0, i32 %293)
  br label %295

295:                                              ; preds = %289, %284
  %296 = load i32*, i32** getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @gui, i32 0, i32 3), align 8
  %297 = load i32*, i32** %9, align 8
  %298 = bitcast i32* %297 to i8*
  %299 = load i32, i32* %10, align 4
  %300 = load i32*, i32** %23, align 8
  %301 = call %struct.TYPE_40__* @pango_itemize(i32* %296, i8* %298, i32 0, i32 %299, i32* %300, i32* null)
  store %struct.TYPE_40__* %301, %struct.TYPE_40__** %24, align 8
  br label %302

302:                                              ; preds = %468, %295
  %303 = load %struct.TYPE_40__*, %struct.TYPE_40__** %24, align 8
  %304 = icmp ne %struct.TYPE_40__* %303, null
  br i1 %304, label %305, label %486

305:                                              ; preds = %302
  store i32 0, i32* %29, align 4
  %306 = load %struct.TYPE_40__*, %struct.TYPE_40__** %24, align 8
  %307 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = inttoptr i64 %308 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %309, %struct.TYPE_36__** %28, align 8
  %310 = load %struct.TYPE_40__*, %struct.TYPE_40__** %24, align 8
  %311 = load %struct.TYPE_40__*, %struct.TYPE_40__** %24, align 8
  %312 = call %struct.TYPE_40__* @g_list_delete_link(%struct.TYPE_40__* %310, %struct.TYPE_40__* %311)
  store %struct.TYPE_40__* %312, %struct.TYPE_40__** %24, align 8
  %313 = load %struct.TYPE_36__*, %struct.TYPE_36__** %28, align 8
  %314 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = add nsw i32 %316, 1
  %318 = and i32 %317, -2
  %319 = load %struct.TYPE_36__*, %struct.TYPE_36__** %28, align 8
  %320 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %320, i32 0, i32 0
  store i32 %318, i32* %321, align 4
  %322 = load i32, i32* @default_shape_engine, align 4
  %323 = load %struct.TYPE_36__*, %struct.TYPE_36__** %28, align 8
  %324 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %324, i32 0, i32 2
  store i32 %322, i32* %325, align 4
  %326 = load i32*, i32** %9, align 8
  %327 = bitcast i32* %326 to i8*
  %328 = load %struct.TYPE_36__*, %struct.TYPE_36__** %28, align 8
  %329 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i8, i8* %327, i64 %331
  %333 = load %struct.TYPE_36__*, %struct.TYPE_36__** %28, align 8
  %334 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.TYPE_36__*, %struct.TYPE_36__** %28, align 8
  %337 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %336, i32 0, i32 1
  %338 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %339 = call i32 @pango_shape(i8* %332, i32 %335, %struct.TYPE_30__* %337, %struct.TYPE_37__* %338)
  store i32 0, i32* %15, align 4
  br label %340

340:                                              ; preds = %465, %305
  %341 = load i32, i32* %15, align 4
  %342 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %343 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 8
  %345 = icmp slt i32 %341, %344
  br i1 %345, label %346, label %468

346:                                              ; preds = %340
  %347 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %348 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %347, i32 0, i32 2
  %349 = load %struct.TYPE_38__*, %struct.TYPE_38__** %348, align 8
  %350 = load i32, i32* %15, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %349, i64 %351
  store %struct.TYPE_38__* %352, %struct.TYPE_38__** %30, align 8
  %353 = load %struct.TYPE_38__*, %struct.TYPE_38__** %30, align 8
  %354 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %405

358:                                              ; preds = %346
  %359 = load i32*, i32** %9, align 8
  %360 = load %struct.TYPE_36__*, %struct.TYPE_36__** %28, align 8
  %361 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %362 = load i32, i32* %15, align 4
  %363 = load %struct.TYPE_40__*, %struct.TYPE_40__** %24, align 8
  %364 = icmp ne %struct.TYPE_40__* %363, null
  br i1 %364, label %365, label %366

365:                                              ; preds = %358
  br label %367

366:                                              ; preds = %358
  br label %367

367:                                              ; preds = %366, %365
  %368 = phi i32* [ %26, %365 ], [ null, %366 ]
  %369 = call i32 @count_cluster_cells(i32* %359, %struct.TYPE_36__* %360, %struct.TYPE_37__* %361, i32 %362, i32* %25, i32* %368)
  store i32 %369, i32* %31, align 4
  %370 = load i32, i32* %31, align 4
  %371 = icmp sgt i32 %370, 0
  br i1 %371, label %372, label %393

372:                                              ; preds = %367
  %373 = load i32, i32* %31, align 4
  %374 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @gui, i32 0, i32 1), align 4
  %375 = mul nsw i32 %373, %374
  %376 = load i32, i32* @PANGO_SCALE, align 4
  %377 = mul nsw i32 %375, %376
  store i32 %377, i32* %32, align 4
  %378 = load i32, i32* %32, align 4
  %379 = load i32, i32* %25, align 4
  %380 = sub nsw i32 %378, %379
  %381 = call i32 @MAX(i32 0, i32 %380)
  %382 = sdiv i32 %381, 2
  %383 = sext i32 %382 to i64
  %384 = load %struct.TYPE_38__*, %struct.TYPE_38__** %30, align 8
  %385 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = add nsw i64 %387, %383
  store i64 %388, i64* %386, align 8
  %389 = load i32, i32* %32, align 4
  %390 = load %struct.TYPE_38__*, %struct.TYPE_38__** %30, align 8
  %391 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %391, i32 0, i32 1
  store i32 %389, i32* %392, align 8
  br label %400

393:                                              ; preds = %367
  %394 = load %struct.TYPE_36__*, %struct.TYPE_36__** %28, align 8
  %395 = load %struct.TYPE_38__*, %struct.TYPE_38__** %30, align 8
  %396 = load i32, i32* %27, align 4
  %397 = load i32, i32* %25, align 4
  %398 = load i32, i32* %26, align 4
  %399 = call i32 @setup_zero_width_cluster(%struct.TYPE_36__* %394, %struct.TYPE_38__* %395, i32 %396, i32 %397, i32 %398)
  br label %400

400:                                              ; preds = %393, %372
  %401 = load i32, i32* %31, align 4
  %402 = load i32, i32* %29, align 4
  %403 = add nsw i32 %402, %401
  store i32 %403, i32* %29, align 4
  %404 = load i32, i32* %31, align 4
  store i32 %404, i32* %27, align 4
  br label %464

405:                                              ; preds = %346
  %406 = load i32, i32* %15, align 4
  %407 = icmp sgt i32 %406, 0
  br i1 %407, label %408, label %459

408:                                              ; preds = %405
  %409 = load %struct.TYPE_38__*, %struct.TYPE_38__** %30, align 8
  %410 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = icmp sge i64 %412, 0
  br i1 %413, label %414, label %442

414:                                              ; preds = %408
  %415 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %416 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %415, i32 0, i32 2
  %417 = load %struct.TYPE_38__*, %struct.TYPE_38__** %416, align 8
  %418 = load i32, i32* %15, align 4
  %419 = sub nsw i32 %418, 1
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %417, i64 %420
  %422 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 8
  %425 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %426 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %425, i32 0, i32 2
  %427 = load %struct.TYPE_38__*, %struct.TYPE_38__** %426, align 8
  %428 = load i32, i32* %15, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %427, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %431, i32 0, i32 1
  store i32 %424, i32* %432, align 8
  %433 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %434 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %433, i32 0, i32 2
  %435 = load %struct.TYPE_38__*, %struct.TYPE_38__** %434, align 8
  %436 = load i32, i32* %15, align 4
  %437 = sub nsw i32 %436, 1
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %435, i64 %438
  %440 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %440, i32 0, i32 1
  store i32 0, i32* %441, align 8
  br label %442

442:                                              ; preds = %414, %408
  %443 = load i32, i32* %27, align 4
  %444 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @gui, i32 0, i32 1), align 4
  %445 = mul nsw i32 %443, %444
  %446 = load i32, i32* @PANGO_SCALE, align 4
  %447 = mul nsw i32 %445, %446
  store i32 %447, i32* %33, align 4
  %448 = load i32, i32* %33, align 4
  %449 = load i32, i32* %25, align 4
  %450 = sub nsw i32 %448, %449
  %451 = call i32 @MAX(i32 0, i32 %450)
  %452 = sdiv i32 %451, 2
  %453 = sext i32 %452 to i64
  %454 = load %struct.TYPE_38__*, %struct.TYPE_38__** %30, align 8
  %455 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %455, i32 0, i32 0
  %457 = load i64, i64* %456, align 8
  %458 = add nsw i64 %457, %453
  store i64 %458, i64* %456, align 8
  br label %463

459:                                              ; preds = %405
  %460 = load %struct.TYPE_38__*, %struct.TYPE_38__** %30, align 8
  %461 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %461, i32 0, i32 1
  store i32 0, i32* %462, align 8
  br label %463

463:                                              ; preds = %459, %442
  br label %464

464:                                              ; preds = %463, %400
  br label %465

465:                                              ; preds = %464
  %466 = load i32, i32* %15, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %15, align 4
  br label %340

468:                                              ; preds = %340
  %469 = load i32, i32* %7, align 4
  %470 = load i32, i32* %8, align 4
  %471 = load i32, i32* %14, align 4
  %472 = add nsw i32 %470, %471
  %473 = load i32, i32* %29, align 4
  %474 = load i32, i32* %11, align 4
  %475 = load %struct.TYPE_36__*, %struct.TYPE_36__** %28, align 8
  %476 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %475, i32 0, i32 1
  %477 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %476, i32 0, i32 1
  %478 = load i32, i32* %477, align 4
  %479 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %480 = call i32 @draw_glyph_string(i32 %469, i32 %472, i32 %473, i32 %474, i32 %478, %struct.TYPE_37__* %479)
  %481 = load %struct.TYPE_36__*, %struct.TYPE_36__** %28, align 8
  %482 = call i32 @pango_item_free(%struct.TYPE_36__* %481)
  %483 = load i32, i32* %29, align 4
  %484 = load i32, i32* %14, align 4
  %485 = add nsw i32 %484, %483
  store i32 %485, i32* %14, align 4
  br label %302

486:                                              ; preds = %302
  %487 = load i32*, i32** %23, align 8
  %488 = call i32 @pango_attr_list_unref(i32* %487)
  br label %489

489:                                              ; preds = %486, %235
  br label %490

490:                                              ; preds = %489, %253
  %491 = load i32, i32* %11, align 4
  %492 = load i32, i32* %7, align 4
  %493 = load i32, i32* %8, align 4
  %494 = load i32, i32* %14, align 4
  %495 = call i32 @draw_under(i32 %491, i32 %492, i32 %493, i32 %494)
  %496 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %497 = call i32 @pango_glyph_string_free(%struct.TYPE_37__* %496)
  %498 = load i32*, i32** %16, align 8
  %499 = call i32 @vim_free(i32* %498)
  %500 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @gui, i32 0, i32 2), align 8
  %501 = call i32 @gdk_gc_set_clip_rectangle(i32 %500, %struct.TYPE_39__* null)
  %502 = load i32, i32* %14, align 4
  store i32 %502, i32* %6, align 4
  br label %503

503:                                              ; preds = %490, %90, %41
  %504 = load i32, i32* %6, align 4
  ret i32 %504
}

declare dso_local i32* @string_convert(%struct.TYPE_29__*, i32*, i32*) #1

declare dso_local i32 @g_return_val_if_fail(i32, i32) #1

declare dso_local i32 @utf_ptr2len(i32*) #1

declare dso_local i32 @mb_ptr2cells(i32*) #1

declare dso_local i32 @utf_ptr2cells(i32*) #1

declare dso_local i32* @alloc(i32) #1

declare dso_local i32 @mch_memmove(i32*, i32*, i32) #1

declare dso_local i32 @vim_free(i32*) #1

declare dso_local i32 @mb_ptr2len(i32*) #1

declare dso_local i32 @FILL_Y(i32) #1

declare dso_local i32 @gdk_gc_set_clip_origin(i32, i32, i32) #1

declare dso_local i32 @gdk_gc_set_clip_rectangle(i32, %struct.TYPE_39__*) #1

declare dso_local %struct.TYPE_37__* @pango_glyph_string_new(...) #1

declare dso_local i32 @pango_glyph_string_set_size(%struct.TYPE_37__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @draw_glyph_string(i32, i32, i32, i32, i32, %struct.TYPE_37__*) #1

declare dso_local i32 @utf_valid_string(i32*, i32*) #1

declare dso_local i32* @pango_attr_list_new(...) #1

declare dso_local i32 @apply_wide_font_attr(i32*, i32, i32*) #1

declare dso_local i32 @INSERT_PANGO_ATTR(i32, i32*, i32, i32) #1

declare dso_local i32 @pango_attr_weight_new(i32) #1

declare dso_local i32 @pango_attr_style_new(i32) #1

declare dso_local %struct.TYPE_40__* @pango_itemize(i32*, i8*, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_40__* @g_list_delete_link(%struct.TYPE_40__*, %struct.TYPE_40__*) #1

declare dso_local i32 @pango_shape(i8*, i32, %struct.TYPE_30__*, %struct.TYPE_37__*) #1

declare dso_local i32 @count_cluster_cells(i32*, %struct.TYPE_36__*, %struct.TYPE_37__*, i32, i32*, i32*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @setup_zero_width_cluster(%struct.TYPE_36__*, %struct.TYPE_38__*, i32, i32, i32) #1

declare dso_local i32 @pango_item_free(%struct.TYPE_36__*) #1

declare dso_local i32 @pango_attr_list_unref(i32*) #1

declare dso_local i32 @draw_under(i32, i32, i32, i32) #1

declare dso_local i32 @pango_glyph_string_free(%struct.TYPE_37__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
