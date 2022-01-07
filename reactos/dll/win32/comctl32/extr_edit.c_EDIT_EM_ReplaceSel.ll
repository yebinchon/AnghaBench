; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_EM_ReplaceSel.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_EM_ReplaceSel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i64, i64, i64, i64, i32, i64, i32, i8*, i64, i64, i64, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"%s, can_undo %d, send_update %d\0A\00", align 1
@EN_MAXTEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"deleting stuff.\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"inserting stuff (tl %d, strl %d, selstart %d (%s), text %s)\0A\00", align 1
@ES_UPPERCASE = common dso_local global i32 0, align 4
@ES_LOWERCASE = common dso_local global i32 0, align 4
@ES_MULTILINE = common dso_local global i32 0, align 4
@ES_AUTOVSCROLL = common dso_local global i32 0, align 4
@ES_AUTOHSCROLL = common dso_local global i32 0, align 4
@ES_RIGHT = common dso_local global i32 0, align 4
@ES_CENTER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@EF_MODIFIED = common dso_local global i32 0, align 4
@EF_UPDATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@EN_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, i64, i8*, i64, i64, i64)* @EDIT_EM_ReplaceSel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_EM_ReplaceSel(%struct.TYPE_20__* %0, i64 %1, i8* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %28 = call i64 @get_text_length(%struct.TYPE_20__* %27)
  store i64 %28, i64* %13, align 8
  store i64 0, i64* %20, align 8
  store i8* null, i8** %21, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @debugstr_wn(i8* %29, i64 %30)
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %31, i64 %32, i64 %33)
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %15, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %16, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %42 = call i32 @EDIT_InvalidateUniscribeData(%struct.TYPE_20__* %41)
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* %16, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %6
  %47 = load i64, i64* %10, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  br label %768

50:                                               ; preds = %46, %6
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* %16, align 8
  %53 = call i32 @ORDER_UINT(i64 %51, i64 %52)
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %16, align 8
  %56 = load i64, i64* %15, align 8
  %57 = sub nsw i64 %55, %56
  %58 = sub nsw i64 %54, %57
  %59 = load i64, i64* %10, align 8
  %60 = add nsw i64 %58, %59
  store i64 %60, i64* %18, align 8
  %61 = load i64, i64* %18, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %50
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %63, %50
  %67 = load i64, i64* %12, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %102

69:                                               ; preds = %66
  %70 = load i64, i64* %18, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %70, %73
  br i1 %74, label %75, label %102

75:                                               ; preds = %69
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %77 = load i32, i32* @EN_MAXTEXT, align 4
  %78 = call i32 @EDIT_NOTIFY_PARENT(%struct.TYPE_20__* %76, i32 %77)
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %13, align 8
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* %15, align 8
  %85 = sub nsw i64 %83, %84
  %86 = sub nsw i64 %82, %85
  %87 = icmp slt i64 %81, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  store i64 0, i64* %10, align 8
  br label %101

89:                                               ; preds = %75
  %90 = load i64, i64* %10, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %13, align 8
  %95 = load i64, i64* %16, align 8
  %96 = load i64, i64* %15, align 8
  %97 = sub nsw i64 %95, %96
  %98 = sub nsw i64 %94, %97
  %99 = sub nsw i64 %93, %98
  %100 = call i64 @min(i64 %90, i64 %99)
  store i64 %100, i64* %10, align 8
  br label %101

101:                                              ; preds = %89, %88
  br label %102

