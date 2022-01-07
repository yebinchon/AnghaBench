; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_reloptions.c_parse_one_reloption.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_reloptions.c_parse_one_reloption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i8*, i32, i32 }
%struct.TYPE_10__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 (i8*)* }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"parameter \22%s\22 specified more than once\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"invalid value for boolean option \22%s\22: %s\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"invalid value for integer option \22%s\22: %s\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"value %s out of bounds for option \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Valid values are between \22%d\22 and \22%d\22.\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"invalid value for floating point option \22%s\22: %s\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Valid values are between \22%f\22 and \22%f\22.\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"invalid value for enum option \22%s\22: %s\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"unsupported reloption type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i8*, i32, i32)* @parse_one_reloption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_one_reloption(%struct.TYPE_12__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load i32, i32* @ERROR, align 4
  %27 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %28 = call i32 @errcode(i32 %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = call i32 @ereport(i32 %26, i32 %34)
  br label %36

36:                                               ; preds = %25, %22, %4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %37, %42
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i64 @palloc(i32 %46)
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %9, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %50, i64 %56
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @memcpy(i8* %49, i8* %58, i32 %59)
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  store i8 0, i8* %64, align 1
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %326 [
    i32 132, label %70
    i32 130, label %94
    i32 129, label %162
    i32 131, label %230
    i32 128, label %303
  ]

70:                                               ; preds = %36
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 4
  %75 = call i32 @parse_bool(i8* %71, i32* %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %70
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* @ERROR, align 4
  %83 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %84 = call i32 @errcode(i32 %83)
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %89, i8* %90)
  %92 = call i32 @ereport(i32 %82, i32 %91)
  br label %93

93:                                               ; preds = %81, %78, %70
  br label %334

94:                                               ; preds = %36
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = bitcast %struct.TYPE_11__* %97 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %98, %struct.TYPE_15__** %13, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 3
  %103 = call i32 @parse_int(i8* %99, i32* %102, i32 0, i32* null)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %94
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %121, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* @ERROR, align 4
  %111 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %112 = call i32 @errcode(i32 %111)
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %117, i8* %118)
  %120 = call i32 @ereport(i32 %110, i32 %119)
  br label %121

121:                                              ; preds = %109, %106, %94
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %161

124:                                              ; preds = %121
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %142, label %133

133:                                              ; preds = %124
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp sgt i32 %137, %140
  br i1 %141, label %142, label %161

142:                                              ; preds = %133, %124
  %143 = load i32, i32* @ERROR, align 4
  %144 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %145 = call i32 @errcode(i32 %144)
  %146 = load i8*, i8** %9, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %146, i8* %151)
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @errdetail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %155, i32 %158)
  %160 = call i32 @ereport(i32 %143, i32 %159)
  br label %161

161:                                              ; preds = %142, %133, %121
  br label %334

162:                                              ; preds = %36
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %164, align 8
  %166 = bitcast %struct.TYPE_11__* %165 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %166, %struct.TYPE_14__** %14, align 8
  %167 = load i8*, i8** %9, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 2
  %171 = call i32 @parse_real(i8* %167, i32* %170, i32 0, i32* null)
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %189

174:                                              ; preds = %162
  %175 = load i32, i32* %11, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %189, label %177

177:                                              ; preds = %174
  %178 = load i32, i32* @ERROR, align 4
  %179 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %180 = call i32 @errcode(i32 %179)
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = load i8*, i8** %9, align 8
  %187 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8* %185, i8* %186)
  %188 = call i32 @ereport(i32 %178, i32 %187)
  br label %189

189:                                              ; preds = %177, %174, %162
  %190 = load i32, i32* %8, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %229

192:                                              ; preds = %189
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %210, label %201

201:                                              ; preds = %192
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = icmp sgt i32 %205, %208
  br i1 %209, label %210, label %229

210:                                              ; preds = %201, %192
  %211 = load i32, i32* @ERROR, align 4
  %212 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %213 = call i32 @errcode(i32 %212)
  %214 = load i8*, i8** %9, align 8
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %214, i8* %219)
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @errdetail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %223, i32 %226)
  %228 = call i32 @ereport(i32 %211, i32 %227)
  br label %229

