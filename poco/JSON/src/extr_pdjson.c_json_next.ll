; ModuleID = '/home/carl/AnghaBench/poco/JSON/src/extr_pdjson.c_json_next.c'
source_filename = "/home/carl/AnghaBench/poco/JSON/src/extr_pdjson.c_json_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i64, i64, %struct.TYPE_10__*, %struct.TYPE_12__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)* }

@JSON_FLAG_ERROR = common dso_local global i32 0, align 4
@JSON_ERROR = common dso_local global i32 0, align 4
@JSON_FLAG_STREAMING = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@JSON_DONE = common dso_local global i32 0, align 4
@JSON_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"unexpected byte, '%c'\00", align 1
@JSON_OBJECT = common dso_local global i64 0, align 8
@JSON_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"expected property name or '}'\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"expected ',' or '}'\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"expected property name\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"expected ':' after property name\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"invalid parser state\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_next(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @JSON_FLAG_ERROR, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @JSON_ERROR, align 4
  store i32 %16, i32* %2, align 4
  br label %317

17:                                               ; preds = %1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %4, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %317

30:                                               ; preds = %17
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %80

35:                                               ; preds = %30
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, -1
  br i1 %39, label %40, label %80

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %61, %40
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %44, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 5
  %48 = call i32 %45(%struct.TYPE_12__* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @json_isspace(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %41
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %55, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 5
  %59 = call i32 %56(%struct.TYPE_12__* %58)
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %52, %41
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @json_isspace(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %41, label %65

65:                                               ; preds = %61
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @JSON_FLAG_STREAMING, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @EOF, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @JSON_ERROR, align 4
  store i32 %77, i32* %2, align 4
  br label %317

78:                                               ; preds = %72, %65
  %79 = load i32, i32* @JSON_DONE, align 4
  store i32 %79, i32* %2, align 4
  br label %317

80:                                               ; preds = %35, %30
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %82 = call i32 @next(%struct.TYPE_11__* %81)
  store i32 %82, i32* %6, align 4
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, -1
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @read_value(%struct.TYPE_11__* %88, i32 %89)
  store i32 %90, i32* %2, align 4
  br label %317

91:                                               ; preds = %80
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @JSON_ARRAY, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %167

103:                                              ; preds = %91
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %136

114:                                              ; preds = %103
  %115 = load i32, i32* %6, align 4
  %116 = icmp eq i32 %115, 93
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %119 = load i32, i32* %6, align 4
  %120 = load i64, i64* @JSON_ARRAY, align 8
  %121 = call i32 @pop(%struct.TYPE_11__* %118, i32 %119, i64 %120)
  store i32 %121, i32* %2, align 4
  br label %317

122:                                              ; preds = %114
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @read_value(%struct.TYPE_11__* %133, i32 %134)
  store i32 %135, i32* %2, align 4
  br label %317

136:                                              ; preds = %103
  %137 = load i32, i32* %6, align 4
  %138 = icmp eq i32 %137, 44
  br i1 %138, label %139, label %154

139:                                              ; preds = %136
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %152 = call i32 @next(%struct.TYPE_11__* %151)
  %153 = call i32 @read_value(%struct.TYPE_11__* %150, i32 %152)
  store i32 %153, i32* %2, align 4
  br label %317

154:                                              ; preds = %136
  %155 = load i32, i32* %6, align 4
  %156 = icmp eq i32 %155, 93
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %159 = load i32, i32* %6, align 4
  %160 = load i64, i64* @JSON_ARRAY, align 8
  %161 = call i32 @pop(%struct.TYPE_11__* %158, i32 %159, i64 %160)
  store i32 %161, i32* %2, align 4
  br label %317

162:                                              ; preds = %154
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %164 = load i32, i32* %6, align 4
  %165 = call i32 (%struct.TYPE_11__*, i8*, ...) @json_error(%struct.TYPE_11__* %163, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* @JSON_ERROR, align 4
  store i32 %166, i32* %2, align 4
  br label %317

167:                                              ; preds = %91
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 4
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @JSON_OBJECT, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %312

179:                                              ; preds = %167
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 4
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %221

190:                                              ; preds = %179
  %191 = load i32, i32* %6, align 4
  %192 = icmp eq i32 %191, 125
  br i1 %192, label %193, label %198

193:                                              ; preds = %190
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %195 = load i32, i32* %6, align 4
  %196 = load i64, i64* @JSON_OBJECT, align 8
  %197 = call i32 @pop(%struct.TYPE_11__* %194, i32 %195, i64 %196)
  store i32 %197, i32* %2, align 4
  br label %317

198:                                              ; preds = %190
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %200 = load i32, i32* %6, align 4
  %201 = call i32 @read_value(%struct.TYPE_11__* %199, i32 %200)
  store i32 %201, i32* %7, align 4
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* @JSON_STRING, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %198
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %207 = call i32 (%struct.TYPE_11__*, i8*, ...) @json_error(%struct.TYPE_11__* %206, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %208 = load i32, i32* @JSON_ERROR, align 4
  store i32 %208, i32* %2, align 4
  br label %317

209:                                              ; preds = %198
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 4
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %211, align 8
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %217, align 8
  %220 = load i32, i32* %7, align 4
  store i32 %220, i32* %2, align 4
  br label %317

221:                                              ; preds = %179
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 4
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %223, align 8
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = srem i32 %230, 2
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %275

233:                                              ; preds = %221
  %234 = load i32, i32* %6, align 4
  %235 = icmp ne i32 %234, 44
  br i1 %235, label %236, label %243

236:                                              ; preds = %233
  %237 = load i32, i32* %6, align 4
  %238 = icmp ne i32 %237, 125
  br i1 %238, label %239, label %243

239:                                              ; preds = %236
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %241 = call i32 (%struct.TYPE_11__*, i8*, ...) @json_error(%struct.TYPE_11__* %240, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %242 = load i32, i32* @JSON_ERROR, align 4
  store i32 %242, i32* %2, align 4
  br label %317

243:                                              ; preds = %236, %233
  %244 = load i32, i32* %6, align 4
  %245 = icmp eq i32 %244, 125
  br i1 %245, label %246, label %251

246:                                              ; preds = %243
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %248 = load i32, i32* %6, align 4
  %249 = load i64, i64* @JSON_OBJECT, align 8
  %250 = call i32 @pop(%struct.TYPE_11__* %247, i32 %248, i64 %249)
  store i32 %250, i32* %2, align 4
  br label %317

251:                                              ; preds = %243
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %254 = call i32 @next(%struct.TYPE_11__* %253)
  %255 = call i32 @read_value(%struct.TYPE_11__* %252, i32 %254)
  store i32 %255, i32* %8, align 4
  %256 = load i32, i32* %8, align 4
  %257 = load i32, i32* @JSON_STRING, align 4
  %258 = icmp ne i32 %256, %257
  br i1 %258, label %259, label %263

259:                                              ; preds = %251
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %261 = call i32 (%struct.TYPE_11__*, i8*, ...) @json_error(%struct.TYPE_11__* %260, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %262 = load i32, i32* @JSON_ERROR, align 4
  store i32 %262, i32* %2, align 4
  br label %317

263:                                              ; preds = %251
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 4
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %265, align 8
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %271, align 8
  %274 = load i32, i32* %8, align 4
  store i32 %274, i32* %2, align 4
  br label %317

275:                                              ; preds = %221
  %276 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 4
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %277, align 8
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 3
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = srem i32 %284, 2
  %286 = icmp eq i32 %285, 1
  br i1 %286, label %287, label %309

287:                                              ; preds = %275
  %288 = load i32, i32* %6, align 4
  %289 = icmp ne i32 %288, 58
  br i1 %289, label %290, label %294

290:                                              ; preds = %287
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %292 = call i32 (%struct.TYPE_11__*, i8*, ...) @json_error(%struct.TYPE_11__* %291, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %293 = load i32, i32* @JSON_ERROR, align 4
  store i32 %293, i32* %2, align 4
  br label %317

294:                                              ; preds = %287
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 4
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %296, align 8
  %298 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 3
  %300 = load i64, i64* %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %302, align 8
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %307 = call i32 @next(%struct.TYPE_11__* %306)
  %308 = call i32 @read_value(%struct.TYPE_11__* %305, i32 %307)
  store i32 %308, i32* %2, align 4
  br label %317

309:                                              ; preds = %275
  br label %310

310:                                              ; preds = %309
  br label %311

311:                                              ; preds = %310
  br label %312

312:                                              ; preds = %311, %167
  br label %313

313:                                              ; preds = %312
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %315 = call i32 (%struct.TYPE_11__*, i8*, ...) @json_error(%struct.TYPE_11__* %314, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %316 = load i32, i32* @JSON_ERROR, align 4
  store i32 %316, i32* %2, align 4
  br label %317

317:                                              ; preds = %313, %294, %290, %263, %259, %246, %239, %209, %205, %193, %162, %157, %139, %122, %117, %87, %78, %76, %22, %15
  %318 = load i32, i32* %2, align 4
  ret i32 %318
}

declare dso_local i64 @json_isspace(i32) #1

declare dso_local i32 @next(%struct.TYPE_11__*) #1

declare dso_local i32 @read_value(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @pop(%struct.TYPE_11__*, i32, i64) #1

declare dso_local i32 @json_error(%struct.TYPE_11__*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