102:                                              ; preds = %101, %69, %66
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %104 = load i64, i64* %13, align 8
  %105 = load i64, i64* %16, align 8
  %106 = load i64, i64* %15, align 8
  %107 = sub nsw i64 %105, %106
  %108 = sub nsw i64 %104, %107
  %109 = load i64, i64* %10, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @EDIT_MakeFit(%struct.TYPE_20__* %103, i64 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %102
  br label %768

114:                                              ; preds = %102
  %115 = load i64, i64* %16, align 8
  %116 = load i64, i64* %15, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %157

118:                                              ; preds = %114
  %119 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i64, i64* %16, align 8
  %121 = load i64, i64* %15, align 8
  %122 = sub nsw i64 %120, %121
  store i64 %122, i64* %22, align 8
  %123 = load i64, i64* %22, align 8
  %124 = add nsw i64 %123, 1
  %125 = mul i64 %124, 1
  %126 = call i8* @heap_alloc(i64 %125)
  store i8* %126, i8** %21, align 8
  %127 = load i8*, i8** %21, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %118
  br label %768

130:                                              ; preds = %118
  %131 = load i8*, i8** %21, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %15, align 8
  %136 = add nsw i64 %134, %135
  %137 = inttoptr i64 %136 to i8*
  %138 = load i64, i64* %22, align 8
  %139 = mul i64 %138, 1
  %140 = call i32 @memcpy(i8* %131, i8* %137, i64 %139)
  %141 = load i8*, i8** %21, align 8
  %142 = load i64, i64* %22, align 8
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  store i8 0, i8* %143, align 1
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %15, align 8
  %148 = add nsw i64 %146, %147
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %16, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @strcpyW(i64 %148, i64 %153)
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %156 = call i32 @text_buffer_changed(%struct.TYPE_20__* %155)
  br label %157

157:                                              ; preds = %130, %114
  %158 = load i64, i64* %10, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %250

160:                                              ; preds = %157
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %162 = call i64 @get_text_length(%struct.TYPE_20__* %161)
  store i64 %162, i64* %13, align 8
  %163 = load i64, i64* %13, align 8
  %164 = load i64, i64* %10, align 8
  %165 = load i64, i64* %15, align 8
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %15, align 8
  %170 = add nsw i64 %168, %169
  %171 = call i32 @debugstr_w(i64 %170)
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @debugstr_w(i64 %174)
  %176 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i64 %163, i64 %164, i64 %165, i32 %171, i32 %175)
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %13, align 8
  %181 = add nsw i64 %179, %180
  %182 = inttoptr i64 %181 to i8*
  store i8* %182, i8** %19, align 8
  br label %183

183:                                              ; preds = %199, %160
  %184 = load i8*, i8** %19, align 8
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %15, align 8
  %189 = add nsw i64 %187, %188
  %190 = inttoptr i64 %189 to i8*
  %191 = icmp uge i8* %184, %190
  br i1 %191, label %192, label %202

192:                                              ; preds = %183
  %193 = load i8*, i8** %19, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 0
  %195 = load i8, i8* %194, align 1
  %196 = load i8*, i8** %19, align 8
  %197 = load i64, i64* %10, align 8
  %198 = getelementptr inbounds i8, i8* %196, i64 %197
  store i8 %195, i8* %198, align 1
  br label %199

199:                                              ; preds = %192
  %200 = load i8*, i8** %19, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 -1
  store i8* %201, i8** %19, align 8
  br label %183

202:                                              ; preds = %183
  store i64 0, i64* %17, align 8
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 4
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* %15, align 8
  %207 = add nsw i64 %205, %206
  %208 = inttoptr i64 %207 to i8*
  store i8* %208, i8** %19, align 8
  br label %209

209:                                              ; preds = %221, %202
  %210 = load i64, i64* %17, align 8
  %211 = load i64, i64* %10, align 8
  %212 = icmp slt i64 %210, %211
  br i1 %212, label %213, label %224

213:                                              ; preds = %209
  %214 = load i8*, i8** %9, align 8
  %215 = load i64, i64* %17, align 8
  %216 = getelementptr inbounds i8, i8* %214, i64 %215
  %217 = load i8, i8* %216, align 1
  %218 = load i8*, i8** %19, align 8
  %219 = load i64, i64* %17, align 8
  %220 = getelementptr inbounds i8, i8* %218, i64 %219
  store i8 %217, i8* %220, align 1
  br label %221

221:                                              ; preds = %213
  %222 = load i64, i64* %17, align 8
  %223 = add nsw i64 %222, 1
  store i64 %223, i64* %17, align 8
  br label %209

224:                                              ; preds = %209
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @ES_UPPERCASE, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %224
  %232 = load i8*, i8** %19, align 8
  %233 = load i64, i64* %10, align 8
  %234 = call i32 @CharUpperBuffW(i8* %232, i64 %233)
  br label %247

235:                                              ; preds = %224
  %236 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @ES_LOWERCASE, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %235
  %243 = load i8*, i8** %19, align 8
  %244 = load i64, i64* %10, align 8
  %245 = call i32 @CharLowerBuffW(i8* %243, i64 %244)
  br label %246

246:                                              ; preds = %242, %235
  br label %247

247:                                              ; preds = %246, %231
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %249 = call i32 @text_buffer_changed(%struct.TYPE_20__* %248)
  br label %250

