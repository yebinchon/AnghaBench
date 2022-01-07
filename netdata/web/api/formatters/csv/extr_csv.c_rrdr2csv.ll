; ModuleID = '/home/carl/AnghaBench/netdata/web/api/formatters/csv/extr_csv.c_rrdr2csv.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/formatters/csv/extr_csv.c_rrdr2csv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32*, i32*, i32*, i32, i32, %struct.TYPE_8__*, i64* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_7__* }
%struct.tm = type { i32, i32, i32, i32, i64, i64 }

@RRDR_DIMENSION_HIDDEN = common dso_local global i32 0, align 4
@RRDR_OPTION_NONZERO = common dso_local global i32 0, align 4
@RRDR_DIMENSION_NONZERO = common dso_local global i32 0, align 4
@RRDR_OPTION_LABEL_QUOTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@DATASOURCE_CSV_MARKDOWN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c":---:\00", align 1
@RRDR_OPTION_REVERSED = common dso_local global i32 0, align 4
@RRDR_OPTION_SECONDS = common dso_local global i32 0, align 4
@RRDR_OPTION_MILLISECONDS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"000\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"localtime() failed.\00", align 1
@RRDR_OPTION_PERCENTAGE = common dso_local global i32 0, align 4
@RRDR_OPTION_ABSOLUTE = common dso_local global i32 0, align 4
@RRDR_VALUE_EMPTY = common dso_local global i32 0, align 4
@RRDR_OPTION_NULL2ZERO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"null\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrdr2csv(%struct.TYPE_6__* %0, i32* %1, i64 %2, i32 %3, i8* %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_7__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.tm, align 8
  %28 = alloca %struct.tm*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 6
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = call i32 @rrdset_check_rdlock(%struct.TYPE_8__* %34)
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 6
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %19, align 8
  br label %41

41:                                               ; preds = %138, %8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i64, i64* %17, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br label %50

50:                                               ; preds = %44, %41
  %51 = phi i1 [ false, %41 ], [ %49, %44 ]
  br i1 %51, label %52, label %144

52:                                               ; preds = %50
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %17, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @RRDR_DIMENSION_HIDDEN, align 4
  %60 = and i32 %58, %59
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %138

64:                                               ; preds = %52
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @RRDR_OPTION_NONZERO, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %17, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @RRDR_DIMENSION_NONZERO, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br label %80

80:                                               ; preds = %69, %64
  %81 = phi i1 [ false, %64 ], [ %79, %69 ]
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %138

86:                                               ; preds = %80
  %87 = load i64, i64* %18, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %111, label %89