229:                                              ; preds = %210, %201, %189
  br label %334

230:                                              ; preds = %36
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %232, align 8
  %234 = bitcast %struct.TYPE_11__* %233 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %234, %struct.TYPE_17__** %15, align 8
  store i32 0, i32* %11, align 4
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 2
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %236, align 8
  store %struct.TYPE_16__* %237, %struct.TYPE_16__** %16, align 8
  br label %238

238:                                              ; preds = %258, %230
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %261

243:                                              ; preds = %238
  %244 = load i8*, i8** %9, align 8
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @pg_strcasecmp(i8* %244, i32 %247)
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %243
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 1
  store i32 %253, i32* %256, align 8
  store i32 1, i32* %11, align 4
  br label %261

257:                                              ; preds = %243
  br label %258

258:                                              ; preds = %257
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 1
  store %struct.TYPE_16__* %260, %struct.TYPE_16__** %16, align 8
  br label %238

261:                                              ; preds = %250, %238
  %262 = load i32, i32* %8, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %292

264:                                              ; preds = %261
  %265 = load i32, i32* %11, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %292, label %267

267:                                              ; preds = %264
  %268 = load i32, i32* @ERROR, align 4
  %269 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %270 = call i32 @errcode(i32 %269)
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 0
  %275 = load i8*, i8** %274, align 8
  %276 = load i8*, i8** %9, align 8
  %277 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* %275, i8* %276)
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %267
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @_(i32 %285)
  %287 = call i32 @errdetail_internal(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %286)
  br label %289

288:                                              ; preds = %267
  br label %289

289:                                              ; preds = %288, %282
  %290 = phi i32 [ %287, %282 ], [ 0, %288 ]
  %291 = call i32 @ereport(i32 %268, i32 %290)
  br label %292

292:                                              ; preds = %289, %264, %261
  %293 = load i32, i32* %11, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %302, label %295

295:                                              ; preds = %292
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 1
  store i32 %298, i32* %301, align 8
  br label %302

302:                                              ; preds = %295, %292
  br label %334

303:                                              ; preds = %36
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 1
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %305, align 8
  %307 = bitcast %struct.TYPE_11__* %306 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %307, %struct.TYPE_13__** %17, align 8
  %308 = load i8*, i8** %9, align 8
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 0
  store i8* %308, i8** %311, align 8
  store i32 1, i32* %12, align 4
  %312 = load i32, i32* %8, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %325

314:                                              ; preds = %303
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 0
  %317 = load i32 (i8*)*, i32 (i8*)** %316, align 8
  %318 = icmp ne i32 (i8*)* %317, null
  br i1 %318, label %319, label %325

319:                                              ; preds = %314
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 0
  %322 = load i32 (i8*)*, i32 (i8*)** %321, align 8
  %323 = load i8*, i8** %9, align 8
  %324 = call i32 %322(i8* %323)
  br label %325

325:                                              ; preds = %319, %314, %303
  store i32 1, i32* %11, align 4
  br label %334

326:                                              ; preds = %36
  %327 = load i32, i32* @ERROR, align 4
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 1
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @elog(i32 %327, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %332)
  store i32 1, i32* %11, align 4
  br label %334

334:                                              ; preds = %326, %325, %302, %229, %161, %93
  %335 = load i32, i32* %11, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %334
  %338 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %338, i32 0, i32 0
  store i32 1, i32* %339, align 8
  br label %340

340:                                              ; preds = %337, %334
  %341 = load i32, i32* %12, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %346, label %343

343:                                              ; preds = %340
  %344 = load i8*, i8** %9, align 8
  %345 = call i32 @pfree(i8* %344)
  br label %346

346:                                              ; preds = %343, %340
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @parse_bool(i8*, i32*) #1

declare dso_local i32 @parse_int(i8*, i32*, i32, i32*) #1

declare dso_local i32 @errdetail(i8*, i32, i32) #1

declare dso_local i32 @parse_real(i8*, i32*, i32, i32*) #1

declare dso_local i32 @pg_strcasecmp(i8*, i32) #1

declare dso_local i32 @errdetail_internal(i8*, i32) #1

declare dso_local i32 @_(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