250:                                              ; preds = %247, %157
  %251 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 5
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @ES_MULTILINE, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %370

257:                                              ; preds = %250
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = call i64 @min(i64 %260, i64 %263)
  store i64 %264, i64* %23, align 8
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %266 = call i64 @get_vertical_line_count(%struct.TYPE_20__* %265)
  store i64 %266, i64* %24, align 8
  %267 = call i64 @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i64 %267, i64* %20, align 8
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %269 = load i64, i64* %23, align 8
  %270 = load i64, i64* %23, align 8
  %271 = load i64, i64* %10, align 8
  %272 = add nsw i64 %270, %271
  %273 = load i64, i64* %10, align 8
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = sub nsw i64 %276, %279
  %281 = call i64 @abs(i64 %280)
  %282 = sub nsw i64 %273, %281
  %283 = load i64, i64* %20, align 8
  %284 = call i32 @EDIT_BuildLineDefs_ML(%struct.TYPE_20__* %268, i64 %269, i64 %272, i64 %282, i64 %283)
  %285 = load i64, i64* %12, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %369

287:                                              ; preds = %257
  %288 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %288, i32 0, i32 5
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @ES_AUTOVSCROLL, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %369, label %294

294:                                              ; preds = %287
  %295 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i32 0, i32 6
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* %24, align 8
  %299 = icmp sgt i64 %297, %298
  br i1 %299, label %300, label %369

300:                                              ; preds = %294
  %301 = load i64, i64* %10, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %317

303:                                              ; preds = %300
  %304 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %304, i32 0, i32 4
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* %16, align 8
  %308 = add nsw i64 %306, %307
  %309 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %309, i32 0, i32 4
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* %16, align 8
  %313 = add nsw i64 %311, %312
  %314 = load i64, i64* %10, align 8
  %315 = add nsw i64 %313, %314
  %316 = call i32 @strcpyW(i64 %308, i64 %315)
  br label %317

317:                                              ; preds = %303, %300
  %318 = load i64, i64* %16, align 8
  %319 = load i64, i64* %15, align 8
  %320 = icmp ne i64 %318, %319
  br i1 %320, label %321, label %346

321:                                              ; preds = %317
  store i64 0, i64* %17, align 8
  %322 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %322, i32 0, i32 4
  %324 = load i64, i64* %323, align 8
  %325 = inttoptr i64 %324 to i8*
  store i8* %325, i8** %19, align 8
  br label %326

326:                                              ; preds = %342, %321
  %327 = load i64, i64* %17, align 8
  %328 = load i64, i64* %16, align 8
  %329 = load i64, i64* %15, align 8
  %330 = sub nsw i64 %328, %329
  %331 = icmp slt i64 %327, %330
  br i1 %331, label %332, label %345

332:                                              ; preds = %326
  %333 = load i8*, i8** %21, align 8
  %334 = load i64, i64* %17, align 8
  %335 = getelementptr inbounds i8, i8* %333, i64 %334
  %336 = load i8, i8* %335, align 1
  %337 = load i8*, i8** %19, align 8
  %338 = load i64, i64* %17, align 8
  %339 = load i64, i64* %15, align 8
  %340 = add nsw i64 %338, %339
  %341 = getelementptr inbounds i8, i8* %337, i64 %340
  store i8 %336, i8* %341, align 1
  br label %342

342:                                              ; preds = %332
  %343 = load i64, i64* %17, align 8
  %344 = add nsw i64 %343, 1
  store i64 %344, i64* %17, align 8
  br label %326

345:                                              ; preds = %326
  br label %346

346:                                              ; preds = %345, %317
  %347 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %348 = call i32 @text_buffer_changed(%struct.TYPE_20__* %347)
  %349 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %350 = load i64, i64* %15, align 8
  %351 = load i64, i64* %16, align 8
  %352 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %352, i32 0, i32 1
  %354 = load i64, i64* %353, align 8
  %355 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %356 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = sub nsw i64 %354, %357
  %359 = call i64 @abs(i64 %358)
  %360 = load i64, i64* %10, align 8
  %361 = sub nsw i64 %359, %360
  %362 = load i64, i64* %20, align 8
  %363 = call i32 @EDIT_BuildLineDefs_ML(%struct.TYPE_20__* %349, i64 %350, i64 %351, i64 %361, i64 %362)
  store i64 0, i64* %10, align 8
  %364 = load i64, i64* %15, align 8
  store i64 %364, i64* %16, align 8
  %365 = call i64 @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i64 %365, i64* %20, align 8
  %366 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %367 = load i32, i32* @EN_MAXTEXT, align 4
  %368 = call i32 @EDIT_NOTIFY_PARENT(%struct.TYPE_20__* %366, i32 %367)
  br label %369

