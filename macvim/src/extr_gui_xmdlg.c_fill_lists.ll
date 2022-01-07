; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_xmdlg.c_fill_lists.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_xmdlg.c_fill_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8**, i64*, i32, i32, i32 }

@NONE = common dso_local global i32 0, align 4
@MAX_ENTRIES_IN_LIST = common dso_local global i32 0, align 4
@TEMP_BUF_SIZE = common dso_local global i32 0, align 4
@ENCODING = common dso_local global i32 0, align 4
@wild = common dso_local global i8* null, align 8
@XmNchildren = common dso_local global i32 0, align 4
@XmNnumChildren = common dso_local global i32 0, align 4
@XmNlabelString = common dso_local global i32 0, align 4
@XmNuserData = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"button\00", align 1
@xmPushButtonGadgetClass = common dso_local global i32 0, align 4
@XmNactivateCallback = common dso_local global i32 0, align 4
@encoding_callback = common dso_local global i64 0, align 8
@XmNmenuHistory = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_5__*)* @fill_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_lists(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %18 = load i32, i32* @NONE, align 4
  %19 = zext i32 %18 to i64
  %20 = load i32, i32* @MAX_ENTRIES_IN_LIST, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %5, align 8
  %23 = mul nuw i64 %19, %21
  %24 = alloca i8*, i64 %23, align 16
  store i64 %19, i64* %6, align 8
  store i64 %21, i64* %7, align 8
  %25 = load i32, i32* @NONE, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %8, align 8
  %28 = load i32, i32* @TEMP_BUF_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %9, align 8
  %31 = load i32, i32* @MAX_ENTRIES_IN_LIST, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %10, align 8
  %34 = load i32, i32* @ENCODING, align 4
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %43, %2
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @NONE, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %27, i64 %41
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %35

46:                                               ; preds = %35
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @ENCODING, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load i32, i32* @ENCODING, align 4
  %52 = sext i32 %51 to i64
  %53 = mul nsw i64 %52, %21
  %54 = getelementptr inbounds i8*, i8** %24, i64 %53
  %55 = load i8*, i8** @wild, align 8
  %56 = load i32, i32* @ENCODING, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %27, i64 %57
  %59 = call i32 @add_to_list(i8** %54, i8* %55, i32* %58)
  br label %60

60:                                               ; preds = %50, %46
  %61 = load i32, i32* %3, align 4
  %62 = icmp ne i32 %61, 130
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = mul nsw i64 130, %21
  %65 = getelementptr inbounds i8*, i8** %24, i64 %64
  %66 = load i8*, i8** @wild, align 8
  %67 = getelementptr inbounds i32, i32* %27, i64 130
  %68 = call i32 @add_to_list(i8** %65, i8* %66, i32* %67)
  br label %69

69:                                               ; preds = %63, %60
  %70 = load i32, i32* %3, align 4
  %71 = icmp ne i32 %70, 128
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = mul nsw i64 128, %21
  %74 = getelementptr inbounds i8*, i8** %24, i64 %73
  %75 = load i8*, i8** @wild, align 8
  %76 = getelementptr inbounds i32, i32* %27, i64 128
  %77 = call i32 @add_to_list(i8** %74, i8* %75, i32* %76)
  br label %78

78:                                               ; preds = %72, %69
  %79 = load i32, i32* %3, align 4
  %80 = icmp ne i32 %79, 129
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = mul nsw i64 129, %21
  %83 = getelementptr inbounds i8*, i8** %24, i64 %82
  %84 = load i8*, i8** @wild, align 8
  %85 = getelementptr inbounds i32, i32* %27, i64 129
  %86 = call i32 @add_to_list(i8** %83, i8* %84, i32* %85)
  br label %87

87:                                               ; preds = %81, %78
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %227, %87
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @MAX_ENTRIES_IN_LIST, align 4
  %97 = icmp slt i32 %95, %96
  br label %98

98:                                               ; preds = %94, %88
  %99 = phi i1 [ false, %88 ], [ %97, %94 ]
  br i1 %99, label %100, label %230

100:                                              ; preds = %98
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @fn(%struct.TYPE_5__* %101, i32 %102)
  %104 = call i64 @proportional(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %227

107:                                              ; preds = %100
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* @ENCODING, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %139

111:                                              ; preds = %107
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i64 @match(%struct.TYPE_5__* %112, i32 130, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %139

116:                                              ; preds = %111
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %118 = load i32, i32* %11, align 4
  %119 = call i64 @match(%struct.TYPE_5__* %117, i32 128, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %139

121:                                              ; preds = %116
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %123 = load i32, i32* %11, align 4
  %124 = call i64 @match(%struct.TYPE_5__* %122, i32 129, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %121
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @fn(%struct.TYPE_5__* %127, i32 %128)
  %130 = call i32 @encoding_part(i32 %129, i8* %30)
  %131 = load i32, i32* @ENCODING, align 4
  %132 = sext i32 %131 to i64
  %133 = mul nsw i64 %132, %21
  %134 = getelementptr inbounds i8*, i8** %24, i64 %133
  %135 = load i32, i32* @ENCODING, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %27, i64 %136
  %138 = call i32 @add_to_list(i8** %134, i8* %30, i32* %137)
  br label %139

139:                                              ; preds = %126, %121, %116, %111, %107
  %140 = load i32, i32* %3, align 4
  %141 = icmp ne i32 %140, 130
  br i1 %141, label %142, label %167

142:                                              ; preds = %139
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %144 = load i32, i32* @ENCODING, align 4
  %145 = load i32, i32* %11, align 4
  %146 = call i64 @match(%struct.TYPE_5__* %143, i32 %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %167

148:                                              ; preds = %142
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %150 = load i32, i32* %11, align 4
  %151 = call i64 @match(%struct.TYPE_5__* %149, i32 128, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %148
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %155 = load i32, i32* %11, align 4
  %156 = call i64 @match(%struct.TYPE_5__* %154, i32 129, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %153
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @fn(%struct.TYPE_5__* %159, i32 %160)
  %162 = call i32 @name_part(i32 %161, i8* %30)
  %163 = mul nsw i64 130, %21
  %164 = getelementptr inbounds i8*, i8** %24, i64 %163
  %165 = getelementptr inbounds i32, i32* %27, i64 130
  %166 = call i32 @add_to_list(i8** %164, i8* %30, i32* %165)
  br label %167

167:                                              ; preds = %158, %153, %148, %142, %139
  %168 = load i32, i32* %3, align 4
  %169 = icmp ne i32 %168, 128
  br i1 %169, label %170, label %195

170:                                              ; preds = %167
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %172 = load i32, i32* @ENCODING, align 4
  %173 = load i32, i32* %11, align 4
  %174 = call i64 @match(%struct.TYPE_5__* %171, i32 %172, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %195

176:                                              ; preds = %170
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %178 = load i32, i32* %11, align 4
  %179 = call i64 @match(%struct.TYPE_5__* %177, i32 130, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %176
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %183 = load i32, i32* %11, align 4
  %184 = call i64 @match(%struct.TYPE_5__* %182, i32 129, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %181
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %188 = load i32, i32* %11, align 4
  %189 = call i32 @fn(%struct.TYPE_5__* %187, i32 %188)
  %190 = call i32 @style_part(i32 %189, i8* %30)
  %191 = mul nsw i64 128, %21
  %192 = getelementptr inbounds i8*, i8** %24, i64 %191
  %193 = getelementptr inbounds i32, i32* %27, i64 128
  %194 = call i32 @add_to_list(i8** %192, i8* %30, i32* %193)
  br label %195

195:                                              ; preds = %186, %181, %176, %170, %167
  %196 = load i32, i32* %3, align 4
  %197 = icmp ne i32 %196, 129
  br i1 %197, label %198, label %226

198:                                              ; preds = %195
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %200 = load i32, i32* @ENCODING, align 4
  %201 = load i32, i32* %11, align 4
  %202 = call i64 @match(%struct.TYPE_5__* %199, i32 %200, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %226

204:                                              ; preds = %198
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %206 = load i32, i32* %11, align 4
  %207 = call i64 @match(%struct.TYPE_5__* %205, i32 130, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %226

209:                                              ; preds = %204
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %211 = load i32, i32* %11, align 4
  %212 = call i64 @match(%struct.TYPE_5__* %210, i32 128, i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %226

214:                                              ; preds = %209
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %216 = load i32, i32* %11, align 4
  %217 = call i32 @fn(%struct.TYPE_5__* %215, i32 %216)
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @size_part(i32 %217, i8* %30, i32 %220)
  %222 = mul nsw i64 129, %21
  %223 = getelementptr inbounds i8*, i8** %24, i64 %222
  %224 = getelementptr inbounds i32, i32* %27, i64 129
  %225 = call i32 @add_to_list(i8** %223, i8* %30, i32* %224)
  br label %226

226:                                              ; preds = %214, %209, %204, %198, %195
  br label %227

227:                                              ; preds = %226, %106
  %228 = load i32, i32* %11, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %11, align 4
  br label %88

230:                                              ; preds = %98
  %231 = load i32, i32* %3, align 4
  %232 = load i32, i32* @ENCODING, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %234, label %407

234:                                              ; preds = %230
  store i64 0, i64* %15, align 8
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @XmNchildren, align 4
  %239 = load i32, i32* @XmNnumChildren, align 4
  %240 = call i32 @XtVaGetValues(i32 %237, i32 %238, i64** %14, i32 %239, i64* %13, i32* null)
  store i32 0, i32* %11, align 4
  br label %241

241:                                              ; preds = %350, %234
  %242 = load i32, i32* %11, align 4
  %243 = load i32, i32* @ENCODING, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %27, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = icmp slt i32 %242, %246
  br i1 %247, label %248, label %353

248:                                              ; preds = %241
  %249 = load i32, i32* @ENCODING, align 4
  %250 = sext i32 %249 to i64
  %251 = mul nsw i64 %250, %21
  %252 = getelementptr inbounds i8*, i8** %24, i64 %251
  %253 = load i32, i32* %11, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8*, i8** %252, i64 %254
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 @XmStringCreateLocalized(i8* %256)
  %258 = load i32, i32* %11, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %33, i64 %259
  store i32 %257, i32* %260, align 4
  %261 = load i32, i32* %11, align 4
  %262 = load i64, i64* %13, align 8
  %263 = trunc i64 %262 to i32
  %264 = icmp slt i32 %261, %263
  br i1 %264, label %265, label %288

265:                                              ; preds = %248
  %266 = load i64*, i64** %14, align 8
  %267 = load i32, i32* %11, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i64, i64* %266, i64 %268
  %270 = load i64, i64* %269, align 8
  %271 = trunc i64 %270 to i32
  %272 = load i32, i32* @XmNlabelString, align 4
  %273 = load i32, i32* %11, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %33, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = sext i32 %276 to i64
  %278 = load i32, i32* @XmNuserData, align 4
  %279 = sext i32 %278 to i64
  %280 = inttoptr i64 %279 to i32*
  %281 = load i32, i32* %11, align 4
  %282 = call i32 (i32, i32, i64, i32*, ...) @XtVaSetValues(i32 %271, i32 %272, i64 %277, i32* %280, i32 %281, i8* null)
  %283 = load i64*, i64** %14, align 8
  %284 = load i32, i32* %11, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i64, i64* %283, i64 %285
  %287 = load i64, i64* %286, align 8
  store i64 %287, i64* %16, align 8
  br label %310

288:                                              ; preds = %248
  %289 = load i32, i32* @xmPushButtonGadgetClass, align 4
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @XmNlabelString, align 4
  %294 = load i32, i32* %11, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %33, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @XmNuserData, align 4
  %299 = load i32, i32* %11, align 4
  %300 = call i64 @XtVaCreateManagedWidget(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %289, i32 %292, i32 %293, i32 %297, i32 %298, i32 %299, i32* null)
  store i64 %300, i64* %16, align 8
  %301 = load i64, i64* %16, align 8
  %302 = load i32, i32* @XmNactivateCallback, align 4
  %303 = load i64, i64* @encoding_callback, align 8
  %304 = trunc i64 %303 to i32
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %306 = ptrtoint %struct.TYPE_5__* %305 to i32
  %307 = call i32 @XtAddCallback(i64 %301, i32 %302, i32 %304, i32 %306)
  %308 = load i64, i64* %16, align 8
  %309 = call i32 @XtManageChild(i64 %308)
  br label %310

310:                                              ; preds = %288, %265
  %311 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 1
  %313 = load i8**, i8*** %312, align 8
  %314 = load i32, i32* @ENCODING, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8*, i8** %313, i64 %315
  %317 = load i8*, i8** %316, align 8
  %318 = icmp ne i8* %317, null
  br i1 %318, label %319, label %340

319:                                              ; preds = %310
  %320 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 1
  %322 = load i8**, i8*** %321, align 8
  %323 = load i32, i32* @ENCODING, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8*, i8** %322, i64 %324
  %326 = load i8*, i8** %325, align 8
  %327 = load i32, i32* @ENCODING, align 4
  %328 = sext i32 %327 to i64
  %329 = mul nsw i64 %328, %21
  %330 = getelementptr inbounds i8*, i8** %24, i64 %329
  %331 = load i32, i32* %11, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8*, i8** %330, i64 %332
  %334 = load i8*, i8** %333, align 8
  %335 = call i32 @strcmp(i8* %326, i8* %334)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %339, label %337

337:                                              ; preds = %319
  %338 = load i64, i64* %16, align 8
  store i64 %338, i64* %15, align 8
  br label %339

339:                                              ; preds = %337, %319
  br label %340

340:                                              ; preds = %339, %310
  %341 = load i32, i32* @ENCODING, align 4
  %342 = sext i32 %341 to i64
  %343 = mul nsw i64 %342, %21
  %344 = getelementptr inbounds i8*, i8** %24, i64 %343
  %345 = load i32, i32* %11, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i8*, i8** %344, i64 %346
  %348 = load i8*, i8** %347, align 8
  %349 = call i32 @XtFree(i8* %348)
  br label %350

350:                                              ; preds = %340
  %351 = load i32, i32* %11, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %11, align 4
  br label %241

353:                                              ; preds = %241
  %354 = load i32, i32* @ENCODING, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %27, i64 %355
  %357 = load i32, i32* %356, align 4
  store i32 %357, i32* %11, align 4
  br label %358

358:                                              ; preds = %376, %353
  %359 = load i32, i32* %11, align 4
  %360 = load i64, i64* %13, align 8
  %361 = trunc i64 %360 to i32
  %362 = icmp slt i32 %359, %361
  br i1 %362, label %363, label %379

363:                                              ; preds = %358
  %364 = load i64*, i64** %14, align 8
  %365 = load i32, i32* %11, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i64, i64* %364, i64 %366
  %368 = load i64, i64* %367, align 8
  %369 = call i32 @XtUnmanageChild(i64 %368)
  %370 = load i64*, i64** %14, align 8
  %371 = load i32, i32* %11, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i64, i64* %370, i64 %372
  %374 = load i64, i64* %373, align 8
  %375 = call i32 @XtDestroyWidget(i64 %374)
  br label %376

376:                                              ; preds = %363
  %377 = load i32, i32* %11, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %11, align 4
  br label %358

379:                                              ; preds = %358
  %380 = load i64, i64* %15, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %389

382:                                              ; preds = %379
  %383 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %383, i32 0, i32 3
  %385 = load i32, i32* %384, align 8
  %386 = load i32, i32* @XmNmenuHistory, align 4
  %387 = load i64, i64* %15, align 8
  %388 = call i32 (i32, i32, i64, i32*, ...) @XtVaSetValues(i32 %385, i32 %386, i64 %387, i32* null)
  br label %389

389:                                              ; preds = %382, %379
  store i32 0, i32* %11, align 4
  br label %390

390:                                              ; preds = %403, %389
  %391 = load i32, i32* %11, align 4
  %392 = load i32, i32* @ENCODING, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %27, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = icmp slt i32 %391, %395
  br i1 %396, label %397, label %406

397:                                              ; preds = %390
  %398 = load i32, i32* %11, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %33, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = call i32 @XmStringFree(i32 %401)
  br label %403

403:                                              ; preds = %397
  %404 = load i32, i32* %11, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %11, align 4
  br label %390

406:                                              ; preds = %390
  br label %407

407:                                              ; preds = %406, %230
  store i32 130, i32* %12, align 4
  br label %408

408:                                              ; preds = %528, %407
  %409 = load i32, i32* %12, align 4
  %410 = load i32, i32* @NONE, align 4
  %411 = icmp slt i32 %409, %410
  br i1 %411, label %412, label %531

412:                                              ; preds = %408
  %413 = load i32, i32* %3, align 4
  %414 = load i32, i32* %12, align 4
  %415 = icmp eq i32 %413, %414
  br i1 %415, label %416, label %417

416:                                              ; preds = %412
  br label %528

417:                                              ; preds = %412
  %418 = load i32, i32* %12, align 4
  switch i32 %418, label %437 [
    i32 130, label %419
    i32 128, label %425
    i32 129, label %431
  ]

419:                                              ; preds = %417
  %420 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %421 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %420, i32 0, i32 2
  %422 = load i64*, i64** %421, align 8
  %423 = getelementptr inbounds i64, i64* %422, i64 130
  %424 = load i64, i64* %423, align 8
  store i64 %424, i64* %17, align 8
  br label %438

425:                                              ; preds = %417
  %426 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %427 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %426, i32 0, i32 2
  %428 = load i64*, i64** %427, align 8
  %429 = getelementptr inbounds i64, i64* %428, i64 128
  %430 = load i64, i64* %429, align 8
  store i64 %430, i64* %17, align 8
  br label %438

431:                                              ; preds = %417
  %432 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %433 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %432, i32 0, i32 2
  %434 = load i64*, i64** %433, align 8
  %435 = getelementptr inbounds i64, i64* %434, i64 129
  %436 = load i64, i64* %435, align 8
  store i64 %436, i64* %17, align 8
  br label %438

437:                                              ; preds = %417
  store i64 0, i64* %17, align 8
  br label %438

438:                                              ; preds = %437, %431, %425, %419
  store i32 0, i32* %11, align 4
  br label %439

439:                                              ; preds = %468, %438
  %440 = load i32, i32* %11, align 4
  %441 = load i32, i32* %12, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %27, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = icmp slt i32 %440, %444
  br i1 %445, label %446, label %471

446:                                              ; preds = %439
  %447 = load i32, i32* %12, align 4
  %448 = sext i32 %447 to i64
  %449 = mul nsw i64 %448, %21
  %450 = getelementptr inbounds i8*, i8** %24, i64 %449
  %451 = load i32, i32* %11, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i8*, i8** %450, i64 %452
  %454 = load i8*, i8** %453, align 8
  %455 = call i32 @XmStringCreateLocalized(i8* %454)
  %456 = load i32, i32* %11, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %33, i64 %457
  store i32 %455, i32* %458, align 4
  %459 = load i32, i32* %12, align 4
  %460 = sext i32 %459 to i64
  %461 = mul nsw i64 %460, %21
  %462 = getelementptr inbounds i8*, i8** %24, i64 %461
  %463 = load i32, i32* %11, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i8*, i8** %462, i64 %464
  %466 = load i8*, i8** %465, align 8
  %467 = call i32 @XtFree(i8* %466)
  br label %468

468:                                              ; preds = %446
  %469 = load i32, i32* %11, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %11, align 4
  br label %439

471:                                              ; preds = %439
  %472 = load i64, i64* %17, align 8
  %473 = call i32 @XmListDeleteAllItems(i64 %472)
  %474 = load i64, i64* %17, align 8
  %475 = load i32, i32* %12, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i32, i32* %27, i64 %476
  %478 = load i32, i32* %477, align 4
  %479 = call i32 @XmListAddItems(i64 %474, i32* %33, i32 %478, i32 1)
  %480 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %481 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %480, i32 0, i32 1
  %482 = load i8**, i8*** %481, align 8
  %483 = load i32, i32* %12, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i8*, i8** %482, i64 %484
  %486 = load i8*, i8** %485, align 8
  %487 = icmp ne i8* %486, null
  br i1 %487, label %488, label %510

488:                                              ; preds = %471
  %489 = getelementptr inbounds i32, i32* %33, i64 0
  %490 = load i32, i32* %489, align 16
  %491 = call i32 @XmStringFree(i32 %490)
  %492 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %493 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %492, i32 0, i32 1
  %494 = load i8**, i8*** %493, align 8
  %495 = load i32, i32* %12, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i8*, i8** %494, i64 %496
  %498 = load i8*, i8** %497, align 8
  %499 = call i32 @XmStringCreateLocalized(i8* %498)
  %500 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %499, i32* %500, align 16
  %501 = load i64, i64* %17, align 8
  %502 = getelementptr inbounds i32, i32* %33, i64 0
  %503 = load i32, i32* %502, align 16
  %504 = load i32, i32* @False, align 4
  %505 = call i32 @XmListSelectItem(i64 %501, i32 %503, i32 %504)
  %506 = load i64, i64* %17, align 8
  %507 = getelementptr inbounds i32, i32* %33, i64 0
  %508 = load i32, i32* %507, align 16
  %509 = call i32 @XmListSetBottomItem(i64 %506, i32 %508)
  br label %510

510:                                              ; preds = %488, %471
  store i32 0, i32* %11, align 4
  br label %511

511:                                              ; preds = %524, %510
  %512 = load i32, i32* %11, align 4
  %513 = load i32, i32* %12, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i32, i32* %27, i64 %514
  %516 = load i32, i32* %515, align 4
  %517 = icmp slt i32 %512, %516
  br i1 %517, label %518, label %527

518:                                              ; preds = %511
  %519 = load i32, i32* %11, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i32, i32* %33, i64 %520
  %522 = load i32, i32* %521, align 4
  %523 = call i32 @XmStringFree(i32 %522)
  br label %524

524:                                              ; preds = %518
  %525 = load i32, i32* %11, align 4
  %526 = add nsw i32 %525, 1
  store i32 %526, i32* %11, align 4
  br label %511

527:                                              ; preds = %511
  br label %528

528:                                              ; preds = %527, %416
  %529 = load i32, i32* %12, align 4
  %530 = add nsw i32 %529, 1
  store i32 %530, i32* %12, align 4
  br label %408

531:                                              ; preds = %408
  %532 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %532)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @add_to_list(i8**, i8*, i32*) #2

declare dso_local i64 @proportional(i32) #2

declare dso_local i32 @fn(%struct.TYPE_5__*, i32) #2

declare dso_local i64 @match(%struct.TYPE_5__*, i32, i32) #2

declare dso_local i32 @encoding_part(i32, i8*) #2

declare dso_local i32 @name_part(i32, i8*) #2

declare dso_local i32 @style_part(i32, i8*) #2

declare dso_local i32 @size_part(i32, i8*, i32) #2

declare dso_local i32 @XtVaGetValues(i32, i32, i64**, i32, i64*, i32*) #2

declare dso_local i32 @XmStringCreateLocalized(i8*) #2

declare dso_local i32 @XtVaSetValues(i32, i32, i64, i32*, ...) #2

declare dso_local i64 @XtVaCreateManagedWidget(i8*, i32, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @XtAddCallback(i64, i32, i32, i32) #2

declare dso_local i32 @XtManageChild(i64) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @XtFree(i8*) #2

declare dso_local i32 @XtUnmanageChild(i64) #2

declare dso_local i32 @XtDestroyWidget(i64) #2

declare dso_local i32 @XmStringFree(i32) #2

declare dso_local i32 @XmListDeleteAllItems(i64) #2

declare dso_local i32 @XmListAddItems(i64, i32*, i32, i32) #2

declare dso_local i32 @XmListSelectItem(i64, i32, i32) #2

declare dso_local i32 @XmListSetBottomItem(i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
