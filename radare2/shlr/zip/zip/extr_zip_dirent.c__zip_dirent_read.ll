; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_dirent_read.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_dirent_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_dirent = type { i32, i64, i64, i64, i32, i32*, i8*, i32*, i32*, i8*, i64, i8*, i32, i64, i64, i64 }
%struct.zip_error = type { i32 }

@CDENTRYSIZE = common dso_local global i32 0, align 4
@LENTRYSIZE = common dso_local global i64 0, align 8
@ZIP_ER_NOZIP = common dso_local global i32 0, align 4
@ZIP_ER_READ = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LOCAL_MAGIC = common dso_local global i32 0, align 4
@CENTRAL_MAGIC = common dso_local global i32 0, align 4
@ZIP_ER_INCONS = common dso_local global i32 0, align 4
@ZIP_GPBF_ENCODING_UTF_8 = common dso_local global i32 0, align 4
@ZIP_ENCODING_UTF8_KNOWN = common dso_local global i32 0, align 4
@ZIP_ENCODING_ERROR = common dso_local global i64 0, align 8
@ZIP_EF_LOCAL = common dso_local global i32 0, align 4
@ZIP_EF_CENTRAL = common dso_local global i32 0, align 4
@ZIP_EF_UTF_8_NAME = common dso_local global i32 0, align 4
@ZIP_EF_UTF_8_COMMENT = common dso_local global i32 0, align 4
@ZIP_UINT32_MAX = common dso_local global i64 0, align 8
@ZIP_EF_ZIP64 = common dso_local global i32 0, align 4
@ZIP_UINT16_MAX = common dso_local global i8* null, align 8
@ZIP_OFF_MAX = common dso_local global i64 0, align 8
@ZIP_ER_SEEK = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_zip_dirent_read(%struct.zip_dirent* %0, i32* %1, i8** %2, i64* %3, i32 %4, %struct.zip_error* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.zip_dirent*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.zip_error*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  store %struct.zip_dirent* %0, %struct.zip_dirent** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.zip_error* %5, %struct.zip_error** %13, align 8
  %28 = load i32, i32* @CDENTRYSIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %14, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %15, align 8
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load i64, i64* @LENTRYSIZE, align 8
  store i64 %35, i64* %19, align 8
  br label %39

36:                                               ; preds = %6
  %37 = load i32, i32* @CDENTRYSIZE, align 4
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %19, align 8
  br label %39

39:                                               ; preds = %36, %34
  %40 = load i64*, i64** %11, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i64*, i64** %11, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %19, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.zip_error*, %struct.zip_error** %13, align 8
  %49 = load i32, i32* @ZIP_ER_NOZIP, align 4
  %50 = call i32 @_zip_error_set(%struct.zip_error* %48, i32 %49, i32 0)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %501

51:                                               ; preds = %42, %39
  %52 = load i8**, i8*** %10, align 8
  %53 = icmp ne i8** %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i8**, i8*** %10, align 8
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %16, align 8
  br label %69

57:                                               ; preds = %51
  %58 = load i64, i64* %19, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i64 @fread(i8* %31, i32 1, i64 %58, i32* %59)
  %61 = load i64, i64* %19, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.zip_error*, %struct.zip_error** %13, align 8
  %65 = load i32, i32* @ZIP_ER_READ, align 4
  %66 = load i32, i32* @errno, align 4
  %67 = call i32 @_zip_error_set(%struct.zip_error* %64, i32 %65, i32 %66)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %501

68:                                               ; preds = %57
  store i8* %31, i8** %16, align 8
  br label %69

69:                                               ; preds = %68, %54
  %70 = load i8*, i8** %16, align 8
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @LOCAL_MAGIC, align 4
  br label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @CENTRAL_MAGIC, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = call i64 @memcmp(i8* %70, i32 %78, i32 4)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load %struct.zip_error*, %struct.zip_error** %13, align 8
  %83 = load i32, i32* @ZIP_ER_NOZIP, align 4
  %84 = call i32 @_zip_error_set(%struct.zip_error* %82, i32 %83, i32 0)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %501

85:                                               ; preds = %77
  %86 = load i8*, i8** %16, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 4
  store i8* %87, i8** %16, align 8
  %88 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %89 = call i32 @_zip_dirent_init(%struct.zip_dirent* %88)
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %85
  %93 = call i64 @_zip_read2(i8** %16)
  %94 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %95 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %94, i32 0, i32 15
  store i64 %93, i64* %95, align 8
  br label %99

96:                                               ; preds = %85
  %97 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %98 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %97, i32 0, i32 15
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %96, %92
  %100 = call i64 @_zip_read2(i8** %16)
  %101 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %102 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %101, i32 0, i32 14
  store i64 %100, i64* %102, align 8
  %103 = call i64 @_zip_read2(i8** %16)
  %104 = trunc i64 %103 to i32
  %105 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %106 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = call i64 @_zip_read2(i8** %16)
  %108 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %109 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %108, i32 0, i32 13
  store i64 %107, i64* %109, align 8
  %110 = call i64 @_zip_read2(i8** %16)
  store i64 %110, i64* %17, align 8
  %111 = call i64 @_zip_read2(i8** %16)
  store i64 %111, i64* %18, align 8
  %112 = load i64, i64* %17, align 8
  %113 = load i64, i64* %18, align 8
  %114 = call i32 @_zip_d2u_time(i64 %112, i64 %113)
  %115 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %116 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %115, i32 0, i32 12
  store i32 %114, i32* %116, align 8
  %117 = call i8* @_zip_read4(i8** %16)
  %118 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %119 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %118, i32 0, i32 11
  store i8* %117, i8** %119, align 8
  %120 = call i8* @_zip_read4(i8** %16)
  %121 = ptrtoint i8* %120 to i64
  %122 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %123 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  %124 = call i8* @_zip_read4(i8** %16)
  %125 = ptrtoint i8* %124 to i64
  %126 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %127 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %126, i32 0, i32 2
  store i64 %125, i64* %127, align 8
  %128 = call i64 @_zip_read2(i8** %16)
  store i64 %128, i64* %20, align 8
  %129 = call i64 @_zip_read2(i8** %16)
  store i64 %129, i64* %22, align 8
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %99
  store i64 0, i64* %21, align 8
  %133 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %134 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %133, i32 0, i32 6
  store i8* null, i8** %134, align 8
  %135 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %136 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %135, i32 0, i32 10
  store i64 0, i64* %136, align 8
  %137 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %138 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %137, i32 0, i32 9
  store i8* null, i8** %138, align 8
  %139 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %140 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %139, i32 0, i32 3
  store i64 0, i64* %140, align 8
  br label %157

141:                                              ; preds = %99
  %142 = call i64 @_zip_read2(i8** %16)
  store i64 %142, i64* %21, align 8
  %143 = call i64 @_zip_read2(i8** %16)
  %144 = inttoptr i64 %143 to i8*
  %145 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %146 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %145, i32 0, i32 6
  store i8* %144, i8** %146, align 8
  %147 = call i64 @_zip_read2(i8** %16)
  %148 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %149 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %148, i32 0, i32 10
  store i64 %147, i64* %149, align 8
  %150 = call i8* @_zip_read4(i8** %16)
  %151 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %152 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %151, i32 0, i32 9
  store i8* %150, i8** %152, align 8
  %153 = call i8* @_zip_read4(i8** %16)
  %154 = ptrtoint i8* %153 to i64
  %155 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %156 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %155, i32 0, i32 3
  store i64 %154, i64* %156, align 8
  br label %157

157:                                              ; preds = %141, %132
  %158 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %159 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %158, i32 0, i32 8
  store i32* null, i32** %159, align 8
  %160 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %161 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %160, i32 0, i32 5
  store i32* null, i32** %161, align 8
  %162 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %163 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %162, i32 0, i32 7
  store i32* null, i32** %163, align 8
  %164 = load i64, i64* %20, align 8
  %165 = load i64, i64* %22, align 8
  %166 = add nsw i64 %164, %165
  %167 = load i64, i64* %21, align 8
  %168 = add nsw i64 %166, %167
  %169 = load i64, i64* %19, align 8
  %170 = add nsw i64 %169, %168
  store i64 %170, i64* %19, align 8
  %171 = load i64*, i64** %11, align 8
  %172 = icmp ne i64* %171, null
  br i1 %172, label %173, label %182

173:                                              ; preds = %157
  %174 = load i64*, i64** %11, align 8
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %19, align 8
  %177 = icmp slt i64 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load %struct.zip_error*, %struct.zip_error** %13, align 8
  %180 = load i32, i32* @ZIP_ER_INCONS, align 4
  %181 = call i32 @_zip_error_set(%struct.zip_error* %179, i32 %180, i32 0)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %501

182:                                              ; preds = %173, %157
  %183 = load i64, i64* %20, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %225

185:                                              ; preds = %182
  %186 = load i8**, i8*** %10, align 8
  %187 = icmp ne i8** %186, null
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  br label %190

189:                                              ; preds = %185
  br label %190

190:                                              ; preds = %189, %188
  %191 = phi i8** [ %16, %188 ], [ null, %189 ]
  %192 = load i32*, i32** %9, align 8
  %193 = load i64, i64* %20, align 8
  %194 = load %struct.zip_error*, %struct.zip_error** %13, align 8
  %195 = call i8* @_zip_read_string(i8** %191, i32* %192, i64 %193, i32 1, %struct.zip_error* %194)
  %196 = bitcast i8* %195 to i32*
  %197 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %198 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %197, i32 0, i32 8
  store i32* %196, i32** %198, align 8
  %199 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %200 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %199, i32 0, i32 8
  %201 = load i32*, i32** %200, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %204, label %203

203:                                              ; preds = %190
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %501

204:                                              ; preds = %190
  %205 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %206 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @ZIP_GPBF_ENCODING_UTF_8, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %224

211:                                              ; preds = %204
  %212 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %213 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %212, i32 0, i32 8
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* @ZIP_ENCODING_UTF8_KNOWN, align 4
  %216 = call i64 @_zip_guess_encoding(i32* %214, i32 %215)
  %217 = load i64, i64* @ZIP_ENCODING_ERROR, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %211
  %220 = load %struct.zip_error*, %struct.zip_error** %13, align 8
  %221 = load i32, i32* @ZIP_ER_INCONS, align 4
  %222 = call i32 @_zip_error_set(%struct.zip_error* %220, i32 %221, i32 0)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %501

223:                                              ; preds = %211
  br label %224

224:                                              ; preds = %223, %204
  br label %225

225:                                              ; preds = %224, %182
  %226 = load i64, i64* %22, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %270

228:                                              ; preds = %225
  %229 = load i8**, i8*** %10, align 8
  %230 = icmp ne i8** %229, null
  br i1 %230, label %231, label %232

231:                                              ; preds = %228
  br label %233

232:                                              ; preds = %228
  br label %233

233:                                              ; preds = %232, %231
  %234 = phi i8** [ %16, %231 ], [ null, %232 ]
  %235 = load i32*, i32** %9, align 8
  %236 = load i64, i64* %22, align 8
  %237 = load %struct.zip_error*, %struct.zip_error** %13, align 8
  %238 = call i8* @_zip_read_data(i8** %234, i32* %235, i64 %236, i32 0, %struct.zip_error* %237)
  store i8* %238, i8** %24, align 8
  %239 = load i8*, i8** %24, align 8
  %240 = icmp eq i8* %239, null
  br i1 %240, label %241, label %242

241:                                              ; preds = %233
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %501

242:                                              ; preds = %233
  %243 = load i8*, i8** %24, align 8
  %244 = load i64, i64* %22, align 8
  %245 = load i32, i32* %12, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %242
  %248 = load i32, i32* @ZIP_EF_LOCAL, align 4
  br label %251

249:                                              ; preds = %242
  %250 = load i32, i32* @ZIP_EF_CENTRAL, align 4
  br label %251

251:                                              ; preds = %249, %247
  %252 = phi i32 [ %248, %247 ], [ %250, %249 ]
  %253 = load %struct.zip_error*, %struct.zip_error** %13, align 8
  %254 = call i32* @_zip_ef_parse(i8* %243, i64 %244, i32 %252, %struct.zip_error* %253)
  %255 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %256 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %255, i32 0, i32 5
  store i32* %254, i32** %256, align 8
  %257 = icmp eq i32* %254, null
  br i1 %257, label %258, label %261

258:                                              ; preds = %251
  %259 = load i8*, i8** %24, align 8
  %260 = call i32 @free(i8* %259)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %501

261:                                              ; preds = %251
  %262 = load i8*, i8** %24, align 8
  %263 = call i32 @free(i8* %262)
  %264 = load i32, i32* %12, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %261
  %267 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %268 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %267, i32 0, i32 4
  store i32 1, i32* %268, align 8
  br label %269

269:                                              ; preds = %266, %261
  br label %270

270:                                              ; preds = %269, %225
  %271 = load i64, i64* %21, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %313

273:                                              ; preds = %270
  %274 = load i8**, i8*** %10, align 8
  %275 = icmp ne i8** %274, null
  br i1 %275, label %276, label %277

276:                                              ; preds = %273
  br label %278

277:                                              ; preds = %273
  br label %278

278:                                              ; preds = %277, %276
  %279 = phi i8** [ %16, %276 ], [ null, %277 ]
  %280 = load i32*, i32** %9, align 8
  %281 = load i64, i64* %21, align 8
  %282 = load %struct.zip_error*, %struct.zip_error** %13, align 8
  %283 = call i8* @_zip_read_string(i8** %279, i32* %280, i64 %281, i32 0, %struct.zip_error* %282)
  %284 = bitcast i8* %283 to i32*
  %285 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %286 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %285, i32 0, i32 7
  store i32* %284, i32** %286, align 8
  %287 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %288 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %287, i32 0, i32 7
  %289 = load i32*, i32** %288, align 8
  %290 = icmp ne i32* %289, null
  br i1 %290, label %292, label %291

291:                                              ; preds = %278
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %501

292:                                              ; preds = %278
  %293 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %294 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @ZIP_GPBF_ENCODING_UTF_8, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %312

299:                                              ; preds = %292
  %300 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %301 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %300, i32 0, i32 7
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* @ZIP_ENCODING_UTF8_KNOWN, align 4
  %304 = call i64 @_zip_guess_encoding(i32* %302, i32 %303)
  %305 = load i64, i64* @ZIP_ENCODING_ERROR, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %311

307:                                              ; preds = %299
  %308 = load %struct.zip_error*, %struct.zip_error** %13, align 8
  %309 = load i32, i32* @ZIP_ER_INCONS, align 4
  %310 = call i32 @_zip_error_set(%struct.zip_error* %308, i32 %309, i32 0)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %501

311:                                              ; preds = %299
  br label %312

312:                                              ; preds = %311, %292
  br label %313

313:                                              ; preds = %312, %270
  %314 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %315 = load i32, i32* @ZIP_EF_UTF_8_NAME, align 4
  %316 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %317 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %316, i32 0, i32 8
  %318 = load i32*, i32** %317, align 8
  %319 = call i8* @_zip_dirent_process_ef_utf_8(%struct.zip_dirent* %314, i32 %315, i32* %318)
  %320 = bitcast i8* %319 to i32*
  %321 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %322 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %321, i32 0, i32 8
  store i32* %320, i32** %322, align 8
  %323 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %324 = load i32, i32* @ZIP_EF_UTF_8_COMMENT, align 4
  %325 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %326 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %325, i32 0, i32 7
  %327 = load i32*, i32** %326, align 8
  %328 = call i8* @_zip_dirent_process_ef_utf_8(%struct.zip_dirent* %323, i32 %324, i32* %327)
  %329 = bitcast i8* %328 to i32*
  %330 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %331 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %330, i32 0, i32 7
  store i32* %329, i32** %331, align 8
  %332 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %333 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %332, i32 0, i32 2
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %349, label %337

337:                                              ; preds = %313
  %338 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %339 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %338, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %349, label %343

343:                                              ; preds = %337
  %344 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %345 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %344, i32 0, i32 3
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %349, label %465

349:                                              ; preds = %343, %337, %313
  %350 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %351 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %350, i32 0, i32 5
  %352 = load i32*, i32** %351, align 8
  %353 = load i32, i32* @ZIP_EF_ZIP64, align 4
  %354 = load i32, i32* %12, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %358

356:                                              ; preds = %349
  %357 = load i32, i32* @ZIP_EF_LOCAL, align 4
  br label %360

358:                                              ; preds = %349
  %359 = load i32, i32* @ZIP_EF_CENTRAL, align 4
  br label %360

360:                                              ; preds = %358, %356
  %361 = phi i32 [ %357, %356 ], [ %359, %358 ]
  %362 = load %struct.zip_error*, %struct.zip_error** %13, align 8
  %363 = call i8* @_zip_ef_get_by_id(i32* %352, i64* %25, i32 %353, i32 0, i32 %361, %struct.zip_error* %362)
  store i8* %363, i8** %27, align 8
  %364 = load i8*, i8** %27, align 8
  %365 = icmp eq i8* %364, null
  br i1 %365, label %366, label %367

366:                                              ; preds = %360
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %501

367:                                              ; preds = %360
  %368 = load i32, i32* %12, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %371

370:                                              ; preds = %367
  store i64 16, i64* %26, align 8
  br label %402

371:                                              ; preds = %367
  %372 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %373 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %372, i32 0, i32 2
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %376 = icmp eq i64 %374, %375
  %377 = zext i1 %376 to i32
  %378 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %379 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %378, i32 0, i32 1
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %382 = icmp eq i64 %380, %381
  %383 = zext i1 %382 to i32
  %384 = add nsw i32 %377, %383
  %385 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %386 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %385, i32 0, i32 3
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %389 = icmp eq i64 %387, %388
  %390 = zext i1 %389 to i32
  %391 = add nsw i32 %384, %390
  %392 = mul nsw i32 %391, 8
  %393 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %394 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %393, i32 0, i32 6
  %395 = load i8*, i8** %394, align 8
  %396 = load i8*, i8** @ZIP_UINT16_MAX, align 8
  %397 = icmp eq i8* %395, %396
  %398 = zext i1 %397 to i32
  %399 = mul nsw i32 %398, 4
  %400 = add nsw i32 %392, %399
  %401 = sext i32 %400 to i64
  store i64 %401, i64* %26, align 8
  br label %402

402:                                              ; preds = %371, %370
  %403 = load i64, i64* %25, align 8
  %404 = load i64, i64* %26, align 8
  %405 = icmp ne i64 %403, %404
  br i1 %405, label %406, label %410

406:                                              ; preds = %402
  %407 = load %struct.zip_error*, %struct.zip_error** %13, align 8
  %408 = load i32, i32* @ZIP_ER_INCONS, align 4
  %409 = call i32 @_zip_error_set(%struct.zip_error* %407, i32 %408, i32 0)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %501

410:                                              ; preds = %402
  %411 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %412 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %411, i32 0, i32 2
  %413 = load i64, i64* %412, align 8
  %414 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %415 = icmp eq i64 %413, %414
  br i1 %415, label %416, label %421

416:                                              ; preds = %410
  %417 = call i8* @_zip_read8(i8** %27)
  %418 = ptrtoint i8* %417 to i64
  %419 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %420 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %419, i32 0, i32 2
  store i64 %418, i64* %420, align 8
  br label %428

421:                                              ; preds = %410
  %422 = load i32, i32* %12, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %427

424:                                              ; preds = %421
  %425 = load i8*, i8** %27, align 8
  %426 = getelementptr inbounds i8, i8* %425, i64 8
  store i8* %426, i8** %27, align 8
  br label %427

427:                                              ; preds = %424, %421
  br label %428

428:                                              ; preds = %427, %416
  %429 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %430 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %429, i32 0, i32 1
  %431 = load i64, i64* %430, align 8
  %432 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %433 = icmp eq i64 %431, %432
  br i1 %433, label %434, label %439

434:                                              ; preds = %428
  %435 = call i8* @_zip_read8(i8** %27)
  %436 = ptrtoint i8* %435 to i64
  %437 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %438 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %437, i32 0, i32 1
  store i64 %436, i64* %438, align 8
  br label %439

439:                                              ; preds = %434, %428
  %440 = load i32, i32* %12, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %464, label %442

442:                                              ; preds = %439
  %443 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %444 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %443, i32 0, i32 3
  %445 = load i64, i64* %444, align 8
  %446 = load i64, i64* @ZIP_UINT32_MAX, align 8
  %447 = icmp eq i64 %445, %446
  br i1 %447, label %448, label %453

448:                                              ; preds = %442
  %449 = call i8* @_zip_read8(i8** %27)
  %450 = ptrtoint i8* %449 to i64
  %451 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %452 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %451, i32 0, i32 3
  store i64 %450, i64* %452, align 8
  br label %453

453:                                              ; preds = %448, %442
  %454 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %455 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %454, i32 0, i32 6
  %456 = load i8*, i8** %455, align 8
  %457 = load i8*, i8** @ZIP_UINT16_MAX, align 8
  %458 = icmp eq i8* %456, %457
  br i1 %458, label %459, label %463

459:                                              ; preds = %453
  %460 = call i8* @_zip_read4(i8** %27)
  %461 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %462 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %461, i32 0, i32 6
  store i8* %460, i8** %462, align 8
  br label %463

463:                                              ; preds = %459, %453
  br label %464

464:                                              ; preds = %463, %439
  br label %465

465:                                              ; preds = %464, %343
  %466 = load i32, i32* %12, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %480, label %468

468:                                              ; preds = %465
  %469 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %470 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %469, i32 0, i32 3
  %471 = load i64, i64* %470, align 8
  %472 = load i64, i64* @ZIP_OFF_MAX, align 8
  %473 = icmp sgt i64 %471, %472
  br i1 %473, label %474, label %479

474:                                              ; preds = %468
  %475 = load %struct.zip_error*, %struct.zip_error** %13, align 8
  %476 = load i32, i32* @ZIP_ER_SEEK, align 4
  %477 = load i32, i32* @EFBIG, align 4
  %478 = call i32 @_zip_error_set(%struct.zip_error* %475, i32 %476, i32 %477)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %501

479:                                              ; preds = %468
  br label %480

480:                                              ; preds = %479, %465
  %481 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %482 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %481, i32 0, i32 5
  %483 = load i32*, i32** %482, align 8
  %484 = call i32* @_zip_ef_remove_internal(i32* %483)
  %485 = load %struct.zip_dirent*, %struct.zip_dirent** %8, align 8
  %486 = getelementptr inbounds %struct.zip_dirent, %struct.zip_dirent* %485, i32 0, i32 5
  store i32* %484, i32** %486, align 8
  %487 = load i8**, i8*** %10, align 8
  %488 = icmp ne i8** %487, null
  br i1 %488, label %489, label %492

489:                                              ; preds = %480
  %490 = load i8*, i8** %16, align 8
  %491 = load i8**, i8*** %10, align 8
  store i8* %490, i8** %491, align 8
  br label %492

492:                                              ; preds = %489, %480
  %493 = load i64*, i64** %11, align 8
  %494 = icmp ne i64* %493, null
  br i1 %494, label %495, label %500

495:                                              ; preds = %492
  %496 = load i64, i64* %19, align 8
  %497 = load i64*, i64** %11, align 8
  %498 = load i64, i64* %497, align 8
  %499 = sub nsw i64 %498, %496
  store i64 %499, i64* %497, align 8
  br label %500

500:                                              ; preds = %495, %492
  store i32 0, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %501

501:                                              ; preds = %500, %474, %406, %366, %307, %291, %258, %241, %219, %203, %178, %81, %63, %47
  %502 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %502)
  %503 = load i32, i32* %7, align 4
  ret i32 %503
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_zip_error_set(%struct.zip_error*, i32, i32) #2

declare dso_local i64 @fread(i8*, i32, i64, i32*) #2

declare dso_local i64 @memcmp(i8*, i32, i32) #2

declare dso_local i32 @_zip_dirent_init(%struct.zip_dirent*) #2

declare dso_local i64 @_zip_read2(i8**) #2

declare dso_local i32 @_zip_d2u_time(i64, i64) #2

declare dso_local i8* @_zip_read4(i8**) #2

declare dso_local i8* @_zip_read_string(i8**, i32*, i64, i32, %struct.zip_error*) #2

declare dso_local i64 @_zip_guess_encoding(i32*, i32) #2

declare dso_local i8* @_zip_read_data(i8**, i32*, i64, i32, %struct.zip_error*) #2

declare dso_local i32* @_zip_ef_parse(i8*, i64, i32, %struct.zip_error*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @_zip_dirent_process_ef_utf_8(%struct.zip_dirent*, i32, i32*) #2

declare dso_local i8* @_zip_ef_get_by_id(i32*, i64*, i32, i32, i32, %struct.zip_error*) #2

declare dso_local i8* @_zip_read8(i8**) #2

declare dso_local i32* @_zip_ef_remove_internal(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