369:                                              ; preds = %346, %294, %287, %257
  br label %446

370:                                              ; preds = %250
  %371 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %371, i32 0, i32 13
  %373 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %376 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %375, i32 0, i32 13
  %377 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %376, i32 0, i32 1
  %378 = load i64, i64* %377, align 8
  %379 = sub nsw i64 %374, %378
  store i64 %379, i64* %25, align 8
  %380 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %381 = call i32 @EDIT_InvalidateUniscribeData(%struct.TYPE_20__* %380)
  %382 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %383 = call i32 @EDIT_CalcLineWidth_SL(%struct.TYPE_20__* %382)
  %384 = load i64, i64* %12, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %445

386:                                              ; preds = %370
  %387 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %388 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %387, i32 0, i32 5
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %445, label %393

393:                                              ; preds = %386
  %394 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %395 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %394, i32 0, i32 2
  %396 = load i64, i64* %395, align 8
  %397 = load i64, i64* %25, align 8
  %398 = icmp sgt i64 %396, %397
  br i1 %398, label %399, label %445

399:                                              ; preds = %393
  br label %400

400:                                              ; preds = %414, %399
  %401 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %402 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %401, i32 0, i32 2
  %403 = load i64, i64* %402, align 8
  %404 = load i64, i64* %25, align 8
  %405 = icmp sgt i64 %403, %404
  br i1 %405, label %406, label %412

406:                                              ; preds = %400
  %407 = load i64, i64* %15, align 8
  %408 = load i64, i64* %10, align 8
  %409 = add nsw i64 %407, %408
  %410 = load i64, i64* %15, align 8
  %411 = icmp sge i64 %409, %410
  br label %412

412:                                              ; preds = %406, %400
  %413 = phi i1 [ false, %400 ], [ %411, %406 ]
  br i1 %413, label %414, label %439

414:                                              ; preds = %412
  %415 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %416 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %415, i32 0, i32 4
  %417 = load i64, i64* %416, align 8
  %418 = load i64, i64* %15, align 8
  %419 = add nsw i64 %417, %418
  %420 = load i64, i64* %10, align 8
  %421 = add nsw i64 %419, %420
  %422 = sub nsw i64 %421, 1
  %423 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %424 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %423, i32 0, i32 4
  %425 = load i64, i64* %424, align 8
  %426 = load i64, i64* %15, align 8
  %427 = add nsw i64 %425, %426
  %428 = load i64, i64* %10, align 8
  %429 = add nsw i64 %427, %428
  %430 = call i32 @strcpyW(i64 %422, i64 %429)
  %431 = load i64, i64* %10, align 8
  %432 = add nsw i64 %431, -1
  store i64 %432, i64* %10, align 8
  %433 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %434 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %433, i32 0, i32 7
  store i32 -1, i32* %434, align 8
  %435 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %436 = call i32 @EDIT_InvalidateUniscribeData(%struct.TYPE_20__* %435)
  %437 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %438 = call i32 @EDIT_CalcLineWidth_SL(%struct.TYPE_20__* %437)
  br label %400

439:                                              ; preds = %412
  %440 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %441 = call i32 @text_buffer_changed(%struct.TYPE_20__* %440)
  %442 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %443 = load i32, i32* @EN_MAXTEXT, align 4
  %444 = call i32 @EDIT_NOTIFY_PARENT(%struct.TYPE_20__* %442, i32 %443)
  br label %445

445:                                              ; preds = %439, %393, %386, %370
  br label %446

446:                                              ; preds = %445, %369
  %447 = load i64, i64* %16, align 8
  %448 = load i64, i64* %15, align 8
  %449 = icmp ne i64 %447, %448
  br i1 %449, label %450, label %610

450:                                              ; preds = %446
  %451 = load i64, i64* %8, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %606

453:                                              ; preds = %450
  %454 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %455 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %454, i32 0, i32 8
  %456 = load i8*, i8** %455, align 8
  %457 = call i64 @strlenW(i8* %456)
  store i64 %457, i64* %14, align 8
  %458 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %459 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %458, i32 0, i32 9
  %460 = load i64, i64* %459, align 8
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %503, label %462

