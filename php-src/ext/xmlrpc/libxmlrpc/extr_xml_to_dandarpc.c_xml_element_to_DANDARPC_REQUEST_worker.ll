; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xml_to_dandarpc.c_xml_element_to_DANDARPC_REQUEST_worker.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xml_to_dandarpc.c_xml_element_to_DANDARPC_REQUEST_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.buffer_st = type { i32, i32 }

@ATTR_ID = common dso_local global i32 0, align 4
@ATTR_TYPE = common dso_local global i32 0, align 4
@xmlrpc_case_exact = common dso_local global i32 0, align 4
@ATTR_SCALAR = common dso_local global i32 0, align 4
@ATTR_STRING = common dso_local global i32 0, align 4
@ATTR_INT = common dso_local global i32 0, align 4
@ATTR_BOOLEAN = common dso_local global i32 0, align 4
@ATTR_DOUBLE = common dso_local global i32 0, align 4
@ATTR_DATETIME = common dso_local global i32 0, align 4
@ATTR_BASE64 = common dso_local global i32 0, align 4
@ATTR_VECTOR = common dso_local global i32 0, align 4
@ATTR_MIXED = common dso_local global i32 0, align 4
@xmlrpc_vector_mixed = common dso_local global i32 0, align 4
@ATTR_ARRAY = common dso_local global i32 0, align 4
@xmlrpc_vector_array = common dso_local global i32 0, align 4
@ATTR_STRUCT = common dso_local global i32 0, align 4
@xmlrpc_vector_struct = common dso_local global i32 0, align 4
@ELEM_METHODCALL = common dso_local global i32 0, align 4
@xmlrpc_request_call = common dso_local global i32 0, align 4
@ELEM_METHODRESPONSE = common dso_local global i32 0, align 4
@xmlrpc_request_response = common dso_local global i32 0, align 4
@ELEM_METHODNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xml_element_to_DANDARPC_REQUEST_worker(i64 %0, i8* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.buffer_st, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = call i8* (...) @XMLRPC_CreateValueEmpty()
  store i8* %17, i8** %5, align 8
  br label %18

18:                                               ; preds = %16, %3
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %300

23:                                               ; preds = %18
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 3
  %26 = call %struct.TYPE_8__* @Q_Head(i32* %25)
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %9, align 8
  br label %27

27:                                               ; preds = %52, %23
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %29 = icmp ne %struct.TYPE_8__* %28, null
  br i1 %29, label %30, label %56

30:                                               ; preds = %27
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* @ATTR_ID, align 4
  %35 = call i32 @strcmp(i8* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %7, align 8
  br label %41

41:                                               ; preds = %37, %30
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* @ATTR_TYPE, align 4
  %46 = call i32 @strcmp(i8* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %8, align 8
  br label %52

52:                                               ; preds = %48, %41
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  %55 = call %struct.TYPE_8__* @Q_Next(i32* %54)
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %9, align 8
  br label %27

56:                                               ; preds = %27
  %57 = load i8*, i8** %7, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i8*, i8** %5, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* @xmlrpc_case_exact, align 4
  %63 = call i32 @XMLRPC_SetValueID_Case(i8* %60, i8* %61, i32 0, i32 %62)
  br label %64

64:                                               ; preds = %59, %56
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* @ATTR_SCALAR, align 4
  %69 = call i32 @strcmp(i8* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %169, label %71

71:                                               ; preds = %64
  %72 = load i8*, i8** %8, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* @ATTR_STRING, align 4
  %77 = call i32 @strcmp(i8* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %74, %71
  %80 = load i8*, i8** %5, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @XMLRPC_SetValueString(i8* %80, i32 %84, i32 %88)
  br label %168

90:                                               ; preds = %74
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* @ATTR_INT, align 4
  %93 = call i32 @strcmp(i8* %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %90
  %96 = load i8*, i8** %5, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @atoi(i32 %100)
  %102 = call i32 @XMLRPC_SetValueInt(i8* %96, i32 %101)
  br label %167

103:                                              ; preds = %90
  %104 = load i8*, i8** %8, align 8
  %105 = load i32, i32* @ATTR_BOOLEAN, align 4
  %106 = call i32 @strcmp(i8* %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %103
  %109 = load i8*, i8** %5, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @atoi(i32 %113)
  %115 = call i32 @XMLRPC_SetValueBoolean(i8* %109, i32 %114)
  br label %166

116:                                              ; preds = %103
  %117 = load i8*, i8** %8, align 8
  %118 = load i32, i32* @ATTR_DOUBLE, align 4
  %119 = call i32 @strcmp(i8* %117, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %116
  %122 = load i8*, i8** %5, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @atof(i32 %126)
  %128 = call i32 @XMLRPC_SetValueDouble(i8* %122, i32 %127)
  br label %165

129:                                              ; preds = %116
  %130 = load i8*, i8** %8, align 8
  %131 = load i32, i32* @ATTR_DATETIME, align 4
  %132 = call i32 @strcmp(i8* %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %129
  %135 = load i8*, i8** %5, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @XMLRPC_SetValueDateTime_ISO8601(i8* %135, i32 %139)
  br label %164

141:                                              ; preds = %129
  %142 = load i8*, i8** %8, align 8
  %143 = load i32, i32* @ATTR_BASE64, align 4
  %144 = call i32 @strcmp(i8* %142, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %163, label %146

146:                                              ; preds = %141
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @base64_decode_xmlrpc(%struct.buffer_st* %10, i32 %150, i32 %154)
  %156 = load i8*, i8** %5, align 8
  %157 = getelementptr inbounds %struct.buffer_st, %struct.buffer_st* %10, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.buffer_st, %struct.buffer_st* %10, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @XMLRPC_SetValueBase64(i8* %156, i32 %158, i32 %160)
  %162 = call i32 @buffer_delete(%struct.buffer_st* %10)
  br label %163

163:                                              ; preds = %146, %141
  br label %164

164:                                              ; preds = %163, %134
  br label %165

165:                                              ; preds = %164, %121
  br label %166

166:                                              ; preds = %165, %108
  br label %167

167:                                              ; preds = %166, %95
  br label %168

168:                                              ; preds = %167, %79
  br label %299

169:                                              ; preds = %64
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = load i32, i32* @ATTR_VECTOR, align 4
  %174 = call i32 @strcmp(i8* %172, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %230, label %176

176:                                              ; preds = %169
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 2
  %179 = call %struct.TYPE_8__* @Q_Head(i32* %178)
  %180 = bitcast %struct.TYPE_8__* %179 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %180, %struct.TYPE_9__** %11, align 8
  %181 = load i8*, i8** %8, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %188

183:                                              ; preds = %176
  %184 = load i8*, i8** %8, align 8
  %185 = load i32, i32* @ATTR_MIXED, align 4
  %186 = call i32 @strcmp(i8* %184, i32 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %183, %176
  %189 = load i8*, i8** %5, align 8
  %190 = load i32, i32* @xmlrpc_vector_mixed, align 4
  %191 = call i32 @XMLRPC_SetIsVector(i8* %189, i32 %190)
  br label %212

192:                                              ; preds = %183
  %193 = load i8*, i8** %8, align 8
  %194 = load i32, i32* @ATTR_ARRAY, align 4
  %195 = call i32 @strcmp(i8* %193, i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %192
  %198 = load i8*, i8** %5, align 8
  %199 = load i32, i32* @xmlrpc_vector_array, align 4
  %200 = call i32 @XMLRPC_SetIsVector(i8* %198, i32 %199)
  br label %211

201:                                              ; preds = %192
  %202 = load i8*, i8** %8, align 8
  %203 = load i32, i32* @ATTR_STRUCT, align 4
  %204 = call i32 @strcmp(i8* %202, i32 %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %201
  %207 = load i8*, i8** %5, align 8
  %208 = load i32, i32* @xmlrpc_vector_struct, align 4
  %209 = call i32 @XMLRPC_SetIsVector(i8* %207, i32 %208)
  br label %210

210:                                              ; preds = %206, %201
  br label %211

211:                                              ; preds = %210, %197
  br label %212

212:                                              ; preds = %211, %188
  br label %213

213:                                              ; preds = %216, %212
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %215 = icmp ne %struct.TYPE_9__* %214, null
  br i1 %215, label %216, label %229

216:                                              ; preds = %213
  %217 = call i8* (...) @XMLRPC_CreateValueEmpty()
  store i8* %217, i8** %12, align 8
  %218 = load i64, i64* %4, align 8
  %219 = load i8*, i8** %12, align 8
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %221 = call i8* @xml_element_to_DANDARPC_REQUEST_worker(i64 %218, i8* %219, %struct.TYPE_9__* %220)
  %222 = load i8*, i8** %5, align 8
  %223 = load i8*, i8** %12, align 8
  %224 = call i32 @XMLRPC_AddValueToVector(i8* %222, i8* %223)
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 2
  %227 = call %struct.TYPE_8__* @Q_Next(i32* %226)
  %228 = bitcast %struct.TYPE_8__* %227 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %228, %struct.TYPE_9__** %11, align 8
  br label %213

229:                                              ; preds = %213
  br label %298

230:                                              ; preds = %169
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 2
  %233 = call %struct.TYPE_8__* @Q_Head(i32* %232)
  %234 = bitcast %struct.TYPE_8__* %233 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %234, %struct.TYPE_9__** %13, align 8
  br label %235

235:                                              ; preds = %238, %230
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %237 = icmp ne %struct.TYPE_9__* %236, null
  br i1 %237, label %238, label %247

238:                                              ; preds = %235
  %239 = load i64, i64* %4, align 8
  %240 = load i8*, i8** %5, align 8
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %242 = call i8* @xml_element_to_DANDARPC_REQUEST_worker(i64 %239, i8* %240, %struct.TYPE_9__* %241)
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 2
  %245 = call %struct.TYPE_8__* @Q_Next(i32* %244)
  %246 = bitcast %struct.TYPE_8__* %245 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %246, %struct.TYPE_9__** %13, align 8
  br label %235

247:                                              ; preds = %235
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = load i32, i32* @ELEM_METHODCALL, align 4
  %252 = call i32 @strcmp(i8* %250, i32 %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %262, label %254

254:                                              ; preds = %247
  %255 = load i64, i64* %4, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %254
  %258 = load i64, i64* %4, align 8
  %259 = load i32, i32* @xmlrpc_request_call, align 4
  %260 = call i32 @XMLRPC_RequestSetRequestType(i64 %258, i32 %259)
  br label %261

261:                                              ; preds = %257, %254
  br label %297

262:                                              ; preds = %247
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = load i32, i32* @ELEM_METHODRESPONSE, align 4
  %267 = call i32 @strcmp(i8* %265, i32 %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %277, label %269

269:                                              ; preds = %262
  %270 = load i64, i64* %4, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %269
  %273 = load i64, i64* %4, align 8
  %274 = load i32, i32* @xmlrpc_request_response, align 4
  %275 = call i32 @XMLRPC_RequestSetRequestType(i64 %273, i32 %274)
  br label %276

276:                                              ; preds = %272, %269
  br label %296

277:                                              ; preds = %262
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 0
  %280 = load i8*, i8** %279, align 8
  %281 = load i32, i32* @ELEM_METHODNAME, align 4
  %282 = call i32 @strcmp(i8* %280, i32 %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %295, label %284

284:                                              ; preds = %277
  %285 = load i64, i64* %4, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %294

287:                                              ; preds = %284
  %288 = load i64, i64* %4, align 8
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @XMLRPC_RequestSetMethodName(i64 %288, i32 %292)
  br label %294

294:                                              ; preds = %287, %284
  br label %295

295:                                              ; preds = %294, %277
  br label %296

296:                                              ; preds = %295, %276
  br label %297

297:                                              ; preds = %296, %261
  br label %298

298:                                              ; preds = %297, %229
  br label %299

299:                                              ; preds = %298, %168
  br label %300

300:                                              ; preds = %299, %18
  %301 = load i8*, i8** %5, align 8
  ret i8* %301
}

declare dso_local i8* @XMLRPC_CreateValueEmpty(...) #1

declare dso_local %struct.TYPE_8__* @Q_Head(i32*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local %struct.TYPE_8__* @Q_Next(i32*) #1

declare dso_local i32 @XMLRPC_SetValueID_Case(i8*, i8*, i32, i32) #1

declare dso_local i32 @XMLRPC_SetValueString(i8*, i32, i32) #1

declare dso_local i32 @XMLRPC_SetValueInt(i8*, i32) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @XMLRPC_SetValueBoolean(i8*, i32) #1

declare dso_local i32 @XMLRPC_SetValueDouble(i8*, i32) #1

declare dso_local i32 @atof(i32) #1

declare dso_local i32 @XMLRPC_SetValueDateTime_ISO8601(i8*, i32) #1

declare dso_local i32 @base64_decode_xmlrpc(%struct.buffer_st*, i32, i32) #1

declare dso_local i32 @XMLRPC_SetValueBase64(i8*, i32, i32) #1

declare dso_local i32 @buffer_delete(%struct.buffer_st*) #1

declare dso_local i32 @XMLRPC_SetIsVector(i8*, i32) #1

declare dso_local i32 @XMLRPC_AddValueToVector(i8*, i8*) #1

declare dso_local i32 @XMLRPC_RequestSetRequestType(i64, i32) #1

declare dso_local i32 @XMLRPC_RequestSetMethodName(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