89:                                               ; preds = %86
  %90 = load i32*, i32** %10, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = call i32 @buffer_strcat(i32* %90, i8* %91)
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @RRDR_OPTION_LABEL_QUOTES, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @buffer_strcat(i32* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %89
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @buffer_strcat(i32* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @RRDR_OPTION_LABEL_QUOTES, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32*, i32** %10, align 8
  %109 = call i32 @buffer_strcat(i32* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %100
  br label %111

111:                                              ; preds = %110, %86
  %112 = load i32*, i32** %10, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = call i32 @buffer_strcat(i32* %112, i8* %113)
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @RRDR_OPTION_LABEL_QUOTES, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %111
  %120 = load i32*, i32** %10, align 8
  %121 = call i32 @buffer_strcat(i32* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %111
  %123 = load i32*, i32** %10, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @buffer_strcat(i32* %123, i8* %126)
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @RRDR_OPTION_LABEL_QUOTES, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %122
  %133 = load i32*, i32** %10, align 8
  %134 = call i32 @buffer_strcat(i32* %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %135

135:                                              ; preds = %132, %122
  %136 = load i64, i64* %18, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %18, align 8
  br label %138

138:                                              ; preds = %135, %85, %63
  %139 = load i64, i64* %17, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %17, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  store %struct.TYPE_7__* %143, %struct.TYPE_7__** %19, align 8
  br label %41

144:                                              ; preds = %50
  %145 = load i32*, i32** %10, align 8
  %146 = load i8*, i8** %15, align 8
  %147 = call i32 @buffer_strcat(i32* %145, i8* %146)
  %148 = load i64, i64* %11, align 8
  %149 = load i64, i64* @DATASOURCE_CSV_MARKDOWN, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %261

151:                                              ; preds = %144
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 6
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  store %struct.TYPE_7__* %156, %struct.TYPE_7__** %19, align 8
  br label %157

157:                                              ; preds = %251, %151
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %159 = icmp ne %struct.TYPE_7__* %158, null
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load i64, i64* %17, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp slt i64 %161, %164
  br label %166

166:                                              ; preds = %160, %157
  %167 = phi i1 [ false, %157 ], [ %165, %160 ]
  br i1 %167, label %168, label %257

168:                                              ; preds = %166
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* %17, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @RRDR_DIMENSION_HIDDEN, align 4
  %176 = and i32 %174, %175
  %177 = call i64 @unlikely(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %168
  br label %251

180:                                              ; preds = %168
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* @RRDR_OPTION_NONZERO, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %180
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = load i64, i64* %17, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @RRDR_DIMENSION_NONZERO, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  br label %196

196:                                              ; preds = %185, %180
  %197 = phi i1 [ false, %180 ], [ %195, %185 ]
  %198 = zext i1 %197 to i32
  %199 = call i64 @unlikely(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  br label %251

202:                                              ; preds = %196
  %203 = load i64, i64* %18, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %227, label %205

205:                                              ; preds = %202
  %206 = load i32*, i32** %10, align 8
  %207 = load i8*, i8** %13, align 8
  %208 = call i32 @buffer_strcat(i32* %206, i8* %207)
  %209 = load i32, i32* %12, align 4
  %210 = load i32, i32* @RRDR_OPTION_LABEL_QUOTES, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %205
  %214 = load i32*, i32** %10, align 8
  %215 = call i32 @buffer_strcat(i32* %214, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %216

216:                                              ; preds = %213, %205
  %217 = load i32*, i32** %10, align 8
  %218 = call i32 @buffer_strcat(i32* %217, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %219 = load i32, i32* %12, align 4
  %220 = load i32, i32* @RRDR_OPTION_LABEL_QUOTES, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %216
  %224 = load i32*, i32** %10, align 8
  %225 = call i32 @buffer_strcat(i32* %224, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %226

226:                                              ; preds = %223, %216
  br label %227

227:                                              ; preds = %226, %202
  %228 = load i32*, i32** %10, align 8
  %229 = load i8*, i8** %14, align 8
  %230 = call i32 @buffer_strcat(i32* %228, i8* %229)
  %231 = load i32, i32* %12, align 4
  %232 = load i32, i32* @RRDR_OPTION_LABEL_QUOTES, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %227
  %236 = load i32*, i32** %10, align 8
  %237 = call i32 @buffer_strcat(i32* %236, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %238

238:                                              ; preds = %235, %227
  %239 = load i32*, i32** %10, align 8
  %240 = call i32 @buffer_strcat(i32* %239, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %241 = load i32, i32* %12, align 4
  %242 = load i32, i32* @RRDR_OPTION_LABEL_QUOTES, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %238
  %246 = load i32*, i32** %10, align 8
  %247 = call i32 @buffer_strcat(i32* %246, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %248

248:                                              ; preds = %245, %238
  %249 = load i64, i64* %18, align 8
  %250 = add nsw i64 %249, 1
  store i64 %250, i64* %18, align 8
  br label %251

251:                                              ; preds = %248, %201, %179
  %252 = load i64, i64* %17, align 8
  %253 = add nsw i64 %252, 1
  store i64 %253, i64* %17, align 8
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %255, align 8
  store %struct.TYPE_7__* %256, %struct.TYPE_7__** %19, align 8
  br label %157

257:                                              ; preds = %166
  %258 = load i32*, i32** %10, align 8
  %259 = load i8*, i8** %15, align 8
  %260 = call i32 @buffer_strcat(i32* %258, i8* %259)
  br label %261

261:                                              ; preds = %257, %144
  %262 = load i64, i64* %18, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %261
  br label %578

265:                                              ; preds = %261
  store i64 0, i64* %20, align 8
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %267 = call i32 @rrdr_rows(%struct.TYPE_6__* %266)
  %268 = sext i32 %267 to i64
  store i64 %268, i64* %21, align 8
  store i64 1, i64* %22, align 8
  %269 = load i32, i32* %12, align 4
  %270 = load i32, i32* @RRDR_OPTION_REVERSED, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %278, label %273

273:                                              ; preds = %265
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %275 = call i32 @rrdr_rows(%struct.TYPE_6__* %274)
  %276 = sub nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  store i64 %277, i64* %20, align 8
  store i64 -1, i64* %21, align 8
  store i64 -1, i64* %22, align 8
  br label %278

278:                                              ; preds = %273, %265
  store i32 1, i32* %23, align 4
  %279 = load i64, i64* %20, align 8
  store i64 %279, i64* %18, align 8
  br label %280

280:                                              ; preds = %574, %278
  %281 = load i64, i64* %18, align 8
  %282 = load i64, i64* %21, align 8
  %283 = icmp ne i64 %281, %282
  br i1 %283, label %284, label %578

284:                                              ; preds = %280
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 2
  %287 = load i32*, i32** %286, align 8
  %288 = load i64, i64* %18, align 8
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = mul nsw i64 %288, %291
  %293 = getelementptr inbounds i32, i32* %287, i64 %292
  store i32* %293, i32** %24, align 8
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 3
  %296 = load i32*, i32** %295, align 8
  %297 = load i64, i64* %18, align 8
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = mul nsw i64 %297, %300
  %302 = getelementptr inbounds i32, i32* %296, i64 %301
  store i32* %302, i32** %25, align 8
  %303 = load i32*, i32** %10, align 8
  %304 = load i8*, i8** %16, align 8
  %305 = call i32 @buffer_strcat(i32* %303, i8* %304)
  %306 = load i32*, i32** %10, align 8
  %307 = load i8*, i8** %13, align 8
  %308 = call i32 @buffer_strcat(i32* %306, i8* %307)
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 7
  %311 = load i64*, i64** %310, align 8
  %312 = load i64, i64* %18, align 8
  %313 = getelementptr inbounds i64, i64* %311, i64 %312
  %314 = load i64, i64* %313, align 8
  store i64 %314, i64* %26, align 8
  %315 = load i32, i32* %12, align 4
  %316 = load i32, i32* @RRDR_OPTION_SECONDS, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %324, label %319

319:                                              ; preds = %284
  %320 = load i32, i32* %12, align 4
  %321 = load i32, i32* @RRDR_OPTION_MILLISECONDS, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %337

324:                                              ; preds = %319, %284
  %325 = load i32*, i32** %10, align 8
  %326 = load i64, i64* %26, align 8
  %327 = trunc i64 %326 to i32
  %328 = call i32 @buffer_rrd_value(i32* %325, i32 %327)
  %329 = load i32, i32* %12, align 4
  %330 = load i32, i32* @RRDR_OPTION_MILLISECONDS, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %336

333:                                              ; preds = %324
  %334 = load i32*, i32** %10, align 8
  %335 = call i32 @buffer_strcat(i32* %334, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %336

336:                                              ; preds = %333, %324
  br label %366

337:                                              ; preds = %319
  %338 = call %struct.tm* @localtime_r(i64* %26, %struct.tm* %27)
  store %struct.tm* %338, %struct.tm** %28, align 8
  %339 = load %struct.tm*, %struct.tm** %28, align 8
  %340 = icmp ne %struct.tm* %339, null
  br i1 %340, label %343, label %341

341:                                              ; preds = %337
  %342 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %574

343:                                              ; preds = %337
  %344 = load i32*, i32** %10, align 8
  %345 = load %struct.tm*, %struct.tm** %28, align 8
  %346 = getelementptr inbounds %struct.tm, %struct.tm* %345, i32 0, i32 5
  %347 = load i64, i64* %346, align 8
  %348 = add nsw i64 %347, 1900
  %349 = load %struct.tm*, %struct.tm** %28, align 8
  %350 = getelementptr inbounds %struct.tm, %struct.tm* %349, i32 0, i32 4
  %351 = load i64, i64* %350, align 8
  %352 = add nsw i64 %351, 1
  %353 = load %struct.tm*, %struct.tm** %28, align 8
  %354 = getelementptr inbounds %struct.tm, %struct.tm* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.tm*, %struct.tm** %28, align 8
  %357 = getelementptr inbounds %struct.tm, %struct.tm* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 8
  %359 = load %struct.tm*, %struct.tm** %28, align 8
  %360 = getelementptr inbounds %struct.tm, %struct.tm* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = load %struct.tm*, %struct.tm** %28, align 8
  %363 = getelementptr inbounds %struct.tm, %struct.tm* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = call i32 @buffer_date(i32* %344, i64 %348, i64 %352, i32 %355, i32 %358, i32 %361, i32 %364)
  br label %366

366:                                              ; preds = %343, %336
  store i32 0, i32* %29, align 4
  %367 = load i32, i32* %12, align 4
  %368 = load i32, i32* @RRDR_OPTION_PERCENTAGE, align 4
  %369 = and i32 %367, %368
  %370 = call i64 @unlikely(i32 %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %424

372:                                              ; preds = %366
  store i32 0, i32* %23, align 4
  store i64 0, i64* %17, align 8
  %373 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 6
  %375 = load %struct.TYPE_8__*, %struct.TYPE_8__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i32 0, i32 0
  %377 = load %struct.TYPE_7__*, %struct.TYPE_7__** %376, align 8
  store %struct.TYPE_7__* %377, %struct.TYPE_7__** %19, align 8
  br label %378

378:                                              ; preds = %413, %372
  %379 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %380 = icmp ne %struct.TYPE_7__* %379, null
  br i1 %380, label %381, label %387

381:                                              ; preds = %378
  %382 = load i64, i64* %17, align 8
  %383 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %383, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  %386 = icmp slt i64 %382, %385
  br label %387

387:                                              ; preds = %381, %378
  %388 = phi i1 [ false, %378 ], [ %386, %381 ]
  br i1 %388, label %389, label %419

389:                                              ; preds = %387
  %390 = load i32*, i32** %24, align 8
  %391 = load i64, i64* %17, align 8
  %392 = getelementptr inbounds i32, i32* %390, i64 %391
  %393 = load i32, i32* %392, align 4
  store i32 %393, i32* %30, align 4
  %394 = load i32, i32* %12, align 4
  %395 = load i32, i32* @RRDR_OPTION_ABSOLUTE, align 4
  %396 = and i32 %394, %395
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %401

398:                                              ; preds = %389
  %399 = load i32, i32* %30, align 4
  %400 = icmp slt i32 %399, 0
  br label %401

401:                                              ; preds = %398, %389
  %402 = phi i1 [ false, %389 ], [ %400, %398 ]
  %403 = zext i1 %402 to i32
  %404 = call i64 @likely(i32 %403)
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %409

406:                                              ; preds = %401
  %407 = load i32, i32* %30, align 4
  %408 = sub nsw i32 0, %407
  store i32 %408, i32* %30, align 4
  br label %409

409:                                              ; preds = %406, %401
  %410 = load i32, i32* %30, align 4
  %411 = load i32, i32* %23, align 4
  %412 = add nsw i32 %411, %410
  store i32 %412, i32* %23, align 4
  br label %413

413:                                              ; preds = %409
  %414 = load i64, i64* %17, align 8
  %415 = add nsw i64 %414, 1
  store i64 %415, i64* %17, align 8
  %416 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %417 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %416, i32 0, i32 1
  %418 = load %struct.TYPE_7__*, %struct.TYPE_7__** %417, align 8
  store %struct.TYPE_7__* %418, %struct.TYPE_7__** %19, align 8
  br label %378

419:                                              ; preds = %387
  %420 = load i32, i32* %23, align 4
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %422, label %423

422:                                              ; preds = %419
  store i32 1, i32* %23, align 4
  br label %423

423:                                              ; preds = %422, %419
  store i32 1, i32* %29, align 4
  br label %424

424:                                              ; preds = %423, %366
  store i64 0, i64* %17, align 8
  %425 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %426 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %425, i32 0, i32 6
  %427 = load %struct.TYPE_8__*, %struct.TYPE_8__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %427, i32 0, i32 0
  %429 = load %struct.TYPE_7__*, %struct.TYPE_7__** %428, align 8
  store %struct.TYPE_7__* %429, %struct.TYPE_7__** %19, align 8
  br label %430

430:                                              ; preds = %564, %424
  %431 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %432 = icmp ne %struct.TYPE_7__* %431, null
  br i1 %432, label %433, label %439

433:                                              ; preds = %430
  %434 = load i64, i64* %17, align 8
  %435 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %436 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %435, i32 0, i32 0
  %437 = load i64, i64* %436, align 8
  %438 = icmp slt i64 %434, %437
  br label %439

439:                                              ; preds = %433, %430
  %440 = phi i1 [ false, %430 ], [ %438, %433 ]
  br i1 %440, label %441, label %570

441:                                              ; preds = %439
  %442 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %443 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %442, i32 0, i32 1
  %444 = load i32*, i32** %443, align 8
  %445 = load i64, i64* %17, align 8
  %446 = getelementptr inbounds i32, i32* %444, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = load i32, i32* @RRDR_DIMENSION_HIDDEN, align 4
  %449 = and i32 %447, %448
  %450 = call i64 @unlikely(i32 %449)
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %453

452:                                              ; preds = %441
  br label %564

453:                                              ; preds = %441
  %454 = load i32, i32* %12, align 4
  %455 = load i32, i32* @RRDR_OPTION_NONZERO, align 4
  %456 = and i32 %454, %455
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %469

458:                                              ; preds = %453
  %459 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %460 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %459, i32 0, i32 1
  %461 = load i32*, i32** %460, align 8
  %462 = load i64, i64* %17, align 8
  %463 = getelementptr inbounds i32, i32* %461, i64 %462
  %464 = load i32, i32* %463, align 4
  %465 = load i32, i32* @RRDR_DIMENSION_NONZERO, align 4
  %466 = and i32 %464, %465
  %467 = icmp ne i32 %466, 0
  %468 = xor i1 %467, true
  br label %469

469:                                              ; preds = %458, %453
  %470 = phi i1 [ false, %453 ], [ %468, %458 ]
  %471 = zext i1 %470 to i32
  %472 = call i64 @unlikely(i32 %471)
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %475

474:                                              ; preds = %469
  br label %564

475:                                              ; preds = %469
  %476 = load i32*, i32** %10, align 8
  %477 = load i8*, i8** %14, align 8
  %478 = call i32 @buffer_strcat(i32* %476, i8* %477)
  %479 = load i32*, i32** %24, align 8
  %480 = load i64, i64* %17, align 8
  %481 = getelementptr inbounds i32, i32* %479, i64 %480
  %482 = load i32, i32* %481, align 4
  store i32 %482, i32* %31, align 4
  %483 = load i32*, i32** %25, align 8
  %484 = load i64, i64* %17, align 8
  %485 = getelementptr inbounds i32, i32* %483, i64 %484
  %486 = load i32, i32* %485, align 4
  %487 = load i32, i32* @RRDR_VALUE_EMPTY, align 4
  %488 = and i32 %486, %487
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %502

490:                                              ; preds = %475
  %491 = load i32, i32* %12, align 4
  %492 = load i32, i32* @RRDR_OPTION_NULL2ZERO, align 4
  %493 = and i32 %491, %492
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %498

495:                                              ; preds = %490
  %496 = load i32*, i32** %10, align 8
  %497 = call i32 @buffer_strcat(i32* %496, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %501

498:                                              ; preds = %490
  %499 = load i32*, i32** %10, align 8
  %500 = call i32 @buffer_strcat(i32* %499, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %501

501:                                              ; preds = %498, %495
  br label %563

502:                                              ; preds = %475
  %503 = load i32, i32* %12, align 4
  %504 = load i32, i32* @RRDR_OPTION_ABSOLUTE, align 4
  %505 = and i32 %503, %504
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %510

507:                                              ; preds = %502
  %508 = load i32, i32* %31, align 4
  %509 = icmp slt i32 %508, 0
  br label %510

510:                                              ; preds = %507, %502
  %511 = phi i1 [ false, %502 ], [ %509, %507 ]
  %512 = zext i1 %511 to i32
  %513 = call i64 @unlikely(i32 %512)
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %515, label %518

515:                                              ; preds = %510
  %516 = load i32, i32* %31, align 4
  %517 = sub nsw i32 0, %516
  store i32 %517, i32* %31, align 4
  br label %518

518:                                              ; preds = %515, %510
  %519 = load i32, i32* %12, align 4
  %520 = load i32, i32* @RRDR_OPTION_PERCENTAGE, align 4
  %521 = and i32 %519, %520
  %522 = call i64 @unlikely(i32 %521)
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %524, label %559

524:                                              ; preds = %518
  %525 = load i32, i32* %31, align 4
  %526 = mul nsw i32 %525, 100
  %527 = load i32, i32* %23, align 4
  %528 = sdiv i32 %526, %527
  store i32 %528, i32* %31, align 4
  %529 = load i32, i32* %29, align 4
  %530 = call i64 @unlikely(i32 %529)
  %531 = icmp ne i64 %530, 0
  br i1 %531, label %532, label %538

532:                                              ; preds = %524
  %533 = load i32, i32* %31, align 4
  %534 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %535 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %534, i32 0, i32 5
  store i32 %533, i32* %535, align 4
  %536 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %537 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %536, i32 0, i32 4
  store i32 %533, i32* %537, align 8
  store i32 0, i32* %29, align 4
  br label %538

538:                                              ; preds = %532, %524
  %539 = load i32, i32* %31, align 4
  %540 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %541 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %540, i32 0, i32 4
  %542 = load i32, i32* %541, align 8
  %543 = icmp slt i32 %539, %542
  br i1 %543, label %544, label %548

544:                                              ; preds = %538
  %545 = load i32, i32* %31, align 4
  %546 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %547 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %546, i32 0, i32 4
  store i32 %545, i32* %547, align 8
  br label %548

548:                                              ; preds = %544, %538
  %549 = load i32, i32* %31, align 4
  %550 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %551 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %550, i32 0, i32 5
  %552 = load i32, i32* %551, align 4
  %553 = icmp sgt i32 %549, %552
  br i1 %553, label %554, label %558

554:                                              ; preds = %548
  %555 = load i32, i32* %31, align 4
  %556 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %557 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %556, i32 0, i32 5
  store i32 %555, i32* %557, align 4
  br label %558

558:                                              ; preds = %554, %548
  br label %559

559:                                              ; preds = %558, %518
  %560 = load i32*, i32** %10, align 8
  %561 = load i32, i32* %31, align 4
  %562 = call i32 @buffer_rrd_value(i32* %560, i32 %561)
  br label %563

563:                                              ; preds = %559, %501
  br label %564

564:                                              ; preds = %563, %474, %452
  %565 = load i64, i64* %17, align 8
  %566 = add nsw i64 %565, 1
  store i64 %566, i64* %17, align 8
  %567 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %568 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %567, i32 0, i32 1
  %569 = load %struct.TYPE_7__*, %struct.TYPE_7__** %568, align 8
  store %struct.TYPE_7__* %569, %struct.TYPE_7__** %19, align 8
  br label %430

570:                                              ; preds = %439
  %571 = load i32*, i32** %10, align 8
  %572 = load i8*, i8** %15, align 8
  %573 = call i32 @buffer_strcat(i32* %571, i8* %572)
  br label %574

574:                                              ; preds = %570, %341
  %575 = load i64, i64* %22, align 8
  %576 = load i64, i64* %18, align 8
  %577 = add nsw i64 %576, %575
  store i64 %577, i64* %18, align 8
  br label %280

578:                                              ; preds = %264, %280
  ret void
}

declare dso_local i32 @rrdset_check_rdlock(%struct.TYPE_8__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @buffer_strcat(i32*, i8*) #1

declare dso_local i32 @rrdr_rows(%struct.TYPE_6__*) #1

declare dso_local i32 @buffer_rrd_value(i32*, i32) #1

declare dso_local %struct.tm* @localtime_r(i64*, %struct.tm*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @buffer_date(i32*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
