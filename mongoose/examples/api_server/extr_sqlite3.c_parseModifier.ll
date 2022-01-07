; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_parseModifier.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_parseModifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, double, i32, i32, i32, i32, i32, i32, i32 }

@sqlite3UpperToLower = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"localtime\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"unixepoch\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"utc\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"weekday \00", align 1
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"start of \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"month\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"year\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"hour\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"minute\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"second\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_10__*)* @parseModifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseModifier(i32* %0, i8* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [30 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_10__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  store i32 1, i32* %7, align 4
  %21 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 0
  store i8* %21, i8** %10, align 8
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %53, %3
  %23 = load i32, i32* %8, align 4
  %24 = getelementptr inbounds [30 x i8], [30 x i8]* %11, i64 0, i64 0
  %25 = call i32 @ArraySize(i8* %24)
  %26 = sub nsw i32 %25, 1
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %28, %22
  %37 = phi i1 [ false, %22 ], [ %35, %28 ]
  br i1 %37, label %38, label %56

38:                                               ; preds = %36
  %39 = load i64*, i64** @sqlite3UpperToLower, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i64
  %46 = getelementptr inbounds i64, i64* %39, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i8
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 %48, i8* %52, align 1
  br label %53

53:                                               ; preds = %38
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %22

56:                                               ; preds = %36
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  store i8 0, i8* %60, align 1
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  switch i32 %64, label %568 [
    i32 108, label %65
    i32 117, label %82
    i32 119, label %135
    i32 115, label %193
    i32 43, label %240
    i32 45, label %240
    i32 48, label %240
    i32 49, label %240
    i32 50, label %240
    i32 51, label %240
    i32 52, label %240
    i32 53, label %240
    i32 54, label %240
    i32 55, label %240
    i32 56, label %240
    i32 57, label %240
  ]

65:                                               ; preds = %56
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = call i32 @computeJD(%struct.TYPE_10__* %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @localtimeOffset(%struct.TYPE_10__* %72, i32* %73, i32* %7)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = call i32 @clearYMD_HMS_TZ(%struct.TYPE_10__* %79)
  br label %81

81:                                               ; preds = %69, %65
  br label %569

82:                                               ; preds = %56
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 43200
  %96 = sdiv i32 %95, 86400
  %97 = add nsw i32 %96, 1045635584
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %101 = call i32 @clearYMD_HMS_TZ(%struct.TYPE_10__* %100)
  store i32 0, i32* %7, align 4
  br label %134

102:                                              ; preds = %86, %82
  %103 = load i8*, i8** %10, align 8
  %104 = call i32 @strcmp(i8* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %133

106:                                              ; preds = %102
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %108 = call i32 @computeJD(%struct.TYPE_10__* %107)
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @localtimeOffset(%struct.TYPE_10__* %109, i32* %110, i32* %7)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @SQLITE_OK, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %132

115:                                              ; preds = %106
  %116 = load i32, i32* %12, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %119, %116
  store i32 %120, i32* %118, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %122 = call i32 @clearYMD_HMS_TZ(%struct.TYPE_10__* %121)
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @localtimeOffset(%struct.TYPE_10__* %124, i32* %125, i32* %7)
  %127 = sub nsw i32 %123, %126
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %115, %106
  br label %133

133:                                              ; preds = %132, %102
  br label %134

134:                                              ; preds = %133, %91
  br label %569

135:                                              ; preds = %56
  %136 = load i8*, i8** %10, align 8
  %137 = call i32 @strncmp(i8* %136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %192

139:                                              ; preds = %135
  %140 = load i8*, i8** %10, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 8
  %142 = load i8*, i8** %10, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 8
  %144 = call i32 @sqlite3Strlen30(i8* %143)
  %145 = load i32, i32* @SQLITE_UTF8, align 4
  %146 = call i32 @sqlite3AtoF(i8* %141, double* %9, i32 %144, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %192

148:                                              ; preds = %139
  %149 = load double, double* %9, align 8
  %150 = fptosi double %149 to i32
  store i32 %150, i32* %8, align 4
  %151 = sitofp i32 %150 to double
  %152 = load double, double* %9, align 8
  %153 = fcmp oeq double %151, %152
  br i1 %153, label %154, label %192

154:                                              ; preds = %148
  %155 = load i32, i32* %8, align 4
  %156 = icmp sge i32 %155, 0
  br i1 %156, label %157, label %192

157:                                              ; preds = %154
  %158 = load double, double* %9, align 8
  %159 = fcmp olt double %158, 7.000000e+00
  br i1 %159, label %160, label %192

160:                                              ; preds = %157
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %162 = call i32 @computeYMD_HMS(%struct.TYPE_10__* %161)
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 7
  store i32 0, i32* %164, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 6
  store i32 0, i32* %166, align 4
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %168 = call i32 @computeJD(%struct.TYPE_10__* %167)
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, 129600000
  %173 = sdiv i32 %172, 86400000
  %174 = srem i32 %173, 7
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* %8, align 4
  %177 = icmp sgt i32 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %160
  %179 = load i32, i32* %13, align 4
  %180 = sub nsw i32 %179, 7
  store i32 %180, i32* %13, align 4
  br label %181

181:                                              ; preds = %178, %160
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* %13, align 4
  %184 = sub nsw i32 %182, %183
  %185 = mul nsw i32 %184, 86400000
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %188, %185
  store i32 %189, i32* %187, align 8
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %191 = call i32 @clearYMD_HMS_TZ(%struct.TYPE_10__* %190)
  store i32 0, i32* %7, align 4
  br label %192

192:                                              ; preds = %181, %157, %154, %148, %139, %135
  br label %569

193:                                              ; preds = %56
  %194 = load i8*, i8** %10, align 8
  %195 = call i32 @strncmp(i8* %194, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 9)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  br label %569

198:                                              ; preds = %193
  %199 = load i8*, i8** %10, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 9
  store i8* %200, i8** %10, align 8
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %202 = call i32 @computeYMD(%struct.TYPE_10__* %201)
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  store i32 1, i32* %204, align 4
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 8
  store i32 0, i32* %206, align 4
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 9
  store i32 0, i32* %208, align 8
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 2
  store double 0.000000e+00, double* %210, align 8
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 7
  store i32 0, i32* %212, align 8
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 6
  store i32 0, i32* %214, align 4
  %215 = load i8*, i8** %10, align 8
  %216 = call i32 @strcmp(i8* %215, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %198
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 3
  store i32 1, i32* %220, align 8
  store i32 0, i32* %7, align 4
  br label %239

221:                                              ; preds = %198
  %222 = load i8*, i8** %10, align 8
  %223 = call i32 @strcmp(i8* %222, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %221
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %227 = call i32 @computeYMD(%struct.TYPE_10__* %226)
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 4
  store i32 1, i32* %229, align 4
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 3
  store i32 1, i32* %231, align 8
  store i32 0, i32* %7, align 4
  br label %238

232:                                              ; preds = %221
  %233 = load i8*, i8** %10, align 8
  %234 = call i32 @strcmp(i8* %233, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %232
  store i32 0, i32* %7, align 4
  br label %237

237:                                              ; preds = %236, %232
  br label %238

238:                                              ; preds = %237, %225
  br label %239

239:                                              ; preds = %238, %218
  br label %569

240:                                              ; preds = %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56
  store i32 1, i32* %8, align 4
  br label %241

241:                                              ; preds = %269, %240
  %242 = load i8*, i8** %10, align 8
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, i8* %242, i64 %244
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %266

249:                                              ; preds = %241
  %250 = load i8*, i8** %10, align 8
  %251 = load i32, i32* %8, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, i8* %250, i64 %252
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp ne i32 %255, 58
  br i1 %256, label %257, label %266

257:                                              ; preds = %249
  %258 = load i8*, i8** %10, align 8
  %259 = load i32, i32* %8, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %258, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = call i32 @sqlite3Isspace(i8 signext %262)
  %264 = icmp ne i32 %263, 0
  %265 = xor i1 %264, true
  br label %266

266:                                              ; preds = %257, %249, %241
  %267 = phi i1 [ false, %249 ], [ false, %241 ], [ %265, %257 ]
  br i1 %267, label %268, label %272

268:                                              ; preds = %266
  br label %269

269:                                              ; preds = %268
  %270 = load i32, i32* %8, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %8, align 4
  br label %241

272:                                              ; preds = %266
  %273 = load i8*, i8** %10, align 8
  %274 = load i32, i32* %8, align 4
  %275 = load i32, i32* @SQLITE_UTF8, align 4
  %276 = call i32 @sqlite3AtoF(i8* %273, double* %9, i32 %274, i32 %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %279, label %278

278:                                              ; preds = %272
  store i32 1, i32* %7, align 4
  br label %569

279:                                              ; preds = %272
  %280 = load i8*, i8** %10, align 8
  %281 = load i32, i32* %8, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8, i8* %280, i64 %282
  %284 = load i8, i8* %283, align 1
  %285 = sext i8 %284 to i32
  %286 = icmp eq i32 %285, 58
  br i1 %286, label %287, label %336

287:                                              ; preds = %279
  %288 = load i8*, i8** %10, align 8
  store i8* %288, i8** %15, align 8
  %289 = load i8*, i8** %15, align 8
  %290 = load i8, i8* %289, align 1
  %291 = call i32 @sqlite3Isdigit(i8 signext %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %296, label %293

293:                                              ; preds = %287
  %294 = load i8*, i8** %15, align 8
  %295 = getelementptr inbounds i8, i8* %294, i32 1
  store i8* %295, i8** %15, align 8
  br label %296

296:                                              ; preds = %293, %287
  %297 = call i32 @memset(%struct.TYPE_10__* %16, i32 0, i32 48)
  %298 = load i8*, i8** %15, align 8
  %299 = call i32 @parseHhMmSs(i8* %298, %struct.TYPE_10__* %16)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %296
  br label %569

302:                                              ; preds = %296
  %303 = call i32 @computeJD(%struct.TYPE_10__* %16)
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = sub nsw i32 %305, 43200000
  store i32 %306, i32* %304, align 8
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = sdiv i32 %308, 86400000
  store i32 %309, i32* %17, align 4
  %310 = load i32, i32* %17, align 4
  %311 = mul nsw i32 %310, 86400000
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = sub nsw i32 %313, %311
  store i32 %314, i32* %312, align 8
  %315 = load i8*, i8** %10, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 0
  %317 = load i8, i8* %316, align 1
  %318 = sext i8 %317 to i32
  %319 = icmp eq i32 %318, 45
  br i1 %319, label %320, label %325

320:                                              ; preds = %302
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = sub nsw i32 0, %322
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i32 %323, i32* %324, align 8
  br label %325

325:                                              ; preds = %320, %302
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %327 = call i32 @computeJD(%struct.TYPE_10__* %326)
  %328 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %329 = call i32 @clearYMD_HMS_TZ(%struct.TYPE_10__* %328)
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = add nsw i32 %334, %331
  store i32 %335, i32* %333, align 8
  store i32 0, i32* %7, align 4
  br label %569

336:                                              ; preds = %279
  %337 = load i32, i32* %8, align 4
  %338 = load i8*, i8** %10, align 8
  %339 = sext i32 %337 to i64
  %340 = getelementptr inbounds i8, i8* %338, i64 %339
  store i8* %340, i8** %10, align 8
  br label %341

341:                                              ; preds = %346, %336
  %342 = load i8*, i8** %10, align 8
  %343 = load i8, i8* %342, align 1
  %344 = call i32 @sqlite3Isspace(i8 signext %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %341
  %347 = load i8*, i8** %10, align 8
  %348 = getelementptr inbounds i8, i8* %347, i32 1
  store i8* %348, i8** %10, align 8
  br label %341

349:                                              ; preds = %341
  %350 = load i8*, i8** %10, align 8
  %351 = call i32 @sqlite3Strlen30(i8* %350)
  store i32 %351, i32* %8, align 4
  %352 = load i32, i32* %8, align 4
  %353 = icmp sgt i32 %352, 10
  br i1 %353, label %357, label %354

354:                                              ; preds = %349
  %355 = load i32, i32* %8, align 4
  %356 = icmp slt i32 %355, 3
  br i1 %356, label %357, label %358

357:                                              ; preds = %354, %349
  br label %569

358:                                              ; preds = %354
  %359 = load i8*, i8** %10, align 8
  %360 = load i32, i32* %8, align 4
  %361 = sub nsw i32 %360, 1
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i8, i8* %359, i64 %362
  %364 = load i8, i8* %363, align 1
  %365 = sext i8 %364 to i32
  %366 = icmp eq i32 %365, 115
  br i1 %366, label %367, label %375

367:                                              ; preds = %358
  %368 = load i8*, i8** %10, align 8
  %369 = load i32, i32* %8, align 4
  %370 = sub nsw i32 %369, 1
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8, i8* %368, i64 %371
  store i8 0, i8* %372, align 1
  %373 = load i32, i32* %8, align 4
  %374 = add nsw i32 %373, -1
  store i32 %374, i32* %8, align 4
  br label %375

375:                                              ; preds = %367, %358
  %376 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %377 = call i32 @computeJD(%struct.TYPE_10__* %376)
  store i32 0, i32* %7, align 4
  %378 = load double, double* %9, align 8
  %379 = fcmp olt double %378, 0.000000e+00
  %380 = zext i1 %379 to i64
  %381 = select i1 %379, double -5.000000e-01, double 5.000000e-01
  store double %381, double* %14, align 8
  %382 = load i32, i32* %8, align 4
  %383 = icmp eq i32 %382, 3
  br i1 %383, label %384, label %398

384:                                              ; preds = %375
  %385 = load i8*, i8** %10, align 8
  %386 = call i32 @strcmp(i8* %385, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %398

388:                                              ; preds = %384
  %389 = load double, double* %9, align 8
  %390 = fmul double %389, 8.640000e+07
  %391 = load double, double* %14, align 8
  %392 = fadd double %390, %391
  %393 = fptosi double %392 to i32
  %394 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %395 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = add nsw i32 %396, %393
  store i32 %397, i32* %395, align 8
  br label %565

398:                                              ; preds = %384, %375
  %399 = load i32, i32* %8, align 4
  %400 = icmp eq i32 %399, 4
  br i1 %400, label %401, label %415

401:                                              ; preds = %398
  %402 = load i8*, i8** %10, align 8
  %403 = call i32 @strcmp(i8* %402, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %415

405:                                              ; preds = %401
  %406 = load double, double* %9, align 8
  %407 = fmul double %406, 3.600000e+06
  %408 = load double, double* %14, align 8
  %409 = fadd double %407, %408
  %410 = fptosi double %409 to i32
  %411 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = add nsw i32 %413, %410
  store i32 %414, i32* %412, align 8
  br label %564

415:                                              ; preds = %401, %398
  %416 = load i32, i32* %8, align 4
  %417 = icmp eq i32 %416, 6
  br i1 %417, label %418, label %432

418:                                              ; preds = %415
  %419 = load i8*, i8** %10, align 8
  %420 = call i32 @strcmp(i8* %419, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %422, label %432

422:                                              ; preds = %418
  %423 = load double, double* %9, align 8
  %424 = fmul double %423, 6.000000e+04
  %425 = load double, double* %14, align 8
  %426 = fadd double %424, %425
  %427 = fptosi double %426 to i32
  %428 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %429 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = add nsw i32 %430, %427
  store i32 %431, i32* %429, align 8
  br label %563

432:                                              ; preds = %418, %415
  %433 = load i32, i32* %8, align 4
  %434 = icmp eq i32 %433, 6
  br i1 %434, label %435, label %449

435:                                              ; preds = %432
  %436 = load i8*, i8** %10, align 8
  %437 = call i32 @strcmp(i8* %436, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %449

439:                                              ; preds = %435
  %440 = load double, double* %9, align 8
  %441 = fmul double %440, 1.000000e+03
  %442 = load double, double* %14, align 8
  %443 = fadd double %441, %442
  %444 = fptosi double %443 to i32
  %445 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %446 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = add nsw i32 %447, %444
  store i32 %448, i32* %446, align 8
  br label %562

449:                                              ; preds = %435, %432
  %450 = load i32, i32* %8, align 4
  %451 = icmp eq i32 %450, 5
  br i1 %451, label %452, label %519

452:                                              ; preds = %449
  %453 = load i8*, i8** %10, align 8
  %454 = call i32 @strcmp(i8* %453, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %519

456:                                              ; preds = %452
  %457 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %458 = call i32 @computeYMD_HMS(%struct.TYPE_10__* %457)
  %459 = load double, double* %9, align 8
  %460 = fptosi double %459 to i32
  %461 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %462 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %461, i32 0, i32 4
  %463 = load i32, i32* %462, align 4
  %464 = add nsw i32 %463, %460
  store i32 %464, i32* %462, align 4
  %465 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %466 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %465, i32 0, i32 4
  %467 = load i32, i32* %466, align 4
  %468 = icmp sgt i32 %467, 0
  br i1 %468, label %469, label %475

469:                                              ; preds = %456
  %470 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %471 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %470, i32 0, i32 4
  %472 = load i32, i32* %471, align 4
  %473 = sub nsw i32 %472, 1
  %474 = sdiv i32 %473, 12
  br label %481

475:                                              ; preds = %456
  %476 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %477 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %476, i32 0, i32 4
  %478 = load i32, i32* %477, align 4
  %479 = sub nsw i32 %478, 12
  %480 = sdiv i32 %479, 12
  br label %481

481:                                              ; preds = %475, %469
  %482 = phi i32 [ %474, %469 ], [ %480, %475 ]
  store i32 %482, i32* %18, align 4
  %483 = load i32, i32* %18, align 4
  %484 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %485 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %484, i32 0, i32 5
  %486 = load i32, i32* %485, align 8
  %487 = add nsw i32 %486, %483
  store i32 %487, i32* %485, align 8
  %488 = load i32, i32* %18, align 4
  %489 = mul nsw i32 %488, 12
  %490 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %491 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %490, i32 0, i32 4
  %492 = load i32, i32* %491, align 4
  %493 = sub nsw i32 %492, %489
  store i32 %493, i32* %491, align 4
  %494 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %495 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %494, i32 0, i32 6
  store i32 0, i32* %495, align 4
  %496 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %497 = call i32 @computeJD(%struct.TYPE_10__* %496)
  %498 = load double, double* %9, align 8
  %499 = fptosi double %498 to i32
  store i32 %499, i32* %19, align 4
  %500 = load i32, i32* %19, align 4
  %501 = sitofp i32 %500 to double
  %502 = load double, double* %9, align 8
  %503 = fcmp une double %501, %502
  br i1 %503, label %504, label %518

504:                                              ; preds = %481
  %505 = load double, double* %9, align 8
  %506 = load i32, i32* %19, align 4
  %507 = sitofp i32 %506 to double
  %508 = fsub double %505, %507
  %509 = fmul double %508, 3.000000e+01
  %510 = fmul double %509, 8.640000e+07
  %511 = load double, double* %14, align 8
  %512 = fadd double %510, %511
  %513 = fptosi double %512 to i32
  %514 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %515 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 8
  %517 = add nsw i32 %516, %513
  store i32 %517, i32* %515, align 8
  br label %518

518:                                              ; preds = %504, %481
  br label %561

519:                                              ; preds = %452, %449
  %520 = load i32, i32* %8, align 4
  %521 = icmp eq i32 %520, 4
  br i1 %521, label %522, label %559

522:                                              ; preds = %519
  %523 = load i8*, i8** %10, align 8
  %524 = call i32 @strcmp(i8* %523, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %559

526:                                              ; preds = %522
  %527 = load double, double* %9, align 8
  %528 = fptosi double %527 to i32
  store i32 %528, i32* %20, align 4
  %529 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %530 = call i32 @computeYMD_HMS(%struct.TYPE_10__* %529)
  %531 = load i32, i32* %20, align 4
  %532 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %533 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %532, i32 0, i32 5
  %534 = load i32, i32* %533, align 8
  %535 = add nsw i32 %534, %531
  store i32 %535, i32* %533, align 8
  %536 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %537 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %536, i32 0, i32 6
  store i32 0, i32* %537, align 4
  %538 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %539 = call i32 @computeJD(%struct.TYPE_10__* %538)
  %540 = load i32, i32* %20, align 4
  %541 = sitofp i32 %540 to double
  %542 = load double, double* %9, align 8
  %543 = fcmp une double %541, %542
  br i1 %543, label %544, label %558

544:                                              ; preds = %526
  %545 = load double, double* %9, align 8
  %546 = load i32, i32* %20, align 4
  %547 = sitofp i32 %546 to double
  %548 = fsub double %545, %547
  %549 = fmul double %548, 3.650000e+02
  %550 = fmul double %549, 8.640000e+07
  %551 = load double, double* %14, align 8
  %552 = fadd double %550, %551
  %553 = fptosi double %552 to i32
  %554 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %555 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 8
  %557 = add nsw i32 %556, %553
  store i32 %557, i32* %555, align 8
  br label %558

558:                                              ; preds = %544, %526
  br label %560

559:                                              ; preds = %522, %519
  store i32 1, i32* %7, align 4
  br label %560

560:                                              ; preds = %559, %558
  br label %561

561:                                              ; preds = %560, %518
  br label %562

562:                                              ; preds = %561, %439
  br label %563

563:                                              ; preds = %562, %422
  br label %564

564:                                              ; preds = %563, %405
  br label %565

565:                                              ; preds = %564, %388
  %566 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %567 = call i32 @clearYMD_HMS_TZ(%struct.TYPE_10__* %566)
  br label %569

568:                                              ; preds = %56
  br label %569

569:                                              ; preds = %568, %565, %357, %325, %301, %278, %239, %197, %192, %134, %81
  %570 = load i32, i32* %7, align 4
  ret i32 %570
}

declare dso_local i32 @ArraySize(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @computeJD(%struct.TYPE_10__*) #1

declare dso_local i32 @localtimeOffset(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @clearYMD_HMS_TZ(%struct.TYPE_10__*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3AtoF(i8*, double*, i32, i32) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local i32 @computeYMD_HMS(%struct.TYPE_10__*) #1

declare dso_local i32 @computeYMD(%struct.TYPE_10__*) #1

declare dso_local i32 @sqlite3Isspace(i8 signext) #1

declare dso_local i32 @sqlite3Isdigit(i8 signext) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @parseHhMmSs(i8*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