462:                                              ; preds = %453
  %463 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %464 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %463, i32 0, i32 8
  %465 = load i8*, i8** %464, align 8
  %466 = load i8, i8* %465, align 1
  %467 = sext i8 %466 to i32
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %503

469:                                              ; preds = %462
  %470 = load i64, i64* %15, align 8
  %471 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %472 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %471, i32 0, i32 10
  %473 = load i64, i64* %472, align 8
  %474 = icmp eq i64 %470, %473
  br i1 %474, label %475, label %503

475:                                              ; preds = %469
  %476 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %477 = load i64, i64* %14, align 8
  %478 = load i64, i64* %16, align 8
  %479 = add nsw i64 %477, %478
  %480 = load i64, i64* %15, align 8
  %481 = sub nsw i64 %479, %480
  %482 = call i32 @EDIT_MakeUndoFit(%struct.TYPE_20__* %476, i64 %481)
  %483 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %484 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %483, i32 0, i32 8
  %485 = load i8*, i8** %484, align 8
  %486 = load i64, i64* %14, align 8
  %487 = getelementptr inbounds i8, i8* %485, i64 %486
  %488 = load i8*, i8** %21, align 8
  %489 = load i64, i64* %16, align 8
  %490 = load i64, i64* %15, align 8
  %491 = sub nsw i64 %489, %490
  %492 = mul i64 %491, 1
  %493 = call i32 @memcpy(i8* %487, i8* %488, i64 %492)
  %494 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %495 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %494, i32 0, i32 8
  %496 = load i8*, i8** %495, align 8
  %497 = load i64, i64* %14, align 8
  %498 = getelementptr inbounds i8, i8* %496, i64 %497
  %499 = load i64, i64* %16, align 8
  %500 = load i64, i64* %15, align 8
  %501 = sub nsw i64 %499, %500
  %502 = getelementptr inbounds i8, i8* %498, i64 %501
  store i8 0, i8* %502, align 1
  br label %603

503:                                              ; preds = %469, %462, %453
  %504 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %505 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %504, i32 0, i32 9
  %506 = load i64, i64* %505, align 8
  %507 = icmp ne i64 %506, 0
  br i1 %507, label %577, label %508

508:                                              ; preds = %503
  %509 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %510 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %509, i32 0, i32 8
  %511 = load i8*, i8** %510, align 8
  %512 = load i8, i8* %511, align 1
  %513 = sext i8 %512 to i32
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %577

515:                                              ; preds = %508
  %516 = load i64, i64* %16, align 8
  %517 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %518 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %517, i32 0, i32 10
  %519 = load i64, i64* %518, align 8
  %520 = icmp eq i64 %516, %519
  br i1 %520, label %521, label %577

521:                                              ; preds = %515
  %522 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %523 = load i64, i64* %14, align 8
  %524 = load i64, i64* %16, align 8
  %525 = add nsw i64 %523, %524
  %526 = load i64, i64* %15, align 8
  %527 = sub nsw i64 %525, %526
  %528 = call i32 @EDIT_MakeUndoFit(%struct.TYPE_20__* %522, i64 %527)
  %529 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %530 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %529, i32 0, i32 8
  %531 = load i8*, i8** %530, align 8
  %532 = load i64, i64* %14, align 8
  %533 = getelementptr inbounds i8, i8* %531, i64 %532
  store i8* %533, i8** %19, align 8
  br label %534

534:                                              ; preds = %549, %521
  %535 = load i8*, i8** %19, align 8
  %536 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %537 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %536, i32 0, i32 8
  %538 = load i8*, i8** %537, align 8
  %539 = icmp uge i8* %535, %538
  br i1 %539, label %540, label %552

540:                                              ; preds = %534
  %541 = load i8*, i8** %19, align 8
  %542 = getelementptr inbounds i8, i8* %541, i64 0
  %543 = load i8, i8* %542, align 1
  %544 = load i8*, i8** %19, align 8
  %545 = load i64, i64* %16, align 8
  %546 = load i64, i64* %15, align 8
  %547 = sub nsw i64 %545, %546
  %548 = getelementptr inbounds i8, i8* %544, i64 %547
  store i8 %543, i8* %548, align 1
  br label %549

