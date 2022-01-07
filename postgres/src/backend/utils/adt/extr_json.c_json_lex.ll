; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_json.c_json_lex.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_json.c_json_lex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i32, i8*, i8*, i8*, i32 }

@JSON_TOKEN_END = common dso_local global i8* null, align 8
@JSON_TOKEN_OBJECT_START = common dso_local global i8* null, align 8
@JSON_TOKEN_OBJECT_END = common dso_local global i8* null, align 8
@JSON_TOKEN_ARRAY_START = common dso_local global i8* null, align 8
@JSON_TOKEN_ARRAY_END = common dso_local global i8* null, align 8
@JSON_TOKEN_COMMA = common dso_local global i8* null, align 8
@JSON_TOKEN_COLON = common dso_local global i8* null, align 8
@JSON_TOKEN_STRING = common dso_local global i8* null, align 8
@JSON_TOKEN_NUMBER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@JSON_TOKEN_TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@JSON_TOKEN_NULL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@JSON_TOKEN_FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @json_lex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @json_lex(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = ptrtoint i8* %9 to i64
  %14 = ptrtoint i8* %12 to i64
  %15 = sub i64 %13, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %57, %1
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 32
  br i1 %27, label %43, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %3, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 9
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** %3, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %3, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 13
  br label %43

43:                                               ; preds = %38, %33, %28, %23
  %44 = phi i1 [ true, %33 ], [ true, %28 ], [ true, %23 ], [ %42, %38 ]
  br label %45

45:                                               ; preds = %43, %17
  %46 = phi i1 [ false, %17 ], [ %44, %43 ]
  br i1 %46, label %47, label %62

47:                                               ; preds = %45
  %48 = load i8*, i8** %3, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 10
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %17

62:                                               ; preds = %45
  %63 = load i8*, i8** %3, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp sge i32 %66, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %62
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  store i8* null, i8** %73, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** %3, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** @JSON_TOKEN_END, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 5
  store i8* %82, i8** %84, align 8
  br label %287

85:                                               ; preds = %62
  %86 = load i8*, i8** %3, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  switch i32 %88, label %188 [
    i32 123, label %89
    i32 125, label %102
    i32 91, label %115
    i32 93, label %128
    i32 44, label %141
    i32 58, label %154
    i32 34, label %167
    i32 45, label %173
    i32 48, label %181
    i32 49, label %181
    i32 50, label %181
    i32 51, label %181
    i32 52, label %181
    i32 53, label %181
    i32 54, label %181
    i32 55, label %181
    i32 56, label %181
    i32 57, label %181
  ]

89:                                               ; preds = %85
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 4
  store i8* %92, i8** %94, align 8
  %95 = load i8*, i8** %3, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = load i8*, i8** @JSON_TOKEN_OBJECT_START, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 5
  store i8* %99, i8** %101, align 8
  br label %286

102:                                              ; preds = %85
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 4
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** %3, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  %112 = load i8*, i8** @JSON_TOKEN_OBJECT_END, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 5
  store i8* %112, i8** %114, align 8
  br label %286

115:                                              ; preds = %85
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 4
  store i8* %118, i8** %120, align 8
  %121 = load i8*, i8** %3, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  %125 = load i8*, i8** @JSON_TOKEN_ARRAY_START, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 5
  store i8* %125, i8** %127, align 8
  br label %286

128:                                              ; preds = %85
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 4
  store i8* %131, i8** %133, align 8
  %134 = load i8*, i8** %3, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  %138 = load i8*, i8** @JSON_TOKEN_ARRAY_END, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 5
  store i8* %138, i8** %140, align 8
  br label %286

141:                                              ; preds = %85
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 4
  store i8* %144, i8** %146, align 8
  %147 = load i8*, i8** %3, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  store i8* %148, i8** %150, align 8
  %151 = load i8*, i8** @JSON_TOKEN_COMMA, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 5
  store i8* %151, i8** %153, align 8
  br label %286

154:                                              ; preds = %85
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 4
  store i8* %157, i8** %159, align 8
  %160 = load i8*, i8** %3, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 1
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  store i8* %161, i8** %163, align 8
  %164 = load i8*, i8** @JSON_TOKEN_COLON, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 5
  store i8* %164, i8** %166, align 8
  br label %286

167:                                              ; preds = %85
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %169 = call i32 @json_lex_string(%struct.TYPE_6__* %168)
  %170 = load i8*, i8** @JSON_TOKEN_STRING, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 5
  store i8* %170, i8** %172, align 8
  br label %286

173:                                              ; preds = %85
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %175 = load i8*, i8** %3, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 1
  %177 = call i32 @json_lex_number(%struct.TYPE_6__* %174, i8* %176, i32* null, i32* null)
  %178 = load i8*, i8** @JSON_TOKEN_NUMBER, align 8
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 5
  store i8* %178, i8** %180, align 8
  br label %286

181:                                              ; preds = %85, %85, %85, %85, %85, %85, %85, %85, %85, %85
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %183 = load i8*, i8** %3, align 8
  %184 = call i32 @json_lex_number(%struct.TYPE_6__* %182, i8* %183, i32* null, i32* null)
  %185 = load i8*, i8** @JSON_TOKEN_NUMBER, align 8
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 5
  store i8* %185, i8** %187, align 8
  br label %286

188:                                              ; preds = %85
  %189 = load i8*, i8** %3, align 8
  store i8* %189, i8** %5, align 8
  br label %190

190:                                              ; preds = %211, %188
  %191 = load i8*, i8** %5, align 8
  %192 = load i8*, i8** %3, align 8
  %193 = ptrtoint i8* %191 to i64
  %194 = ptrtoint i8* %192 to i64
  %195 = sub i64 %193, %194
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %4, align 4
  %200 = sub nsw i32 %198, %199
  %201 = sext i32 %200 to i64
  %202 = icmp slt i64 %195, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %190
  %204 = load i8*, i8** %5, align 8
  %205 = load i8, i8* %204, align 1
  %206 = call i32 @JSON_ALPHANUMERIC_CHAR(i8 signext %205)
  %207 = icmp ne i32 %206, 0
  br label %208

208:                                              ; preds = %203, %190
  %209 = phi i1 [ false, %190 ], [ %207, %203 ]
  br i1 %209, label %210, label %214

210:                                              ; preds = %208
  br label %211

211:                                              ; preds = %210
  %212 = load i8*, i8** %5, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %5, align 8
  br label %190

214:                                              ; preds = %208
  %215 = load i8*, i8** %5, align 8
  %216 = load i8*, i8** %3, align 8
  %217 = icmp eq i8* %215, %216
  br i1 %217, label %218, label %230

218:                                              ; preds = %214
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 4
  store i8* %221, i8** %223, align 8
  %224 = load i8*, i8** %3, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 1
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  store i8* %225, i8** %227, align 8
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %229 = call i32 @report_invalid_token(%struct.TYPE_6__* %228)
  br label %230

230:                                              ; preds = %218, %214
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 4
  store i8* %233, i8** %235, align 8
  %236 = load i8*, i8** %5, align 8
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  store i8* %236, i8** %238, align 8
  %239 = load i8*, i8** %5, align 8
  %240 = load i8*, i8** %3, align 8
  %241 = ptrtoint i8* %239 to i64
  %242 = ptrtoint i8* %240 to i64
  %243 = sub i64 %241, %242
  %244 = icmp eq i64 %243, 4
  br i1 %244, label %245, label %266

245:                                              ; preds = %230
  %246 = load i8*, i8** %3, align 8
  %247 = call i32 @memcmp(i8* %246, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %245
  %250 = load i8*, i8** @JSON_TOKEN_TRUE, align 8
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 5
  store i8* %250, i8** %252, align 8
  br label %265

253:                                              ; preds = %245
  %254 = load i8*, i8** %3, align 8
  %255 = call i32 @memcmp(i8* %254, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %253
  %258 = load i8*, i8** @JSON_TOKEN_NULL, align 8
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 5
  store i8* %258, i8** %260, align 8
  br label %264

261:                                              ; preds = %253
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %263 = call i32 @report_invalid_token(%struct.TYPE_6__* %262)
  br label %264

264:                                              ; preds = %261, %257
  br label %265

265:                                              ; preds = %264, %249
  br label %285

266:                                              ; preds = %230
  %267 = load i8*, i8** %5, align 8
  %268 = load i8*, i8** %3, align 8
  %269 = ptrtoint i8* %267 to i64
  %270 = ptrtoint i8* %268 to i64
  %271 = sub i64 %269, %270
  %272 = icmp eq i64 %271, 5
  br i1 %272, label %273, label %281

273:                                              ; preds = %266
  %274 = load i8*, i8** %3, align 8
  %275 = call i32 @memcmp(i8* %274, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %273
  %278 = load i8*, i8** @JSON_TOKEN_FALSE, align 8
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 5
  store i8* %278, i8** %280, align 8
  br label %284

281:                                              ; preds = %273, %266
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %283 = call i32 @report_invalid_token(%struct.TYPE_6__* %282)
  br label %284

284:                                              ; preds = %281, %277
  br label %285

285:                                              ; preds = %284, %265
  br label %286

286:                                              ; preds = %285, %181, %173, %167, %154, %141, %128, %115, %102, %89
  br label %287

287:                                              ; preds = %286, %71
  ret void
}

declare dso_local i32 @json_lex_string(%struct.TYPE_6__*) #1

declare dso_local i32 @json_lex_number(%struct.TYPE_6__*, i8*, i32*, i32*) #1

declare dso_local i32 @JSON_ALPHANUMERIC_CHAR(i8 signext) #1

declare dso_local i32 @report_invalid_token(%struct.TYPE_6__*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
