; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_buffer.c_maketitle.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_buffer.c_maketitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, i32 }

@IOSIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@need_maketitle = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@p_title = common dso_local global i64 0, align 8
@p_icon = common dso_local global i64 0, align 8
@lasttitle = common dso_local global i32* null, align 8
@lasticon = common dso_local global i32* null, align 8
@p_titlelen = common dso_local global i32 0, align 4
@Columns = common dso_local global i32 0, align 4
@p_titlestring = common dso_local global i64* null, align 8
@NUL = common dso_local global i64 0, align 8
@curbuf = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"[No Name]\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" +\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" =\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" =+\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" -\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" -+\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c")\00", align 1
@curwin = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c" - VIM\00", align 1
@p_iconstring = common dso_local global i64* null, align 8
@OPT_FREE = common dso_local global i32 0, align 4
@SID_ERROR = common dso_local global i32 0, align 4
@SPACE_FOR_ARGNR = common dso_local global i32 0, align 4
@SPACE_FOR_DIR = common dso_local global i32 0, align 4
@SPACE_FOR_FNAME = common dso_local global i64 0, align 8
@STL_IN_ICON = common dso_local global i32 0, align 4
@STL_IN_TITLE = common dso_local global i32 0, align 4
@called_emsg = common dso_local global i32 0, align 4
@has_mbyte = common dso_local global i64 0, align 8
@serverName = common dso_local global i32* null, align 8
@stl_syntax = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @maketitle() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* null, i8** %2, align 8
  store i8* null, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* @IOSIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = call i32 (...) @redrawing()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %0
  %19 = load i8*, i8** @TRUE, align 8
  store i8* %19, i8** @need_maketitle, align 8
  store i32 1, i32* %11, align 4
  br label %276

20:                                               ; preds = %0
  %21 = load i8*, i8** @FALSE, align 8
  store i8* %21, i8** @need_maketitle, align 8
  %22 = load i64, i64* @p_title, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* @p_icon, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load i32*, i32** @lasttitle, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32*, i32** @lasticon, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1, i32* %11, align 4
  br label %276

34:                                               ; preds = %30, %27, %24, %20
  %35 = load i64, i64* @p_title, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %217

37:                                               ; preds = %34
  %38 = load i32, i32* @p_titlelen, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32, i32* @p_titlelen, align 4
  %42 = load i32, i32* @Columns, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sdiv i32 %43, 100
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 10
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 10, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %40
  br label %49

49:                                               ; preds = %48, %37
  store i8* %15, i8** %2, align 8
  %50 = load i64*, i64** @p_titlestring, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NUL, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i64*, i64** @p_titlestring, align 8
  %56 = bitcast i64* %55 to i8*
  store i8* %56, i8** %2, align 8
  br label %216

57:                                               ; preds = %49
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curbuf, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = call i64 @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %64 = inttoptr i64 %63 to i8*
  %65 = load i32, i32* @IOSIZE, align 4
  %66 = sub nsw i32 %65, 100
  %67 = sext i32 %66 to i64
  %68 = call i32 @vim_strncpy(i8* %15, i8* %64, i64 %67)
  br label %82

69:                                               ; preds = %57
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curbuf, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = call i8* @gettail(i32* %72)
  %74 = call i8* @transstr(i8* %73)
  store i8* %74, i8** %1, align 8
  %75 = load i8*, i8** %1, align 8
  %76 = load i32, i32* @IOSIZE, align 4
  %77 = sub nsw i32 %76, 100
  %78 = sext i32 %77 to i64
  %79 = call i32 @vim_strncpy(i8* %15, i8* %75, i64 %78)
  %80 = load i8*, i8** %1, align 8
  %81 = call i32 @vim_free(i8* %80)
  br label %82

