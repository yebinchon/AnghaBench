; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/extr_pcre2_convert.c_convert_glob_parse_range.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/extr_pcre2_convert.c_convert_glob_parse_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64* }

@FALSE = common dso_local global i64 0, align 8
@PCRE2_ERROR_MISSING_SQUARE_BRACKET = common dso_local global i32 0, align 4
@CHAR_EXCLAMATION_MARK = common dso_local global i64 0, align 8
@CHAR_CIRCUMFLEX_ACCENT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@CHAR_LEFT_SQUARE_BRACKET = common dso_local global i64 0, align 8
@CHAR_BACKSLASH = common dso_local global i64 0, align 8
@CHAR_RIGHT_SQUARE_BRACKET = common dso_local global i64 0, align 8
@CHAR_LEFT_PARENTHESIS = common dso_local global i64 0, align 8
@CHAR_QUESTION_MARK = common dso_local global i64 0, align 8
@CHAR_LESS_THAN_SIGN = common dso_local global i64 0, align 8
@CHAR_RIGHT_PARENTHESIS = common dso_local global i64 0, align 8
@CHAR_COLON = common dso_local global i64 0, align 8
@CHAR_MINUS = common dso_local global i64 0, align 8
@PCRE2_ERROR_CONVERT_SYNTAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64**, i64*, %struct.TYPE_7__*, i64, i64, i64, i64, i64)* @convert_glob_parse_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_glob_parse_range(i64** %0, i64* %1, %struct.TYPE_7__* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i64** %0, i64*** %10, align 8
  store i64* %1, i64** %11, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %18, align 8
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %19, align 8
  %29 = load i64**, i64*** %10, align 8
  %30 = load i64*, i64** %29, align 8
  store i64* %30, i64** %21, align 8
  store i64* null, i64** %22, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load i64*, i64** %21, align 8
  %33 = load i64*, i64** %11, align 8
  %34 = icmp uge i64* %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %8
  %36 = load i64*, i64** %21, align 8
  %37 = load i64**, i64*** %10, align 8
  store i64* %36, i64** %37, align 8
  %38 = load i32, i32* @PCRE2_ERROR_MISSING_SQUARE_BRACKET, align 4
  store i32 %38, i32* %9, align 4
  br label %355

39:                                               ; preds = %8
  %40 = load i64*, i64** %21, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CHAR_EXCLAMATION_MARK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i64*, i64** %21, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CHAR_CIRCUMFLEX_ACCENT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %99

49:                                               ; preds = %44, %39
  %50 = load i64*, i64** %21, align 8
  %51 = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %51, i64** %21, align 8
  %52 = load i64*, i64** %21, align 8
  %53 = load i64*, i64** %11, align 8
  %54 = icmp uge i64* %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i64*, i64** %21, align 8
  %57 = load i64**, i64*** %10, align 8
  store i64* %56, i64** %57, align 8
  %58 = load i32, i32* @PCRE2_ERROR_MISSING_SQUARE_BRACKET, align 4
  store i32 %58, i32* %9, align 4
  br label %355

59:                                               ; preds = %49
  %60 = load i64, i64* @TRUE, align 8
  store i64 %60, i64* %18, align 8
  %61 = load i64, i64* @CHAR_LEFT_SQUARE_BRACKET, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  store i64 %61, i64* %65, align 8
  %66 = load i64, i64* @CHAR_CIRCUMFLEX_ACCENT, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  store i64 %66, i64* %70, align 8
  store i32 2, i32* %25, align 4
  %71 = load i64, i64* %17, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %94, label %73

73:                                               ; preds = %59
  %74 = load i64, i64* %15, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load i64, i64* @CHAR_BACKSLASH, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %25, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  store i64 %77, i64* %83, align 8
  %84 = load i32, i32* %25, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %25, align 4
  br label %86

86:                                               ; preds = %76, %73
  %87 = load i64, i64* %14, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %25, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  store i64 %87, i64* %93, align 8
  br label %94

94:                                               ; preds = %86, %59
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %96 = load i32, i32* %25, align 4
  %97 = add nsw i32 %96, 1
  %98 = call i32 @convert_glob_write_str(%struct.TYPE_7__* %95, i32 %97)
  br label %103

99:                                               ; preds = %44
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %101 = load i64, i64* @CHAR_LEFT_SQUARE_BRACKET, align 8
  %102 = call i32 @convert_glob_write(%struct.TYPE_7__* %100, i64 %101)
  br label %103

103:                                              ; preds = %99, %94
  %104 = load i64, i64* @FALSE, align 8
  store i64 %104, i64* %20, align 8
  store i64 0, i64* %24, align 8
  %105 = load i64*, i64** %21, align 8
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @CHAR_RIGHT_SQUARE_BRACKET, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %126

109:                                              ; preds = %103
  %110 = load i64, i64* @CHAR_BACKSLASH, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 0
  store i64 %110, i64* %114, align 8
  %115 = load i64, i64* @CHAR_RIGHT_SQUARE_BRACKET, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 1
  store i64 %115, i64* %119, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %121 = call i32 @convert_glob_write_str(%struct.TYPE_7__* %120, i32 2)
  %122 = load i64, i64* @TRUE, align 8
  store i64 %122, i64* %20, align 8
  %123 = load i64, i64* @CHAR_RIGHT_SQUARE_BRACKET, align 8
  store i64 %123, i64* %24, align 8
  %124 = load i64*, i64** %21, align 8
  %125 = getelementptr inbounds i64, i64* %124, i32 1
  store i64* %125, i64** %21, align 8
  br label %126

126:                                              ; preds = %109, %103
  br label %127

127:                                              ; preds = %350, %220, %126
  %128 = load i64*, i64** %21, align 8
  %129 = load i64*, i64** %11, align 8
  %130 = icmp ult i64* %128, %129
  br i1 %130, label %131, label %351

131:                                              ; preds = %127
  %132 = load i64*, i64** %21, align 8
  store i64* %132, i64** %22, align 8
  %133 = load i64, i64* %23, align 8
  %134 = load i64*, i64** %21, align 8
  %135 = call i32 @GETCHARINCTEST(i64 %133, i64* %134)
  %136 = load i64, i64* %23, align 8
  %137 = load i64, i64* @CHAR_RIGHT_SQUARE_BRACKET, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %184

139:                                              ; preds = %131
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %141 = load i64, i64* %23, align 8
  %142 = call i32 @convert_glob_write(%struct.TYPE_7__* %140, i64 %141)
  %143 = load i64, i64* %18, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %181, label %145

145:                                              ; preds = %139
  %146 = load i64, i64* %17, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %181, label %148

148:                                              ; preds = %145
  %149 = load i64, i64* %19, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %181

151:                                              ; preds = %148
  %152 = load i64, i64* @CHAR_LEFT_PARENTHESIS, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 0
  store i64 %152, i64* %156, align 8
  %157 = load i64, i64* @CHAR_QUESTION_MARK, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i64*, i64** %159, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 1
  store i64 %157, i64* %161, align 8
  %162 = load i64, i64* @CHAR_LESS_THAN_SIGN, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 2
  store i64 %162, i64* %166, align 8
  %167 = load i64, i64* @CHAR_EXCLAMATION_MARK, align 8
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i64*, i64** %169, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 3
  store i64 %167, i64* %171, align 8
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %173 = call i32 @convert_glob_write_str(%struct.TYPE_7__* %172, i32 4)
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %175 = load i64, i64* %14, align 8
  %176 = load i64, i64* %15, align 8
  %177 = call i32 @convert_glob_print_separator(%struct.TYPE_7__* %174, i64 %175, i64 %176)
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %179 = load i64, i64* @CHAR_RIGHT_PARENTHESIS, align 8
  %180 = call i32 @convert_glob_write(%struct.TYPE_7__* %178, i64 %179)
  br label %181

181:                                              ; preds = %151, %148, %145, %139
  %182 = load i64*, i64** %21, align 8
  %183 = load i64**, i64*** %10, align 8
  store i64* %182, i64** %183, align 8
  store i32 0, i32* %9, align 4
  br label %355

184:                                              ; preds = %131
  %185 = load i64*, i64** %21, align 8
  %186 = load i64*, i64** %11, align 8
  %187 = icmp uge i64* %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %184
  br label %351

189:                                              ; preds = %184
  %190 = load i64, i64* %23, align 8
  %191 = load i64, i64* @CHAR_LEFT_SQUARE_BRACKET, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %222

193:                                              ; preds = %189
  %194 = load i64*, i64** %21, align 8
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @CHAR_COLON, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %222

198:                                              ; preds = %193
  %199 = load i64*, i64** %21, align 8
  %200 = load i64**, i64*** %10, align 8
  store i64* %199, i64** %200, align 8
  %201 = load i64**, i64*** %10, align 8
  %202 = load i64*, i64** %11, align 8
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %204 = call i32 @convert_glob_parse_class(i64** %201, i64* %202, %struct.TYPE_7__* %203)
  store i32 %204, i32* %26, align 4
  %205 = load i32, i32* %26, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %221

207:                                              ; preds = %198
  %208 = load i64**, i64*** %10, align 8
  %209 = load i64*, i64** %208, align 8
  store i64* %209, i64** %21, align 8
  %210 = load i64, i64* @FALSE, align 8
  store i64 %210, i64* %20, align 8
  store i64 0, i64* %24, align 8
  %211 = load i64, i64* %18, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %220, label %213

213:                                              ; preds = %207
  %214 = load i32, i32* %26, align 4
  %215 = load i64, i64* %14, align 8
  %216 = call i64 @convert_glob_char_in_class(i32 %214, i64 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %213
  %219 = load i64, i64* @TRUE, align 8
  store i64 %219, i64* %19, align 8
  br label %220

220:                                              ; preds = %218, %213, %207
  br label %127

221:                                              ; preds = %198
  br label %313

222:                                              ; preds = %193, %189
  %223 = load i64, i64* %23, align 8
  %224 = load i64, i64* @CHAR_MINUS, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %292

226:                                              ; preds = %222
  %227 = load i64, i64* %20, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %292

229:                                              ; preds = %226
  %230 = load i64*, i64** %21, align 8
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @CHAR_RIGHT_SQUARE_BRACKET, align 8
  %233 = icmp ne i64 %231, %232
  br i1 %233, label %234, label %292

234:                                              ; preds = %229
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %236 = load i64, i64* @CHAR_MINUS, align 8
  %237 = call i32 @convert_glob_write(%struct.TYPE_7__* %235, i64 %236)
  %238 = load i64*, i64** %21, align 8
  store i64* %238, i64** %22, align 8
  %239 = load i64, i64* %23, align 8
  %240 = load i64*, i64** %21, align 8
  %241 = call i32 @GETCHARINCTEST(i64 %239, i64* %240)
  %242 = load i64*, i64** %21, align 8
  %243 = load i64*, i64** %11, align 8
  %244 = icmp uge i64* %242, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %234
  br label %351

246:                                              ; preds = %234
  %247 = load i64, i64* %16, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %258

249:                                              ; preds = %246
  %250 = load i64, i64* %23, align 8
  %251 = load i64, i64* %16, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %258

253:                                              ; preds = %249
  %254 = load i64*, i64** %21, align 8
  store i64* %254, i64** %22, align 8
  %255 = load i64, i64* %23, align 8
  %256 = load i64*, i64** %21, align 8
  %257 = call i32 @GETCHARINCTEST(i64 %255, i64* %256)
  br label %272

258:                                              ; preds = %249, %246
  %259 = load i64, i64* %23, align 8
  %260 = load i64, i64* @CHAR_LEFT_SQUARE_BRACKET, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %271

262:                                              ; preds = %258
  %263 = load i64*, i64** %21, align 8
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @CHAR_COLON, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %271

267:                                              ; preds = %262
  %268 = load i64*, i64** %21, align 8
  %269 = load i64**, i64*** %10, align 8
  store i64* %268, i64** %269, align 8
  %270 = load i32, i32* @PCRE2_ERROR_CONVERT_SYNTAX, align 4
  store i32 %270, i32* %9, align 4
  br label %355

271:                                              ; preds = %262, %258
  br label %272

272:                                              ; preds = %271, %253
  %273 = load i64, i64* %24, align 8
  %274 = load i64, i64* %23, align 8
  %275 = icmp sgt i64 %273, %274
  br i1 %275, label %276, label %280

276:                                              ; preds = %272
  %277 = load i64*, i64** %21, align 8
  %278 = load i64**, i64*** %10, align 8
  store i64* %277, i64** %278, align 8
  %279 = load i32, i32* @PCRE2_ERROR_CONVERT_SYNTAX, align 4
  store i32 %279, i32* %9, align 4
  br label %355

280:                                              ; preds = %272
  %281 = load i64, i64* %24, align 8
  %282 = load i64, i64* %14, align 8
  %283 = icmp slt i64 %281, %282
  br i1 %283, label %284, label %290

284:                                              ; preds = %280
  %285 = load i64, i64* %14, align 8
  %286 = load i64, i64* %23, align 8
  %287 = icmp slt i64 %285, %286
  br i1 %287, label %288, label %290

288:                                              ; preds = %284
  %289 = load i64, i64* @TRUE, align 8
  store i64 %289, i64* %19, align 8
  br label %290

290:                                              ; preds = %288, %284, %280
  %291 = load i64, i64* @FALSE, align 8
  store i64 %291, i64* %20, align 8
  store i64 0, i64* %24, align 8
  br label %312

292:                                              ; preds = %229, %226, %222
  %293 = load i64, i64* %16, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %309

295:                                              ; preds = %292
  %296 = load i64, i64* %23, align 8
  %297 = load i64, i64* %16, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %309

299:                                              ; preds = %295
  %300 = load i64*, i64** %21, align 8
  store i64* %300, i64** %22, align 8
  %301 = load i64, i64* %23, align 8
  %302 = load i64*, i64** %21, align 8
  %303 = call i32 @GETCHARINCTEST(i64 %301, i64* %302)
  %304 = load i64*, i64** %21, align 8
  %305 = load i64*, i64** %11, align 8
  %306 = icmp uge i64* %304, %305
  br i1 %306, label %307, label %308

307:                                              ; preds = %299
  br label %351

308:                                              ; preds = %299
  br label %309

309:                                              ; preds = %308, %295, %292
  %310 = load i64, i64* @TRUE, align 8
  store i64 %310, i64* %20, align 8
  %311 = load i64, i64* %23, align 8
  store i64 %311, i64* %24, align 8
  br label %312

312:                                              ; preds = %309, %290
  br label %313

313:                                              ; preds = %312, %221
  %314 = load i64, i64* %23, align 8
  %315 = load i64, i64* @CHAR_LEFT_SQUARE_BRACKET, align 8
  %316 = icmp eq i64 %314, %315
  br i1 %316, label %329, label %317

317:                                              ; preds = %313
  %318 = load i64, i64* %23, align 8
  %319 = load i64, i64* @CHAR_RIGHT_SQUARE_BRACKET, align 8
  %320 = icmp eq i64 %318, %319
  br i1 %320, label %329, label %321

321:                                              ; preds = %317
  %322 = load i64, i64* %23, align 8
  %323 = load i64, i64* @CHAR_BACKSLASH, align 8
  %324 = icmp eq i64 %322, %323
  br i1 %324, label %329, label %325

325:                                              ; preds = %321
  %326 = load i64, i64* %23, align 8
  %327 = load i64, i64* @CHAR_MINUS, align 8
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %329, label %333

329:                                              ; preds = %325, %321, %317, %313
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %331 = load i64, i64* @CHAR_BACKSLASH, align 8
  %332 = call i32 @convert_glob_write(%struct.TYPE_7__* %330, i64 %331)
  br label %333

333:                                              ; preds = %329, %325
  %334 = load i64, i64* %23, align 8
  %335 = load i64, i64* %14, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %339

337:                                              ; preds = %333
  %338 = load i64, i64* @TRUE, align 8
  store i64 %338, i64* %19, align 8
  br label %339

339:                                              ; preds = %337, %333
  br label %340

340:                                              ; preds = %346, %339
  %341 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %342 = load i64*, i64** %22, align 8
  %343 = getelementptr inbounds i64, i64* %342, i32 1
  store i64* %343, i64** %22, align 8
  %344 = load i64, i64* %342, align 8
  %345 = call i32 @convert_glob_write(%struct.TYPE_7__* %341, i64 %344)
  br label %346

346:                                              ; preds = %340
  %347 = load i64*, i64** %22, align 8
  %348 = load i64*, i64** %21, align 8
  %349 = icmp ult i64* %347, %348
  br i1 %349, label %340, label %350

350:                                              ; preds = %346
  br label %127

351:                                              ; preds = %307, %245, %188, %127
  %352 = load i64*, i64** %21, align 8
  %353 = load i64**, i64*** %10, align 8
  store i64* %352, i64** %353, align 8
  %354 = load i32, i32* @PCRE2_ERROR_MISSING_SQUARE_BRACKET, align 4
  store i32 %354, i32* %9, align 4
  br label %355

355:                                              ; preds = %351, %276, %267, %181, %55, %35
  %356 = load i32, i32* %9, align 4
  ret i32 %356
}

declare dso_local i32 @convert_glob_write_str(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @convert_glob_write(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @GETCHARINCTEST(i64, i64*) #1

declare dso_local i32 @convert_glob_print_separator(%struct.TYPE_7__*, i64, i64) #1

declare dso_local i32 @convert_glob_parse_class(i64**, i64*, %struct.TYPE_7__*) #1

declare dso_local i64 @convert_glob_char_in_class(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
