; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_do_to_timestamp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_do_to_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_tm = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i64, i64, i32, i64, i64, i64 }
%struct.TYPE_8__ = type { i8* }

@DCH_CACHE_SIZE = common dso_local global i32 0, align 4
@DCH_keywords = common dso_local global i32 0, align 4
@DCH_suff = common dso_local global i32 0, align 4
@DCH_index = common dso_local global i32 0, align 4
@DCH_FLAG = common dso_local global i32 0, align 4
@STD_FLAG = common dso_local global i32 0, align 4
@CHECK_ERROR = common dso_local global i32 0, align 4
@SECS_PER_HOUR = common dso_local global i32 0, align 4
@SECS_PER_MINUTE = common dso_local global i32 0, align 4
@CLOCK_12_HOUR = common dso_local global i64 0, align 8
@HOURS_PER_DAY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_DATETIME_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"hour \22%d\22 is invalid for the 12-hour clock\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Use the 24-hour clock, or give an hour between 1 and 12.\00", align 1
@YEAR = common dso_local global i32 0, align 4
@DTK_DATE_M = common dso_local global i32 0, align 4
@FROM_CHAR_DATE_ISOWEEK = common dso_local global i64 0, align 8
@DAY = common dso_local global i32 0, align 4
@MONTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"cannot calculate day of year without year information\00", align 1
@do_to_timestamp.ysum = internal constant [2 x [13 x i32]] [[13 x i32] [i32 0, i32 31, i32 59, i32 90, i32 120, i32 151, i32 181, i32 212, i32 243, i32 273, i32 304, i32 334, i32 365], [13 x i32] [i32 0, i32 31, i32 60, i32 91, i32 121, i32 152, i32 182, i32 213, i32 244, i32 274, i32 305, i32 335, i32 366]], align 16
@MONTHS_PER_YEAR = common dso_local global i32 0, align 4
@DTERR_FIELD_OVERFLOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"timestamp\00", align 1
@MINS_PER_HOUR = common dso_local global i32 0, align 4
@USECS_PER_SEC = common dso_local global i64 0, align 8
@MAX_TZDISP_HOUR = common dso_local global i64 0, align 8
@DTERR_TZDISP_OVERFLOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"%c%02d:%02d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, %struct.pg_tm*, i64*, i32*, i32*, i32*)* @do_to_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_to_timestamp(i32* %0, i32* %1, i32 %2, %struct.pg_tm* %3, i64* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pg_tm*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_7__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_8__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.pg_tm* %3, %struct.pg_tm** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  store i8* null, i8** %17, align 8
  store i32 0, i32* %22, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = call i8* @text_to_cstring(i32* %31)
  store i8* %32, i8** %20, align 8
  %33 = call i32 @ZERO_tmfc(%struct.TYPE_7__* %18)
  %34 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %35 = call i32 @ZERO_tm(%struct.pg_tm* %34)
  %36 = load i64*, i64** %13, align 8
  store i64 0, i64* %36, align 8
  store i32 0, i32* %21, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @VARSIZE_ANY_EXHDR(i32* %37)
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* %19, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %101

41:                                               ; preds = %8
  %42 = load i32*, i32** %10, align 8
  %43 = call i8* @text_to_cstring(i32* %42)
  store i8* %43, i8** %23, align 8
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* @DCH_CACHE_SIZE, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %41
  %48 = load i32, i32* %19, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 1
  %52 = trunc i64 %51 to i32
  %53 = call i64 @palloc(i32 %52)
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %17, align 8
  %55 = load i8*, i8** %17, align 8
  %56 = load i8*, i8** %23, align 8
  %57 = load i32, i32* @DCH_keywords, align 4
  %58 = load i32, i32* @DCH_suff, align 4
  %59 = load i32, i32* @DCH_index, align 4
  %60 = load i32, i32* @DCH_FLAG, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %47
  %64 = load i32, i32* @STD_FLAG, align 4
  br label %66

