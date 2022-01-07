; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_util.c_phar_get_entry_data.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_util.c_phar_get_entry_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i8*, i32*, i64, i32, %struct.TYPE_23__*, %struct.TYPE_25__*, i64 }
%struct.TYPE_23__ = type { i64, i8, %struct.TYPE_22__*, i64, %struct.TYPE_24__*, i64, i32, i64, i64, i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_25__ = type { i64, i64 }

@FAILURE = common dso_local global i32 0, align 4
@readonly = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"phar error: file \22%s\22 in phar \22%s\22 cannot be opened for writing, disabled by ini setting\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"phar error: file \22\22 in phar \22%s\22 cannot be empty\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [102 x i8] c"phar error: file \22%s\22 in phar \22%s\22 cannot be opened for writing, could not make cached phar writeable\00", align 1
@.str.3 = private unnamed_addr constant [97 x i8] c"phar error: file \22%s\22 in phar \22%s\22 cannot be opened for reading, writable file pointers are open\00", align 1
@.str.4 = private unnamed_addr constant [97 x i8] c"phar error: file \22%s\22 in phar \22%s\22 cannot be opened for writing, readable file pointers are open\00", align 1
@PHAR_MOD = common dso_local global i64 0, align 8
@SEEK_END = common dso_local global i32 0, align 4
@TAR_FILE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phar_get_entry_data(%struct.TYPE_24__** %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i8 signext %6, i8** %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_25__*, align 8
  %21 = alloca %struct.TYPE_23__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_24__** %0, %struct.TYPE_24__*** %11, align 8
  store i8* %1, i8** %12, align 8
  store i64 %2, i64* %13, align 8
  store i8* %3, i8** %14, align 8
  store i64 %4, i64* %15, align 8
  store i8* %5, i8** %16, align 8
  store i8 %6, i8* %17, align 1
  store i8** %7, i8*** %18, align 8
  store i32 %8, i32* %19, align 4
  %27 = load i8*, i8** %16, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 114
  br i1 %31, label %38, label %32

32:                                               ; preds = %9
  %33 = load i8*, i8** %16, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 43
  br label %38

38:                                               ; preds = %32, %9
  %39 = phi i1 [ true, %9 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %22, align 4
  %41 = load i8*, i8** %16, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 97
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %23, align 4
  %47 = load i8*, i8** %16, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 114
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %24, align 4
  %53 = load i8*, i8** %16, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 119
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %25, align 4
  %59 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  %60 = icmp ne %struct.TYPE_24__** %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %38
  %62 = load i32, i32* @FAILURE, align 4
  store i32 %62, i32* %10, align 4
  br label %494

63:                                               ; preds = %38
  %64 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %64, align 8
  %65 = load i8**, i8*** %18, align 8
  %66 = icmp ne i8** %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i8**, i8*** %18, align 8
  store i8* null, i8** %68, align 8
  br label %69

69:                                               ; preds = %67, %63
  %70 = load i32, i32* @FAILURE, align 4
  %71 = load i8*, i8** %12, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i8**, i8*** %18, align 8
  %74 = call i32 @phar_get_archive(%struct.TYPE_25__** %20, i8* %71, i64 %72, i32* null, i32 0, i8** %73)
  %75 = icmp eq i32 %70, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @FAILURE, align 4
  store i32 %77, i32* %10, align 4
  br label %494

78:                                               ; preds = %69
  %79 = load i32, i32* %22, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %78
  %82 = load i32, i32* @readonly, align 4
  %83 = call i64 @PHAR_G(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %81
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %85
  %91 = load i8**, i8*** %18, align 8
  %92 = icmp ne i8** %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i8**, i8*** %18, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = call i32 (i8**, i32, i8*, i8*, ...) @spprintf(i8** %94, i32 4096, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i8* %95, i8* %96)
  br label %98

98:                                               ; preds = %93, %90
  %99 = load i32, i32* @FAILURE, align 4
  store i32 %99, i32* %10, align 4
  br label %494

100:                                              ; preds = %85, %81, %78
  %101 = load i64, i64* %15, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %100
  %104 = load i8**, i8*** %18, align 8
  %105 = icmp ne i8** %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i8**, i8*** %18, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = call i32 (i8**, i32, i8*, i8*, ...) @spprintf(i8** %107, i32 4096, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %106, %103
  %111 = load i32, i32* @FAILURE, align 4
  store i32 %111, i32* %10, align 4
  br label %494

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %219, %112
  %114 = load i8, i8* %17, align 1
  %115 = icmp ne i8 %114, 0
  br i1 %115, label %116, label %157

116:                                              ; preds = %113
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %118 = load i8*, i8** %14, align 8
  %119 = load i64, i64* %15, align 8
  %120 = load i8, i8* %17, align 1
  %121 = load i32, i32* %24, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %116
  %124 = load i32, i32* @readonly, align 4
  %125 = call i64 @PHAR_G(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %123
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  br label %135

133:                                              ; preds = %127, %123, %116
  %134 = load i8**, i8*** %18, align 8
  br label %135

135:                                              ; preds = %133, %132
  %136 = phi i8** [ null, %132 ], [ %134, %133 ]
  %137 = load i32, i32* %19, align 4
  %138 = call %struct.TYPE_23__* @phar_get_entry_info_dir(%struct.TYPE_25__* %117, i8* %118, i64 %119, i8 signext %120, i8** %136, i32 %137)
  store %struct.TYPE_23__* %138, %struct.TYPE_23__** %21, align 8
  %139 = icmp eq %struct.TYPE_23__* %138, null
  br i1 %139, label %140, label %156

140:                                              ; preds = %135
  %141 = load i32, i32* %24, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %140
  %144 = load i32, i32* @readonly, align 4
  %145 = call i64 @PHAR_G(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %147, %143
  %153 = load i32, i32* @SUCCESS, align 4
  store i32 %153, i32* %10, align 4
  br label %494

154:                                              ; preds = %147, %140
  %155 = load i32, i32* @FAILURE, align 4
  store i32 %155, i32* %10, align 4
  br label %494

156:                                              ; preds = %135
  br label %197

157:                                              ; preds = %113
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %159 = load i8*, i8** %14, align 8
  %160 = load i64, i64* %15, align 8
  %161 = load i32, i32* %24, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %157
  %164 = load i32, i32* @readonly, align 4
  %165 = call i64 @PHAR_G(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %163
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %167
  br label %175

173:                                              ; preds = %167, %163, %157
  %174 = load i8**, i8*** %18, align 8
  br label %175

175:                                              ; preds = %173, %172
  %176 = phi i8** [ null, %172 ], [ %174, %173 ]
  %177 = load i32, i32* %19, align 4
  %178 = call %struct.TYPE_23__* @phar_get_entry_info(%struct.TYPE_25__* %158, i8* %159, i64 %160, i8** %176, i32 %177)
  store %struct.TYPE_23__* %178, %struct.TYPE_23__** %21, align 8
  %179 = icmp eq %struct.TYPE_23__* %178, null
  br i1 %179, label %180, label %196

180:                                              ; preds = %175
  %181 = load i32, i32* %24, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %180
  %184 = load i32, i32* @readonly, align 4
  %185 = call i64 @PHAR_G(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %183
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %189 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %187, %183
  %193 = load i32, i32* @SUCCESS, align 4
  store i32 %193, i32* %10, align 4
  br label %494

194:                                              ; preds = %187, %180
  %195 = load i32, i32* @FAILURE, align 4
  store i32 %195, i32* %10, align 4
  br label %494

196:                                              ; preds = %175
  br label %197

197:                                              ; preds = %196, %156
  %198 = load i32, i32* %22, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %220

200:                                              ; preds = %197
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %220

205:                                              ; preds = %200
  %206 = load i32, i32* @FAILURE, align 4
  %207 = call i32 @phar_copy_on_write(%struct.TYPE_25__** %20)
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %219

209:                                              ; preds = %205
  %210 = load i8**, i8*** %18, align 8
  %211 = icmp ne i8** %210, null
  br i1 %211, label %212, label %217

212:                                              ; preds = %209
  %213 = load i8**, i8*** %18, align 8
  %214 = load i8*, i8** %14, align 8
  %215 = load i8*, i8** %12, align 8
  %216 = call i32 (i8**, i32, i8*, i8*, ...) @spprintf(i8** %213, i32 4096, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0), i8* %214, i8* %215)
  br label %217

217:                                              ; preds = %212, %209
  %218 = load i32, i32* @FAILURE, align 4
  store i32 %218, i32* %10, align 4
  br label %494

219:                                              ; preds = %205
  br label %113

220:                                              ; preds = %200, %197
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %222 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %221, i32 0, i32 9
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %238

225:                                              ; preds = %220
  %226 = load i32, i32* %22, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %238, label %228

228:                                              ; preds = %225
  %229 = load i8**, i8*** %18, align 8
  %230 = icmp ne i8** %229, null
  br i1 %230, label %231, label %236

231:                                              ; preds = %228
  %232 = load i8**, i8*** %18, align 8
  %233 = load i8*, i8** %14, align 8
  %234 = load i8*, i8** %12, align 8
  %235 = call i32 (i8**, i32, i8*, i8*, ...) @spprintf(i8** %232, i32 4096, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.3, i64 0, i64 0), i8* %233, i8* %234)
  br label %236

236:                                              ; preds = %231, %228
  %237 = load i32, i32* @FAILURE, align 4
  store i32 %237, i32* %10, align 4
  br label %494

238:                                              ; preds = %225, %220
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %256

243:                                              ; preds = %238
  %244 = load i32, i32* %22, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %256

246:                                              ; preds = %243
  %247 = load i8**, i8*** %18, align 8
  %248 = icmp ne i8** %247, null
  br i1 %248, label %249, label %254

249:                                              ; preds = %246
  %250 = load i8**, i8*** %18, align 8
  %251 = load i8*, i8** %14, align 8
  %252 = load i8*, i8** %12, align 8
  %253 = call i32 (i8**, i32, i8*, i8*, ...) @spprintf(i8** %250, i32 4096, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.4, i64 0, i64 0), i8* %251, i8* %252)
  br label %254

254:                                              ; preds = %249, %246
  %255 = load i32, i32* @FAILURE, align 4
  store i32 %255, i32* %10, align 4
  br label %494

256:                                              ; preds = %243, %238
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 8
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %269

261:                                              ; preds = %256
  %262 = load i32, i32* %24, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %266, label %264

264:                                              ; preds = %261
  %265 = load i32, i32* @FAILURE, align 4
  store i32 %265, i32* %10, align 4
  br label %494

266:                                              ; preds = %261
  %267 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %268 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %267, i32 0, i32 8
  store i64 0, i64* %268, align 8
  br label %269

269:                                              ; preds = %266, %256
  %270 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %271 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %270, i32 0, i32 7
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %325

274:                                              ; preds = %269
  %275 = call i64 @emalloc(i32 64)
  %276 = inttoptr i64 %275 to %struct.TYPE_24__*
  %277 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  store %struct.TYPE_24__* %276, %struct.TYPE_24__** %277, align 8
  %278 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  %279 = load %struct.TYPE_24__*, %struct.TYPE_24__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %279, i32 0, i32 7
  store i64 0, i64* %280, align 8
  %281 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  %282 = load %struct.TYPE_24__*, %struct.TYPE_24__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %282, i32 0, i32 2
  store i32* null, i32** %283, align 8
  %284 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %285 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 6
  store %struct.TYPE_25__* %284, %struct.TYPE_25__** %287, align 8
  %288 = load i32, i32* %22, align 4
  %289 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  %290 = load %struct.TYPE_24__*, %struct.TYPE_24__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %290, i32 0, i32 0
  store i32 %288, i32* %291, align 8
  %292 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %293 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  %294 = load %struct.TYPE_24__*, %struct.TYPE_24__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %294, i32 0, i32 5
  store %struct.TYPE_23__* %292, %struct.TYPE_23__** %295, align 8
  %296 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %297 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %296, i32 0, i32 6
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  %300 = load %struct.TYPE_24__*, %struct.TYPE_24__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %300, i32 0, i32 4
  store i32 %298, i32* %301, align 8
  %302 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %303 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %302, i32 0, i32 5
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  %306 = load %struct.TYPE_24__*, %struct.TYPE_24__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %306, i32 0, i32 3
  store i64 %304, i64* %307, align 8
  %308 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %309 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %323, label %312

312:                                              ; preds = %274
  %313 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %314 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %313, i32 0, i32 2
  %315 = load %struct.TYPE_22__*, %struct.TYPE_22__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %316, align 4
  %319 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %320 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %319, i32 0, i32 3
  %321 = load i64, i64* %320, align 8
  %322 = add nsw i64 %321, 1
  store i64 %322, i64* %320, align 8
  br label %323

323:                                              ; preds = %312, %274
  %324 = load i32, i32* @SUCCESS, align 4
  store i32 %324, i32* %10, align 4
  br label %494

325:                                              ; preds = %269
  %326 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %327 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @PHAR_MOD, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %331, label %353

331:                                              ; preds = %325
  %332 = load i32, i32* %25, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %344

334:                                              ; preds = %331
  %335 = load i32, i32* @FAILURE, align 4
  %336 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %337 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %338 = load i8**, i8*** %18, align 8
  %339 = call i32 @phar_create_writeable_entry(%struct.TYPE_25__* %336, %struct.TYPE_23__* %337, i8** %338)
  %340 = icmp eq i32 %335, %339
  br i1 %340, label %341, label %343

341:                                              ; preds = %334
  %342 = load i32, i32* @FAILURE, align 4
  store i32 %342, i32* %10, align 4
  br label %494

343:                                              ; preds = %334
  br label %352

344:                                              ; preds = %331
  %345 = load i32, i32* %23, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %351

347:                                              ; preds = %344
  %348 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %349 = load i32, i32* @SEEK_END, align 4
  %350 = call i32 @phar_seek_efp(%struct.TYPE_23__* %348, i32 0, i32 %349, i32 0, i32 0)
  br label %351

351:                                              ; preds = %347, %344
  br label %352

352:                                              ; preds = %351, %343
  br label %414

353:                                              ; preds = %325
  %354 = load i32, i32* %22, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %404

356:                                              ; preds = %353
  %357 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %358 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %357, i32 0, i32 4
  %359 = load %struct.TYPE_24__*, %struct.TYPE_24__** %358, align 8
  %360 = icmp ne %struct.TYPE_24__* %359, null
  br i1 %360, label %361, label %381

361:                                              ; preds = %356
  %362 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %363 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %362, i32 0, i32 4
  %364 = load %struct.TYPE_24__*, %struct.TYPE_24__** %363, align 8
  %365 = call i32 @efree(%struct.TYPE_24__* %364)
  %366 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %367 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %366, i32 0, i32 4
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %367, align 8
  %368 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %369 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %368, i32 0, i32 5
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %375

372:                                              ; preds = %361
  %373 = load i8, i8* @TAR_FILE, align 1
  %374 = sext i8 %373 to i32
  br label %376

375:                                              ; preds = %361
  br label %376

376:                                              ; preds = %375, %372
  %377 = phi i32 [ %374, %372 ], [ 0, %375 ]
  %378 = trunc i32 %377 to i8
  %379 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %380 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %379, i32 0, i32 1
  store i8 %378, i8* %380, align 8
  br label %381

381:                                              ; preds = %376, %356
  %382 = load i32, i32* %25, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %394

384:                                              ; preds = %381
  %385 = load i32, i32* @FAILURE, align 4
  %386 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %387 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %388 = load i8**, i8*** %18, align 8
  %389 = call i32 @phar_create_writeable_entry(%struct.TYPE_25__* %386, %struct.TYPE_23__* %387, i8** %388)
  %390 = icmp eq i32 %385, %389
  br i1 %390, label %391, label %393

391:                                              ; preds = %384
  %392 = load i32, i32* @FAILURE, align 4
  store i32 %392, i32* %10, align 4
  br label %494

393:                                              ; preds = %384
  br label %403

394:                                              ; preds = %381
  %395 = load i32, i32* @FAILURE, align 4
  %396 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %397 = load i8**, i8*** %18, align 8
  %398 = call i32 @phar_separate_entry_fp(%struct.TYPE_23__* %396, i8** %397)
  %399 = icmp eq i32 %395, %398
  br i1 %399, label %400, label %402

400:                                              ; preds = %394
  %401 = load i32, i32* @FAILURE, align 4
  store i32 %401, i32* %10, align 4
  br label %494

402:                                              ; preds = %394
  br label %403

403:                                              ; preds = %402, %393
  br label %413

404:                                              ; preds = %353
  %405 = load i32, i32* @FAILURE, align 4
  %406 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %407 = load i8**, i8*** %18, align 8
  %408 = call i32 @phar_open_entry_fp(%struct.TYPE_23__* %406, i8** %407, i32 1)
  %409 = icmp eq i32 %405, %408
  br i1 %409, label %410, label %412

410:                                              ; preds = %404
  %411 = load i32, i32* @FAILURE, align 4
  store i32 %411, i32* %10, align 4
  br label %494

412:                                              ; preds = %404
  br label %413

413:                                              ; preds = %412, %403
  br label %414

414:                                              ; preds = %413, %352
  %415 = call i64 @emalloc(i32 64)
  %416 = inttoptr i64 %415 to %struct.TYPE_24__*
  %417 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  store %struct.TYPE_24__* %416, %struct.TYPE_24__** %417, align 8
  %418 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  %419 = load %struct.TYPE_24__*, %struct.TYPE_24__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %419, i32 0, i32 7
  store i64 0, i64* %420, align 8
  %421 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %422 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  %423 = load %struct.TYPE_24__*, %struct.TYPE_24__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %423, i32 0, i32 6
  store %struct.TYPE_25__* %421, %struct.TYPE_25__** %424, align 8
  %425 = load i32, i32* %22, align 4
  %426 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  %427 = load %struct.TYPE_24__*, %struct.TYPE_24__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %427, i32 0, i32 0
  store i32 %425, i32* %428, align 8
  %429 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %430 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  %431 = load %struct.TYPE_24__*, %struct.TYPE_24__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %431, i32 0, i32 5
  store %struct.TYPE_23__* %429, %struct.TYPE_23__** %432, align 8
  %433 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %434 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %433, i32 0, i32 6
  %435 = load i32, i32* %434, align 8
  %436 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  %437 = load %struct.TYPE_24__*, %struct.TYPE_24__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %437, i32 0, i32 4
  store i32 %435, i32* %438, align 8
  %439 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %440 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %439, i32 0, i32 5
  %441 = load i64, i64* %440, align 8
  %442 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  %443 = load %struct.TYPE_24__*, %struct.TYPE_24__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %443, i32 0, i32 3
  store i64 %441, i64* %444, align 8
  %445 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %446 = call i32* @phar_get_efp(%struct.TYPE_23__* %445, i32 1)
  %447 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  %448 = load %struct.TYPE_24__*, %struct.TYPE_24__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %448, i32 0, i32 2
  store i32* %446, i32** %449, align 8
  %450 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %451 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %450, i32 0, i32 4
  %452 = load %struct.TYPE_24__*, %struct.TYPE_24__** %451, align 8
  %453 = icmp ne %struct.TYPE_24__* %452, null
  br i1 %453, label %454, label %470

454:                                              ; preds = %414
  %455 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %456 = call %struct.TYPE_23__* @phar_get_link_source(%struct.TYPE_23__* %455)
  store %struct.TYPE_23__* %456, %struct.TYPE_23__** %26, align 8
  %457 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %458 = icmp ne %struct.TYPE_23__* %457, null
  br i1 %458, label %464, label %459

459:                                              ; preds = %454
  %460 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  %461 = load %struct.TYPE_24__*, %struct.TYPE_24__** %460, align 8
  %462 = call i32 @efree(%struct.TYPE_24__* %461)
  %463 = load i32, i32* @FAILURE, align 4
  store i32 %463, i32* %10, align 4
  br label %494

464:                                              ; preds = %454
  %465 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %466 = call i8* @phar_get_fp_offset(%struct.TYPE_23__* %465)
  %467 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  %468 = load %struct.TYPE_24__*, %struct.TYPE_24__** %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %468, i32 0, i32 1
  store i8* %466, i8** %469, align 8
  br label %476

470:                                              ; preds = %414
  %471 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %472 = call i8* @phar_get_fp_offset(%struct.TYPE_23__* %471)
  %473 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  %474 = load %struct.TYPE_24__*, %struct.TYPE_24__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %474, i32 0, i32 1
  store i8* %472, i8** %475, align 8
  br label %476

476:                                              ; preds = %470, %464
  %477 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %478 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %477, i32 0, i32 0
  %479 = load i64, i64* %478, align 8
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %492, label %481

481:                                              ; preds = %476
  %482 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %483 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %482, i32 0, i32 3
  %484 = load i64, i64* %483, align 8
  %485 = add nsw i64 %484, 1
  store i64 %485, i64* %483, align 8
  %486 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %487 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %486, i32 0, i32 2
  %488 = load %struct.TYPE_22__*, %struct.TYPE_22__** %487, align 8
  %489 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %489, align 4
  br label %492

492:                                              ; preds = %481, %476
  %493 = load i32, i32* @SUCCESS, align 4
  store i32 %493, i32* %10, align 4
  br label %494

494:                                              ; preds = %492, %459, %410, %400, %391, %341, %323, %264, %254, %236, %217, %194, %192, %154, %152, %110, %98, %76, %61
  %495 = load i32, i32* %10, align 4
  ret i32 %495
}

declare dso_local i32 @phar_get_archive(%struct.TYPE_25__**, i8*, i64, i32*, i32, i8**) #1

declare dso_local i64 @PHAR_G(i32) #1

declare dso_local i32 @spprintf(i8**, i32, i8*, i8*, ...) #1

declare dso_local %struct.TYPE_23__* @phar_get_entry_info_dir(%struct.TYPE_25__*, i8*, i64, i8 signext, i8**, i32) #1

declare dso_local %struct.TYPE_23__* @phar_get_entry_info(%struct.TYPE_25__*, i8*, i64, i8**, i32) #1

declare dso_local i32 @phar_copy_on_write(%struct.TYPE_25__**) #1

declare dso_local i64 @emalloc(i32) #1

declare dso_local i32 @phar_create_writeable_entry(%struct.TYPE_25__*, %struct.TYPE_23__*, i8**) #1

declare dso_local i32 @phar_seek_efp(%struct.TYPE_23__*, i32, i32, i32, i32) #1

declare dso_local i32 @efree(%struct.TYPE_24__*) #1

declare dso_local i32 @phar_separate_entry_fp(%struct.TYPE_23__*, i8**) #1

declare dso_local i32 @phar_open_entry_fp(%struct.TYPE_23__*, i8**, i32) #1

declare dso_local i32* @phar_get_efp(%struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_23__* @phar_get_link_source(%struct.TYPE_23__*) #1

declare dso_local i8* @phar_get_fp_offset(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