82:                                               ; preds = %69, %62
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curbuf, align 8
  %84 = call i32 @bufIsChanged(%struct.TYPE_5__* %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curbuf, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 %87, 2
  %89 = add nsw i32 %84, %88
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curbuf, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = mul nsw i32 %95, 4
  %97 = add nsw i32 %89, %96
  switch i32 %97, label %108 [
    i32 1, label %98
    i32 2, label %100
    i32 3, label %102
    i32 4, label %104
    i32 6, label %104
    i32 5, label %106
    i32 7, label %106
  ]

98:                                               ; preds = %82
  %99 = call i32 @STRCAT(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %108

100:                                              ; preds = %82
  %101 = call i32 @STRCAT(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %108

102:                                              ; preds = %82
  %103 = call i32 @STRCAT(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %108

104:                                              ; preds = %82, %82
  %105 = call i32 @STRCAT(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %108

106:                                              ; preds = %82, %82
  %107 = call i32 @STRCAT(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %108

108:                                              ; preds = %82, %106, %104, %102, %100, %98
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curbuf, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %197

113:                                              ; preds = %108
  %114 = call i64 @STRLEN(i8* %15)
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %15, i64 %118
  store i8 32, i8* %119, align 1
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i8, i8* %15, i64 %122
  store i8 40, i8* %123, align 1
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curbuf, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curbuf, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %15, i64 %129
  %131 = load i32, i32* @IOSIZE, align 4
  %132 = sub nsw i32 %131, 20
  %133 = load i32, i32* %10, align 4
  %134 = sub nsw i32 %132, %133
  %135 = load i8*, i8** @TRUE, align 8
  %136 = call i32 @home_replace(%struct.TYPE_5__* %124, i32* %127, i8* %130, i32 %134, i8* %135)
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %15, i64 %138
  %140 = call i8* @gettail_sep(i8* %139)
  store i8* %140, i8** %1, align 8
  %141 = load i8*, i8** %1, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %15, i64 %143
  %145 = icmp eq i8* %141, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %113
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %15, i64 %148
  %150 = call i64 @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %151 = inttoptr i64 %150 to i8*
  %152 = load i32, i32* @IOSIZE, align 4
  %153 = sub nsw i32 %152, 20
  %154 = load i32, i32* %10, align 4
  %155 = sub nsw i32 %153, %154
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = call i32 @vim_strncpy(i8* %149, i8* %151, i64 %157)
  br label %163

159:                                              ; preds = %113
  %160 = load i64, i64* @NUL, align 8
  %161 = trunc i64 %160 to i8
  %162 = load i8*, i8** %1, align 8
  store i8 %161, i8* %162, align 1
  br label %163

163:                                              ; preds = %159, %146
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* @IOSIZE, align 4
  %166 = sub nsw i32 %165, 20
  %167 = icmp slt i32 %164, %166
  br i1 %167, label %168, label %185

168:                                              ; preds = %163
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %15, i64 %170
  %172 = call i8* @transstr(i8* %171)
  store i8* %172, i8** %1, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %15, i64 %174
  %176 = load i8*, i8** %1, align 8
  %177 = load i32, i32* @IOSIZE, align 4
  %178 = sub nsw i32 %177, 20
  %179 = load i32, i32* %10, align 4
  %180 = sub nsw i32 %178, %179
  %181 = sext i32 %180 to i64
  %182 = call i32 @vim_strncpy(i8* %175, i8* %176, i64 %181)
  %183 = load i8*, i8** %1, align 8
  %184 = call i32 @vim_free(i8* %183)
  br label %195

185:                                              ; preds = %163
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %15, i64 %187
  %189 = load i32, i32* @IOSIZE, align 4
  %190 = sub nsw i32 %189, 10
  %191 = load i32, i32* %10, align 4
  %192 = sub nsw i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = call i32 @vim_strncpy(i8* %188, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i64 %193)
  br label %195

195:                                              ; preds = %185, %168
  %196 = call i32 @STRCAT(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %197

197:                                              ; preds = %195, %108
  %198 = load i32, i32* @curwin, align 4
  %199 = load i32, i32* @IOSIZE, align 4
  %200 = sub nsw i32 %199, 10
  %201 = load i8*, i8** @FALSE, align 8
  %202 = call i32 @append_arg_number(i32 %198, i8* %15, i32 %200, i8* %201)
  %203 = call i32 @STRCAT(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %204 = load i32, i32* %5, align 4
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %215

206:                                              ; preds = %197
  %207 = call i32 @vim_strsize(i8* %15)
  %208 = load i32, i32* %5, align 4
  %209 = icmp sgt i32 %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %206
  %211 = load i32, i32* %5, align 4
  %212 = load i32, i32* @IOSIZE, align 4
  %213 = call i32 @trunc_string(i8* %15, i8* %15, i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %210, %206
  br label %215

215:                                              ; preds = %214, %197
  br label %216

216:                                              ; preds = %215, %54
  br label %217

217:                                              ; preds = %216, %34
  %218 = load i8*, i8** %2, align 8
  %219 = call i32 @ti_change(i8* %218, i32** @lasttitle)
  store i32 %219, i32* %7, align 4
  %220 = load i64, i64* @p_icon, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %266

222:                                              ; preds = %217
  store i8* %15, i8** %4, align 8
  %223 = load i64*, i64** @p_iconstring, align 8
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @NUL, align 8
  %226 = icmp ne i64 %224, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %222
  %228 = load i64*, i64** @p_iconstring, align 8
  %229 = bitcast i64* %228 to i8*
  store i8* %229, i8** %4, align 8
  br label %265

230:                                              ; preds = %222
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curbuf, align 8
  %232 = call i8* @buf_spname(%struct.TYPE_5__* %231)
  %233 = icmp ne i8* %232, null
  br i1 %233, label %234, label %237

234:                                              ; preds = %230
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curbuf, align 8
  %236 = call i8* @buf_spname(%struct.TYPE_5__* %235)
  store i8* %236, i8** %3, align 8
  br label %242

237:                                              ; preds = %230
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curbuf, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = call i8* @gettail(i32* %240)
  store i8* %241, i8** %3, align 8
  br label %242

242:                                              ; preds = %237, %234
  %243 = load i64, i64* @NUL, align 8
  %244 = trunc i64 %243 to i8
  %245 = load i8*, i8** %4, align 8
  store i8 %244, i8* %245, align 1
  %246 = load i8*, i8** %3, align 8
  %247 = call i64 @STRLEN(i8* %246)
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* %6, align 4
  %249 = load i32, i32* %6, align 4
  %250 = icmp sgt i32 %249, 100
  br i1 %250, label %251, label %258

251:                                              ; preds = %242
  %252 = load i32, i32* %6, align 4
  %253 = sub nsw i32 %252, 100
  store i32 %253, i32* %6, align 4
  %254 = load i32, i32* %6, align 4
  %255 = load i8*, i8** %3, align 8
  %256 = sext i32 %254 to i64
  %257 = getelementptr inbounds i8, i8* %255, i64 %256
  store i8* %257, i8** %3, align 8
  br label %258

258:                                              ; preds = %251, %242
  %259 = load i8*, i8** %4, align 8
  %260 = load i8*, i8** %3, align 8
  %261 = call i32 @STRCPY(i8* %259, i8* %260)
  %262 = load i8*, i8** %4, align 8
  %263 = load i32, i32* @IOSIZE, align 4
  %264 = call i32 @trans_characters(i8* %262, i32 %263)
  br label %265

265:                                              ; preds = %258, %227
  br label %266

266:                                              ; preds = %265, %217
  %267 = load i8*, i8** %4, align 8
  %268 = call i32 @ti_change(i8* %267, i32** @lasticon)
  %269 = load i32, i32* %7, align 4
  %270 = or i32 %269, %268
  store i32 %270, i32* %7, align 4
  %271 = load i32, i32* %7, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %266
  %274 = call i32 (...) @resettitle()
  br label %275

275:                                              ; preds = %273, %266
  store i32 0, i32* %11, align 4
  br label %276

276:                                              ; preds = %275, %33, %18
  %277 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %277)
  %278 = load i32, i32* %11, align 4
  switch i32 %278, label %280 [
    i32 0, label %279
    i32 1, label %279
  ]

279:                                              ; preds = %276, %276
  ret void

280:                                              ; preds = %276
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @redrawing(...) #2

declare dso_local i32 @vim_strncpy(i8*, i8*, i64) #2

declare dso_local i64 @_(i8*) #2

declare dso_local i8* @transstr(i8*) #2

declare dso_local i8* @gettail(i32*) #2

declare dso_local i32 @vim_free(i8*) #2

declare dso_local i32 @bufIsChanged(%struct.TYPE_5__*) #2

declare dso_local i32 @STRCAT(i8*, i8*) #2

declare dso_local i64 @STRLEN(i8*) #2

declare dso_local i32 @home_replace(%struct.TYPE_5__*, i32*, i8*, i32, i8*) #2

declare dso_local i8* @gettail_sep(i8*) #2

declare dso_local i32 @append_arg_number(i32, i8*, i32, i8*) #2

declare dso_local i32 @vim_strsize(i8*) #2

declare dso_local i32 @trunc_string(i8*, i8*, i32, i32) #2

declare dso_local i32 @ti_change(i8*, i32**) #2

declare dso_local i8* @buf_spname(%struct.TYPE_5__*) #2

declare dso_local i32 @STRCPY(i8*, i8*) #2

declare dso_local i32 @trans_characters(i8*, i32) #2

declare dso_local i32 @resettitle(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
