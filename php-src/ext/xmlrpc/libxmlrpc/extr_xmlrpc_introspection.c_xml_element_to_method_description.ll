; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xmlrpc_introspection.c_xml_element_to_method_description.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xmlrpc_introspection.c_xml_element_to_method_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"basetype\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"optional\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"typeDescription\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"mixed\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"member\00", align 1
@xmlrpc_vector_array = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"params\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"returns\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"signature\00", align 1
@xmlrpc_vector_struct = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [18 x i8] c"methodDescription\00", align 1
@xi_token_name = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@xmlrpc_vector_mixed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xml_element_to_method_description(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %367

23:                                               ; preds = %2
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = call i8* @Q_Head(i32* %25)
  %27 = bitcast i8* %26 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %12, align 8
  br label %28

28:                                               ; preds = %105, %23
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %110

31:                                               ; preds = %28
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %6, align 8
  br label %105

41:                                               ; preds = %31
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %7, align 8
  br label %104

51:                                               ; preds = %41
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %8, align 8
  br label %103

61:                                               ; preds = %51
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %61
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %9, align 8
  br label %102

71:                                               ; preds = %61
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %90, label %77

77:                                               ; preds = %71
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  store i32 1, i32* %11, align 4
  br label %89

89:                                               ; preds = %88, %82, %77
  br label %101

90:                                               ; preds = %71
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @strcmp(i8* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %90
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %10, align 8
  br label %100

100:                                              ; preds = %96, %90
  br label %101

101:                                              ; preds = %100, %89
  br label %102

102:                                              ; preds = %101, %67
  br label %103

103:                                              ; preds = %102, %57
  br label %104

104:                                              ; preds = %103, %47
  br label %105

105:                                              ; preds = %104, %37
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  %108 = call i8* @Q_Next(i32* %107)
  %109 = bitcast i8* %108 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %109, %struct.TYPE_6__** %12, align 8
  br label %28

110:                                              ; preds = %28
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @strcmp(i8* %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @strcmp(i8* %119, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %203, label %122

122:                                              ; preds = %116, %110
  store i32* null, i32** %13, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @strcmp(i8* %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %122
  %129 = load i8*, i8** %7, align 8
  br label %132

130:                                              ; preds = %122
  %131 = load i8*, i8** %8, align 8
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i8* [ %129, %128 ], [ %131, %130 ]
  store i8* %133, i8** %14, align 8
  %134 = load i8*, i8** %14, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %202

136:                                              ; preds = %132
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  %139 = call i64 @Q_Size(i32* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %178

141:                                              ; preds = %136
  %142 = load i8*, i8** %14, align 8
  %143 = call i32 @strcmp(i8* %142, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %141
  %146 = load i8*, i8** %14, align 8
  %147 = call i32 @strcmp(i8* %146, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load i8*, i8** %14, align 8
  %151 = call i32 @strcmp(i8* %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %178, label %153

153:                                              ; preds = %149, %145, %141
  %154 = load i32, i32* @xmlrpc_vector_array, align 4
  %155 = call i32* @XMLRPC_CreateVector(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %154)
  store i32* %155, i32** %13, align 8
  %156 = load i32*, i32** %13, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %177

158:                                              ; preds = %153
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  %161 = call i8* @Q_Head(i32* %160)
  %162 = bitcast i8* %161 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %162, %struct.TYPE_7__** %15, align 8
  br label %163

163:                                              ; preds = %166, %158
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %165 = icmp ne %struct.TYPE_7__* %164, null
  br i1 %165, label %166, label %176

166:                                              ; preds = %163
  %167 = load i32*, i32** %13, align 8
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %169 = load i32, i32* %4, align 4
  %170 = call i32* @xml_element_to_method_description(%struct.TYPE_7__* %168, i32 %169)
  %171 = call i32 @XMLRPC_AddValueToVector(i32* %167, i32* %170)
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 2
  %174 = call i8* @Q_Next(i32* %173)
  %175 = bitcast i8* %174 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %175, %struct.TYPE_7__** %15, align 8
  br label %163

176:                                              ; preds = %163
  br label %177

177:                                              ; preds = %176, %153
  br label %178

178:                                              ; preds = %177, %149, %136
  %179 = load i8*, i8** %14, align 8
  %180 = load i8*, i8** %6, align 8
  %181 = load i8*, i8** %9, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = load i8*, i8** %9, align 8
  br label %196

185:                                              ; preds = %178
  %186 = load i32*, i32** %13, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  br label %194

189:                                              ; preds = %185
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  br label %194

194:                                              ; preds = %189, %188
  %195 = phi i8* [ null, %188 ], [ %193, %189 ]
  br label %196

196:                                              ; preds = %194, %183
  %197 = phi i8* [ %184, %183 ], [ %195, %194 ]
  %198 = load i32, i32* %11, align 4
  %199 = load i8*, i8** %10, align 8
  %200 = load i32*, i32** %13, align 8
  %201 = call i32* @describeValue_worker(i8* %179, i8* %180, i8* %197, i32 %198, i8* %199, i32* %200)
  store i32* %201, i32** %5, align 8
  br label %202

202:                                              ; preds = %196, %132
  br label %366

203:                                              ; preds = %116
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 @strcmp(i8* %206, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %203
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @strcmp(i8* %212, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %209
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 @strcmp(i8* %218, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %260, label %221

221:                                              ; preds = %215, %209, %203
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 2
  %224 = call i64 @Q_Size(i32* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %259

226:                                              ; preds = %221
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 2
  %229 = call i8* @Q_Head(i32* %228)
  %230 = bitcast i8* %229 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %230, %struct.TYPE_7__** %16, align 8
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @strcmp(i8* %233, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %226
  br label %241

237:                                              ; preds = %226
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  br label %241

241:                                              ; preds = %237, %236
  %242 = phi i8* [ null, %236 ], [ %240, %237 ]
  %243 = load i32, i32* @xmlrpc_vector_struct, align 4
  %244 = call i32* @XMLRPC_CreateVector(i8* %242, i32 %243)
  store i32* %244, i32** %5, align 8
  br label %245

245:                                              ; preds = %248, %241
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %247 = icmp ne %struct.TYPE_7__* %246, null
  br i1 %247, label %248, label %258

248:                                              ; preds = %245
  %249 = load i32*, i32** %5, align 8
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %251 = load i32, i32* %4, align 4
  %252 = call i32* @xml_element_to_method_description(%struct.TYPE_7__* %250, i32 %251)
  %253 = call i32 @XMLRPC_AddValueToVector(i32* %249, i32* %252)
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 2
  %256 = call i8* @Q_Next(i32* %255)
  %257 = bitcast i8* %256 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %257, %struct.TYPE_7__** %16, align 8
  br label %245

258:                                              ; preds = %245
  br label %259

259:                                              ; preds = %258, %221
  br label %365

260:                                              ; preds = %215
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 0
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 @strcmp(i8* %263, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %291, label %266

266:                                              ; preds = %260
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 2
  %269 = call i8* @Q_Head(i32* %268)
  %270 = bitcast i8* %269 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %270, %struct.TYPE_7__** %17, align 8
  %271 = load i32, i32* @xmlrpc_vector_struct, align 4
  %272 = call i32* @XMLRPC_CreateVector(i8* null, i32 %271)
  store i32* %272, i32** %5, align 8
  %273 = load i32*, i32** %5, align 8
  %274 = load i32, i32* @xi_token_name, align 4
  %275 = load i8*, i8** %6, align 8
  %276 = call i32 @XMLRPC_VectorAppendString(i32* %273, i32 %274, i8* %275, i32 0)
  br label %277

277:                                              ; preds = %280, %266
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %279 = icmp ne %struct.TYPE_7__* %278, null
  br i1 %279, label %280, label %290

280:                                              ; preds = %277
  %281 = load i32*, i32** %5, align 8
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %283 = load i32, i32* %4, align 4
  %284 = call i32* @xml_element_to_method_description(%struct.TYPE_7__* %282, i32 %283)
  %285 = call i32 @XMLRPC_AddValueToVector(i32* %281, i32* %284)
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 2
  %288 = call i8* @Q_Next(i32* %287)
  %289 = bitcast i8* %288 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %289, %struct.TYPE_7__** %17, align 8
  br label %277

290:                                              ; preds = %277
  br label %364

291:                                              ; preds = %260
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 0
  %294 = load i8*, i8** %293, align 8
  %295 = call i32 @strcmp(i8* %294, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %308, label %297

297:                                              ; preds = %291
  %298 = load i8*, i8** %6, align 8
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 0
  %302 = load i8*, i8** %301, align 8
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = call i32* @XMLRPC_CreateValueString(i8* %298, i8* %302, i32 %306)
  store i32* %307, i32** %5, align 8
  br label %363

308:                                              ; preds = %291
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 2
  %311 = call i64 @Q_Size(i32* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %337

313:                                              ; preds = %308
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 2
  %316 = call i8* @Q_Head(i32* %315)
  %317 = bitcast i8* %316 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %317, %struct.TYPE_7__** %18, align 8
  %318 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 0
  %320 = load i8*, i8** %319, align 8
  %321 = load i32, i32* @xmlrpc_vector_mixed, align 4
  %322 = call i32* @XMLRPC_CreateVector(i8* %320, i32 %321)
  store i32* %322, i32** %5, align 8
  br label %323

323:                                              ; preds = %326, %313
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %325 = icmp ne %struct.TYPE_7__* %324, null
  br i1 %325, label %326, label %336

326:                                              ; preds = %323
  %327 = load i32*, i32** %5, align 8
  %328 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %329 = load i32, i32* %4, align 4
  %330 = call i32* @xml_element_to_method_description(%struct.TYPE_7__* %328, i32 %329)
  %331 = call i32 @XMLRPC_AddValueToVector(i32* %327, i32* %330)
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 2
  %334 = call i8* @Q_Next(i32* %333)
  %335 = bitcast i8* %334 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %335, %struct.TYPE_7__** %18, align 8
  br label %323

336:                                              ; preds = %323
  br label %362

337:                                              ; preds = %308
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 0
  %340 = load i8*, i8** %339, align 8
  %341 = icmp ne i8* %340, null
  br i1 %341, label %342, label %361

342:                                              ; preds = %337
  %343 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %361

348:                                              ; preds = %342
  %349 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 0
  %351 = load i8*, i8** %350, align 8
  %352 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %353, i32 0, i32 0
  %355 = load i8*, i8** %354, align 8
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 8
  %360 = call i32* @XMLRPC_CreateValueString(i8* %351, i8* %355, i32 %359)
  store i32* %360, i32** %5, align 8
  br label %361

361:                                              ; preds = %348, %342, %337
  br label %362

362:                                              ; preds = %361, %336
  br label %363

363:                                              ; preds = %362, %297
  br label %364

364:                                              ; preds = %363, %290
  br label %365

365:                                              ; preds = %364, %259
  br label %366

366:                                              ; preds = %365, %202
  br label %367

367:                                              ; preds = %366, %2
  %368 = load i32*, i32** %5, align 8
  ret i32* %368
}

declare dso_local i8* @Q_Head(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @Q_Next(i32*) #1

declare dso_local i64 @Q_Size(i32*) #1

declare dso_local i32* @XMLRPC_CreateVector(i8*, i32) #1

declare dso_local i32 @XMLRPC_AddValueToVector(i32*, i32*) #1

declare dso_local i32* @describeValue_worker(i8*, i8*, i8*, i32, i8*, i32*) #1

declare dso_local i32 @XMLRPC_VectorAppendString(i32*, i32, i8*, i32) #1

declare dso_local i32* @XMLRPC_CreateValueString(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