549:                                              ; preds = %540
  %550 = load i8*, i8** %19, align 8
  %551 = getelementptr inbounds i8, i8* %550, i32 -1
  store i8* %551, i8** %19, align 8
  br label %534

552:                                              ; preds = %534
  store i64 0, i64* %17, align 8
  %553 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %554 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %553, i32 0, i32 8
  %555 = load i8*, i8** %554, align 8
  store i8* %555, i8** %19, align 8
  br label %556

556:                                              ; preds = %570, %552
  %557 = load i64, i64* %17, align 8
  %558 = load i64, i64* %16, align 8
  %559 = load i64, i64* %15, align 8
  %560 = sub nsw i64 %558, %559
  %561 = icmp slt i64 %557, %560
  br i1 %561, label %562, label %573

562:                                              ; preds = %556
  %563 = load i8*, i8** %21, align 8
  %564 = load i64, i64* %17, align 8
  %565 = getelementptr inbounds i8, i8* %563, i64 %564
  %566 = load i8, i8* %565, align 1
  %567 = load i8*, i8** %19, align 8
  %568 = load i64, i64* %17, align 8
  %569 = getelementptr inbounds i8, i8* %567, i64 %568
  store i8 %566, i8* %569, align 1
  br label %570

570:                                              ; preds = %562
  %571 = load i64, i64* %17, align 8
  %572 = add nsw i64 %571, 1
  store i64 %572, i64* %17, align 8
  br label %556

573:                                              ; preds = %556
  %574 = load i64, i64* %15, align 8
  %575 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %576 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %575, i32 0, i32 10
  store i64 %574, i64* %576, align 8
  br label %602

577:                                              ; preds = %515, %508, %503
  %578 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %579 = load i64, i64* %16, align 8
  %580 = load i64, i64* %15, align 8
  %581 = sub nsw i64 %579, %580
  %582 = call i32 @EDIT_MakeUndoFit(%struct.TYPE_20__* %578, i64 %581)
  %583 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %584 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %583, i32 0, i32 8
  %585 = load i8*, i8** %584, align 8
  %586 = load i8*, i8** %21, align 8
  %587 = load i64, i64* %16, align 8
  %588 = load i64, i64* %15, align 8
  %589 = sub nsw i64 %587, %588
  %590 = mul i64 %589, 1
  %591 = call i32 @memcpy(i8* %585, i8* %586, i64 %590)
  %592 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %593 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %592, i32 0, i32 8
  %594 = load i8*, i8** %593, align 8
  %595 = load i64, i64* %16, align 8
  %596 = load i64, i64* %15, align 8
  %597 = sub nsw i64 %595, %596
  %598 = getelementptr inbounds i8, i8* %594, i64 %597
  store i8 0, i8* %598, align 1
  %599 = load i64, i64* %15, align 8
  %600 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %601 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %600, i32 0, i32 10
  store i64 %599, i64* %601, align 8
  br label %602

602:                                              ; preds = %577, %573
  br label %603

603:                                              ; preds = %602, %475
  %604 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %605 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %604, i32 0, i32 9
  store i64 0, i64* %605, align 8
  br label %609

606:                                              ; preds = %450
  %607 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %608 = call i32 @EDIT_EM_EmptyUndoBuffer(%struct.TYPE_20__* %607)
  br label %609

609:                                              ; preds = %606, %603
  br label %610

610:                                              ; preds = %609, %446
  %611 = load i64, i64* %10, align 8
  %612 = icmp ne i64 %611, 0
  br i1 %612, label %613, label %658

613:                                              ; preds = %610
  %614 = load i64, i64* %8, align 8
  %615 = icmp ne i64 %614, 0
  br i1 %615, label %616, label %654

616:                                              ; preds = %613
  %617 = load i64, i64* %15, align 8
  %618 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %619 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %618, i32 0, i32 10
  %620 = load i64, i64* %619, align 8
  %621 = icmp eq i64 %617, %620
  br i1 %621, label %637, label %622

622:                                              ; preds = %616
  %623 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %624 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %623, i32 0, i32 9
  %625 = load i64, i64* %624, align 8
  %626 = icmp ne i64 %625, 0
  br i1 %626, label %627, label %643

627:                                              ; preds = %622
  %628 = load i64, i64* %15, align 8
  %629 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %630 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %629, i32 0, i32 10
  %631 = load i64, i64* %630, align 8
  %632 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %633 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %632, i32 0, i32 9
  %634 = load i64, i64* %633, align 8
  %635 = add nsw i64 %631, %634
  %636 = icmp eq i64 %628, %635
  br i1 %636, label %637, label %643

