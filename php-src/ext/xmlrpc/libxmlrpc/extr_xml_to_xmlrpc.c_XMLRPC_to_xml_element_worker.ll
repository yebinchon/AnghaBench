; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xml_to_xmlrpc.c_XMLRPC_to_xml_element_worker.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xml_to_xmlrpc.c_XMLRPC_to_xml_element_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32 }
%struct.buffer_st = type { i32, i32 }

@xmlrpc_request_call = common dso_local global i64 0, align 8
@ELEM_FAULTCODE = common dso_local global i32 0, align 4
@ELEM_FAULT = common dso_local global i32 0, align 4
@ELEM_PARAMS = common dso_local global i32 0, align 4
@ELEM_STRING = common dso_local global i32 0, align 4
@ELEM_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@ELEM_BOOLEAN = common dso_local global i32 0, align 4
@ELEM_DOUBLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%.*G\00", align 1
@precision = common dso_local global i32 0, align 4
@ELEM_DATETIME = common dso_local global i32 0, align 4
@ELEM_BASE64 = common dso_local global i32 0, align 4
@ELEM_DATA = common dso_local global i32 0, align 4
@ELEM_ARRAY = common dso_local global i32 0, align 4
@ELEM_STRUCT = common dso_local global i32 0, align 4
@ELEM_VALUE = common dso_local global i32 0, align 4
@ELEM_PARAM = common dso_local global i32 0, align 4
@ELEM_MEMBER = common dso_local global i32 0, align 4
@ELEM_NAME = common dso_local global i32 0, align 4
@xmlrpc_vector_none = common dso_local global i64 0, align 8
@BUF_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @XMLRPC_to_xml_element_worker(i32* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca [512 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca %struct.buffer_st, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_5__*, align 8
  %20 = alloca %struct.TYPE_5__*, align 8
  %21 = alloca %struct.TYPE_5__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_5__*, align 8
  %24 = alloca %struct.TYPE_5__*, align 8
  %25 = alloca %struct.TYPE_5__*, align 8
  %26 = alloca %struct.TYPE_5__*, align 8
  %27 = alloca %struct.TYPE_5__*, align 8
  %28 = alloca %struct.TYPE_5__*, align 8
  %29 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %338

32:                                               ; preds = %4
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @XMLRPC_GetValueType(i32* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = call i64 @XMLRPC_GetVectorType(i32* %35)
  store i64 %36, i64* %12, align 8
  %37 = call %struct.TYPE_5__* (...) @xml_elem_new()
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %13, align 8
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %85

40:                                               ; preds = %32
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %41, 131
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i64, i64* %12, align 8
  %45 = icmp eq i64 %44, 130
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @xmlrpc_request_call, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %85, label %50

50:                                               ; preds = %46, %43, %40
  %51 = load i64, i64* %12, align 8
  %52 = icmp eq i64 %51, 128
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* @ELEM_FAULTCODE, align 4
  %56 = call i64 @XMLRPC_VectorGetValueWithID(i32* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %53, %50
  %59 = phi i1 [ false, %50 ], [ %57, %53 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %14, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  %65 = call %struct.TYPE_5__* @XMLRPC_to_xml_element_worker(i32* null, i32* %61, i64 %62, i32 %64)
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %15, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %67 = icmp ne %struct.TYPE_5__* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %58
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %72 = call i32 @Q_PushTail(i32* %70, %struct.TYPE_5__* %71)
  br label %73

73:                                               ; preds = %68, %58
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* @ELEM_FAULT, align 4
  br label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @ELEM_PARAMS, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  %82 = call i8* @estrdup(i32 %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  br label %230

85:                                               ; preds = %46, %32
  %86 = load i32, i32* %11, align 4
  switch i32 %86, label %228 [
    i32 134, label %87
    i32 132, label %87
    i32 133, label %99
    i32 137, label %112
    i32 135, label %125
    i32 136, label %141
    i32 138, label %151
    i32 131, label %169
  ]

87:                                               ; preds = %85, %85
  %88 = load i32, i32* @ELEM_STRING, align 4
  %89 = call i8* @estrdup(i32 %88)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @XMLRPC_GetValueString(i32* %94)
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @XMLRPC_GetValueStringLen(i32* %96)
  %98 = call i32 @simplestring_addn(i32* %93, i32 %95, i32 %97)
  br label %229

99:                                               ; preds = %85
  %100 = load i32, i32* @ELEM_INT, align 4
  %101 = call i8* @estrdup(i32 %100)
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @XMLRPC_GetValueInt(i32* %105)
  %107 = call i32 @snprintf(i8* %104, i32 512, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %106)
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %111 = call i32 @simplestring_add(i32* %109, i8* %110)
  br label %229

112:                                              ; preds = %85
  %113 = load i32, i32* @ELEM_BOOLEAN, align 4
  %114 = call i8* @estrdup(i32 %113)
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %118 = load i32*, i32** %6, align 8
  %119 = call i32 @XMLRPC_GetValueBoolean(i32* %118)
  %120 = call i32 @snprintf(i8* %117, i32 512, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %119)
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %124 = call i32 @simplestring_add(i32* %122, i8* %123)
  br label %229

125:                                              ; preds = %85
  %126 = load i32, i32* @ELEM_DOUBLE, align 4
  %127 = call i8* @estrdup(i32 %126)
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %131 = load i32, i32* @precision, align 4
  %132 = call i64 @EG(i32 %131)
  %133 = trunc i64 %132 to i32
  %134 = load i32*, i32** %6, align 8
  %135 = call i32 @XMLRPC_GetValueDouble(i32* %134)
  %136 = call i32 @ap_php_snprintf(i8* %130, i32 512, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %133, i32 %135)
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 2
  %139 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %140 = call i32 @simplestring_add(i32* %138, i8* %139)
  br label %229

141:                                              ; preds = %85
  %142 = load i32, i32* @ELEM_DATETIME, align 4
  %143 = call i8* @estrdup(i32 %142)
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 2
  %148 = load i32*, i32** %6, align 8
  %149 = call i8* @XMLRPC_GetValueDateTime_ISO8601(i32* %148)
  %150 = call i32 @simplestring_add(i32* %147, i8* %149)
  br label %229

151:                                              ; preds = %85
  %152 = load i32, i32* @ELEM_BASE64, align 4
  %153 = call i8* @estrdup(i32 %152)
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  %156 = load i32*, i32** %6, align 8
  %157 = call i32 @XMLRPC_GetValueBase64(i32* %156)
  %158 = load i32*, i32** %6, align 8
  %159 = call i32 @XMLRPC_GetValueStringLen(i32* %158)
  %160 = call i32 @base64_encode_xmlrpc(%struct.buffer_st* %16, i32 %157, i32 %159)
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.buffer_st, %struct.buffer_st* %16, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds %struct.buffer_st, %struct.buffer_st* %16, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @simplestring_addn(i32* %162, i32 %164, i32 %166)
  %168 = call i32 @buffer_delete(%struct.buffer_st* %16)
  br label %229

169:                                              ; preds = %85
  %170 = load i32*, i32** %6, align 8
  %171 = call i64 @XMLRPC_GetVectorType(i32* %170)
  store i64 %171, i64* %17, align 8
  %172 = load i32*, i32** %6, align 8
  %173 = call i32* @XMLRPC_VectorRewind(i32* %172)
  store i32* %173, i32** %18, align 8
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %174, %struct.TYPE_5__** %19, align 8
  %175 = load i64, i64* %17, align 8
  switch i64 %175, label %205 [
    i64 130, label %176
    i64 129, label %200
    i64 128, label %200
  ]

176:                                              ; preds = %169
  %177 = load i32, i32* %8, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %176
  %180 = load i32, i32* @ELEM_PARAMS, align 4
  %181 = call i8* @estrdup(i32 %180)
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 1
  store i8* %181, i8** %183, align 8
  br label %199

184:                                              ; preds = %176
  %185 = call %struct.TYPE_5__* (...) @xml_elem_new()
  store %struct.TYPE_5__* %185, %struct.TYPE_5__** %20, align 8
  %186 = load i32, i32* @ELEM_DATA, align 4
  %187 = call i8* @estrdup(i32 %186)
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  store i8* %187, i8** %189, align 8
  %190 = load i32, i32* @ELEM_ARRAY, align 4
  %191 = call i8* @estrdup(i32 %190)
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 1
  store i8* %191, i8** %193, align 8
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %197 = call i32 @Q_PushTail(i32* %195, %struct.TYPE_5__* %196)
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  store %struct.TYPE_5__* %198, %struct.TYPE_5__** %19, align 8
  br label %199

199:                                              ; preds = %184, %179
  br label %206

200:                                              ; preds = %169, %169
  %201 = load i32, i32* @ELEM_STRUCT, align 4
  %202 = call i8* @estrdup(i32 %201)
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 1
  store i8* %202, i8** %204, align 8
  br label %206

205:                                              ; preds = %169
  br label %206

206:                                              ; preds = %205, %200, %199
  br label %207

207:                                              ; preds = %224, %206
  %208 = load i32*, i32** %18, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %227

210:                                              ; preds = %207
  %211 = load i32*, i32** %6, align 8
  %212 = load i32*, i32** %18, align 8
  %213 = load i64, i64* %7, align 8
  %214 = load i32, i32* %8, align 4
  %215 = add nsw i32 %214, 1
  %216 = call %struct.TYPE_5__* @XMLRPC_to_xml_element_worker(i32* %211, i32* %212, i64 %213, i32 %215)
  store %struct.TYPE_5__* %216, %struct.TYPE_5__** %21, align 8
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %218 = icmp ne %struct.TYPE_5__* %217, null
  br i1 %218, label %219, label %224

219:                                              ; preds = %210
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %223 = call i32 @Q_PushTail(i32* %221, %struct.TYPE_5__* %222)
  br label %224

224:                                              ; preds = %219, %210
  %225 = load i32*, i32** %6, align 8
  %226 = call i32* @XMLRPC_VectorNext(i32* %225)
  store i32* %226, i32** %18, align 8
  br label %207

227:                                              ; preds = %207
  br label %229

228:                                              ; preds = %85
  br label %229

229:                                              ; preds = %228, %227, %151, %141, %125, %112, %99, %87
  br label %230

230:                                              ; preds = %229, %80
  %231 = load i32*, i32** %5, align 8
  %232 = call i64 @XMLRPC_GetVectorType(i32* %231)
  store i64 %232, i64* %22, align 8
  %233 = load i32, i32* %8, align 4
  %234 = icmp eq i32 %233, 1
  br i1 %234, label %235, label %263

235:                                              ; preds = %230
  %236 = call %struct.TYPE_5__* (...) @xml_elem_new()
  store %struct.TYPE_5__* %236, %struct.TYPE_5__** %23, align 8
  %237 = load i32, i32* @ELEM_VALUE, align 4
  %238 = call i8* @estrdup(i32 %237)
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 1
  store i8* %238, i8** %240, align 8
  %241 = load i32*, i32** %6, align 8
  %242 = load i32, i32* @ELEM_FAULTCODE, align 4
  %243 = call i64 @XMLRPC_VectorGetValueWithID(i32* %241, i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %235
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  store %struct.TYPE_5__* %246, %struct.TYPE_5__** %9, align 8
  br label %258

247:                                              ; preds = %235
  %248 = call %struct.TYPE_5__* (...) @xml_elem_new()
  store %struct.TYPE_5__* %248, %struct.TYPE_5__** %24, align 8
  %249 = load i32, i32* @ELEM_PARAM, align 4
  %250 = call i8* @estrdup(i32 %249)
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 1
  store i8* %250, i8** %252, align 8
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %256 = call i32 @Q_PushTail(i32* %254, %struct.TYPE_5__* %255)
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  store %struct.TYPE_5__* %257, %struct.TYPE_5__** %9, align 8
  br label %258

258:                                              ; preds = %247, %245
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %262 = call i32 @Q_PushTail(i32* %260, %struct.TYPE_5__* %261)
  br label %337

263:                                              ; preds = %230
  %264 = load i64, i64* %22, align 8
  %265 = icmp eq i64 %264, 128
  br i1 %265, label %269, label %266

266:                                              ; preds = %263
  %267 = load i64, i64* %22, align 8
  %268 = icmp eq i64 %267, 129
  br i1 %268, label %269, label %303

269:                                              ; preds = %266, %263
  %270 = call %struct.TYPE_5__* (...) @xml_elem_new()
  store %struct.TYPE_5__* %270, %struct.TYPE_5__** %25, align 8
  %271 = call %struct.TYPE_5__* (...) @xml_elem_new()
  store %struct.TYPE_5__* %271, %struct.TYPE_5__** %26, align 8
  %272 = call %struct.TYPE_5__* (...) @xml_elem_new()
  store %struct.TYPE_5__* %272, %struct.TYPE_5__** %27, align 8
  %273 = load i32, i32* @ELEM_MEMBER, align 4
  %274 = call i8* @estrdup(i32 %273)
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 1
  store i8* %274, i8** %276, align 8
  %277 = load i32, i32* @ELEM_NAME, align 4
  %278 = call i8* @estrdup(i32 %277)
  %279 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 1
  store i8* %278, i8** %280, align 8
  %281 = load i32, i32* @ELEM_VALUE, align 4
  %282 = call i8* @estrdup(i32 %281)
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 1
  store i8* %282, i8** %284, align 8
  %285 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 2
  %287 = load i32*, i32** %6, align 8
  %288 = call i8* @XMLRPC_GetValueID(i32* %287)
  %289 = call i32 @simplestring_add(i32* %286, i8* %288)
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %293 = call i32 @Q_PushTail(i32* %291, %struct.TYPE_5__* %292)
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 0
  %296 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %297 = call i32 @Q_PushTail(i32* %295, %struct.TYPE_5__* %296)
  %298 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i32 0, i32 0
  %300 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %301 = call i32 @Q_PushTail(i32* %299, %struct.TYPE_5__* %300)
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  store %struct.TYPE_5__* %302, %struct.TYPE_5__** %9, align 8
  br label %336

303:                                              ; preds = %266
  %304 = load i64, i64* %22, align 8
  %305 = icmp eq i64 %304, 130
  br i1 %305, label %306, label %317

306:                                              ; preds = %303
  %307 = call %struct.TYPE_5__* (...) @xml_elem_new()
  store %struct.TYPE_5__* %307, %struct.TYPE_5__** %28, align 8
  %308 = load i32, i32* @ELEM_VALUE, align 4
  %309 = call i8* @estrdup(i32 %308)
  %310 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 1
  store i8* %309, i8** %311, align 8
  %312 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 0
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %315 = call i32 @Q_PushTail(i32* %313, %struct.TYPE_5__* %314)
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  store %struct.TYPE_5__* %316, %struct.TYPE_5__** %9, align 8
  br label %335

317:                                              ; preds = %303
  %318 = load i64, i64* %22, align 8
  %319 = load i64, i64* @xmlrpc_vector_none, align 8
  %320 = icmp eq i64 %318, %319
  br i1 %320, label %321, label %323

321:                                              ; preds = %317
  %322 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %322, %struct.TYPE_5__** %9, align 8
  br label %334

323:                                              ; preds = %317
  %324 = call %struct.TYPE_5__* (...) @xml_elem_new()
  store %struct.TYPE_5__* %324, %struct.TYPE_5__** %29, align 8
  %325 = load i32, i32* @ELEM_VALUE, align 4
  %326 = call i8* @estrdup(i32 %325)
  %327 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 1
  store i8* %326, i8** %328, align 8
  %329 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 0
  %331 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %332 = call i32 @Q_PushTail(i32* %330, %struct.TYPE_5__* %331)
  %333 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  store %struct.TYPE_5__* %333, %struct.TYPE_5__** %9, align 8
  br label %334

334:                                              ; preds = %323, %321
  br label %335

335:                                              ; preds = %334, %306
  br label %336

336:                                              ; preds = %335, %269
  br label %337

337:                                              ; preds = %336, %258
  br label %338

338:                                              ; preds = %337, %4
  %339 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  ret %struct.TYPE_5__* %339
}

declare dso_local i32 @XMLRPC_GetValueType(i32*) #1

declare dso_local i64 @XMLRPC_GetVectorType(i32*) #1

declare dso_local %struct.TYPE_5__* @xml_elem_new(...) #1

declare dso_local i64 @XMLRPC_VectorGetValueWithID(i32*, i32) #1

declare dso_local i32 @Q_PushTail(i32*, %struct.TYPE_5__*) #1

declare dso_local i8* @estrdup(i32) #1

declare dso_local i32 @simplestring_addn(i32*, i32, i32) #1

declare dso_local i32 @XMLRPC_GetValueString(i32*) #1

declare dso_local i32 @XMLRPC_GetValueStringLen(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @XMLRPC_GetValueInt(i32*) #1

declare dso_local i32 @simplestring_add(i32*, i8*) #1

declare dso_local i32 @XMLRPC_GetValueBoolean(i32*) #1

declare dso_local i32 @ap_php_snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i64 @EG(i32) #1

declare dso_local i32 @XMLRPC_GetValueDouble(i32*) #1

declare dso_local i8* @XMLRPC_GetValueDateTime_ISO8601(i32*) #1

declare dso_local i32 @base64_encode_xmlrpc(%struct.buffer_st*, i32, i32) #1

declare dso_local i32 @XMLRPC_GetValueBase64(i32*) #1

declare dso_local i32 @buffer_delete(%struct.buffer_st*) #1

declare dso_local i32* @XMLRPC_VectorRewind(i32*) #1

declare dso_local i32* @XMLRPC_VectorNext(i32*) #1

declare dso_local i8* @XMLRPC_GetValueID(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
