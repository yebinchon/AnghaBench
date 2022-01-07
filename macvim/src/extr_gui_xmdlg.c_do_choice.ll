; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_xmdlg.c_do_choice.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_xmdlg.c_do_choice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8**, i8*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@XmSTRING_DEFAULT_CHARSET = common dso_local global i32 0, align 4
@ENCODING = common dso_local global i64 0, align 8
@NAME = common dso_local global i64 0, align 8
@STYLE = common dso_local global i64 0, align 8
@SIZE = common dso_local global i64 0, align 8
@wild = common dso_local global i8* null, align 8
@VIM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid font specification\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"&Dismiss\00", align 1
@FALSE = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"no specific match\00", align 1
@XmNlabelString = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_10__*, %struct.TYPE_9__*, i32)* @do_choice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_choice(i64 %0, %struct.TYPE_10__* %1, %struct.TYPE_9__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @XmSTRING_DEFAULT_CHARSET, align 4
  %20 = call i32 @XmStringGetLtoR(i32 %18, i32 %19, i8** %10)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i8**, i8*** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %4
  %30 = load i8*, i8** %10, align 8
  %31 = call i8* @XtNewString(i8* %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i8**, i8*** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  store i8* %31, i8** %37, align 8
  br label %91

38:                                               ; preds = %4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i8**, i8*** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i64 @strcmp(i8* %45, i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %73, label %49

49:                                               ; preds = %38
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @XtFree(i8* %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i8**, i8*** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  store i8* null, i8** %63, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %49
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @XmListDeselectItem(i64 %67, i32 %70)
  br label %72

72:                                               ; preds = %66, %49
  br label %90

73:                                               ; preds = %38
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i8**, i8*** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @XtFree(i8* %80)
  %82 = load i8*, i8** %10, align 8
  %83 = call i8* @XtNewString(i8* %82)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i8**, i8*** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  store i8* %83, i8** %89, align 8
  br label %90

90:                                               ; preds = %73, %72
  br label %91

91:                                               ; preds = %90, %29
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @XtFree(i8* %92)
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %96 = call i32 @fill_lists(i32 %94, %struct.TYPE_10__* %95)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i8**, i8*** %98, align 8
  %100 = load i64, i64* @ENCODING, align 8
  %101 = getelementptr inbounds i8*, i8** %99, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %249

104:                                              ; preds = %91
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i8**, i8*** %106, align 8
  %108 = load i64, i64* @NAME, align 8
  %109 = getelementptr inbounds i8*, i8** %107, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %249

112:                                              ; preds = %104
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i8**, i8*** %114, align 8
  %116 = load i64, i64* @STYLE, align 8
  %117 = getelementptr inbounds i8*, i8** %115, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %249

120:                                              ; preds = %112
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i8**, i8*** %122, align 8
  %124 = load i64, i64* @SIZE, align 8
  %125 = getelementptr inbounds i8*, i8** %123, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %249

128:                                              ; preds = %120
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i8**, i8*** %130, align 8
  %132 = load i64, i64* @ENCODING, align 8
  %133 = getelementptr inbounds i8*, i8** %131, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = load i8*, i8** @wild, align 8
  %136 = call i64 @strcmp(i8* %134, i8* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %249

138:                                              ; preds = %128
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i8**, i8*** %140, align 8
  %142 = load i64, i64* @NAME, align 8
  %143 = getelementptr inbounds i8*, i8** %141, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = load i8*, i8** @wild, align 8
  %146 = call i64 @strcmp(i8* %144, i8* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %249

148:                                              ; preds = %138
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i8**, i8*** %150, align 8
  %152 = load i64, i64* @STYLE, align 8
  %153 = getelementptr inbounds i8*, i8** %151, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = load i8*, i8** @wild, align 8
  %156 = call i64 @strcmp(i8* %154, i8* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %249

158:                                              ; preds = %148
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i8**, i8*** %160, align 8
  %162 = load i64, i64* @SIZE, align 8
  %163 = getelementptr inbounds i8*, i8** %161, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = load i8*, i8** @wild, align 8
  %166 = call i64 @strcmp(i8* %164, i8* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %249

168:                                              ; preds = %158
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @XtFree(i8* %176)
  br label %178

178:                                              ; preds = %173, %168
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  store i8* null, i8** %180, align 8
  store i32 0, i32* %11, align 4
  br label %181

181:                                              ; preds = %219, %178
  %182 = load i32, i32* %11, align 4
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = icmp slt i32 %182, %185
  br i1 %186, label %187, label %222

187:                                              ; preds = %181
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %189 = load i64, i64* @ENCODING, align 8
  %190 = load i32, i32* %11, align 4
  %191 = call i64 @match(%struct.TYPE_10__* %188, i64 %189, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %218

193:                                              ; preds = %187
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %195 = load i64, i64* @NAME, align 8
  %196 = load i32, i32* %11, align 4
  %197 = call i64 @match(%struct.TYPE_10__* %194, i64 %195, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %218

199:                                              ; preds = %193
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %201 = load i64, i64* @STYLE, align 8
  %202 = load i32, i32* %11, align 4
  %203 = call i64 @match(%struct.TYPE_10__* %200, i64 %201, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %218

205:                                              ; preds = %199
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %207 = load i64, i64* @SIZE, align 8
  %208 = load i32, i32* %11, align 4
  %209 = call i64 @match(%struct.TYPE_10__* %206, i64 %207, i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %205
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %213 = load i32, i32* %11, align 4
  %214 = call i8* @fn(%struct.TYPE_10__* %212, i32 %213)
  %215 = call i8* @XtNewString(i8* %214)
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 1
  store i8* %215, i8** %217, align 8
  br label %222

218:                                              ; preds = %205, %199, %193, %187
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %11, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %11, align 4
  br label %181

222:                                              ; preds = %211, %181
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 1
  %225 = load i8*, i8** %224, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %227, label %237

227:                                              ; preds = %222
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @XmTextSetString(i32 %230, i8* %233)
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %236 = call i32 @display_sample(%struct.TYPE_10__* %235)
  br label %247

237:                                              ; preds = %222
  %238 = load i32, i32* @VIM_ERROR, align 4
  %239 = call i8* @_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %240 = bitcast i8* %239 to i32*
  %241 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %242 = bitcast i8* %241 to i32*
  %243 = call i8* @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %244 = bitcast i8* %243 to i32*
  %245 = load i32, i32* @FALSE, align 4
  %246 = call i32 @do_dialog(i32 %238, i32* %240, i32* %242, i32* %244, i32 1, i32* null, i32 %245)
  br label %247

247:                                              ; preds = %237, %227
  %248 = load i32, i32* @True, align 4
  store i32 %248, i32* %5, align 4
  br label %280

249:                                              ; preds = %158, %148, %138, %128, %120, %112, %104, %91
  %250 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i8* %250, i8** %15, align 8
  store i32 0, i32* %12, align 4
  %251 = load i8*, i8** %15, align 8
  %252 = call i32 @XmStringCreateLocalized(i8* %251)
  store i32 %252, i32* %13, align 4
  %253 = load i32, i32* %12, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @XmNlabelString, align 4
  %258 = load i32, i32* %13, align 4
  %259 = call i32 @XtSetArg(i32 %256, i32 %257, i32 %258)
  %260 = load i32, i32* %12, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %12, align 4
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 8
  %265 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %266 = load i32, i32* %12, align 4
  %267 = call i32 @XtSetValues(i32 %264, i32* %265, i32 %266)
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @apply_fontlist(i32 %270)
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = load i8*, i8** %15, align 8
  %276 = call i32 @XmTextSetString(i32 %274, i8* %275)
  %277 = load i32, i32* %13, align 4
  %278 = call i32 @XmStringFree(i32 %277)
  %279 = load i32, i32* @False, align 4
  store i32 %279, i32* %5, align 4
  br label %280

280:                                              ; preds = %249, %247
  %281 = load i32, i32* %5, align 4
  ret i32 %281
}

declare dso_local i32 @XmStringGetLtoR(i32, i32, i8**) #1

declare dso_local i8* @XtNewString(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @XtFree(i8*) #1

declare dso_local i32 @XmListDeselectItem(i64, i32) #1

declare dso_local i32 @fill_lists(i32, %struct.TYPE_10__*) #1

declare dso_local i64 @match(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i8* @fn(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @XmTextSetString(i32, i8*) #1

declare dso_local i32 @display_sample(%struct.TYPE_10__*) #1

declare dso_local i32 @do_dialog(i32, i32*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @XmStringCreateLocalized(i8*) #1

declare dso_local i32 @XtSetArg(i32, i32, i32) #1

declare dso_local i32 @XtSetValues(i32, i32*, i32) #1

declare dso_local i32 @apply_fontlist(i32) #1

declare dso_local i32 @XmStringFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