637:                                              ; preds = %627, %616
  %638 = load i64, i64* %10, align 8
  %639 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %640 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %639, i32 0, i32 9
  %641 = load i64, i64* %640, align 8
  %642 = add nsw i64 %641, %638
  store i64 %642, i64* %640, align 8
  br label %653

643:                                              ; preds = %627, %622
  %644 = load i64, i64* %15, align 8
  %645 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %646 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %645, i32 0, i32 10
  store i64 %644, i64* %646, align 8
  %647 = load i64, i64* %10, align 8
  %648 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %649 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %648, i32 0, i32 9
  store i64 %647, i64* %649, align 8
  %650 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %651 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %650, i32 0, i32 8
  %652 = load i8*, i8** %651, align 8
  store i8 0, i8* %652, align 1
  br label %653

653:                                              ; preds = %643, %637
  br label %657

654:                                              ; preds = %613
  %655 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %656 = call i32 @EDIT_EM_EmptyUndoBuffer(%struct.TYPE_20__* %655)
  br label %657

657:                                              ; preds = %654, %653
  br label %658

658:                                              ; preds = %657, %610
  %659 = load i8*, i8** %21, align 8
  %660 = call i32 @heap_free(i8* %659)
  %661 = load i64, i64* %10, align 8
  %662 = load i64, i64* %15, align 8
  %663 = add nsw i64 %662, %661
  store i64 %663, i64* %15, align 8
  %664 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %665 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %664, i32 0, i32 5
  %666 = load i32, i32* %665, align 8
  %667 = load i32, i32* @ES_RIGHT, align 4
  %668 = load i32, i32* @ES_CENTER, align 4
  %669 = or i32 %667, %668
  %670 = and i32 %666, %669
  %671 = icmp ne i32 %670, 0
  br i1 %671, label %672, label %708

672:                                              ; preds = %658
  %673 = load i64, i64* %10, align 8
  %674 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %675 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %674, i32 0, i32 1
  %676 = load i64, i64* %675, align 8
  %677 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %678 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %677, i32 0, i32 0
  %679 = load i64, i64* %678, align 8
  %680 = sub nsw i64 %676, %679
  %681 = call i64 @abs(i64 %680)
  %682 = sub nsw i64 %673, %681
  store i64 %682, i64* %26, align 8
  %683 = load i64, i64* %26, align 8
  %684 = icmp slt i64 %683, 0
  br i1 %684, label %685, label %707

685:                                              ; preds = %672
  %686 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %687 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %686, i32 0, i32 11
  %688 = load i64, i64* %687, align 8
  %689 = icmp ne i64 %688, 0
  br i1 %689, label %690, label %707

690:                                              ; preds = %685
  %691 = load i64, i64* %26, align 8
  %692 = call i64 @abs(i64 %691)
  %693 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %694 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %693, i32 0, i32 11
  %695 = load i64, i64* %694, align 8
  %696 = icmp sgt i64 %692, %695
  br i1 %696, label %697, label %700

697:                                              ; preds = %690
  %698 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %699 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %698, i32 0, i32 11
  store i64 0, i64* %699, align 8
  br label %706

700:                                              ; preds = %690
  %701 = load i64, i64* %26, align 8
  %702 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %703 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %702, i32 0, i32 11
  %704 = load i64, i64* %703, align 8
  %705 = add nsw i64 %704, %701
  store i64 %705, i64* %703, align 8
  br label %706

706:                                              ; preds = %700, %697
  br label %707

707:                                              ; preds = %706, %685, %672
  br label %708

708:                                              ; preds = %707, %658
  %709 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %710 = load i64, i64* %15, align 8
  %711 = load i64, i64* %15, align 8
  %712 = load i32, i32* @FALSE, align 4
  %713 = call i32 @EDIT_EM_SetSel(%struct.TYPE_20__* %709, i64 %710, i64 %711, i32 %712)
  %714 = load i32, i32* @EF_MODIFIED, align 4
  %715 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %716 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %715, i32 0, i32 12
  %717 = load i32, i32* %716, align 8
  %718 = or i32 %717, %714
  store i32 %718, i32* %716, align 8
  %719 = load i64, i64* %11, align 8
  %720 = icmp ne i64 %719, 0
  br i1 %720, label %721, label %727