65:                                               ; preds = %47
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32 [ %64, %63 ], [ 0, %65 ]
  %68 = or i32 %60, %67
  %69 = call i32 @parse_format(i8* %55, i8* %56, i32 %57, i32 %58, i32 %59, i32 %68, i32* null)
  br label %77

70:                                               ; preds = %41
  %71 = load i8*, i8** %23, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call %struct.TYPE_8__* @DCH_cache_fetch(i8* %71, i32 %72)
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %24, align 8
  store i32 1, i32* %22, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %17, align 8
  br label %77

77:                                               ; preds = %70, %66
  %78 = load i8*, i8** %17, align 8
  %79 = load i8*, i8** %20, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32*, i32** %16, align 8
  %82 = call i32 @DCH_from_char(i8* %78, i8* %79, %struct.TYPE_7__* %18, i32 %80, i32* %81)
  %83 = load i32, i32* @CHECK_ERROR, align 4
  %84 = load i8*, i8** %23, align 8
  %85 = call i32 @pfree(i8* %84)
  %86 = load i32*, i32** %15, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %77
  %89 = load i8*, i8** %17, align 8
  %90 = load i32*, i32** %16, align 8
  %91 = call i32 @DCH_datetime_type(i8* %89, i32* %90)
  %92 = load i32*, i32** %15, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %77
  %94 = load i32, i32* %22, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i8*, i8** %17, align 8
  %98 = call i32 @pfree(i8* %97)
  store i8* null, i8** %17, align 8
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i32, i32* @CHECK_ERROR, align 4
  br label %101

101:                                              ; preds = %99, %8
  %102 = call i32 @DEBUG_TMFC(%struct.TYPE_7__* %18)
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %128

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %25, align 4
  %109 = load i32, i32* %25, align 4
  %110 = load i32, i32* @SECS_PER_HOUR, align 4
  %111 = sdiv i32 %109, %110
  %112 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %113 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @SECS_PER_HOUR, align 4
  %115 = load i32, i32* %25, align 4
  %116 = srem i32 %115, %114
  store i32 %116, i32* %25, align 4
  %117 = load i32, i32* %25, align 4
  %118 = load i32, i32* @SECS_PER_MINUTE, align 4
  %119 = sdiv i32 %117, %118
  %120 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %121 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @SECS_PER_MINUTE, align 4
  %123 = load i32, i32* %25, align 4
  %124 = srem i32 %123, %122
  store i32 %124, i32* %25, align 4
  %125 = load i32, i32* %25, align 4
  %126 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %127 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  br label %128

128:                                              ; preds = %106, %101
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %136 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %132, %128
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %145 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %141, %137
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %154 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %150, %146
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @CLOCK_12_HOUR, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %217

160:                                              ; preds = %155
  %161 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %162 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp slt i32 %163, 1
  br i1 %164, label %172, label %165

165:                                              ; preds = %160
  %166 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %167 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @HOURS_PER_DAY, align 4
  %170 = sdiv i32 %169, 2
  %171 = icmp sgt i32 %168, %170
  br i1 %171, label %172, label %183

