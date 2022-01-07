; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_load.c_lex_scan_string.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_load.c_lex_scan_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i32 }
%struct.TYPE_13__ = type { i64 }

@TOKEN_INVALID = common dso_local global i32 0, align 4
@STREAM_STATE_ERROR = common dso_local global i32 0, align 4
@STREAM_STATE_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"premature end of input\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"unexpected newline\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"control character 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"invalid escape\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"invalid Unicode escape '%.6s'\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"invalid Unicode '\\u%04X\\u%04X'\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"invalid Unicode '\\u%04X'\00", align 1
@TOKEN_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32*)* @lex_scan_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lex_scan_string(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i8* null, i8** %15, align 8
  %16 = load i32, i32* @TOKEN_INVALID, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @lex_get_save(%struct.TYPE_12__* %19, i32* %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %133, %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 34
  br i1 %24, label %25, label %134

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @STREAM_STATE_ERROR, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %317

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @STREAM_STATE_EOF, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = call i32 (i32*, %struct.TYPE_12__*, i8*, ...) @error_set(i32* %35, %struct.TYPE_12__* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %317

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4
  %40 = icmp sle i32 0, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = icmp sle i32 %42, 31
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @lex_unget_unsave(%struct.TYPE_12__* %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 10
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = call i32 (i32*, %struct.TYPE_12__*, i8*, ...) @error_set(i32* %51, %struct.TYPE_12__* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %59

54:                                               ; preds = %44
  %55 = load i32*, i32** %4, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 (i32*, %struct.TYPE_12__*, i8*, ...) @error_set(i32* %55, %struct.TYPE_12__* %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %54, %50
  br label %317

60:                                               ; preds = %41, %38
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 92
  br i1 %62, label %63, label %126

63:                                               ; preds = %60
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @lex_get_save(%struct.TYPE_12__* %64, i32* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %67, 117
  br i1 %68, label %69, label %92

69:                                               ; preds = %63
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @lex_get_save(%struct.TYPE_12__* %70, i32* %71)
  store i32 %72, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %88, %69
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 4
  br i1 %75, label %76, label %91

76:                                               ; preds = %73
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @l_isxdigit(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i32*, i32** %4, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %83 = call i32 (i32*, %struct.TYPE_12__*, i8*, ...) @error_set(i32* %81, %struct.TYPE_12__* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %317

84:                                               ; preds = %76
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @lex_get_save(%struct.TYPE_12__* %85, i32* %86)
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %73

91:                                               ; preds = %73
  br label %125

92:                                               ; preds = %63
  %93 = load i32, i32* %5, align 4
  %94 = icmp eq i32 %93, 34
  br i1 %94, label %116, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %5, align 4
  %97 = icmp eq i32 %96, 92
  br i1 %97, label %116, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %5, align 4
  %100 = icmp eq i32 %99, 47
  br i1 %100, label %116, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %5, align 4
  %103 = icmp eq i32 %102, 98
  br i1 %103, label %116, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %5, align 4
  %106 = icmp eq i32 %105, 102
  br i1 %106, label %116, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %5, align 4
  %109 = icmp eq i32 %108, 110
  br i1 %109, label %116, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %5, align 4
  %112 = icmp eq i32 %111, 114
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %5, align 4
  %115 = icmp eq i32 %114, 116
  br i1 %115, label %116, label %120

116:                                              ; preds = %113, %110, %107, %104, %101, %98, %95, %92
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 @lex_get_save(%struct.TYPE_12__* %117, i32* %118)
  store i32 %119, i32* %5, align 4
  br label %124

120:                                              ; preds = %113
  %121 = load i32*, i32** %4, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %123 = call i32 (i32*, %struct.TYPE_12__*, i8*, ...) @error_set(i32* %121, %struct.TYPE_12__* %122, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %317

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %91
  br label %130

126:                                              ; preds = %60
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %128 = load i32*, i32** %4, align 8
  %129 = call i32 @lex_get_save(%struct.TYPE_12__* %127, i32* %128)
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %126, %125
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %132
  br label %22

134:                                              ; preds = %22
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, 1
  %140 = call i8* @jsonp_malloc(i64 %139)
  store i8* %140, i8** %7, align 8
  %141 = load i8*, i8** %7, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %134
  br label %317

144:                                              ; preds = %134
  %145 = load i8*, i8** %7, align 8
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  store i8* %145, i8** %149, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 2
  %152 = call i8* @strbuffer_value(%struct.TYPE_13__* %151)
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  store i8* %153, i8** %6, align 8
  br label %154

154:                                              ; preds = %297, %144
  %155 = load i8*, i8** %6, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 34
  br i1 %158, label %159, label %298

159:                                              ; preds = %154
  %160 = load i8*, i8** %6, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 92
  br i1 %163, label %164, label %291

164:                                              ; preds = %159
  %165 = load i8*, i8** %6, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %6, align 8
  %167 = load i8*, i8** %6, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 117
  br i1 %170, label %171, label %265

171:                                              ; preds = %164
  %172 = load i8*, i8** %6, align 8
  %173 = call i32 @decode_unicode_escape(i8* %172)
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %171
  %177 = load i32*, i32** %4, align 8
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %179 = load i8*, i8** %6, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 -1
  %181 = call i32 (i32*, %struct.TYPE_12__*, i8*, ...) @error_set(i32* %177, %struct.TYPE_12__* %178, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %180)
  br label %317

182:                                              ; preds = %171
  %183 = load i8*, i8** %6, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 5
  store i8* %184, i8** %6, align 8
  %185 = load i32, i32* %10, align 4
  %186 = icmp sle i32 55296, %185
  br i1 %186, label %187, label %242

187:                                              ; preds = %182
  %188 = load i32, i32* %10, align 4
  %189 = icmp sle i32 %188, 56319
  br i1 %189, label %190, label %242

190:                                              ; preds = %187
  %191 = load i8*, i8** %6, align 8
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 92
  br i1 %194, label %195, label %236

195:                                              ; preds = %190
  %196 = load i8*, i8** %6, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 1
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 117
  br i1 %200, label %201, label %236

201:                                              ; preds = %195
  %202 = load i8*, i8** %6, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %6, align 8
  %204 = call i32 @decode_unicode_escape(i8* %203)
  store i32 %204, i32* %11, align 4
  %205 = load i32, i32* %11, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %201
  %208 = load i32*, i32** %4, align 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %210 = load i8*, i8** %6, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 -1
  %212 = call i32 (i32*, %struct.TYPE_12__*, i8*, ...) @error_set(i32* %208, %struct.TYPE_12__* %209, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %211)
  br label %317

213:                                              ; preds = %201
  %214 = load i8*, i8** %6, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 5
  store i8* %215, i8** %6, align 8
  %216 = load i32, i32* %11, align 4
  %217 = icmp sle i32 56320, %216
  br i1 %217, label %218, label %229

218:                                              ; preds = %213
  %219 = load i32, i32* %11, align 4
  %220 = icmp sle i32 %219, 57343
  br i1 %220, label %221, label %229

221:                                              ; preds = %218
  %222 = load i32, i32* %10, align 4
  %223 = sub nsw i32 %222, 55296
  %224 = shl i32 %223, 10
  %225 = load i32, i32* %11, align 4
  %226 = sub nsw i32 %225, 56320
  %227 = add nsw i32 %224, %226
  %228 = add nsw i32 %227, 65536
  store i32 %228, i32* %10, align 4
  br label %235

229:                                              ; preds = %218, %213
  %230 = load i32*, i32** %4, align 8
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %232 = load i32, i32* %10, align 4
  %233 = load i32, i32* %11, align 4
  %234 = call i32 (i32*, %struct.TYPE_12__*, i8*, ...) @error_set(i32* %230, %struct.TYPE_12__* %231, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %232, i32 %233)
  br label %317

235:                                              ; preds = %221
  br label %241

236:                                              ; preds = %195, %190
  %237 = load i32*, i32** %4, align 8
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %239 = load i32, i32* %10, align 4
  %240 = call i32 (i32*, %struct.TYPE_12__*, i8*, ...) @error_set(i32* %237, %struct.TYPE_12__* %238, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %239)
  br label %317

241:                                              ; preds = %235
  br label %254

242:                                              ; preds = %187, %182
  %243 = load i32, i32* %10, align 4
  %244 = icmp sle i32 56320, %243
  br i1 %244, label %245, label %253

245:                                              ; preds = %242
  %246 = load i32, i32* %10, align 4
  %247 = icmp sle i32 %246, 57343
  br i1 %247, label %248, label %253

248:                                              ; preds = %245
  %249 = load i32*, i32** %4, align 8
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %251 = load i32, i32* %10, align 4
  %252 = call i32 (i32*, %struct.TYPE_12__*, i8*, ...) @error_set(i32* %249, %struct.TYPE_12__* %250, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %251)
  br label %317

253:                                              ; preds = %245, %242
  br label %254

254:                                              ; preds = %253, %241
  %255 = load i32, i32* %10, align 4
  %256 = load i8*, i8** %7, align 8
  %257 = call i64 @utf8_encode(i32 %255, i8* %256, i64* %9)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %254
  %260 = call i32 @assert(i32 0)
  br label %261

261:                                              ; preds = %259, %254
  %262 = load i64, i64* %9, align 8
  %263 = load i8*, i8** %7, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 %262
  store i8* %264, i8** %7, align 8
  br label %290

265:                                              ; preds = %164
  %266 = load i8*, i8** %6, align 8
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  switch i32 %268, label %283 [
    i32 34, label %269
    i32 92, label %269
    i32 47, label %269
    i32 98, label %273
    i32 102, label %275
    i32 110, label %277
    i32 114, label %279
    i32 116, label %281
  ]

269:                                              ; preds = %265, %265, %265
  %270 = load i8*, i8** %6, align 8
  %271 = load i8, i8* %270, align 1
  %272 = load i8*, i8** %7, align 8
  store i8 %271, i8* %272, align 1
  br label %285

273:                                              ; preds = %265
  %274 = load i8*, i8** %7, align 8
  store i8 8, i8* %274, align 1
  br label %285

275:                                              ; preds = %265
  %276 = load i8*, i8** %7, align 8
  store i8 12, i8* %276, align 1
  br label %285

277:                                              ; preds = %265
  %278 = load i8*, i8** %7, align 8
  store i8 10, i8* %278, align 1
  br label %285

279:                                              ; preds = %265
  %280 = load i8*, i8** %7, align 8
  store i8 13, i8* %280, align 1
  br label %285

281:                                              ; preds = %265
  %282 = load i8*, i8** %7, align 8
  store i8 9, i8* %282, align 1
  br label %285

283:                                              ; preds = %265
  %284 = call i32 @assert(i32 0)
  br label %285

285:                                              ; preds = %283, %281, %279, %277, %275, %273, %269
  %286 = load i8*, i8** %7, align 8
  %287 = getelementptr inbounds i8, i8* %286, i32 1
  store i8* %287, i8** %7, align 8
  %288 = load i8*, i8** %6, align 8
  %289 = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %289, i8** %6, align 8
  br label %290

290:                                              ; preds = %285, %261
  br label %297

291:                                              ; preds = %159
  %292 = load i8*, i8** %6, align 8
  %293 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %293, i8** %6, align 8
  %294 = load i8, i8* %292, align 1
  %295 = load i8*, i8** %7, align 8
  %296 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %296, i8** %7, align 8
  store i8 %294, i8* %295, align 1
  br label %297

297:                                              ; preds = %291, %290
  br label %154

298:                                              ; preds = %154
  %299 = load i8*, i8** %7, align 8
  store i8 0, i8* %299, align 1
  %300 = load i8*, i8** %7, align 8
  %301 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 0
  %305 = load i8*, i8** %304, align 8
  %306 = ptrtoint i8* %300 to i64
  %307 = ptrtoint i8* %305 to i64
  %308 = sub i64 %306, %307
  %309 = trunc i64 %308 to i32
  %310 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 1
  store i32 %309, i32* %313, align 8
  %314 = load i32, i32* @TOKEN_STRING, align 4
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 0
  store i32 %314, i32* %316, align 8
  br label %320

317:                                              ; preds = %248, %236, %229, %207, %176, %143, %120, %80, %59, %34, %29
  %318 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %319 = call i32 @lex_free_string(%struct.TYPE_12__* %318)
  br label %320

320:                                              ; preds = %317, %298
  ret void
}

declare dso_local i32 @lex_get_save(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @error_set(i32*, %struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32 @lex_unget_unsave(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @l_isxdigit(i32) #1

declare dso_local i8* @jsonp_malloc(i64) #1

declare dso_local i8* @strbuffer_value(%struct.TYPE_13__*) #1

declare dso_local i32 @decode_unicode_escape(i8*) #1

declare dso_local i64 @utf8_encode(i32, i8*, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lex_free_string(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
