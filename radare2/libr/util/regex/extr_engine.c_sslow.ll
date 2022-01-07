; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/regex/extr_engine.c_sslow.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/regex/extr_engine.c_sslow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.match = type { i8*, i8*, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@OUT = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [5 x i8] c"slow\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"sstart\00", align 1
@NOTHING = common dso_local global i32 0, align 4
@R_REGEX_NEWLINE = common dso_local global i32 0, align 4
@R_REGEX_NOTBOL = common dso_local global i32 0, align 4
@BOL = common dso_local global i32 0, align 4
@R_REGEX_NOTEOL = common dso_local global i32 0, align 4
@BOLEOL = common dso_local global i32 0, align 4
@EOL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"sboleol\00", align 1
@BOW = common dso_local global i32 0, align 4
@EOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"sboweow\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"saft\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.match*, i8*, i8*, i32, i32)* @slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @slow(%struct.match* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.match*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.match* %0, %struct.match** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load %struct.match*, %struct.match** %6, align 8
  %21 = getelementptr inbounds %struct.match, %struct.match* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load %struct.match*, %struct.match** %6, align 8
  %24 = getelementptr inbounds %struct.match, %struct.match* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.match*, %struct.match** %6, align 8
  %27 = getelementptr inbounds %struct.match, %struct.match* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %13, align 4
  %29 = load i8*, i8** %7, align 8
  store i8* %29, i8** %14, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.match*, %struct.match** %6, align 8
  %32 = getelementptr inbounds %struct.match, %struct.match* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp eq i8* %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %5
  %36 = load i8, i8* @OUT, align 1
  %37 = sext i8 %36 to i32
  br label %43

38:                                               ; preds = %5
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 -1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  br label %43

43:                                               ; preds = %38, %35
  %44 = phi i32 [ %37, %35 ], [ %42, %38 ]
  store i32 %44, i32* %15, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @AT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %45, i8* %46, i32 %47, i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @CLEAR(i32 %50)
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @SET1(i32 %52, i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = load i8*, i8** %14, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = call i32 @SP(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load %struct.match*, %struct.match** %6, align 8
  %61 = getelementptr inbounds %struct.match, %struct.match* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @NOTHING, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @step(%struct.TYPE_2__* %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %11, align 4
  store i8* null, i8** %19, align 8
  br label %69

69:                                               ; preds = %306, %43
  %70 = load i32, i32* %15, align 4
  store i32 %70, i32* %16, align 4
  %71 = load i8*, i8** %14, align 8
  %72 = load %struct.match*, %struct.match** %6, align 8
  %73 = getelementptr inbounds %struct.match, %struct.match* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = icmp eq i8* %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i8, i8* @OUT, align 1
  %78 = sext i8 %77 to i32
  br label %83

79:                                               ; preds = %69
  %80 = load i8*, i8** %14, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  br label %83

83:                                               ; preds = %79, %76
  %84 = phi i32 [ %78, %76 ], [ %82, %79 ]
  store i32 %84, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp eq i32 %85, 10
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load %struct.match*, %struct.match** %6, align 8
  %89 = getelementptr inbounds %struct.match, %struct.match* %88, i32 0, i32 3
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @R_REGEX_NEWLINE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %108, label %96

96:                                               ; preds = %87, %83
  %97 = load i32, i32* %16, align 4
  %98 = load i8, i8* @OUT, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %96
  %102 = load %struct.match*, %struct.match** %6, align 8
  %103 = getelementptr inbounds %struct.match, %struct.match* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @R_REGEX_NOTBOL, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %101, %87
  %109 = load i32, i32* @BOL, align 4
  store i32 %109, i32* %17, align 4
  %110 = load %struct.match*, %struct.match** %6, align 8
  %111 = getelementptr inbounds %struct.match, %struct.match* %110, i32 0, i32 3
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %18, align 4
  br label %115

115:                                              ; preds = %108, %101, %96
  %116 = load i32, i32* %15, align 4
  %117 = icmp eq i32 %116, 10
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = load %struct.match*, %struct.match** %6, align 8
  %120 = getelementptr inbounds %struct.match, %struct.match* %119, i32 0, i32 3
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @R_REGEX_NEWLINE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %139, label %127

127:                                              ; preds = %118, %115
  %128 = load i32, i32* %15, align 4
  %129 = load i8, i8* @OUT, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %128, %130
  br i1 %131, label %132, label %158

132:                                              ; preds = %127
  %133 = load %struct.match*, %struct.match** %6, align 8
  %134 = getelementptr inbounds %struct.match, %struct.match* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @R_REGEX_NOTEOL, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %158, label %139

139:                                              ; preds = %132, %118
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* @BOL, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i32, i32* @BOLEOL, align 4
  br label %147

145:                                              ; preds = %139
  %146 = load i32, i32* @EOL, align 4
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  store i32 %148, i32* %17, align 4
  %149 = load %struct.match*, %struct.match** %6, align 8
  %150 = getelementptr inbounds %struct.match, %struct.match* %149, i32 0, i32 3
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %18, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %153
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %18, align 4
  br label %158

158:                                              ; preds = %147, %132, %127
  %159 = load i32, i32* %18, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %182

161:                                              ; preds = %158
  br label %162

162:                                              ; preds = %175, %161
  %163 = load i32, i32* %18, align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %162
  %166 = load %struct.match*, %struct.match** %6, align 8
  %167 = getelementptr inbounds %struct.match, %struct.match* %166, i32 0, i32 3
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %17, align 4
  %173 = load i32, i32* %11, align 4
  %174 = call i32 @step(%struct.TYPE_2__* %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173)
  store i32 %174, i32* %11, align 4
  br label %175

175:                                              ; preds = %165
  %176 = load i32, i32* %18, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %18, align 4
  br label %162

178:                                              ; preds = %162
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %15, align 4
  %181 = call i32 @SP(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %178, %158
  %183 = load i32, i32* %17, align 4
  %184 = load i32, i32* @BOL, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %195, label %186

186:                                              ; preds = %182
  %187 = load i32, i32* %16, align 4
  %188 = load i8, i8* @OUT, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp ne i32 %187, %189
  br i1 %190, label %191, label %206

191:                                              ; preds = %186
  %192 = load i32, i32* %16, align 4
  %193 = call i64 @ISWORD(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %206, label %195

195:                                              ; preds = %191, %182
  %196 = load i32, i32* %15, align 4
  %197 = load i8, i8* @OUT, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp ne i32 %196, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %195
  %201 = load i32, i32* %15, align 4
  %202 = call i64 @ISWORD(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = load i32, i32* @BOW, align 4
  store i32 %205, i32* %17, align 4
  br label %206

206:                                              ; preds = %204, %200, %195, %191, %186
  %207 = load i32, i32* %16, align 4
  %208 = load i8, i8* @OUT, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp ne i32 %207, %209
  br i1 %210, label %211, label %230

211:                                              ; preds = %206
  %212 = load i32, i32* %16, align 4
  %213 = call i64 @ISWORD(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %230

215:                                              ; preds = %211
  %216 = load i32, i32* %17, align 4
  %217 = load i32, i32* @EOL, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %228, label %219

219:                                              ; preds = %215
  %220 = load i32, i32* %15, align 4
  %221 = load i8, i8* @OUT, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp ne i32 %220, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %219
  %225 = load i32, i32* %15, align 4
  %226 = call i64 @ISWORD(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %224, %215
  %229 = load i32, i32* @EOW, align 4
  store i32 %229, i32* %17, align 4
  br label %230

230:                                              ; preds = %228, %224, %219, %211, %206
  %231 = load i32, i32* %17, align 4
  %232 = load i32, i32* @BOW, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %238, label %234

234:                                              ; preds = %230
  %235 = load i32, i32* %17, align 4
  %236 = load i32, i32* @EOW, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %251

238:                                              ; preds = %234, %230
  %239 = load %struct.match*, %struct.match** %6, align 8
  %240 = getelementptr inbounds %struct.match, %struct.match* %239, i32 0, i32 3
  %241 = load %struct.TYPE_2__*, %struct.TYPE_2__** %240, align 8
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* %10, align 4
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* %17, align 4
  %246 = load i32, i32* %11, align 4
  %247 = call i32 @step(%struct.TYPE_2__* %241, i32 %242, i32 %243, i32 %244, i32 %245, i32 %246)
  store i32 %247, i32* %11, align 4
  %248 = load i32, i32* %11, align 4
  %249 = load i32, i32* %15, align 4
  %250 = call i32 @SP(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %248, i32 %249)
  br label %251

251:                                              ; preds = %238, %234
  %252 = load i32, i32* %11, align 4
  %253 = load i32, i32* %10, align 4
  %254 = call i64 @ISSET(i32 %252, i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %251
  %257 = load i8*, i8** %14, align 8
  store i8* %257, i8** %19, align 8
  br label %258

258:                                              ; preds = %256, %251
  %259 = load i32, i32* %11, align 4
  %260 = load i32, i32* %12, align 4
  %261 = call i64 @EQ(i32 %259, i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %267, label %263

263:                                              ; preds = %258
  %264 = load i8*, i8** %14, align 8
  %265 = load i8*, i8** %8, align 8
  %266 = icmp eq i8* %264, %265
  br i1 %266, label %267, label %268

267:                                              ; preds = %263, %258
  br label %309

268:                                              ; preds = %263
  %269 = load i32, i32* %13, align 4
  %270 = load i32, i32* %11, align 4
  %271 = call i32 @ASSIGN(i32 %269, i32 %270)
  %272 = load i32, i32* %11, align 4
  %273 = load i32, i32* %12, align 4
  %274 = call i32 @ASSIGN(i32 %272, i32 %273)
  %275 = load i32, i32* %15, align 4
  %276 = load i8, i8* @OUT, align 1
  %277 = sext i8 %276 to i32
  %278 = icmp eq i32 %275, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %268
  br label %309

280:                                              ; preds = %268
  %281 = load %struct.match*, %struct.match** %6, align 8
  %282 = getelementptr inbounds %struct.match, %struct.match* %281, i32 0, i32 3
  %283 = load %struct.TYPE_2__*, %struct.TYPE_2__** %282, align 8
  %284 = load i32, i32* %9, align 4
  %285 = load i32, i32* %10, align 4
  %286 = load i32, i32* %13, align 4
  %287 = load i32, i32* %15, align 4
  %288 = load i32, i32* %11, align 4
  %289 = call i32 @step(%struct.TYPE_2__* %283, i32 %284, i32 %285, i32 %286, i32 %287, i32 %288)
  store i32 %289, i32* %11, align 4
  %290 = load i32, i32* %11, align 4
  %291 = load i32, i32* %15, align 4
  %292 = call i32 @SP(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %290, i32 %291)
  %293 = load %struct.match*, %struct.match** %6, align 8
  %294 = getelementptr inbounds %struct.match, %struct.match* %293, i32 0, i32 3
  %295 = load %struct.TYPE_2__*, %struct.TYPE_2__** %294, align 8
  %296 = load i32, i32* %9, align 4
  %297 = load i32, i32* %10, align 4
  %298 = load i32, i32* %11, align 4
  %299 = load i32, i32* @NOTHING, align 4
  %300 = load i32, i32* %11, align 4
  %301 = call i32 @step(%struct.TYPE_2__* %295, i32 %296, i32 %297, i32 %298, i32 %299, i32 %300)
  %302 = load i32, i32* %11, align 4
  %303 = call i64 @EQ(i32 %301, i32 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %306, label %305

305:                                              ; preds = %280
  br label %309

306:                                              ; preds = %280
  %307 = load i8*, i8** %14, align 8
  %308 = getelementptr inbounds i8, i8* %307, i32 1
  store i8* %308, i8** %14, align 8
  br label %69

309:                                              ; preds = %305, %279, %267
  %310 = load i8*, i8** %19, align 8
  ret i8* %310
}

declare dso_local i32 @AT(i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @CLEAR(i32) #1

declare dso_local i32 @SET1(i32, i32) #1

declare dso_local i32 @SP(i8*, i32, i32) #1

declare dso_local i32 @step(%struct.TYPE_2__*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ISWORD(i32) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i64 @EQ(i32, i32) #1

declare dso_local i32 @ASSIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
