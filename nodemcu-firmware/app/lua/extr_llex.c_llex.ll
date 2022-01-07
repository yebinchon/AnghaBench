; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_llex.c_llex.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_llex.c_llex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32* }

@TK_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid long string delimiter\00", align 1
@TK_EQ = common dso_local global i32 0, align 4
@TK_LE = common dso_local global i32 0, align 4
@TK_GE = common dso_local global i32 0, align 4
@TK_NE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@TK_DOTS = common dso_local global i32 0, align 4
@TK_CONCAT = common dso_local global i32 0, align 4
@TK_NUMBER = common dso_local global i32 0, align 4
@TK_EOS = common dso_local global i32 0, align 4
@NUM_RESERVED = common dso_local global i32 0, align 4
@luaX_tokens = common dso_local global i32* null, align 8
@FIRST_RESERVED = common dso_local global i32 0, align 4
@TK_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_20__*)* @llex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llex(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @luaZ_resetbuffer(i32 %13)
  br label %15

15:                                               ; preds = %185, %70, %46, %19, %2
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %178 [
    i32 10, label %19
    i32 13, label %19
    i32 45, label %22
    i32 91, label %71
    i32 61, label %92
    i32 60, label %104
    i32 62, label %116
    i32 126, label %128
    i32 34, label %140
    i32 39, label %140
    i32 46, label %149
    i32 128, label %176
  ]

19:                                               ; preds = %15, %15
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %21 = call i32 @inclinenumber(%struct.TYPE_21__* %20)
  br label %15

22:                                               ; preds = %15
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %24 = call i32 @next(%struct.TYPE_21__* %23)
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 45
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 45, i32* %3, align 4
  br label %286

30:                                               ; preds = %22
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %32 = call i32 @next(%struct.TYPE_21__* %31)
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 91
  br i1 %36, label %37, label %55

37:                                               ; preds = %30
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %39 = call i32 @skip_sep(%struct.TYPE_21__* %38)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @luaZ_resetbuffer(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @read_long_string(%struct.TYPE_21__* %47, %struct.TYPE_20__* null, i32 %48)
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @luaZ_resetbuffer(i32 %52)
  br label %15

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54, %30
  br label %56

56:                                               ; preds = %67, %55
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %58 = call i32 @currIsNewline(%struct.TYPE_21__* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 128
  br label %65

65:                                               ; preds = %60, %56
  %66 = phi i1 [ false, %56 ], [ %64, %60 ]
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %69 = call i32 @next(%struct.TYPE_21__* %68)
  br label %56

70:                                               ; preds = %65
  br label %15

71:                                               ; preds = %15
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %73 = call i32 @skip_sep(%struct.TYPE_21__* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @read_long_string(%struct.TYPE_21__* %77, %struct.TYPE_20__* %78, i32 %79)
  %81 = load i32, i32* @TK_STRING, align 4
  store i32 %81, i32* %3, align 4
  br label %286

82:                                               ; preds = %71
  %83 = load i32, i32* %7, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 91, i32* %3, align 4
  br label %286

86:                                               ; preds = %82
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %88 = load i32, i32* @TK_STRING, align 4
  %89 = call i32 @luaX_lexerror(%struct.TYPE_21__* %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %86
  br label %91

91:                                               ; preds = %90
  br label %92

92:                                               ; preds = %15, %91
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %94 = call i32 @next(%struct.TYPE_21__* %93)
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 61
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  store i32 61, i32* %3, align 4
  br label %286

100:                                              ; preds = %92
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %102 = call i32 @next(%struct.TYPE_21__* %101)
  %103 = load i32, i32* @TK_EQ, align 4
  store i32 %103, i32* %3, align 4
  br label %286

104:                                              ; preds = %15
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %106 = call i32 @next(%struct.TYPE_21__* %105)
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 61
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  store i32 60, i32* %3, align 4
  br label %286

112:                                              ; preds = %104
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %114 = call i32 @next(%struct.TYPE_21__* %113)
  %115 = load i32, i32* @TK_LE, align 4
  store i32 %115, i32* %3, align 4
  br label %286

116:                                              ; preds = %15
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %118 = call i32 @next(%struct.TYPE_21__* %117)
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 61
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  store i32 62, i32* %3, align 4
  br label %286

124:                                              ; preds = %116
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %126 = call i32 @next(%struct.TYPE_21__* %125)
  %127 = load i32, i32* @TK_GE, align 4
  store i32 %127, i32* %3, align 4
  br label %286

128:                                              ; preds = %15
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %130 = call i32 @next(%struct.TYPE_21__* %129)
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 61
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  store i32 126, i32* %3, align 4
  br label %286

136:                                              ; preds = %128
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %138 = call i32 @next(%struct.TYPE_21__* %137)
  %139 = load i32, i32* @TK_NE, align 4
  store i32 %139, i32* %3, align 4
  br label %286

140:                                              ; preds = %15, %15
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = trunc i32 %144 to i8
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %147 = call i32 @read_string(%struct.TYPE_21__* %141, i8 signext %145, %struct.TYPE_20__* %146)
  %148 = load i32, i32* @TK_STRING, align 4
  store i32 %148, i32* %3, align 4
  br label %286

149:                                              ; preds = %15
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %151 = call i32 @save_and_next(%struct.TYPE_21__* %150)
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %153 = call i32 @check_next(%struct.TYPE_21__* %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %149
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %157 = call i32 @check_next(%struct.TYPE_21__* %156, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = load i32, i32* @TK_DOTS, align 4
  store i32 %160, i32* %3, align 4
  br label %286

161:                                              ; preds = %155
  %162 = load i32, i32* @TK_CONCAT, align 4
  store i32 %162, i32* %3, align 4
  br label %286

163:                                              ; preds = %149
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = trunc i32 %166 to i8
  %168 = call i32 @isdigit(i8 signext %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %163
  store i32 46, i32* %3, align 4
  br label %286

171:                                              ; preds = %163
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %174 = call i32 @read_numeral(%struct.TYPE_21__* %172, %struct.TYPE_20__* %173)
  %175 = load i32, i32* @TK_NUMBER, align 4
  store i32 %175, i32* %3, align 4
  br label %286

176:                                              ; preds = %15
  %177 = load i32, i32* @TK_EOS, align 4
  store i32 %177, i32* %3, align 4
  br label %286

178:                                              ; preds = %15
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = trunc i32 %181 to i8
  %183 = call i32 @isspace(i8 signext %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %178
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %187 = call i32 @currIsNewline(%struct.TYPE_21__* %186)
  %188 = icmp ne i32 %187, 0
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i32
  %191 = call i32 @lua_assert(i32 %190)
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %193 = call i32 @next(%struct.TYPE_21__* %192)
  br label %15

194:                                              ; preds = %178
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = trunc i32 %197 to i8
  %199 = call i32 @isdigit(i8 signext %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %194
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %204 = call i32 @read_numeral(%struct.TYPE_21__* %202, %struct.TYPE_20__* %203)
  %205 = load i32, i32* @TK_NUMBER, align 4
  store i32 %205, i32* %3, align 4
  br label %286

206:                                              ; preds = %194
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = trunc i32 %209 to i8
  %211 = call i32 @isalpha(i8 signext %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %218, label %213

213:                                              ; preds = %206
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 95
  br i1 %217, label %218, label %279

218:                                              ; preds = %213, %206
  br label %219

219:                                              ; preds = %234, %218
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %221 = call i32 @save_and_next(%struct.TYPE_21__* %220)
  br label %222

222:                                              ; preds = %219
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = trunc i32 %225 to i8
  %227 = call i32 @isalnum(i8 signext %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %234, label %229

229:                                              ; preds = %222
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %232, 95
  br label %234

234:                                              ; preds = %229, %222
  %235 = phi i1 [ true, %222 ], [ %233, %229 ]
  br i1 %235, label %219, label %236

236:                                              ; preds = %234
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %238 = call i32 @save(%struct.TYPE_21__* %237, i8 signext 0)
  store i32 0, i32* %9, align 4
  br label %239

239:                                              ; preds = %260, %236
  %240 = load i32, i32* %9, align 4
  %241 = load i32, i32* @NUM_RESERVED, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %263

243:                                              ; preds = %239
  %244 = load i32*, i32** @luaX_tokens, align 8
  %245 = load i32, i32* %9, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @luaZ_buffer(i32 %251)
  %253 = call i32 @strcmp(i32 %248, i32 %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %259, label %255

255:                                              ; preds = %243
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* @FIRST_RESERVED, align 4
  %258 = add nsw i32 %256, %257
  store i32 %258, i32* %3, align 4
  br label %286

259:                                              ; preds = %243
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %9, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %9, align 4
  br label %239

263:                                              ; preds = %239
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @luaZ_buffer(i32 %267)
  %269 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @luaZ_bufflen(i32 %271)
  %273 = sub nsw i32 %272, 1
  %274 = call i32* @luaX_newstring(%struct.TYPE_21__* %264, i32 %268, i32 %273)
  store i32* %274, i32** %8, align 8
  %275 = load i32*, i32** %8, align 8
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %276, i32 0, i32 0
  store i32* %275, i32** %277, align 8
  %278 = load i32, i32* @TK_NAME, align 4
  store i32 %278, i32* %3, align 4
  br label %286

279:                                              ; preds = %213
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  store i32 %282, i32* %10, align 4
  %283 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %284 = call i32 @next(%struct.TYPE_21__* %283)
  %285 = load i32, i32* %10, align 4
  store i32 %285, i32* %3, align 4
  br label %286

286:                                              ; preds = %279, %263, %255, %201, %176, %171, %170, %161, %159, %140, %136, %135, %124, %123, %112, %111, %100, %99, %85, %76, %29
  %287 = load i32, i32* %3, align 4
  ret i32 %287
}

declare dso_local i32 @luaZ_resetbuffer(i32) #1

declare dso_local i32 @inclinenumber(%struct.TYPE_21__*) #1

declare dso_local i32 @next(%struct.TYPE_21__*) #1

declare dso_local i32 @skip_sep(%struct.TYPE_21__*) #1

declare dso_local i32 @read_long_string(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @currIsNewline(%struct.TYPE_21__*) #1

declare dso_local i32 @luaX_lexerror(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i32 @read_string(%struct.TYPE_21__*, i8 signext, %struct.TYPE_20__*) #1

declare dso_local i32 @save_and_next(%struct.TYPE_21__*) #1

declare dso_local i32 @check_next(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @read_numeral(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @isalpha(i8 signext) #1

declare dso_local i32 @isalnum(i8 signext) #1

declare dso_local i32 @save(%struct.TYPE_21__*, i8 signext) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @luaZ_buffer(i32) #1

declare dso_local i32* @luaX_newstring(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @luaZ_bufflen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
