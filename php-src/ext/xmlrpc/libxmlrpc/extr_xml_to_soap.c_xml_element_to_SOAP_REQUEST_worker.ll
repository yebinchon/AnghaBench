; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xml_to_soap.c_xml_element_to_SOAP_REQUEST_worker.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xml_to_soap.c_xml_element_to_SOAP_REQUEST_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array_info = type { i8* }
%struct.TYPE_9__ = type { i8*, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.buffer_st = type { i32, i32 }

@xmlrpc_request_none = common dso_local global i64 0, align 8
@xmlrpc_vector_array = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"item\00", align 1
@TOKEN_TYPE = common dso_local global i8* null, align 8
@TOKEN_ARRAY_TYPE = common dso_local global i8* null, align 8
@TOKEN_MUSTUNDERSTAND = common dso_local global i8* null, align 8
@TOKEN_ACTOR = common dso_local global i8* null, align 8
@TOKEN_ACTOR_NEXT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"SOAP-ENV:MustUnderstand\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"SOAP Must Understand Error\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@xmlrpc_case_exact = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"esponse\00", align 1
@xmlrpc_request_response = common dso_local global i64 0, align 8
@xmlrpc_request_call = common dso_local global i64 0, align 8
@TOKEN_STRING = common dso_local global i8* null, align 8
@TOKEN_INT = common dso_local global i8* null, align 8
@TOKEN_BOOLEAN = common dso_local global i8* null, align 8
@TOKEN_DOUBLE = common dso_local global i8* null, align 8
@TOKEN_FLOAT = common dso_local global i8* null, align 8
@TOKEN_NULL = common dso_local global i8* null, align 8
@TOKEN_DATETIME = common dso_local global i8* null, align 8
@TOKEN_BASE64 = common dso_local global i8* null, align 8
@TOKEN_STRUCT = common dso_local global i8* null, align 8
@xmlrpc_vector_struct = common dso_local global i64 0, align 8
@TOKEN_ARRAY = common dso_local global i8* null, align 8
@xmlrpc_vector_mixed = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xml_element_to_SOAP_REQUEST_worker(i32 %0, i8* %1, %struct.array_info* %2, i8* %3, %struct.TYPE_9__* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.array_info*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.buffer_st, align 4
  %24 = alloca %struct.array_info*, align 8
  %25 = alloca %struct.TYPE_9__*, align 8
  %26 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store %struct.array_info* %2, %struct.array_info** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %12, align 8
  store i32 %5, i32* %13, align 4
  %27 = load i64, i64* @xmlrpc_request_none, align 8
  store i64 %27, i64* %14, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %6
  %31 = call i8* (...) @XMLRPC_CreateValueEmpty()
  store i8* %31, i8** %11, align 8
  br label %32

32:                                               ; preds = %30, %6
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %13, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %36 = icmp ne %struct.TYPE_9__* %35, null
  br i1 %36, label %37, label %414

37:                                               ; preds = %32
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %414

42:                                               ; preds = %37
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 3
  %45 = call %struct.TYPE_8__* @Q_Head(i32* %44)
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %19, align 8
  store i32 0, i32* %20, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @is_soap_type(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %16, align 8
  br label %70

55:                                               ; preds = %42
  %56 = load i8*, i8** %9, align 8
  %57 = call i64 @XMLRPC_GetVectorType(i8* %56)
  %58 = load i64, i64* @xmlrpc_vector_array, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %15, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %60
  br label %69

69:                                               ; preds = %68, %55
  br label %70

70:                                               ; preds = %69, %51
  br label %71

71:                                               ; preds = %125, %70
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %73 = icmp ne %struct.TYPE_8__* %72, null
  br i1 %73, label %74, label %129

74:                                               ; preds = %71
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** @TOKEN_TYPE, align 8
  %79 = call i32 @strcmp(i8* %77, i8* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %74
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %16, align 8
  br label %125

85:                                               ; preds = %74
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i8*, i8** @TOKEN_ARRAY_TYPE, align 8
  %90 = call i32 @strcmp(i8* %88, i8* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %85
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %17, align 8
  br label %124

96:                                               ; preds = %85
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load i8*, i8** @TOKEN_MUSTUNDERSTAND, align 8
  %101 = call i32 @strcmp(i8* %99, i8* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %96
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i8* @strchr(i8* %106, i8 signext 49)
  %108 = icmp ne i8* %107, null
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 1, i32 0
  store i32 %110, i32* %20, align 4
  br label %123

111:                                              ; preds = %96
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load i8*, i8** @TOKEN_ACTOR, align 8
  %116 = call i32 @strcmp(i8* %114, i8* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %111
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  store i8* %121, i8** %18, align 8
  br label %122

122:                                              ; preds = %118, %111
  br label %123

123:                                              ; preds = %122, %103
  br label %124

124:                                              ; preds = %123, %92
  br label %125

125:                                              ; preds = %124, %81
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 3
  %128 = call %struct.TYPE_8__* @Q_Next(i32* %127)
  store %struct.TYPE_8__* %128, %struct.TYPE_8__** %19, align 8
  br label %71

129:                                              ; preds = %71
  %130 = load i32, i32* %20, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %129
  %133 = load i8*, i8** %18, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load i8*, i8** %18, align 8
  %137 = load i8*, i8** @TOKEN_ACTOR_NEXT, align 8
  %138 = call i32 @strcmp(i8* %136, i8* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %135, %132
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @gen_soap_fault(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %143 = call i32 @XMLRPC_RequestSetError(i32 %141, i32 %142)
  %144 = load i8*, i8** %11, align 8
  store i8* %144, i8** %7, align 8
  br label %416

145:                                              ; preds = %135
  br label %146

146:                                              ; preds = %145, %129
  %147 = load i8*, i8** %15, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load i8*, i8** %11, align 8
  %151 = load i8*, i8** %15, align 8
  %152 = load i32, i32* @xmlrpc_case_exact, align 4
  %153 = call i32 @XMLRPC_SetValueID_Case(i8* %150, i8* %151, i32 0, i32 %152)
  br label %154

154:                                              ; preds = %149, %146
  %155 = load i32, i32* %13, align 4
  %156 = icmp eq i32 %155, 3
  br i1 %156, label %157, label %193

157:                                              ; preds = %154
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  store i8* %160, i8** %21, align 8
  store i8* null, i8** %22, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = call i64 @strstr(i8* %163, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %157
  %167 = load i64, i64* @xmlrpc_request_response, align 8
  br label %170

168:                                              ; preds = %157
  %169 = load i64, i64* @xmlrpc_request_call, align 8
  br label %170

170:                                              ; preds = %168, %166
  %171 = phi i64 [ %167, %166 ], [ %169, %168 ]
  store i64 %171, i64* %14, align 8
  %172 = load i32, i32* %8, align 4
  %173 = load i64, i64* %14, align 8
  %174 = call i32 @XMLRPC_RequestSetRequestType(i32 %172, i64 %173)
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i8* @strchr(i8* %177, i8 signext 58)
  store i8* %178, i8** %22, align 8
  %179 = load i8*, i8** %22, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %170
  %182 = load i8*, i8** %22, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 1
  store i8* %183, i8** %21, align 8
  br label %184

184:                                              ; preds = %181, %170
  %185 = load i64, i64* %14, align 8
  %186 = load i64, i64* @xmlrpc_request_call, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = load i32, i32* %8, align 4
  %190 = load i8*, i8** %21, align 8
  %191 = call i32 @XMLRPC_RequestSetMethodName(i32 %189, i8* %190)
  br label %192

192:                                              ; preds = %188, %184
  br label %193

193:                                              ; preds = %192, %154
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = call i32 @Q_Size(i32* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %326, label %198

198:                                              ; preds = %193
  %199 = load i8*, i8** %16, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %216, label %201

201:                                              ; preds = %198
  %202 = load %struct.array_info*, %struct.array_info** %10, align 8
  %203 = icmp ne %struct.array_info* %202, null
  br i1 %203, label %204, label %216

204:                                              ; preds = %201
  %205 = load %struct.array_info*, %struct.array_info** %10, align 8
  %206 = getelementptr inbounds %struct.array_info, %struct.array_info* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 0
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %204
  %213 = load %struct.array_info*, %struct.array_info** %10, align 8
  %214 = getelementptr inbounds %struct.array_info, %struct.array_info* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  store i8* %215, i8** %16, align 8
  br label %216

216:                                              ; preds = %212, %204, %201, %198
  %217 = load i8*, i8** %16, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %224

219:                                              ; preds = %216
  %220 = load i8*, i8** %16, align 8
  %221 = load i8*, i8** @TOKEN_STRING, align 8
  %222 = call i32 @strcmp(i8* %220, i8* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %235, label %224

224:                                              ; preds = %219, %216
  %225 = load i8*, i8** %11, align 8
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @XMLRPC_SetValueString(i8* %225, i32 %229, i32 %233)
  br label %325

235:                                              ; preds = %219
  %236 = load i8*, i8** %16, align 8
  %237 = load i8*, i8** @TOKEN_INT, align 8
  %238 = call i32 @strcmp(i8* %236, i8* %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %248, label %240

240:                                              ; preds = %235
  %241 = load i8*, i8** %11, align 8
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @atoi(i32 %245)
  %247 = call i32 @XMLRPC_SetValueInt(i8* %241, i32 %246)
  br label %324

248:                                              ; preds = %235
  %249 = load i8*, i8** %16, align 8
  %250 = load i8*, i8** @TOKEN_BOOLEAN, align 8
  %251 = call i32 @strcmp(i8* %249, i8* %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %261, label %253

253:                                              ; preds = %248
  %254 = load i8*, i8** %11, align 8
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @atoi(i32 %258)
  %260 = call i32 @XMLRPC_SetValueBoolean(i8* %254, i32 %259)
  br label %323

261:                                              ; preds = %248
  %262 = load i8*, i8** %16, align 8
  %263 = load i8*, i8** @TOKEN_DOUBLE, align 8
  %264 = call i32 @strcmp(i8* %262, i8* %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %261
  %267 = load i8*, i8** %16, align 8
  %268 = load i8*, i8** @TOKEN_FLOAT, align 8
  %269 = call i32 @strcmp(i8* %267, i8* %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %279, label %271

271:                                              ; preds = %266, %261
  %272 = load i8*, i8** %11, align 8
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @atof(i32 %276)
  %278 = call i32 @XMLRPC_SetValueDouble(i8* %272, i32 %277)
  br label %322

279:                                              ; preds = %266
  %280 = load i8*, i8** %16, align 8
  %281 = load i8*, i8** @TOKEN_NULL, align 8
  %282 = call i32 @strcmp(i8* %280, i8* %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %279
  br label %321

285:                                              ; preds = %279
  %286 = load i8*, i8** %16, align 8
  %287 = load i8*, i8** @TOKEN_DATETIME, align 8
  %288 = call i32 @strcmp(i8* %286, i8* %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %297, label %290

290:                                              ; preds = %285
  %291 = load i8*, i8** %11, align 8
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 2
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @XMLRPC_SetValueDateTime_ISO8601(i8* %291, i32 %295)
  br label %320

297:                                              ; preds = %285
  %298 = load i8*, i8** %16, align 8
  %299 = load i8*, i8** @TOKEN_BASE64, align 8
  %300 = call i32 @strcmp(i8* %298, i8* %299)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %319, label %302

302:                                              ; preds = %297
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @base64_decode_xmlrpc(%struct.buffer_st* %23, i32 %306, i32 %310)
  %312 = load i8*, i8** %11, align 8
  %313 = getelementptr inbounds %struct.buffer_st, %struct.buffer_st* %23, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = getelementptr inbounds %struct.buffer_st, %struct.buffer_st* %23, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @XMLRPC_SetValueBase64(i8* %312, i32 %314, i32 %316)
  %318 = call i32 @buffer_delete(%struct.buffer_st* %23)
  br label %319

319:                                              ; preds = %302, %297
  br label %320

320:                                              ; preds = %319, %290
  br label %321

321:                                              ; preds = %320, %284
  br label %322

322:                                              ; preds = %321, %271
  br label %323

323:                                              ; preds = %322, %253
  br label %324

324:                                              ; preds = %323, %240
  br label %325

325:                                              ; preds = %324, %224
  br label %413

326:                                              ; preds = %193
  store %struct.array_info* null, %struct.array_info** %24, align 8
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 1
  %329 = call %struct.TYPE_8__* @Q_Head(i32* %328)
  %330 = bitcast %struct.TYPE_8__* %329 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %330, %struct.TYPE_9__** %25, align 8
  %331 = load i8*, i8** %16, align 8
  %332 = icmp ne i8* %331, null
  br i1 %332, label %333, label %338

333:                                              ; preds = %326
  %334 = load i8*, i8** %16, align 8
  %335 = load i8*, i8** @TOKEN_STRUCT, align 8
  %336 = call i32 @strcmp(i8* %334, i8* %335)
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %342, label %338

338:                                              ; preds = %333, %326
  %339 = load i8*, i8** %11, align 8
  %340 = load i64, i64* @xmlrpc_vector_struct, align 8
  %341 = call i32 @XMLRPC_SetIsVector(i8* %339, i64 %340)
  br label %361

342:                                              ; preds = %333
  %343 = load i8*, i8** %16, align 8
  %344 = load i8*, i8** @TOKEN_ARRAY, align 8
  %345 = call i32 @strcmp(i8* %343, i8* %344)
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %350

347:                                              ; preds = %342
  %348 = load i8*, i8** %17, align 8
  %349 = icmp ne i8* %348, null
  br i1 %349, label %350, label %356

350:                                              ; preds = %347, %342
  %351 = load i8*, i8** %17, align 8
  %352 = call %struct.array_info* @parse_array_type_info(i8* %351)
  store %struct.array_info* %352, %struct.array_info** %24, align 8
  %353 = load i8*, i8** %11, align 8
  %354 = load i64, i64* @xmlrpc_vector_array, align 8
  %355 = call i32 @XMLRPC_SetIsVector(i8* %353, i64 %354)
  br label %360

356:                                              ; preds = %347
  %357 = load i8*, i8** %11, align 8
  %358 = load i64, i64* @xmlrpc_vector_mixed, align 8
  %359 = call i32 @XMLRPC_SetIsVector(i8* %357, i64 %358)
  br label %360

360:                                              ; preds = %356, %350
  br label %361

361:                                              ; preds = %360, %338
  br label %362

362:                                              ; preds = %401, %361
  %363 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %364 = icmp ne %struct.TYPE_9__* %363, null
  br i1 %364, label %365, label %370

365:                                              ; preds = %362
  %366 = load i32, i32* %8, align 4
  %367 = call i32 @XMLRPC_RequestGetError(i32 %366)
  %368 = icmp ne i32 %367, 0
  %369 = xor i1 %368, true
  br label %370

370:                                              ; preds = %365, %362
  %371 = phi i1 [ false, %362 ], [ %369, %365 ]
  br i1 %371, label %372, label %406

372:                                              ; preds = %370
  store i8* null, i8** %26, align 8
  %373 = load i32, i32* %13, align 4
  %374 = icmp sle i32 %373, 2
  br i1 %374, label %382, label %375

375:                                              ; preds = %372
  %376 = load i64, i64* %14, align 8
  %377 = load i64, i64* @xmlrpc_request_response, align 8
  %378 = icmp eq i64 %376, %377
  br i1 %378, label %379, label %389

379:                                              ; preds = %375
  %380 = load i32, i32* %13, align 4
  %381 = icmp sle i32 %380, 3
  br i1 %381, label %382, label %389

382:                                              ; preds = %379, %372
  %383 = load i32, i32* %8, align 4
  %384 = load %struct.array_info*, %struct.array_info** %24, align 8
  %385 = load i8*, i8** %11, align 8
  %386 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %387 = load i32, i32* %13, align 4
  %388 = call i8* @xml_element_to_SOAP_REQUEST_worker(i32 %383, i8* null, %struct.array_info* %384, i8* %385, %struct.TYPE_9__* %386, i32 %387)
  br label %401

389:                                              ; preds = %379, %375
  %390 = call i8* (...) @XMLRPC_CreateValueEmpty()
  store i8* %390, i8** %26, align 8
  %391 = load i32, i32* %8, align 4
  %392 = load i8*, i8** %11, align 8
  %393 = load %struct.array_info*, %struct.array_info** %24, align 8
  %394 = load i8*, i8** %26, align 8
  %395 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %396 = load i32, i32* %13, align 4
  %397 = call i8* @xml_element_to_SOAP_REQUEST_worker(i32 %391, i8* %392, %struct.array_info* %393, i8* %394, %struct.TYPE_9__* %395, i32 %396)
  %398 = load i8*, i8** %11, align 8
  %399 = load i8*, i8** %26, align 8
  %400 = call i32 @XMLRPC_AddValueToVector(i8* %398, i8* %399)
  br label %401

401:                                              ; preds = %389, %382
  %402 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %403 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %402, i32 0, i32 1
  %404 = call %struct.TYPE_8__* @Q_Next(i32* %403)
  %405 = bitcast %struct.TYPE_8__* %404 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %405, %struct.TYPE_9__** %25, align 8
  br label %362

406:                                              ; preds = %370
  %407 = load %struct.array_info*, %struct.array_info** %24, align 8
  %408 = icmp ne %struct.array_info* %407, null
  br i1 %408, label %409, label %412

409:                                              ; preds = %406
  %410 = load %struct.array_info*, %struct.array_info** %24, align 8
  %411 = call i32 @efree(%struct.array_info* %410)
  br label %412

412:                                              ; preds = %409, %406
  br label %413

413:                                              ; preds = %412, %325
  br label %414

414:                                              ; preds = %413, %37, %32
  %415 = load i8*, i8** %11, align 8
  store i8* %415, i8** %7, align 8
  br label %416

416:                                              ; preds = %414, %140
  %417 = load i8*, i8** %7, align 8
  ret i8* %417
}

declare dso_local i8* @XMLRPC_CreateValueEmpty(...) #1

declare dso_local %struct.TYPE_8__* @Q_Head(i32*) #1

declare dso_local i64 @is_soap_type(i8*) #1

declare dso_local i64 @XMLRPC_GetVectorType(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_8__* @Q_Next(i32*) #1

declare dso_local i32 @XMLRPC_RequestSetError(i32, i32) #1

declare dso_local i32 @gen_soap_fault(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @XMLRPC_SetValueID_Case(i8*, i8*, i32, i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @XMLRPC_RequestSetRequestType(i32, i64) #1

declare dso_local i32 @XMLRPC_RequestSetMethodName(i32, i8*) #1

declare dso_local i32 @Q_Size(i32*) #1

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

declare dso_local i32 @XMLRPC_SetIsVector(i8*, i64) #1

declare dso_local %struct.array_info* @parse_array_type_info(i8*) #1

declare dso_local i32 @XMLRPC_RequestGetError(i32) #1

declare dso_local i32 @XMLRPC_AddValueToVector(i8*, i8*) #1

declare dso_local i32 @efree(%struct.array_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
