; ModuleID = '/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_funcs.c_file_buffer.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_funcs.c_file_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.magic_set = type { i32, i32 }
%struct.buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@PHP_STREAM_AS_FD = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"very short file (no magic)\00", align 1
@MAGIC_NO_CHECK_ENCODING = common dso_local global i32 0, align 4
@MAGIC_NO_CHECK_TAR = common dso_local global i32 0, align 4
@MAGIC_DEBUG = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"[try tar %d]\0A\00", align 1
@MAGIC_NO_CHECK_JSON = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"[try json %d]\0A\00", align 1
@MAGIC_NO_CHECK_CDF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"[try cdf %d]\0A\00", align 1
@MAGIC_NO_CHECK_SOFT = common dso_local global i32 0, align 4
@BINTEST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"[try softmagic %d]\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MAGIC_NO_CHECK_TEXT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"[try ascmagic %d]\0A\00", align 1
@MAGIC_MIME_ENCODING = common dso_local global i32 0, align 4
@MAGIC_MIME_TYPE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"; charset=\00", align 1
@MAGIC_NO_CHECK_APPTYPE = common dso_local global i32 0, align 4
@MAGIC_NO_CHECK_COMPRESS = common dso_local global i32 0, align 4
@MAGIC_NO_CHECK_ELF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_buffer(%struct.magic_set* %0, i32* %1, i32* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.magic_set*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.buffer, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.magic_set* %0, %struct.magic_set** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i8* null, i8** %17, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  store i32 -1, i32* %23, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %6
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* @PHP_STREAM_AS_FD, align 4
  %31 = bitcast i32* %24 to i8**
  %32 = call i32 @php_stream_cast(i32* %29, i32 %30, i8** %31, i32 0)
  store i32 %32, i32* %25, align 4
  %33 = load i32, i32* @SUCCESS, align 4
  %34 = load i32, i32* %25, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %24, align 4
  store i32 %37, i32* %23, align 4
  br label %38

38:                                               ; preds = %36, %28
  br label %39

39:                                               ; preds = %38, %6
  %40 = load i32, i32* %23, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call i32 @buffer_init(%struct.buffer* %22, i32 %40, i32* %41, i8* %42, i64 %43)
  %45 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %49 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i64, i64* %13, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 8
  br label %230

53:                                               ; preds = %39
  %54 = load i64, i64* %13, align 8
  %55 = icmp eq i64 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8** %19, align 8
  br label %230

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %60 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MAGIC_NO_CHECK_ENCODING, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %67 = call i32 @file_encoding(%struct.magic_set* %66, %struct.buffer* %22, i32* null, i32 0, i8** %17, i8** %18, i8** %20)
  store i32 %67, i32* %16, align 4
  br label %68

68:                                               ; preds = %65, %58
  %69 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %70 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MAGIC_NO_CHECK_TAR, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %68
  %76 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %77 = call i32 @file_is_tar(%struct.magic_set* %76, %struct.buffer* %22)
  store i32 %77, i32* %14, align 4
  %78 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %79 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MAGIC_DEBUG, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %75
  %85 = load i32, i32* @stderr, align 4
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @fprintf(i32 %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %84, %75
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %93 = call i64 @checkdone(%struct.magic_set* %92, i32* %15)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %248

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %88
  br label %98

98:                                               ; preds = %97, %68
  %99 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %100 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @MAGIC_NO_CHECK_JSON, align 4
  %103 = and i32 %101, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %128

105:                                              ; preds = %98
  %106 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %107 = call i32 @file_is_json(%struct.magic_set* %106, %struct.buffer* %22)
  store i32 %107, i32* %14, align 4
  %108 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %109 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @MAGIC_DEBUG, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %105
  %115 = load i32, i32* @stderr, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @fprintf(i32 %115, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %114, %105
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %123 = call i64 @checkdone(%struct.magic_set* %122, i32* %15)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %248

126:                                              ; preds = %121
  br label %127

127:                                              ; preds = %126, %118
  br label %128

128:                                              ; preds = %127, %98
  %129 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %130 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @MAGIC_NO_CHECK_CDF, align 4
  %133 = and i32 %131, %132
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %158

135:                                              ; preds = %128
  %136 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %137 = call i32 @file_trycdf(%struct.magic_set* %136, %struct.buffer* %22)
  store i32 %137, i32* %14, align 4
  %138 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %139 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @MAGIC_DEBUG, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %135
  %145 = load i32, i32* @stderr, align 4
  %146 = load i32, i32* %14, align 4
  %147 = call i32 @fprintf(i32 %145, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %144, %135
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %148
  %152 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %153 = call i64 @checkdone(%struct.magic_set* %152, i32* %15)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %248

156:                                              ; preds = %151
  br label %157

157:                                              ; preds = %156, %148
  br label %158

158:                                              ; preds = %157, %128
  %159 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %160 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @MAGIC_NO_CHECK_SOFT, align 4
  %163 = and i32 %161, %162
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %203

165:                                              ; preds = %158
  %166 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %167 = load i32, i32* @BINTEST, align 4
  %168 = load i32, i32* %16, align 4
  %169 = call i32 @file_softmagic(%struct.magic_set* %166, %struct.buffer* %22, i32* null, i32* null, i32 %167, i32 %168)
  store i32 %169, i32* %14, align 4
  %170 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %171 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @MAGIC_DEBUG, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %165
  %177 = load i32, i32* @stderr, align 4
  %178 = load i32, i32* %14, align 4
  %179 = call i32 @fprintf(i32 %177, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %178)
  br label %180

180:                                              ; preds = %176, %165
  %181 = load i32, i32* %14, align 4
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %193

183:                                              ; preds = %180
  %184 = load i8*, i8** %21, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %193

186:                                              ; preds = %183
  %187 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %188 = load i8*, i8** %21, align 8
  %189 = call i32 (%struct.magic_set*, i8*, ...) @file_printf(%struct.magic_set* %187, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %188)
  %190 = icmp eq i32 %189, -1
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  br label %248

192:                                              ; preds = %186
  br label %193

193:                                              ; preds = %192, %183, %180
  %194 = load i32, i32* %14, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %193
  %197 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %198 = call i64 @checkdone(%struct.magic_set* %197, i32* %15)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  br label %248

201:                                              ; preds = %196
  br label %202

202:                                              ; preds = %201, %193
  br label %203

203:                                              ; preds = %202, %158
  %204 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %205 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @MAGIC_NO_CHECK_TEXT, align 4
  %208 = and i32 %206, %207
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %229

210:                                              ; preds = %203
  %211 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %212 = load i32, i32* %16, align 4
  %213 = call i32 @file_ascmagic(%struct.magic_set* %211, %struct.buffer* %22, i32 %212)
  store i32 %213, i32* %14, align 4
  %214 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %215 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @MAGIC_DEBUG, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %210
  %221 = load i32, i32* @stderr, align 4
  %222 = load i32, i32* %14, align 4
  %223 = call i32 @fprintf(i32 %221, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %222)
  br label %224

224:                                              ; preds = %220, %210
  %225 = load i32, i32* %14, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %224
  br label %248

228:                                              ; preds = %224
  br label %229

229:                                              ; preds = %228, %203
  br label %230

230:                                              ; preds = %229, %56, %52
  %231 = load i32, i32* %14, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %247

233:                                              ; preds = %230
  store i32 1, i32* %14, align 4
  %234 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %235 = load i64, i64* %13, align 8
  %236 = call i32 @file_default(%struct.magic_set* %234, i64 %235)
  store i32 %236, i32* %15, align 4
  %237 = load i32, i32* %15, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %233
  %240 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %241 = load i8*, i8** %19, align 8
  %242 = call i32 (%struct.magic_set*, i8*, ...) @file_printf(%struct.magic_set* %240, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %241)
  %243 = icmp eq i32 %242, -1
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  store i32 -1, i32* %15, align 4
  br label %245

245:                                              ; preds = %244, %239
  br label %246

246:                                              ; preds = %245, %233
  br label %247

247:                                              ; preds = %246, %230
  br label %248

248:                                              ; preds = %247, %227, %200, %191, %155, %125, %95
  %249 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %250 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @MAGIC_MIME_ENCODING, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %275

255:                                              ; preds = %248
  %256 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %257 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @MAGIC_MIME_TYPE, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %255
  %263 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %264 = call i32 (%struct.magic_set*, i8*, ...) @file_printf(%struct.magic_set* %263, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %265 = icmp eq i32 %264, -1
  br i1 %265, label %266, label %267

266:                                              ; preds = %262
  store i32 -1, i32* %15, align 4
  br label %267

267:                                              ; preds = %266, %262
  br label %268

268:                                              ; preds = %267, %255
  %269 = load %struct.magic_set*, %struct.magic_set** %8, align 8
  %270 = load i8*, i8** %18, align 8
  %271 = call i32 (%struct.magic_set*, i8*, ...) @file_printf(%struct.magic_set* %269, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %270)
  %272 = icmp eq i32 %271, -1
  br i1 %272, label %273, label %274

273:                                              ; preds = %268
  store i32 -1, i32* %15, align 4
  br label %274

274:                                              ; preds = %273, %268
  br label %275

275:                                              ; preds = %274, %248
  %276 = load i8*, i8** %21, align 8
  %277 = call i32 @efree(i8* %276)
  %278 = call i32 @buffer_fini(%struct.buffer* %22)
  %279 = load i32, i32* %15, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %275
  %282 = load i32, i32* %15, align 4
  store i32 %282, i32* %7, align 4
  br label %285

283:                                              ; preds = %275
  %284 = load i32, i32* %14, align 4
  store i32 %284, i32* %7, align 4
  br label %285

285:                                              ; preds = %283, %281
  %286 = load i32, i32* %7, align 4
  ret i32 %286
}

declare dso_local i32 @php_stream_cast(i32*, i32, i8**, i32) #1

declare dso_local i32 @buffer_init(%struct.buffer*, i32, i32*, i8*, i64) #1

declare dso_local i32 @file_encoding(%struct.magic_set*, %struct.buffer*, i32*, i32, i8**, i8**, i8**) #1

declare dso_local i32 @file_is_tar(%struct.magic_set*, %struct.buffer*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i64 @checkdone(%struct.magic_set*, i32*) #1

declare dso_local i32 @file_is_json(%struct.magic_set*, %struct.buffer*) #1

declare dso_local i32 @file_trycdf(%struct.magic_set*, %struct.buffer*) #1

declare dso_local i32 @file_softmagic(%struct.magic_set*, %struct.buffer*, i32*, i32*, i32, i32) #1

declare dso_local i32 @file_printf(%struct.magic_set*, i8*, ...) #1

declare dso_local i32 @file_ascmagic(%struct.magic_set*, %struct.buffer*, i32) #1

declare dso_local i32 @file_default(%struct.magic_set*, i64) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @buffer_fini(%struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