172:                                              ; preds = %165, %160
  %173 = load i32, i32* @ERROR, align 4
  %174 = load i32, i32* @ERRCODE_INVALID_DATETIME_FORMAT, align 4
  %175 = call i32 @errcode(i32 %174)
  %176 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %177 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %178)
  %180 = call i32 @errhint(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %181 = call i32 @ereport(i32 %173, i32 %180)
  %182 = call i32 @RETURN_ERROR(i32 %181)
  br label %183

183:                                              ; preds = %172, %165
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 23
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %201

187:                                              ; preds = %183
  %188 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %189 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @HOURS_PER_DAY, align 4
  %192 = sdiv i32 %191, 2
  %193 = icmp slt i32 %190, %192
  br i1 %193, label %194, label %201

194:                                              ; preds = %187
  %195 = load i32, i32* @HOURS_PER_DAY, align 4
  %196 = sdiv i32 %195, 2
  %197 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %198 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = add nsw i32 %199, %196
  store i32 %200, i32* %198, align 8
  br label %216

201:                                              ; preds = %187, %183
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 23
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %215, label %205

205:                                              ; preds = %201
  %206 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %207 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @HOURS_PER_DAY, align 4
  %210 = sdiv i32 %209, 2
  %211 = icmp eq i32 %208, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %205
  %213 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %214 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %213, i32 0, i32 0
  store i32 0, i32* %214, align 8
  br label %215

215:                                              ; preds = %212, %205, %201
  br label %216

216:                                              ; preds = %215, %194
  br label %217

217:                                              ; preds = %216, %155
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 5
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %314

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 6
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %287

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 7
  %227 = load i32, i32* %226, align 8
  %228 = icmp sle i32 %227, 2
  br i1 %228, label %229, label %287

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 21
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 6
  %235 = load i32, i32* %234, align 4
  %236 = sub nsw i32 0, %235
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 6
  store i32 %236, i32* %237, align 4
  br label %238

238:                                              ; preds = %233, %229
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 5
  %240 = load i32, i32* %239, align 8
  %241 = srem i32 %240, 100
  %242 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %243 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %242, i32 0, i32 3
  store i32 %241, i32* %243, align 4
  %244 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %245 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %274

248:                                              ; preds = %238
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 6
  %250 = load i32, i32* %249, align 4
  %251 = icmp sge i32 %250, 0
  br i1 %251, label %252, label %261

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 6
  %254 = load i32, i32* %253, align 4
  %255 = sub nsw i32 %254, 1
  %256 = mul nsw i32 %255, 100
  %257 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %258 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %259, %256
  store i32 %260, i32* %258, align 4
  br label %273

261:                                              ; preds = %248
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 6
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, 1
  %265 = mul nsw i32 %264, 100
  %266 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %267 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = sub nsw i32 %265, %268
  %270 = add nsw i32 %269, 1
  %271 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %272 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %271, i32 0, i32 3
  store i32 %270, i32* %272, align 4
  br label %273

273:                                              ; preds = %261, %252
  br label %286

274:                                              ; preds = %238
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 6
  %276 = load i32, i32* %275, align 4
  %277 = mul nsw i32 %276, 100
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 6
  %279 = load i32, i32* %278, align 4
  %280 = icmp sge i32 %279, 0
  %281 = zext i1 %280 to i64
  %282 = select i1 %280, i32 0, i32 1
  %283 = add nsw i32 %277, %282
  %284 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %285 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %284, i32 0, i32 3
  store i32 %283, i32* %285, align 4
  br label %286

286:                                              ; preds = %274, %273
  br label %309

287:                                              ; preds = %225, %221
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 5
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %291 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %290, i32 0, i32 3
  store i32 %289, i32* %291, align 4
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 21
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %308

295:                                              ; preds = %287
  %296 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %297 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = icmp sgt i32 %298, 0
  br i1 %299, label %300, label %308

300:                                              ; preds = %295
  %301 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %302 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = sub nsw i32 %303, 1
  %305 = sub nsw i32 0, %304
  %306 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %307 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %306, i32 0, i32 3
  store i32 %305, i32* %307, align 4
  br label %308

308:                                              ; preds = %300, %295, %287
  br label %309

309:                                              ; preds = %308, %286
  %310 = load i32, i32* @YEAR, align 4
  %311 = call i32 @DTK_M(i32 %310)
  %312 = load i32, i32* %21, align 4
  %313 = or i32 %312, %311
  store i32 %313, i32* %21, align 4
  br label %352

314:                                              ; preds = %217
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 6
  %316 = load i32, i32* %315, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %351

318:                                              ; preds = %314
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 21
  %320 = load i64, i64* %319, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %327

322:                                              ; preds = %318
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 6
  %324 = load i32, i32* %323, align 4
  %325 = sub nsw i32 0, %324
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 6
  store i32 %325, i32* %326, align 4
  br label %327

327:                                              ; preds = %322, %318
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 6
  %329 = load i32, i32* %328, align 4
  %330 = icmp sge i32 %329, 0
  br i1 %330, label %331, label %339

331:                                              ; preds = %327
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 6
  %333 = load i32, i32* %332, align 4
  %334 = sub nsw i32 %333, 1
  %335 = mul nsw i32 %334, 100
  %336 = add nsw i32 %335, 1
  %337 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %338 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %337, i32 0, i32 3
  store i32 %336, i32* %338, align 4
  br label %346

339:                                              ; preds = %327
  %340 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 6
  %341 = load i32, i32* %340, align 4
  %342 = mul nsw i32 %341, 100
  %343 = add nsw i32 %342, 1
  %344 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %345 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %344, i32 0, i32 3
  store i32 %343, i32* %345, align 4
  br label %346

346:                                              ; preds = %339, %331
  %347 = load i32, i32* @YEAR, align 4
  %348 = call i32 @DTK_M(i32 %347)
  %349 = load i32, i32* %21, align 4
  %350 = or i32 %349, %348
  store i32 %350, i32* %21, align 4
  br label %351

351:                                              ; preds = %346, %314
  br label %352

352:                                              ; preds = %351, %309
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 8
  %354 = load i32, i32* %353, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %369

356:                                              ; preds = %352
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 8
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %360 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %359, i32 0, i32 3
  %361 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %362 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %361, i32 0, i32 4
  %363 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %364 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %363, i32 0, i32 5
  %365 = call i32 @j2date(i32 %358, i32* %360, i32* %362, i32* %364)
  %366 = load i32, i32* @DTK_DATE_M, align 4
  %367 = load i32, i32* %21, align 4
  %368 = or i32 %367, %366
  store i32 %368, i32* %21, align 4
  br label %369

369:                                              ; preds = %356, %352
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 9
  %371 = load i32, i32* %370, align 8
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %416

373:                                              ; preds = %369
  %374 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 10
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @FROM_CHAR_DATE_ISOWEEK, align 8
  %377 = icmp eq i64 %375, %376
  br i1 %377, label %378, label %408

378:                                              ; preds = %373
  %379 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 22
  %380 = load i64, i64* %379, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %394

382:                                              ; preds = %378
  %383 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 9
  %384 = load i32, i32* %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 22
  %386 = load i64, i64* %385, align 8
  %387 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %388 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %387, i32 0, i32 3
  %389 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %390 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %389, i32 0, i32 4
  %391 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %392 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %391, i32 0, i32 5
  %393 = call i32 @isoweekdate2date(i32 %384, i64 %386, i32* %388, i32* %390, i32* %392)
  br label %404

394:                                              ; preds = %378
  %395 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 9
  %396 = load i32, i32* %395, align 8
  %397 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %398 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %397, i32 0, i32 3
  %399 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %400 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %399, i32 0, i32 4
  %401 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %402 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %401, i32 0, i32 5
  %403 = call i32 @isoweek2date(i32 %396, i32* %398, i32* %400, i32* %402)
  br label %404

404:                                              ; preds = %394, %382
  %405 = load i32, i32* @DTK_DATE_M, align 4
  %406 = load i32, i32* %21, align 4
  %407 = or i32 %406, %405
  store i32 %407, i32* %21, align 4
  br label %415

408:                                              ; preds = %373
  %409 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 9
  %410 = load i32, i32* %409, align 8
  %411 = sub nsw i32 %410, 1
  %412 = mul nsw i32 %411, 7
  %413 = add nsw i32 %412, 1
  %414 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 11
  store i32 %413, i32* %414, align 8
  br label %415

415:                                              ; preds = %408, %404
  br label %416

416:                                              ; preds = %415, %369
  %417 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 12
  %418 = load i32, i32* %417, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %427

420:                                              ; preds = %416
  %421 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 12
  %422 = load i32, i32* %421, align 4
  %423 = sub nsw i32 %422, 1
  %424 = mul nsw i32 %423, 7
  %425 = add nsw i32 %424, 1
  %426 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 13
  store i32 %425, i32* %426, align 8
  br label %427

427:                                              ; preds = %420, %416
  %428 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 13
  %429 = load i32, i32* %428, align 8
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %440

431:                                              ; preds = %427
  %432 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 13
  %433 = load i32, i32* %432, align 8
  %434 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %435 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %434, i32 0, i32 5
  store i32 %433, i32* %435, align 4
  %436 = load i32, i32* @DAY, align 4
  %437 = call i32 @DTK_M(i32 %436)
  %438 = load i32, i32* %21, align 4
  %439 = or i32 %438, %437
  store i32 %439, i32* %21, align 4
  br label %440

440:                                              ; preds = %431, %427
  %441 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 14
  %442 = load i32, i32* %441, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %453

444:                                              ; preds = %440
  %445 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 14
  %446 = load i32, i32* %445, align 4
  %447 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %448 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %447, i32 0, i32 4
  store i32 %446, i32* %448, align 8
  %449 = load i32, i32* @MONTH, align 4
  %450 = call i32 @DTK_M(i32 %449)
  %451 = load i32, i32* %21, align 4
  %452 = or i32 %451, %450
  store i32 %452, i32* %21, align 4
  br label %453

453:                                              ; preds = %444, %440
  %454 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 11
  %455 = load i32, i32* %454, align 8
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %568

457:                                              ; preds = %453
  %458 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %459 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %458, i32 0, i32 4
  %460 = load i32, i32* %459, align 8
  %461 = icmp sle i32 %460, 1
  br i1 %461, label %467, label %462

462:                                              ; preds = %457
  %463 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %464 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %463, i32 0, i32 5
  %465 = load i32, i32* %464, align 4
  %466 = icmp sle i32 %465, 1
  br i1 %466, label %467, label %568

467:                                              ; preds = %462, %457
  %468 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %469 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %468, i32 0, i32 3
  %470 = load i32, i32* %469, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %483, label %472

472:                                              ; preds = %467
  %473 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 21
  %474 = load i64, i64* %473, align 8
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %483, label %476

476:                                              ; preds = %472
  %477 = load i32, i32* @ERROR, align 4
  %478 = load i32, i32* @ERRCODE_INVALID_DATETIME_FORMAT, align 4
  %479 = call i32 @errcode(i32 %478)
  %480 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %481 = call i32 @ereport(i32 %477, i32 %480)
  %482 = call i32 @RETURN_ERROR(i32 %481)
  br label %483

483:                                              ; preds = %476, %472, %467
  %484 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 10
  %485 = load i64, i64* %484, align 8
  %486 = load i64, i64* @FROM_CHAR_DATE_ISOWEEK, align 8
  %487 = icmp eq i64 %485, %486
  br i1 %487, label %488, label %508

488:                                              ; preds = %483
  %489 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %490 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %489, i32 0, i32 3
  %491 = load i32, i32* %490, align 4
  %492 = call i32 @isoweek2j(i32 %491, i32 1)
  %493 = sub nsw i32 %492, 1
  store i32 %493, i32* %26, align 4
  %494 = load i32, i32* %26, align 4
  %495 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 11
  %496 = load i32, i32* %495, align 8
  %497 = add nsw i32 %494, %496
  %498 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %499 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %498, i32 0, i32 3
  %500 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %501 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %500, i32 0, i32 4
  %502 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %503 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %502, i32 0, i32 5
  %504 = call i32 @j2date(i32 %497, i32* %499, i32* %501, i32* %503)
  %505 = load i32, i32* @DTK_DATE_M, align 4
  %506 = load i32, i32* %21, align 4
  %507 = or i32 %506, %505
  store i32 %507, i32* %21, align 4
  br label %567

508:                                              ; preds = %483
  %509 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %510 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %509, i32 0, i32 3
  %511 = load i32, i32* %510, align 4
  %512 = call i64 @isleap(i32 %511)
  %513 = getelementptr inbounds [2 x [13 x i32]], [2 x [13 x i32]]* @do_to_timestamp.ysum, i64 0, i64 %512
  %514 = getelementptr inbounds [13 x i32], [13 x i32]* %513, i64 0, i64 0
  store i32* %514, i32** %27, align 8
  store i32 1, i32* %28, align 4
  br label %515

515:                                              ; preds = %530, %508
  %516 = load i32, i32* %28, align 4
  %517 = load i32, i32* @MONTHS_PER_YEAR, align 4
  %518 = icmp sle i32 %516, %517
  br i1 %518, label %519, label %533

519:                                              ; preds = %515
  %520 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 11
  %521 = load i32, i32* %520, align 8
  %522 = load i32*, i32** %27, align 8
  %523 = load i32, i32* %28, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i32, i32* %522, i64 %524
  %526 = load i32, i32* %525, align 4
  %527 = icmp sle i32 %521, %526
  br i1 %527, label %528, label %529

528:                                              ; preds = %519
  br label %533

529:                                              ; preds = %519
  br label %530

530:                                              ; preds = %529
  %531 = load i32, i32* %28, align 4
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %28, align 4
  br label %515

533:                                              ; preds = %528, %515
  %534 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %535 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %534, i32 0, i32 4
  %536 = load i32, i32* %535, align 8
  %537 = icmp sle i32 %536, 1
  br i1 %537, label %538, label %542

538:                                              ; preds = %533
  %539 = load i32, i32* %28, align 4
  %540 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %541 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %540, i32 0, i32 4
  store i32 %539, i32* %541, align 8
  br label %542

542:                                              ; preds = %538, %533
  %543 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %544 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %543, i32 0, i32 5
  %545 = load i32, i32* %544, align 4
  %546 = icmp sle i32 %545, 1
  br i1 %546, label %547, label %559

547:                                              ; preds = %542
  %548 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 11
  %549 = load i32, i32* %548, align 8
  %550 = load i32*, i32** %27, align 8
  %551 = load i32, i32* %28, align 4
  %552 = sub nsw i32 %551, 1
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds i32, i32* %550, i64 %553
  %555 = load i32, i32* %554, align 4
  %556 = sub nsw i32 %549, %555
  %557 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %558 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %557, i32 0, i32 5
  store i32 %556, i32* %558, align 4
  br label %559

559:                                              ; preds = %547, %542
  %560 = load i32, i32* @MONTH, align 4
  %561 = call i32 @DTK_M(i32 %560)
  %562 = load i32, i32* @DAY, align 4
  %563 = call i32 @DTK_M(i32 %562)
  %564 = or i32 %561, %563
  %565 = load i32, i32* %21, align 4
  %566 = or i32 %565, %564
  store i32 %566, i32* %21, align 4
  br label %567

567:                                              ; preds = %559, %488
  br label %568

568:                                              ; preds = %567, %462, %453
  %569 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 15
  %570 = load i32, i32* %569, align 8
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %580

572:                                              ; preds = %568
  %573 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 15
  %574 = load i32, i32* %573, align 8
  %575 = mul nsw i32 %574, 1000
  %576 = sext i32 %575 to i64
  %577 = load i64*, i64** %13, align 8
  %578 = load i64, i64* %577, align 8
  %579 = add nsw i64 %578, %576
  store i64 %579, i64* %577, align 8
  br label %580

580:                                              ; preds = %572, %568
  %581 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 16
  %582 = load i64, i64* %581, align 8
  %583 = icmp ne i64 %582, 0
  br i1 %583, label %584, label %590

584:                                              ; preds = %580
  %585 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 16
  %586 = load i64, i64* %585, align 8
  %587 = load i64*, i64** %13, align 8
  %588 = load i64, i64* %587, align 8
  %589 = add nsw i64 %588, %586
  store i64 %589, i64* %587, align 8
  br label %590

590:                                              ; preds = %584, %580
  %591 = load i32*, i32** %14, align 8
  %592 = icmp ne i32* %591, null
  br i1 %592, label %593, label %597

593:                                              ; preds = %590
  %594 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 17
  %595 = load i32, i32* %594, align 8
  %596 = load i32*, i32** %14, align 8
  store i32 %595, i32* %596, align 4
  br label %597

597:                                              ; preds = %593, %590
  %598 = load i32, i32* %21, align 4
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %612

600:                                              ; preds = %597
  %601 = load i32, i32* %21, align 4
  %602 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %603 = call i32 @ValidateDate(i32 %601, i32 1, i32 0, i32 0, %struct.pg_tm* %602)
  store i32 %603, i32* %29, align 4
  %604 = load i32, i32* %29, align 4
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %611

606:                                              ; preds = %600
  %607 = load i32, i32* @DTERR_FIELD_OVERFLOW, align 4
  %608 = load i8*, i8** %20, align 8
  %609 = call i32 @DateTimeParseError(i32 %607, i8* %608, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %610 = call i32 @RETURN_ERROR(i32 %609)
  br label %611

611:                                              ; preds = %606, %600
  br label %612

612:                                              ; preds = %611, %597
  %613 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %614 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %613, i32 0, i32 0
  %615 = load i32, i32* %614, align 8
  %616 = icmp slt i32 %615, 0
  br i1 %616, label %655, label %617

617:                                              ; preds = %612
  %618 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %619 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %618, i32 0, i32 0
  %620 = load i32, i32* %619, align 8
  %621 = load i32, i32* @HOURS_PER_DAY, align 4
  %622 = icmp sge i32 %620, %621
  br i1 %622, label %655, label %623

623:                                              ; preds = %617
  %624 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %625 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %624, i32 0, i32 1
  %626 = load i32, i32* %625, align 4
  %627 = icmp slt i32 %626, 0
  br i1 %627, label %655, label %628

628:                                              ; preds = %623
  %629 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %630 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %629, i32 0, i32 1
  %631 = load i32, i32* %630, align 4
  %632 = load i32, i32* @MINS_PER_HOUR, align 4
  %633 = icmp sge i32 %631, %632
  br i1 %633, label %655, label %634

634:                                              ; preds = %628
  %635 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %636 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %635, i32 0, i32 2
  %637 = load i32, i32* %636, align 8
  %638 = icmp slt i32 %637, 0
  br i1 %638, label %655, label %639

639:                                              ; preds = %634
  %640 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %641 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %640, i32 0, i32 2
  %642 = load i32, i32* %641, align 8
  %643 = load i32, i32* @SECS_PER_MINUTE, align 4
  %644 = icmp sge i32 %642, %643
  br i1 %644, label %655, label %645

645:                                              ; preds = %639
  %646 = load i64*, i64** %13, align 8
  %647 = load i64, i64* %646, align 8
  %648 = call i64 @INT64CONST(i32 0)
  %649 = icmp slt i64 %647, %648
  br i1 %649, label %655, label %650

650:                                              ; preds = %645
  %651 = load i64*, i64** %13, align 8
  %652 = load i64, i64* %651, align 8
  %653 = load i64, i64* @USECS_PER_SEC, align 8
  %654 = icmp sge i64 %652, %653
  br i1 %654, label %655, label %660

655:                                              ; preds = %650, %645, %639, %634, %628, %623, %617, %612
  %656 = load i32, i32* @DTERR_FIELD_OVERFLOW, align 4
  %657 = load i8*, i8** %20, align 8
  %658 = call i32 @DateTimeParseError(i32 %656, i8* %657, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %659 = call i32 @RETURN_ERROR(i32 %658)
  br label %660

660:                                              ; preds = %655, %650
  %661 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 18
  %662 = load i64, i64* %661, align 8
  %663 = icmp ne i64 %662, 0
  br i1 %663, label %664, label %702

664:                                              ; preds = %660
  %665 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 19
  %666 = load i64, i64* %665, align 8
  %667 = icmp slt i64 %666, 0
  br i1 %667, label %682, label %668

668:                                              ; preds = %664
  %669 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 19
  %670 = load i64, i64* %669, align 8
  %671 = load i64, i64* @MAX_TZDISP_HOUR, align 8
  %672 = icmp sgt i64 %670, %671
  br i1 %672, label %682, label %673

673:                                              ; preds = %668
  %674 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 20
  %675 = load i32, i32* %674, align 8
  %676 = icmp slt i32 %675, 0
  br i1 %676, label %682, label %677

677:                                              ; preds = %673
  %678 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 20
  %679 = load i32, i32* %678, align 8
  %680 = load i32, i32* @MINS_PER_HOUR, align 4
  %681 = icmp sge i32 %679, %680
  br i1 %681, label %682, label %687

682:                                              ; preds = %677, %673, %668, %664
  %683 = load i32, i32* @DTERR_TZDISP_OVERFLOW, align 4
  %684 = load i8*, i8** %20, align 8
  %685 = call i32 @DateTimeParseError(i32 %683, i8* %684, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %686 = call i32 @RETURN_ERROR(i32 %685)
  br label %687

687:                                              ; preds = %682, %677
  %688 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 18
  %689 = load i64, i64* %688, align 8
  %690 = icmp sgt i64 %689, 0
  %691 = zext i1 %690 to i64
  %692 = select i1 %690, i32 43, i32 45
  %693 = trunc i32 %692 to i8
  %694 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 19
  %695 = load i64, i64* %694, align 8
  %696 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 20
  %697 = load i32, i32* %696, align 8
  %698 = call i8* @psprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8 signext %693, i64 %695, i32 %697)
  store i8* %698, i8** %30, align 8
  %699 = load i8*, i8** %30, align 8
  %700 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %701 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %700, i32 0, i32 6
  store i8* %699, i8** %701, align 8
  br label %702

702:                                              ; preds = %687, %660
  %703 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %704 = call i32 @DEBUG_TM(%struct.pg_tm* %703)
  br label %705

705:                                              ; preds = %702
  %706 = load i8*, i8** %17, align 8
  %707 = icmp ne i8* %706, null
  br i1 %707, label %708, label %714

708:                                              ; preds = %705
  %709 = load i32, i32* %22, align 4
  %710 = icmp ne i32 %709, 0
  br i1 %710, label %714, label %711

711:                                              ; preds = %708
  %712 = load i8*, i8** %17, align 8
  %713 = call i32 @pfree(i8* %712)
  br label %714

714:                                              ; preds = %711, %708, %705
  %715 = load i8*, i8** %20, align 8
  %716 = call i32 @pfree(i8* %715)
  ret void
}

declare dso_local i8* @text_to_cstring(i32*) #1

declare dso_local i32 @ZERO_tmfc(%struct.TYPE_7__*) #1

declare dso_local i32 @ZERO_tm(%struct.pg_tm*) #1

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @parse_format(i8*, i8*, i32, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_8__* @DCH_cache_fetch(i8*, i32) #1

declare dso_local i32 @DCH_from_char(i8*, i8*, %struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @DCH_datetime_type(i8*, i32*) #1

declare dso_local i32 @DEBUG_TMFC(%struct.TYPE_7__*) #1

declare dso_local i32 @RETURN_ERROR(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @DTK_M(i32) #1

declare dso_local i32 @j2date(i32, i32*, i32*, i32*) #1

declare dso_local i32 @isoweekdate2date(i32, i64, i32*, i32*, i32*) #1

declare dso_local i32 @isoweek2date(i32, i32*, i32*, i32*) #1

declare dso_local i32 @isoweek2j(i32, i32) #1

declare dso_local i64 @isleap(i32) #1

declare dso_local i32 @ValidateDate(i32, i32, i32, i32, %struct.pg_tm*) #1

declare dso_local i32 @DateTimeParseError(i32, i8*, i8*) #1

declare dso_local i64 @INT64CONST(i32) #1

declare dso_local i8* @psprintf(i8*, i8 signext, i64, i32) #1

declare dso_local i32 @DEBUG_TM(%struct.pg_tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
