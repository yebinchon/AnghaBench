; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_gui_mch_prepare.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_gtk_x11.c_gui_mch_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_5__ = type { i8*, i8*, i64 }

@gui_argc = common dso_local global i64 0, align 8
@gui_argv = common dso_local global i8** null, align 8
@cmdline_options = common dso_local global %struct.TYPE_4__* null, align 8
@ARG_HAS_VALUE = common dso_local global i32 0, align 4
@ARG_COMPAT_LONG = common dso_local global i32 0, align 4
@ARG_FOR_GTK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@ARG_INDEX_MASK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@found_reverse_arg = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@font_argument = common dso_local global i8* null, align 8
@gui = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@background_argument = common dso_local global i8* null, align 8
@foreground_argument = common dso_local global i8* null, align 8
@found_iconic_arg = common dso_local global i8* null, align 8
@role_argument = common dso_local global i8* null, align 8
@ARG_NEEDS_GUI = common dso_local global i32 0, align 4
@ARG_KEEP = common dso_local global i32 0, align 4
@G_DIR_SEPARATOR = common dso_local global i32 0, align 4
@MAXPATHL = common dso_local global i32 0, align 4
@OK = common dso_local global i64 0, align 8
@abs_restart_command = common dso_local global i8* null, align 8
@netbeansArg = common dso_local global i8* null, align 8
@restart_command = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_prepare(i32* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i64 0, i64* @gui_argc, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = trunc i64 %14 to i32
  %16 = call i64 @alloc(i32 %15)
  %17 = inttoptr i64 %16 to i8**
  store i8** %17, i8*** @gui_argv, align 8
  %18 = load i8**, i8*** @gui_argv, align 8
  %19 = icmp ne i8** %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @g_return_if_fail(i32 %20)
  %22 = load i8**, i8*** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8*, i8** %22, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = load i8**, i8*** @gui_argv, align 8
  %29 = load i64, i64* @gui_argc, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* @gui_argc, align 8
  %31 = getelementptr inbounds i8*, i8** %28, i64 %29
  store i8* %27, i8** %31, align 8
  br label %32

32:                                               ; preds = %366, %155, %57, %2
  %33 = load i32, i32* %6, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %367

37:                                               ; preds = %32
  %38 = load i8**, i8*** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 45
  br i1 %46, label %47, label %60

47:                                               ; preds = %37
  %48 = load i8**, i8*** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 43
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %32

60:                                               ; preds = %47, %37
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cmdline_options, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 0
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %5, align 8
  br label %63

63:                                               ; preds = %147, %60
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %150

68:                                               ; preds = %63
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strlen(i8* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i8**, i8*** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i64 @strncmp(i8* %77, i8* %80, i32 %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %118

84:                                               ; preds = %68
  %85 = load i8**, i8*** %4, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  br label %150

97:                                               ; preds = %84
  %98 = load i8**, i8*** %4, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 61
  br i1 %108, label %109, label %117

109:                                              ; preds = %97
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @ARG_HAS_VALUE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  br label %150

117:                                              ; preds = %109, %97
  br label %146

118:                                              ; preds = %68
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @ARG_COMPAT_LONG, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %145

125:                                              ; preds = %118
  %126 = load i8**, i8*** %4, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 1
  %135 = call i64 @strcmp(i8* %130, i8* %134)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %125
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = load i8**, i8*** %4, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  store i8* %140, i8** %144, align 8
  br label %150

145:                                              ; preds = %125, %118
  br label %146

146:                                              ; preds = %145, %117
  br label %147

147:                                              ; preds = %146
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 1
  store %struct.TYPE_4__* %149, %struct.TYPE_4__** %5, align 8
  br label %63

150:                                              ; preds = %137, %116, %96, %63
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = icmp eq i8* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %6, align 4
  br label %32

158:                                              ; preds = %150
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @ARG_FOR_GTK, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %158
  %166 = load i8**, i8*** %4, align 8
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %166, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = load i8**, i8*** @gui_argv, align 8
  %172 = load i64, i64* @gui_argc, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* @gui_argc, align 8
  %174 = getelementptr inbounds i8*, i8** %171, i64 %172
  store i8* %170, i8** %174, align 8
  br label %258

175:                                              ; preds = %158
  store i8* null, i8** %8, align 8
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @ARG_HAS_VALUE, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %228

182:                                              ; preds = %175
  %183 = load i8**, i8*** %4, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8*, i8** %183, i64 %185
  %187 = load i8*, i8** %186, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 61
  br i1 %193, label %194, label %204

194:                                              ; preds = %182
  %195 = load i8**, i8*** %4, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8*, i8** %195, i64 %197
  %199 = load i8*, i8** %198, align 8
  %200 = load i32, i32* %7, align 4
  %201 = add nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %199, i64 %202
  store i8* %203, i8** %8, align 8
  br label %227

204:                                              ; preds = %182
  %205 = load i32, i32* %6, align 4
  %206 = add nsw i32 %205, 1
  %207 = load i32*, i32** %3, align 8
  %208 = load i32, i32* %207, align 4
  %209 = icmp slt i32 %206, %208
  br i1 %209, label %210, label %226

210:                                              ; preds = %204
  %211 = load i8**, i8*** %4, align 8
  %212 = load i32, i32* %6, align 4
  %213 = add nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8*, i8** %211, i64 %214
  %216 = load i8*, i8** %215, align 8
  %217 = call i64 @strcmp(i8* %216, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %210
  %220 = load i8**, i8*** %4, align 8
  %221 = load i32, i32* %6, align 4
  %222 = add nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8*, i8** %220, i64 %223
  %225 = load i8*, i8** %224, align 8
  store i8* %225, i8** %8, align 8
  br label %226

226:                                              ; preds = %219, %210, %204
  br label %227

227:                                              ; preds = %226, %194
  br label %228

228:                                              ; preds = %227, %175
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @ARG_INDEX_MASK, align 4
  %233 = and i32 %231, %232
  switch i32 %233, label %256 [
    i32 129, label %234
    i32 130, label %236
    i32 135, label %238
    i32 133, label %240
    i32 136, label %248
    i32 134, label %250
    i32 132, label %252
    i32 128, label %254
  ]

234:                                              ; preds = %228
  %235 = load i8*, i8** @TRUE, align 8
  store i8* %235, i8** @found_reverse_arg, align 8
  br label %257

236:                                              ; preds = %228
  %237 = load i8*, i8** @FALSE, align 8
  store i8* %237, i8** @found_reverse_arg, align 8
  br label %257

238:                                              ; preds = %228
  %239 = load i8*, i8** %8, align 8
  store i8* %239, i8** @font_argument, align 8
  br label %257

240:                                              ; preds = %228
  %241 = load i8*, i8** %8, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = load i8*, i8** %8, align 8
  %245 = bitcast i8* %244 to i32*
  %246 = call i64 @vim_strsave(i32* %245)
  store i64 %246, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 2), align 8
  br label %247

247:                                              ; preds = %243, %240
  br label %257

248:                                              ; preds = %228
  %249 = load i8*, i8** %8, align 8
  store i8* %249, i8** @background_argument, align 8
  br label %257

250:                                              ; preds = %228
  %251 = load i8*, i8** %8, align 8
  store i8* %251, i8** @foreground_argument, align 8
  br label %257

252:                                              ; preds = %228
  %253 = load i8*, i8** @TRUE, align 8
  store i8* %253, i8** @found_iconic_arg, align 8
  br label %257

254:                                              ; preds = %228
  %255 = load i8*, i8** %8, align 8
  store i8* %255, i8** @role_argument, align 8
  br label %257

256:                                              ; preds = %228
  br label %257

257:                                              ; preds = %256, %254, %252, %250, %248, %247, %238, %236, %234
  br label %258

258:                                              ; preds = %257, %165
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @ARG_NEEDS_GUI, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %258
  %266 = load i8*, i8** @TRUE, align 8
  store i8* %266, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 0), align 8
  br label %267

267:                                              ; preds = %265, %258
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @ARG_KEEP, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %267
  %275 = load i32, i32* %6, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %6, align 4
  br label %366

277:                                              ; preds = %267
  %278 = load i32*, i32** %3, align 8
  %279 = load i32, i32* %278, align 4
  %280 = add nsw i32 %279, -1
  store i32 %280, i32* %278, align 4
  %281 = load i32, i32* %6, align 4
  %282 = icmp sgt i32 %280, %281
  br i1 %282, label %283, label %360

283:                                              ; preds = %277
  store i32 1, i32* %9, align 4
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @ARG_HAS_VALUE, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %335

290:                                              ; preds = %283
  %291 = load i8**, i8*** %4, align 8
  %292 = load i32, i32* %6, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8*, i8** %291, i64 %293
  %295 = load i8*, i8** %294, align 8
  %296 = load i32, i32* %7, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8, i8* %295, i64 %297
  %299 = load i8, i8* %298, align 1
  %300 = sext i8 %299 to i32
  %301 = icmp ne i32 %300, 61
  br i1 %301, label %302, label %335

302:                                              ; preds = %290
  %303 = load i8**, i8*** %4, align 8
  %304 = load i32, i32* %6, align 4
  %305 = add nsw i32 %304, 1
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8*, i8** %303, i64 %306
  %308 = load i8*, i8** %307, align 8
  %309 = call i64 @strcmp(i8* %308, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %335

311:                                              ; preds = %302
  %312 = load i32, i32* %9, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %9, align 4
  %314 = load i32*, i32** %3, align 8
  %315 = load i32, i32* %314, align 4
  %316 = add nsw i32 %315, -1
  store i32 %316, i32* %314, align 4
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @ARG_FOR_GTK, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %334

323:                                              ; preds = %311
  %324 = load i8**, i8*** %4, align 8
  %325 = load i32, i32* %6, align 4
  %326 = add nsw i32 %325, 1
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8*, i8** %324, i64 %327
  %329 = load i8*, i8** %328, align 8
  %330 = load i8**, i8*** @gui_argv, align 8
  %331 = load i64, i64* @gui_argc, align 8
  %332 = add i64 %331, 1
  store i64 %332, i64* @gui_argc, align 8
  %333 = getelementptr inbounds i8*, i8** %330, i64 %331
  store i8* %329, i8** %333, align 8
  br label %334

334:                                              ; preds = %323, %311
  br label %335

335:                                              ; preds = %334, %302, %290, %283
  %336 = load i32*, i32** %3, align 8
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* %6, align 4
  %339 = icmp sgt i32 %337, %338
  br i1 %339, label %340, label %359

340:                                              ; preds = %335
  %341 = load i8**, i8*** %4, align 8
  %342 = load i32, i32* %6, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8*, i8** %341, i64 %343
  %345 = load i8**, i8*** %4, align 8
  %346 = load i32, i32* %6, align 4
  %347 = load i32, i32* %9, align 4
  %348 = add nsw i32 %346, %347
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i8*, i8** %345, i64 %349
  %351 = load i32*, i32** %3, align 8
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* %6, align 4
  %354 = sub nsw i32 %352, %353
  %355 = sext i32 %354 to i64
  %356 = mul i64 %355, 8
  %357 = trunc i64 %356 to i32
  %358 = call i32 @mch_memmove(i8** %344, i8** %350, i32 %357)
  br label %359

359:                                              ; preds = %340, %335
  br label %360

360:                                              ; preds = %359, %277
  %361 = load i8**, i8*** %4, align 8
  %362 = load i32*, i32** %3, align 8
  %363 = load i32, i32* %362, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i8*, i8** %361, i64 %364
  store i8* null, i8** %365, align 8
  br label %366

366:                                              ; preds = %360, %274
  br label %32

367:                                              ; preds = %32
  %368 = load i8**, i8*** @gui_argv, align 8
  %369 = load i64, i64* @gui_argc, align 8
  %370 = getelementptr inbounds i8*, i8** %368, i64 %369
  store i8* null, i8** %370, align 8
  ret void
}

declare dso_local i64 @alloc(i32) #1

declare dso_local i32 @g_return_if_fail(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @vim_strsave(i32*) #1

declare dso_local i32 @mch_memmove(i8**, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
