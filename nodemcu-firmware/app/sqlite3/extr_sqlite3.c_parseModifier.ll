; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_parseModifier.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_parseModifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i8*, double, double, i32 }
%struct.TYPE_13__ = type { i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@sqlite3UpperToLower = common dso_local global i32* null, align 8
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
@aXformType = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, %struct.TYPE_13__*)* @parseModifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseModifier(i32* %0, i8* %1, i32 %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_13__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %8, align 8
  store i32 1, i32* %9, align 4
  %20 = load i32*, i32** @sqlite3UpperToLower, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %518 [
    i32 108, label %27
    i32 117, label %44
    i32 119, label %119
    i32 115, label %177
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

27:                                               ; preds = %4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @sqlite3_stricmp(i8* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %33 = call i32 @computeJD(%struct.TYPE_13__* %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @localtimeOffset(%struct.TYPE_13__* %34, i32* %35, i32* %9)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %42 = call i32 @clearYMD_HMS_TZ(%struct.TYPE_13__* %41)
  br label %43

43:                                               ; preds = %31, %27
  br label %519

44:                                               ; preds = %4
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @sqlite3_stricmp(i8* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %44
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %48
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load double, double* %55, align 8
  %57 = fmul double %56, 1.000000e+03
  %58 = fadd double %57, 0x42E7F907CA644000
  store double %58, double* %10, align 8
  %59 = load double, double* %10, align 8
  %60 = fcmp oge double %59, 0.000000e+00
  br i1 %60, label %61, label %75

61:                                               ; preds = %53
  %62 = load double, double* %10, align 8
  %63 = fcmp olt double %62, 0x42FA6401072FE000
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %66 = call i32 @clearYMD_HMS_TZ(%struct.TYPE_13__* %65)
  %67 = load double, double* %10, align 8
  %68 = fptosi double %67 to i32
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  store i32 1, i32* %72, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 9
  store i32 0, i32* %74, align 4
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %64, %61, %53
  br label %118

76:                                               ; preds = %48, %44
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @sqlite3_stricmp(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %117

80:                                               ; preds = %76
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %114

85:                                               ; preds = %80
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %87 = call i32 @computeJD(%struct.TYPE_13__* %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @localtimeOffset(%struct.TYPE_13__* %88, i32* %89, i32* %9)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @SQLITE_OK, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %85
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %101 = call i32 @clearYMD_HMS_TZ(%struct.TYPE_13__* %100)
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @localtimeOffset(%struct.TYPE_13__* %103, i32* %104, i32* %9)
  %106 = sub nsw i32 %102, %105
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %94, %85
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 3
  store i32 1, i32* %113, align 4
  br label %116

114:                                              ; preds = %80
  %115 = load i32, i32* @SQLITE_OK, align 4
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %114, %111
  br label %117

117:                                              ; preds = %116, %76
  br label %118

118:                                              ; preds = %117, %75
  br label %519

119:                                              ; preds = %4
  %120 = load i8*, i8** %6, align 8
  %121 = call i32 @sqlite3_strnicmp(i8* %120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %176

123:                                              ; preds = %119
  %124 = load i8*, i8** %6, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 8
  %126 = load i8*, i8** %6, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 8
  %128 = call i32 @sqlite3Strlen30(i8* %127)
  %129 = load i32, i32* @SQLITE_UTF8, align 4
  %130 = call i32 @sqlite3AtoF(i8* %125, double* %10, i32 %128, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %176

132:                                              ; preds = %123
  %133 = load double, double* %10, align 8
  %134 = fptosi double %133 to i32
  store i32 %134, i32* %7, align 4
  %135 = sitofp i32 %134 to double
  %136 = load double, double* %10, align 8
  %137 = fcmp oeq double %135, %136
  br i1 %137, label %138, label %176

138:                                              ; preds = %132
  %139 = load i32, i32* %7, align 4
  %140 = icmp sge i32 %139, 0
  br i1 %140, label %141, label %176

141:                                              ; preds = %138
  %142 = load double, double* %10, align 8
  %143 = fcmp olt double %142, 7.000000e+00
  br i1 %143, label %144, label %176

144:                                              ; preds = %141
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %146 = call i32 @computeYMD_HMS(%struct.TYPE_13__* %145)
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 8
  store i32 0, i32* %148, align 8
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 2
  store i32 0, i32* %150, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %152 = call i32 @computeJD(%struct.TYPE_13__* %151)
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, 129600000
  %157 = sdiv i32 %156, 86400000
  %158 = srem i32 %157, 7
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp sgt i32 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %144
  %163 = load i32, i32* %12, align 4
  %164 = sub nsw i32 %163, 7
  store i32 %164, i32* %12, align 4
  br label %165

165:                                              ; preds = %162, %144
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* %12, align 4
  %168 = sub nsw i32 %166, %167
  %169 = mul nsw i32 %168, 86400000
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, %169
  store i32 %173, i32* %171, align 8
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %175 = call i32 @clearYMD_HMS_TZ(%struct.TYPE_13__* %174)
  store i32 0, i32* %9, align 4
  br label %176

176:                                              ; preds = %165, %141, %138, %132, %123, %119
  br label %519

177:                                              ; preds = %4
  %178 = load i8*, i8** %6, align 8
  %179 = call i32 @sqlite3_strnicmp(i8* %178, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 9)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %177
  br label %519

182:                                              ; preds = %177
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %198, label %187

187:                                              ; preds = %182
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 12
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %198, label %192

192:                                              ; preds = %187
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %192
  br label %519

198:                                              ; preds = %192, %187, %182
  %199 = load i8*, i8** %6, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 9
  store i8* %200, i8** %6, align 8
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %202 = call i32 @computeYMD(%struct.TYPE_13__* %201)
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 4
  store i32 1, i32* %204, align 8
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 10
  store i32 0, i32* %206, align 8
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 11
  store i32 0, i32* %208, align 4
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 1
  store double 0.000000e+00, double* %210, align 8
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 9
  store i32 0, i32* %212, align 4
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 8
  store i32 0, i32* %214, align 8
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 2
  store i32 0, i32* %216, align 8
  %217 = load i8*, i8** %6, align 8
  %218 = call i32 @sqlite3_stricmp(i8* %217, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %198
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 5
  store i32 1, i32* %222, align 4
  store i32 0, i32* %9, align 4
  br label %239

223:                                              ; preds = %198
  %224 = load i8*, i8** %6, align 8
  %225 = call i32 @sqlite3_stricmp(i8* %224, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %223
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 6
  store i32 1, i32* %229, align 8
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 5
  store i32 1, i32* %231, align 4
  store i32 0, i32* %9, align 4
  br label %238

232:                                              ; preds = %223
  %233 = load i8*, i8** %6, align 8
  %234 = call i32 @sqlite3_stricmp(i8* %233, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %232
  store i32 0, i32* %9, align 4
  br label %237

237:                                              ; preds = %236, %232
  br label %238

238:                                              ; preds = %237, %227
  br label %239

239:                                              ; preds = %238, %220
  br label %519

240:                                              ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  store i32 1, i32* %7, align 4
  br label %241

241:                                              ; preds = %269, %240
  %242 = load i8*, i8** %6, align 8
  %243 = load i32, i32* %7, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, i8* %242, i64 %244
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %266

249:                                              ; preds = %241
  %250 = load i8*, i8** %6, align 8
  %251 = load i32, i32* %7, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, i8* %250, i64 %252
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp ne i32 %255, 58
  br i1 %256, label %257, label %266

257:                                              ; preds = %249
  %258 = load i8*, i8** %6, align 8
  %259 = load i32, i32* %7, align 4
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
  %270 = load i32, i32* %7, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %7, align 4
  br label %241

272:                                              ; preds = %266
  %273 = load i8*, i8** %6, align 8
  %274 = load i32, i32* %7, align 4
  %275 = load i32, i32* @SQLITE_UTF8, align 4
  %276 = call i32 @sqlite3AtoF(i8* %273, double* %10, i32 %274, i32 %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %279, label %278

278:                                              ; preds = %272
  store i32 1, i32* %9, align 4
  br label %519

279:                                              ; preds = %272
  %280 = load i8*, i8** %6, align 8
  %281 = load i32, i32* %7, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8, i8* %280, i64 %282
  %284 = load i8, i8* %283, align 1
  %285 = sext i8 %284 to i32
  %286 = icmp eq i32 %285, 58
  br i1 %286, label %287, label %336

287:                                              ; preds = %279
  %288 = load i8*, i8** %6, align 8
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
  %297 = call i32 @memset(%struct.TYPE_13__* %16, i32 0, i32 64)
  %298 = load i8*, i8** %15, align 8
  %299 = call i32 @parseHhMmSs(i8* %298, %struct.TYPE_13__* %16)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %296
  br label %519

302:                                              ; preds = %296
  %303 = call i32 @computeJD(%struct.TYPE_13__* %16)
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = sub nsw i32 %305, 43200000
  store i32 %306, i32* %304, align 8
  %307 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = sdiv i32 %308, 86400000
  store i32 %309, i32* %17, align 4
  %310 = load i32, i32* %17, align 4
  %311 = mul nsw i32 %310, 86400000
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = sub nsw i32 %313, %311
  store i32 %314, i32* %312, align 8
  %315 = load i8*, i8** %6, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 0
  %317 = load i8, i8* %316, align 1
  %318 = sext i8 %317 to i32
  %319 = icmp eq i32 %318, 45
  br i1 %319, label %320, label %325

320:                                              ; preds = %302
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = sub nsw i32 0, %322
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i32 %323, i32* %324, align 8
  br label %325

325:                                              ; preds = %320, %302
  %326 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %327 = call i32 @computeJD(%struct.TYPE_13__* %326)
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %329 = call i32 @clearYMD_HMS_TZ(%struct.TYPE_13__* %328)
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = add nsw i32 %334, %331
  store i32 %335, i32* %333, align 8
  store i32 0, i32* %9, align 4
  br label %519

336:                                              ; preds = %279
  %337 = load i32, i32* %7, align 4
  %338 = load i8*, i8** %6, align 8
  %339 = sext i32 %337 to i64
  %340 = getelementptr inbounds i8, i8* %338, i64 %339
  store i8* %340, i8** %6, align 8
  br label %341

341:                                              ; preds = %346, %336
  %342 = load i8*, i8** %6, align 8
  %343 = load i8, i8* %342, align 1
  %344 = call i32 @sqlite3Isspace(i8 signext %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %341
  %347 = load i8*, i8** %6, align 8
  %348 = getelementptr inbounds i8, i8* %347, i32 1
  store i8* %348, i8** %6, align 8
  br label %341

349:                                              ; preds = %341
  %350 = load i8*, i8** %6, align 8
  %351 = call i32 @sqlite3Strlen30(i8* %350)
  store i32 %351, i32* %7, align 4
  %352 = load i32, i32* %7, align 4
  %353 = icmp sgt i32 %352, 10
  br i1 %353, label %357, label %354

354:                                              ; preds = %349
  %355 = load i32, i32* %7, align 4
  %356 = icmp slt i32 %355, 3
  br i1 %356, label %357, label %358

357:                                              ; preds = %354, %349
  br label %519

358:                                              ; preds = %354
  %359 = load i32*, i32** @sqlite3UpperToLower, align 8
  %360 = load i8*, i8** %6, align 8
  %361 = load i32, i32* %7, align 4
  %362 = sub nsw i32 %361, 1
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i8, i8* %360, i64 %363
  %365 = load i8, i8* %364, align 1
  %366 = sext i8 %365 to i64
  %367 = getelementptr inbounds i32, i32* %359, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = icmp eq i32 %368, 115
  br i1 %369, label %370, label %373

370:                                              ; preds = %358
  %371 = load i32, i32* %7, align 4
  %372 = add nsw i32 %371, -1
  store i32 %372, i32* %7, align 4
  br label %373

373:                                              ; preds = %370, %358
  %374 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %375 = call i32 @computeJD(%struct.TYPE_13__* %374)
  store i32 1, i32* %9, align 4
  %376 = load double, double* %10, align 8
  %377 = fcmp olt double %376, 0.000000e+00
  %378 = zext i1 %377 to i64
  %379 = select i1 %377, double -5.000000e-01, double 5.000000e-01
  store double %379, double* %13, align 8
  store i32 0, i32* %14, align 4
  br label %380

380:                                              ; preds = %512, %373
  %381 = load i32, i32* %14, align 4
  %382 = load %struct.TYPE_12__*, %struct.TYPE_12__** @aXformType, align 8
  %383 = call i32 @ArraySize(%struct.TYPE_12__* %382)
  %384 = icmp slt i32 %381, %383
  br i1 %384, label %385, label %515

385:                                              ; preds = %380
  %386 = load %struct.TYPE_12__*, %struct.TYPE_12__** @aXformType, align 8
  %387 = load i32, i32* %14, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* %7, align 4
  %393 = icmp eq i32 %391, %392
  br i1 %393, label %394, label %511

394:                                              ; preds = %385
  %395 = load %struct.TYPE_12__*, %struct.TYPE_12__** @aXformType, align 8
  %396 = load i32, i32* %14, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %395, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %398, i32 0, i32 1
  %400 = load i8*, i8** %399, align 8
  %401 = load i8*, i8** %6, align 8
  %402 = load i32, i32* %7, align 4
  %403 = call i32 @sqlite3_strnicmp(i8* %400, i8* %401, i32 %402)
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %511

405:                                              ; preds = %394
  %406 = load double, double* %10, align 8
  %407 = load %struct.TYPE_12__*, %struct.TYPE_12__** @aXformType, align 8
  %408 = load i32, i32* %14, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %407, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %410, i32 0, i32 2
  %412 = load double, double* %411, align 8
  %413 = fneg double %412
  %414 = fcmp ogt double %406, %413
  br i1 %414, label %415, label %511

415:                                              ; preds = %405
  %416 = load double, double* %10, align 8
  %417 = load %struct.TYPE_12__*, %struct.TYPE_12__** @aXformType, align 8
  %418 = load i32, i32* %14, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %417, i64 %419
  %421 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %420, i32 0, i32 2
  %422 = load double, double* %421, align 8
  %423 = fcmp olt double %416, %422
  br i1 %423, label %424, label %511

424:                                              ; preds = %415
  %425 = load %struct.TYPE_12__*, %struct.TYPE_12__** @aXformType, align 8
  %426 = load i32, i32* %14, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %428, i32 0, i32 4
  %430 = load i32, i32* %429, align 8
  switch i32 %430, label %493 [
    i32 1, label %431
    i32 2, label %476
  ]

431:                                              ; preds = %424
  %432 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %433 = call i32 @computeYMD_HMS(%struct.TYPE_13__* %432)
  %434 = load double, double* %10, align 8
  %435 = fptosi double %434 to i32
  %436 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %437 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %436, i32 0, i32 6
  %438 = load i32, i32* %437, align 8
  %439 = add nsw i32 %438, %435
  store i32 %439, i32* %437, align 8
  %440 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %441 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %440, i32 0, i32 6
  %442 = load i32, i32* %441, align 8
  %443 = icmp sgt i32 %442, 0
  br i1 %443, label %444, label %450

444:                                              ; preds = %431
  %445 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %446 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %445, i32 0, i32 6
  %447 = load i32, i32* %446, align 8
  %448 = sub nsw i32 %447, 1
  %449 = sdiv i32 %448, 12
  br label %456

450:                                              ; preds = %431
  %451 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %452 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %451, i32 0, i32 6
  %453 = load i32, i32* %452, align 8
  %454 = sub nsw i32 %453, 12
  %455 = sdiv i32 %454, 12
  br label %456

456:                                              ; preds = %450, %444
  %457 = phi i32 [ %449, %444 ], [ %455, %450 ]
  store i32 %457, i32* %18, align 4
  %458 = load i32, i32* %18, align 4
  %459 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %460 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %459, i32 0, i32 7
  %461 = load i32, i32* %460, align 4
  %462 = add nsw i32 %461, %458
  store i32 %462, i32* %460, align 4
  %463 = load i32, i32* %18, align 4
  %464 = mul nsw i32 %463, 12
  %465 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %466 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %465, i32 0, i32 6
  %467 = load i32, i32* %466, align 8
  %468 = sub nsw i32 %467, %464
  store i32 %468, i32* %466, align 8
  %469 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %470 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %469, i32 0, i32 2
  store i32 0, i32* %470, align 8
  %471 = load double, double* %10, align 8
  %472 = fptosi double %471 to i32
  %473 = sitofp i32 %472 to double
  %474 = load double, double* %10, align 8
  %475 = fsub double %474, %473
  store double %475, double* %10, align 8
  br label %493

476:                                              ; preds = %424
  %477 = load double, double* %10, align 8
  %478 = fptosi double %477 to i32
  store i32 %478, i32* %19, align 4
  %479 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %480 = call i32 @computeYMD_HMS(%struct.TYPE_13__* %479)
  %481 = load i32, i32* %19, align 4
  %482 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %483 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %482, i32 0, i32 7
  %484 = load i32, i32* %483, align 4
  %485 = add nsw i32 %484, %481
  store i32 %485, i32* %483, align 4
  %486 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %487 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %486, i32 0, i32 2
  store i32 0, i32* %487, align 8
  %488 = load double, double* %10, align 8
  %489 = fptosi double %488 to i32
  %490 = sitofp i32 %489 to double
  %491 = load double, double* %10, align 8
  %492 = fsub double %491, %490
  store double %492, double* %10, align 8
  br label %493

493:                                              ; preds = %424, %476, %456
  %494 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %495 = call i32 @computeJD(%struct.TYPE_13__* %494)
  %496 = load double, double* %10, align 8
  %497 = load %struct.TYPE_12__*, %struct.TYPE_12__** @aXformType, align 8
  %498 = load i32, i32* %14, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %497, i64 %499
  %501 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %500, i32 0, i32 3
  %502 = load double, double* %501, align 8
  %503 = fmul double %496, %502
  %504 = load double, double* %13, align 8
  %505 = fadd double %503, %504
  %506 = fptosi double %505 to i32
  %507 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %508 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = add nsw i32 %509, %506
  store i32 %510, i32* %508, align 8
  store i32 0, i32* %9, align 4
  br label %515

511:                                              ; preds = %415, %405, %394, %385
  br label %512

512:                                              ; preds = %511
  %513 = load i32, i32* %14, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %14, align 4
  br label %380

515:                                              ; preds = %493, %380
  %516 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %517 = call i32 @clearYMD_HMS_TZ(%struct.TYPE_13__* %516)
  br label %519

518:                                              ; preds = %4
  br label %519

519:                                              ; preds = %518, %515, %357, %325, %301, %278, %239, %197, %181, %176, %118, %43
  %520 = load i32, i32* %9, align 4
  ret i32 %520
}

declare dso_local i32 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i32 @computeJD(%struct.TYPE_13__*) #1

declare dso_local i32 @localtimeOffset(%struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32 @clearYMD_HMS_TZ(%struct.TYPE_13__*) #1

declare dso_local i32 @sqlite3_strnicmp(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3AtoF(i8*, double*, i32, i32) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local i32 @computeYMD_HMS(%struct.TYPE_13__*) #1

declare dso_local i32 @computeYMD(%struct.TYPE_13__*) #1

declare dso_local i32 @sqlite3Isspace(i8 signext) #1

declare dso_local i32 @sqlite3Isdigit(i8 signext) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @parseHhMmSs(i8*, %struct.TYPE_13__*) #1

declare dso_local i32 @ArraySize(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