721:                                              ; preds = %708
  %722 = load i32, i32* @EF_UPDATE, align 4
  %723 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %724 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %723, i32 0, i32 12
  %725 = load i32, i32* %724, align 8
  %726 = or i32 %725, %722
  store i32 %726, i32* %724, align 8
  br label %727

727:                                              ; preds = %721, %708
  %728 = load i64, i64* %20, align 8
  %729 = icmp ne i64 %728, 0
  br i1 %729, label %730, label %737

730:                                              ; preds = %727
  %731 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %732 = load i64, i64* %20, align 8
  %733 = load i32, i32* @TRUE, align 4
  %734 = call i32 @EDIT_UpdateTextRegion(%struct.TYPE_20__* %731, i64 %732, i32 %733)
  %735 = load i64, i64* %20, align 8
  %736 = call i32 @DeleteObject(i64 %735)
  br label %741

737:                                              ; preds = %727
  %738 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %739 = load i32, i32* @TRUE, align 4
  %740 = call i32 @EDIT_UpdateText(%struct.TYPE_20__* %738, i32* null, i32 %739)
  br label %741

741:                                              ; preds = %737, %730
  %742 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %743 = call i32 @EDIT_EM_ScrollCaret(%struct.TYPE_20__* %742)
  %744 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %745 = call i32 @EDIT_UpdateScrollInfo(%struct.TYPE_20__* %744)
  %746 = load i64, i64* %11, align 8
  %747 = icmp ne i64 %746, 0
  br i1 %747, label %755, label %748

748:                                              ; preds = %741
  %749 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %750 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %749, i32 0, i32 12
  %751 = load i32, i32* %750, align 8
  %752 = load i32, i32* @EF_UPDATE, align 4
  %753 = and i32 %751, %752
  %754 = icmp ne i32 %753, 0
  br i1 %754, label %755, label %765

755:                                              ; preds = %748, %741
  %756 = load i32, i32* @EF_UPDATE, align 4
  %757 = xor i32 %756, -1
  %758 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %759 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %758, i32 0, i32 12
  %760 = load i32, i32* %759, align 8
  %761 = and i32 %760, %757
  store i32 %761, i32* %759, align 8
  %762 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %763 = load i32, i32* @EN_CHANGE, align 4
  %764 = call i32 @EDIT_NOTIFY_PARENT(%struct.TYPE_20__* %762, i32 %763)
  br label %765

765:                                              ; preds = %755, %748
  %766 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %767 = call i32 @EDIT_InvalidateUniscribeData(%struct.TYPE_20__* %766)
  br label %768

768:                                              ; preds = %765, %129, %113, %49
  ret void
}

declare dso_local i64 @get_text_length(%struct.TYPE_20__*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_wn(i8*, i64) #1

declare dso_local i32 @EDIT_InvalidateUniscribeData(%struct.TYPE_20__*) #1

declare dso_local i32 @ORDER_UINT(i64, i64) #1

declare dso_local i32 @EDIT_NOTIFY_PARENT(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @EDIT_MakeFit(%struct.TYPE_20__*, i64) #1

declare dso_local i8* @heap_alloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @strcpyW(i64, i64) #1

declare dso_local i32 @text_buffer_changed(%struct.TYPE_20__*) #1

declare dso_local i32 @debugstr_w(i64) #1

declare dso_local i32 @CharUpperBuffW(i8*, i64) #1

declare dso_local i32 @CharLowerBuffW(i8*, i64) #1

declare dso_local i64 @get_vertical_line_count(%struct.TYPE_20__*) #1

declare dso_local i64 @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i32 @EDIT_BuildLineDefs_ML(%struct.TYPE_20__*, i64, i64, i64, i64) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @EDIT_CalcLineWidth_SL(%struct.TYPE_20__*) #1

declare dso_local i64 @strlenW(i8*) #1

declare dso_local i32 @EDIT_MakeUndoFit(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @EDIT_EM_EmptyUndoBuffer(%struct.TYPE_20__*) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i32 @EDIT_EM_SetSel(%struct.TYPE_20__*, i64, i64, i32) #1

declare dso_local i32 @EDIT_UpdateTextRegion(%struct.TYPE_20__*, i64, i32) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i32 @EDIT_UpdateText(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @EDIT_EM_ScrollCaret(%struct.TYPE_20__*) #1

declare dso_local i32 @EDIT_UpdateScrollInfo(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
