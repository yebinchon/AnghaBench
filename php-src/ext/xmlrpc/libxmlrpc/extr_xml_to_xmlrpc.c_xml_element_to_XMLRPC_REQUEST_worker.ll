; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xml_to_xmlrpc.c_xml_element_to_XMLRPC_REQUEST_worker.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xml_to_xmlrpc.c_xml_element_to_XMLRPC_REQUEST_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.buffer_st = type { i32, i32 }

@ELEM_FAULT = common dso_local global i32 0, align 4
@xmlrpc_vector_struct = common dso_local global i32 0, align 4
@ELEM_DATA = common dso_local global i32 0, align 4
@ELEM_PARAMS = common dso_local global i32 0, align 4
@xmlrpc_request_call = common dso_local global i64 0, align 8
@xmlrpc_vector_array = common dso_local global i32 0, align 4
@ELEM_STRUCT = common dso_local global i32 0, align 4
@ELEM_STRING = common dso_local global i32 0, align 4
@ELEM_VALUE = common dso_local global i32 0, align 4
@ELEM_NAME = common dso_local global i32 0, align 4
@xmlrpc_case_exact = common dso_local global i32 0, align 4
@ELEM_INT = common dso_local global i32 0, align 4
@ELEM_I4 = common dso_local global i32 0, align 4
@ELEM_BOOLEAN = common dso_local global i32 0, align 4
@ELEM_DOUBLE = common dso_local global i32 0, align 4
@ELEM_DATETIME = common dso_local global i32 0, align 4
@ELEM_BASE64 = common dso_local global i32 0, align 4
@ELEM_METHODCALL = common dso_local global i32 0, align 4
@ELEM_METHODRESPONSE = common dso_local global i32 0, align 4
@xmlrpc_request_response = common dso_local global i64 0, align 8
@ELEM_METHODNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xml_element_to_XMLRPC_REQUEST_worker(i64 %0, i8* %1, i8* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.buffer_st, align 4
  %18 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = call i8* (...) @XMLRPC_CreateValueEmpty()
  store i8* %22, i8** %7, align 8
  br label %23

23:                                               ; preds = %21, %4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %369

28:                                               ; preds = %23
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @ELEM_FAULT, align 4
  %33 = call i32 @strcmp(i64 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %77, label %35

35:                                               ; preds = %28
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = call i64 @Q_Head(i32* %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %9, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* @xmlrpc_vector_struct, align 4
  %42 = call i32 @XMLRPC_SetIsVector(i8* %40, i32 %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %44 = icmp ne %struct.TYPE_5__* %43, null
  br i1 %44, label %45, label %76

45:                                               ; preds = %35
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i64 @Q_Head(i32* %47)
  %49 = inttoptr i64 %48 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %10, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %51 = icmp ne %struct.TYPE_5__* %50, null
  br i1 %51, label %52, label %75

52:                                               ; preds = %45
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = call i64 @Q_Head(i32* %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %11, align 8
  br label %57

57:                                               ; preds = %60, %52
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %59 = icmp ne %struct.TYPE_5__* %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  %61 = call i8* (...) @XMLRPC_CreateValueEmpty()
  store i8* %61, i8** %12, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %66 = call i8* @xml_element_to_XMLRPC_REQUEST_worker(i64 %62, i8* %63, i8* %64, %struct.TYPE_5__* %65)
  %67 = load i8*, i8** %7, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @XMLRPC_AddValueToVector(i8* %67, i8* %68)
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = call i64 @Q_Next(i32* %71)
  %73 = inttoptr i64 %72 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** %11, align 8
  br label %57

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74, %45
  br label %76

76:                                               ; preds = %75, %35
  br label %368

77:                                               ; preds = %28
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @ELEM_DATA, align 4
  %82 = call i32 @strcmp(i64 %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %77
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @ELEM_PARAMS, align 4
  %89 = call i32 @strcmp(i64 %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %122, label %91

91:                                               ; preds = %84
  %92 = load i64, i64* %5, align 8
  %93 = call i64 @XMLRPC_RequestGetRequestType(i64 %92)
  %94 = load i64, i64* @xmlrpc_request_call, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %122

96:                                               ; preds = %91, %77
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = call i64 @Q_Head(i32* %98)
  %100 = inttoptr i64 %99 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %100, %struct.TYPE_5__** %13, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = load i32, i32* @xmlrpc_vector_array, align 4
  %103 = call i32 @XMLRPC_SetIsVector(i8* %101, i32 %102)
  br label %104

104:                                              ; preds = %107, %96
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %106 = icmp ne %struct.TYPE_5__* %105, null
  br i1 %106, label %107, label %121

107:                                              ; preds = %104
  %108 = call i8* (...) @XMLRPC_CreateValueEmpty()
  store i8* %108, i8** %14, align 8
  %109 = load i64, i64* %5, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = load i8*, i8** %14, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %113 = call i8* @xml_element_to_XMLRPC_REQUEST_worker(i64 %109, i8* %110, i8* %111, %struct.TYPE_5__* %112)
  %114 = load i8*, i8** %7, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = call i32 @XMLRPC_AddValueToVector(i8* %114, i8* %115)
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = call i64 @Q_Next(i32* %118)
  %120 = inttoptr i64 %119 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %120, %struct.TYPE_5__** %13, align 8
  br label %104

121:                                              ; preds = %104
  br label %367

122:                                              ; preds = %91, %84
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* @ELEM_STRUCT, align 4
  %127 = call i32 @strcmp(i64 %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %155, label %129

129:                                              ; preds = %122
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = call i64 @Q_Head(i32* %131)
  %133 = inttoptr i64 %132 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %133, %struct.TYPE_5__** %15, align 8
  %134 = load i8*, i8** %7, align 8
  %135 = load i32, i32* @xmlrpc_vector_struct, align 4
  %136 = call i32 @XMLRPC_SetIsVector(i8* %134, i32 %135)
  br label %137

137:                                              ; preds = %140, %129
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %139 = icmp ne %struct.TYPE_5__* %138, null
  br i1 %139, label %140, label %154

140:                                              ; preds = %137
  %141 = call i8* (...) @XMLRPC_CreateValueEmpty()
  store i8* %141, i8** %16, align 8
  %142 = load i64, i64* %5, align 8
  %143 = load i8*, i8** %7, align 8
  %144 = load i8*, i8** %16, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %146 = call i8* @xml_element_to_XMLRPC_REQUEST_worker(i64 %142, i8* %143, i8* %144, %struct.TYPE_5__* %145)
  %147 = load i8*, i8** %7, align 8
  %148 = load i8*, i8** %16, align 8
  %149 = call i32 @XMLRPC_AddValueToVector(i8* %147, i8* %148)
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = call i64 @Q_Next(i32* %151)
  %153 = inttoptr i64 %152 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %153, %struct.TYPE_5__** %15, align 8
  br label %137

154:                                              ; preds = %137
  br label %366

155:                                              ; preds = %122
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* @ELEM_STRING, align 4
  %160 = call i32 @strcmp(i64 %158, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %155
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* @ELEM_VALUE, align 4
  %167 = call i32 @strcmp(i64 %165, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %185, label %169

169:                                              ; preds = %162
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = call i64 @Q_Size(i32* %171)
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %169, %155
  %175 = load i8*, i8** %7, align 8
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @XMLRPC_SetValueString(i8* %175, i32 %179, i32 %183)
  br label %365

185:                                              ; preds = %169, %162
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* @ELEM_NAME, align 4
  %190 = call i32 @strcmp(i64 %188, i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %200, label %192

192:                                              ; preds = %185
  %193 = load i8*, i8** %7, align 8
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @xmlrpc_case_exact, align 4
  %199 = call i32 @XMLRPC_SetValueID_Case(i8* %193, i32 %197, i32 0, i32 %198)
  br label %364

200:                                              ; preds = %185
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = load i32, i32* @ELEM_INT, align 4
  %205 = call i32 @strcmp(i64 %203, i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %200
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load i32, i32* @ELEM_I4, align 4
  %212 = call i32 @strcmp(i64 %210, i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %222, label %214

214:                                              ; preds = %207, %200
  %215 = load i8*, i8** %7, align 8
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @atoi(i32 %219)
  %221 = call i32 @XMLRPC_SetValueInt(i8* %215, i32 %220)
  br label %363

222:                                              ; preds = %207
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = load i32, i32* @ELEM_BOOLEAN, align 4
  %227 = call i32 @strcmp(i64 %225, i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %237, label %229

229:                                              ; preds = %222
  %230 = load i8*, i8** %7, align 8
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @atoi(i32 %234)
  %236 = call i32 @XMLRPC_SetValueBoolean(i8* %230, i32 %235)
  br label %362

237:                                              ; preds = %222
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = load i32, i32* @ELEM_DOUBLE, align 4
  %242 = call i32 @strcmp(i64 %240, i32 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %252, label %244

244:                                              ; preds = %237
  %245 = load i8*, i8** %7, align 8
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @atof(i32 %249)
  %251 = call i32 @XMLRPC_SetValueDouble(i8* %245, i32 %250)
  br label %361

252:                                              ; preds = %237
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = load i32, i32* @ELEM_DATETIME, align 4
  %257 = call i32 @strcmp(i64 %255, i32 %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %266, label %259

259:                                              ; preds = %252
  %260 = load i8*, i8** %7, align 8
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @XMLRPC_SetValueDateTime_ISO8601(i8* %260, i32 %264)
  br label %360

266:                                              ; preds = %252
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = load i32, i32* @ELEM_BASE64, align 4
  %271 = call i32 @strcmp(i64 %269, i32 %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %290, label %273

273:                                              ; preds = %266
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @base64_decode_xmlrpc(%struct.buffer_st* %17, i32 %277, i32 %281)
  %283 = load i8*, i8** %7, align 8
  %284 = getelementptr inbounds %struct.buffer_st, %struct.buffer_st* %17, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = getelementptr inbounds %struct.buffer_st, %struct.buffer_st* %17, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @XMLRPC_SetValueBase64(i8* %283, i32 %285, i32 %287)
  %289 = call i32 @buffer_delete(%struct.buffer_st* %17)
  br label %359

290:                                              ; preds = %266
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 2
  %293 = load i64, i64* %292, align 8
  %294 = load i32, i32* @ELEM_METHODCALL, align 4
  %295 = call i32 @strcmp(i64 %293, i32 %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %305, label %297

297:                                              ; preds = %290
  %298 = load i64, i64* %5, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %297
  %301 = load i64, i64* %5, align 8
  %302 = load i64, i64* @xmlrpc_request_call, align 8
  %303 = call i32 @XMLRPC_RequestSetRequestType(i64 %301, i64 %302)
  br label %304

304:                                              ; preds = %300, %297
  br label %340

305:                                              ; preds = %290
  %306 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = load i32, i32* @ELEM_METHODRESPONSE, align 4
  %310 = call i32 @strcmp(i64 %308, i32 %309)
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %320, label %312

312:                                              ; preds = %305
  %313 = load i64, i64* %5, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %312
  %316 = load i64, i64* %5, align 8
  %317 = load i64, i64* @xmlrpc_request_response, align 8
  %318 = call i32 @XMLRPC_RequestSetRequestType(i64 %316, i64 %317)
  br label %319

319:                                              ; preds = %315, %312
  br label %339

320:                                              ; preds = %305
  %321 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %321, i32 0, i32 2
  %323 = load i64, i64* %322, align 8
  %324 = load i32, i32* @ELEM_METHODNAME, align 4
  %325 = call i32 @strcmp(i64 %323, i32 %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %338, label %327

327:                                              ; preds = %320
  %328 = load i64, i64* %5, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %337

330:                                              ; preds = %327
  %331 = load i64, i64* %5, align 8
  %332 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @XMLRPC_RequestSetMethodName(i64 %331, i32 %335)
  br label %337

337:                                              ; preds = %330, %327
  br label %338

338:                                              ; preds = %337, %320
  br label %339

339:                                              ; preds = %338, %319
  br label %340

340:                                              ; preds = %339, %304
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 0
  %343 = call i64 @Q_Head(i32* %342)
  %344 = inttoptr i64 %343 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %344, %struct.TYPE_5__** %18, align 8
  br label %345

345:                                              ; preds = %348, %340
  %346 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %347 = icmp ne %struct.TYPE_5__* %346, null
  br i1 %347, label %348, label %358

348:                                              ; preds = %345
  %349 = load i64, i64* %5, align 8
  %350 = load i8*, i8** %6, align 8
  %351 = load i8*, i8** %7, align 8
  %352 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %353 = call i8* @xml_element_to_XMLRPC_REQUEST_worker(i64 %349, i8* %350, i8* %351, %struct.TYPE_5__* %352)
  %354 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %354, i32 0, i32 0
  %356 = call i64 @Q_Next(i32* %355)
  %357 = inttoptr i64 %356 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %357, %struct.TYPE_5__** %18, align 8
  br label %345

358:                                              ; preds = %345
  br label %359

359:                                              ; preds = %358, %273
  br label %360

360:                                              ; preds = %359, %259
  br label %361

361:                                              ; preds = %360, %244
  br label %362

362:                                              ; preds = %361, %229
  br label %363

363:                                              ; preds = %362, %214
  br label %364

364:                                              ; preds = %363, %192
  br label %365

365:                                              ; preds = %364, %174
  br label %366

366:                                              ; preds = %365, %154
  br label %367

367:                                              ; preds = %366, %121
  br label %368

368:                                              ; preds = %367, %76
  br label %369

369:                                              ; preds = %368, %23
  %370 = load i8*, i8** %7, align 8
  ret i8* %370
}

declare dso_local i8* @XMLRPC_CreateValueEmpty(...) #1

declare dso_local i32 @strcmp(i64, i32) #1

declare dso_local i64 @Q_Head(i32*) #1

declare dso_local i32 @XMLRPC_SetIsVector(i8*, i32) #1

declare dso_local i32 @XMLRPC_AddValueToVector(i8*, i8*) #1

declare dso_local i64 @Q_Next(i32*) #1

declare dso_local i64 @XMLRPC_RequestGetRequestType(i64) #1

declare dso_local i64 @Q_Size(i32*) #1

declare dso_local i32 @XMLRPC_SetValueString(i8*, i32, i32) #1

declare dso_local i32 @XMLRPC_SetValueID_Case(i8*, i32, i32, i32) #1

declare dso_local i32 @XMLRPC_SetValueInt(i8*, i32) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @XMLRPC_SetValueBoolean(i8*, i32) #1

declare dso_local i32 @XMLRPC_SetValueDouble(i8*, i32) #1

declare dso_local i32 @atof(i32) #1

declare dso_local i32 @XMLRPC_SetValueDateTime_ISO8601(i8*, i32) #1

declare dso_local i32 @base64_decode_xmlrpc(%struct.buffer_st*, i32, i32) #1

declare dso_local i32 @XMLRPC_SetValueBase64(i8*, i32, i32) #1

declare dso_local i32 @buffer_delete(%struct.buffer_st*) #1

declare dso_local i32 @XMLRPC_RequestSetRequestType(i64, i64) #1

declare dso_local i32 @XMLRPC_RequestSetMethodName(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
