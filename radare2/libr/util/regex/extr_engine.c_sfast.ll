; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/regex/extr_engine.c_sfast.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/regex/extr_engine.c_sfast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.match = type { i64, i64, i64, i8*, i8*, i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64 }

@OUT = common dso_local global i8 0, align 1
@NOTHING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"start\00", align 1
@R_REGEX_NEWLINE = common dso_local global i32 0, align 4
@R_REGEX_NOTBOL = common dso_local global i32 0, align 4
@BOL = common dso_local global i32 0, align 4
@R_REGEX_NOTEOL = common dso_local global i32 0, align 4
@BOLEOL = common dso_local global i32 0, align 4
@EOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"boleol\00", align 1
@BOW = common dso_local global i32 0, align 4
@EOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"boweow\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"aft\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.match*, i8*, i8*, i32, i32)* @fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fast(%struct.match* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.match*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.match* %0, %struct.match** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load %struct.match*, %struct.match** %7, align 8
  %22 = getelementptr inbounds %struct.match, %struct.match* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %12, align 8
  %24 = load %struct.match*, %struct.match** %7, align 8
  %25 = getelementptr inbounds %struct.match, %struct.match* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %13, align 8
  %27 = load %struct.match*, %struct.match** %7, align 8
  %28 = getelementptr inbounds %struct.match, %struct.match* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %14, align 8
  %30 = load i8*, i8** %8, align 8
  store i8* %30, i8** %15, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.match*, %struct.match** %7, align 8
  %33 = getelementptr inbounds %struct.match, %struct.match* %32, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %5
  %37 = load i8, i8* @OUT, align 1
  %38 = sext i8 %37 to i32
  br label %44

39:                                               ; preds = %5
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 -1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  br label %44

44:                                               ; preds = %39, %36
  %45 = phi i32 [ %38, %36 ], [ %43, %39 ]
  store i32 %45, i32* %16, align 4
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @CLEAR(i64 %46)
  %48 = load i64, i64* %12, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @SET1(i64 %48, i32 %49)
  %51 = load %struct.match*, %struct.match** %7, align 8
  %52 = getelementptr inbounds %struct.match, %struct.match* %51, i32 0, i32 7
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i64, i64* %12, align 8
  %57 = load i32, i32* @NOTHING, align 4
  %58 = load i64, i64* %12, align 8
  %59 = call i64 @step(%struct.TYPE_2__* %53, i32 %54, i32 %55, i64 %56, i32 %57, i64 %58)
  store i64 %59, i64* %12, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @ASSIGN(i64 %60, i64 %61)
  %63 = load i64, i64* %12, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = call i32 @SP(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %63, i32 %66)
  store i8* null, i8** %20, align 8
  br label %68

68:                                               ; preds = %304, %44
  %69 = load i32, i32* %16, align 4
  store i32 %69, i32* %17, align 4
  %70 = load i8*, i8** %15, align 8
  %71 = load %struct.match*, %struct.match** %7, align 8
  %72 = getelementptr inbounds %struct.match, %struct.match* %71, i32 0, i32 4
  %73 = load i8*, i8** %72, align 8
  %74 = icmp eq i8* %70, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i8, i8* @OUT, align 1
  %77 = sext i8 %76 to i32
  br label %82

78:                                               ; preds = %68
  %79 = load i8*, i8** %15, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  br label %82

82:                                               ; preds = %78, %75
  %83 = phi i32 [ %77, %75 ], [ %81, %78 ]
  store i32 %83, i32* %16, align 4
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* %13, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i8*, i8** %15, align 8
  store i8* %88, i8** %20, align 8
  br label %89

89:                                               ; preds = %87, %82
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %90 = load i32, i32* %17, align 4
  %91 = icmp eq i32 %90, 10
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load %struct.match*, %struct.match** %7, align 8
  %94 = getelementptr inbounds %struct.match, %struct.match* %93, i32 0, i32 7
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @R_REGEX_NEWLINE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %113, label %101

101:                                              ; preds = %92, %89
  %102 = load i32, i32* %17, align 4
  %103 = load i8, i8* @OUT, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %101
  %107 = load %struct.match*, %struct.match** %7, align 8
  %108 = getelementptr inbounds %struct.match, %struct.match* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @R_REGEX_NOTBOL, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %106, %92
  %114 = load i32, i32* @BOL, align 4
  store i32 %114, i32* %18, align 4
  %115 = load %struct.match*, %struct.match** %7, align 8
  %116 = getelementptr inbounds %struct.match, %struct.match* %115, i32 0, i32 7
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %19, align 4
  br label %120

120:                                              ; preds = %113, %106, %101
  %121 = load i32, i32* %16, align 4
  %122 = icmp eq i32 %121, 10
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load %struct.match*, %struct.match** %7, align 8
  %125 = getelementptr inbounds %struct.match, %struct.match* %124, i32 0, i32 7
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @R_REGEX_NEWLINE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %144, label %132

132:                                              ; preds = %123, %120
  %133 = load i32, i32* %16, align 4
  %134 = load i8, i8* @OUT, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %137, label %163

137:                                              ; preds = %132
  %138 = load %struct.match*, %struct.match** %7, align 8
  %139 = getelementptr inbounds %struct.match, %struct.match* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @R_REGEX_NOTEOL, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %163, label %144

144:                                              ; preds = %137, %123
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* @BOL, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i32, i32* @BOLEOL, align 4
  br label %152

150:                                              ; preds = %144
  %151 = load i32, i32* @EOL, align 4
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i32 [ %149, %148 ], [ %151, %150 ]
  store i32 %153, i32* %18, align 4
  %154 = load %struct.match*, %struct.match** %7, align 8
  %155 = getelementptr inbounds %struct.match, %struct.match* %154, i32 0, i32 7
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* %19, align 4
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %160, %158
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %19, align 4
  br label %163

163:                                              ; preds = %152, %137, %132
  %164 = load i32, i32* %19, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %187

166:                                              ; preds = %163
  br label %167

167:                                              ; preds = %180, %166
  %168 = load i32, i32* %19, align 4
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %183

170:                                              ; preds = %167
  %171 = load %struct.match*, %struct.match** %7, align 8
  %172 = getelementptr inbounds %struct.match, %struct.match* %171, i32 0, i32 7
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load i64, i64* %12, align 8
  %177 = load i32, i32* %18, align 4
  %178 = load i64, i64* %12, align 8
  %179 = call i64 @step(%struct.TYPE_2__* %173, i32 %174, i32 %175, i64 %176, i32 %177, i64 %178)
  store i64 %179, i64* %12, align 8
  br label %180

180:                                              ; preds = %170
  %181 = load i32, i32* %19, align 4
  %182 = add nsw i32 %181, -1
  store i32 %182, i32* %19, align 4
  br label %167

183:                                              ; preds = %167
  %184 = load i64, i64* %12, align 8
  %185 = load i32, i32* %16, align 4
  %186 = call i32 @SP(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %184, i32 %185)
  br label %187

187:                                              ; preds = %183, %163
  %188 = load i32, i32* %18, align 4
  %189 = load i32, i32* @BOL, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %200, label %191

191:                                              ; preds = %187
  %192 = load i32, i32* %17, align 4
  %193 = load i8, i8* @OUT, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp ne i32 %192, %194
  br i1 %195, label %196, label %211

196:                                              ; preds = %191
  %197 = load i32, i32* %17, align 4
  %198 = call i64 @ISWORD(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %211, label %200

200:                                              ; preds = %196, %187
  %201 = load i32, i32* %16, align 4
  %202 = load i8, i8* @OUT, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp ne i32 %201, %203
  br i1 %204, label %205, label %211

205:                                              ; preds = %200
  %206 = load i32, i32* %16, align 4
  %207 = call i64 @ISWORD(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %205
  %210 = load i32, i32* @BOW, align 4
  store i32 %210, i32* %18, align 4
  br label %211

211:                                              ; preds = %209, %205, %200, %196, %191
  %212 = load i32, i32* %17, align 4
  %213 = load i8, i8* @OUT, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp ne i32 %212, %214
  br i1 %215, label %216, label %235

216:                                              ; preds = %211
  %217 = load i32, i32* %17, align 4
  %218 = call i64 @ISWORD(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %235

220:                                              ; preds = %216
  %221 = load i32, i32* %18, align 4
  %222 = load i32, i32* @EOL, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %233, label %224

224:                                              ; preds = %220
  %225 = load i32, i32* %16, align 4
  %226 = load i8, i8* @OUT, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp ne i32 %225, %227
  br i1 %228, label %229, label %235

229:                                              ; preds = %224
  %230 = load i32, i32* %16, align 4
  %231 = call i64 @ISWORD(i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %235, label %233

233:                                              ; preds = %229, %220
  %234 = load i32, i32* @EOW, align 4
  store i32 %234, i32* %18, align 4
  br label %235

235:                                              ; preds = %233, %229, %224, %216, %211
  %236 = load i32, i32* %18, align 4
  %237 = load i32, i32* @BOW, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %243, label %239

239:                                              ; preds = %235
  %240 = load i32, i32* %18, align 4
  %241 = load i32, i32* @EOW, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %256

243:                                              ; preds = %239, %235
  %244 = load %struct.match*, %struct.match** %7, align 8
  %245 = getelementptr inbounds %struct.match, %struct.match* %244, i32 0, i32 7
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** %245, align 8
  %247 = load i32, i32* %10, align 4
  %248 = load i32, i32* %11, align 4
  %249 = load i64, i64* %12, align 8
  %250 = load i32, i32* %18, align 4
  %251 = load i64, i64* %12, align 8
  %252 = call i64 @step(%struct.TYPE_2__* %246, i32 %247, i32 %248, i64 %249, i32 %250, i64 %251)
  store i64 %252, i64* %12, align 8
  %253 = load i64, i64* %12, align 8
  %254 = load i32, i32* %16, align 4
  %255 = call i32 @SP(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %253, i32 %254)
  br label %256

256:                                              ; preds = %243, %239
  %257 = load i64, i64* %12, align 8
  %258 = load i32, i32* %11, align 4
  %259 = call i64 @ISSET(i64 %257, i32 %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %265, label %261

261:                                              ; preds = %256
  %262 = load i8*, i8** %15, align 8
  %263 = load i8*, i8** %9, align 8
  %264 = icmp eq i8* %262, %263
  br i1 %264, label %265, label %266

265:                                              ; preds = %261, %256
  br label %307

266:                                              ; preds = %261
  %267 = load i64, i64* %14, align 8
  %268 = load i64, i64* %12, align 8
  %269 = call i32 @ASSIGN(i64 %267, i64 %268)
  %270 = load i64, i64* %12, align 8
  %271 = load i64, i64* %13, align 8
  %272 = call i32 @ASSIGN(i64 %270, i64 %271)
  %273 = load i32, i32* %16, align 4
  %274 = load i8, i8* @OUT, align 1
  %275 = sext i8 %274 to i32
  %276 = icmp eq i32 %273, %275
  br i1 %276, label %277, label %278

277:                                              ; preds = %266
  br label %307

278:                                              ; preds = %266
  %279 = load %struct.match*, %struct.match** %7, align 8
  %280 = getelementptr inbounds %struct.match, %struct.match* %279, i32 0, i32 7
  %281 = load %struct.TYPE_2__*, %struct.TYPE_2__** %280, align 8
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* %11, align 4
  %284 = load i64, i64* %14, align 8
  %285 = load i32, i32* %16, align 4
  %286 = load i64, i64* %12, align 8
  %287 = call i64 @step(%struct.TYPE_2__* %281, i32 %282, i32 %283, i64 %284, i32 %285, i64 %286)
  store i64 %287, i64* %12, align 8
  %288 = load i64, i64* %12, align 8
  %289 = load i32, i32* %16, align 4
  %290 = call i32 @SP(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %288, i32 %289)
  %291 = load %struct.match*, %struct.match** %7, align 8
  %292 = getelementptr inbounds %struct.match, %struct.match* %291, i32 0, i32 7
  %293 = load %struct.TYPE_2__*, %struct.TYPE_2__** %292, align 8
  %294 = load i32, i32* %10, align 4
  %295 = load i32, i32* %11, align 4
  %296 = load i64, i64* %12, align 8
  %297 = load i32, i32* @NOTHING, align 4
  %298 = load i64, i64* %12, align 8
  %299 = call i64 @step(%struct.TYPE_2__* %293, i32 %294, i32 %295, i64 %296, i32 %297, i64 %298)
  %300 = load i64, i64* %12, align 8
  %301 = call i32 @EQ(i64 %299, i64 %300)
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %304, label %303

303:                                              ; preds = %278
  br label %307

304:                                              ; preds = %278
  %305 = load i8*, i8** %15, align 8
  %306 = getelementptr inbounds i8, i8* %305, i32 1
  store i8* %306, i8** %15, align 8
  br label %68

307:                                              ; preds = %303, %277, %265
  %308 = load i8*, i8** %20, align 8
  %309 = icmp ne i8* %308, null
  br i1 %309, label %310, label %322

310:                                              ; preds = %307
  %311 = load i8*, i8** %20, align 8
  %312 = load %struct.match*, %struct.match** %7, align 8
  %313 = getelementptr inbounds %struct.match, %struct.match* %312, i32 0, i32 6
  store i8* %311, i8** %313, align 8
  %314 = load i64, i64* %12, align 8
  %315 = load i32, i32* %11, align 4
  %316 = call i64 @ISSET(i64 %314, i32 %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %310
  %319 = load i8*, i8** %15, align 8
  %320 = getelementptr inbounds i8, i8* %319, i64 1
  store i8* %320, i8** %6, align 8
  br label %323

321:                                              ; preds = %310
  br label %322

322:                                              ; preds = %321, %307
  store i8* null, i8** %6, align 8
  br label %323

323:                                              ; preds = %322, %318
  %324 = load i8*, i8** %6, align 8
  ret i8* %324
}

declare dso_local i32 @CLEAR(i64) #1

declare dso_local i32 @SET1(i64, i32) #1

declare dso_local i64 @step(%struct.TYPE_2__*, i32, i32, i64, i32, i64) #1

declare dso_local i32 @ASSIGN(i64, i64) #1

declare dso_local i32 @SP(i8*, i64, i32) #1

declare dso_local i64 @ISWORD(i32) #1

declare dso_local i64 @ISSET(i64, i32) #1

declare dso_local i32 @EQ(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
