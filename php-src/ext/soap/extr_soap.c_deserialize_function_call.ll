; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_soap.c_deserialize_function_call.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_soap.c_deserialize_function_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i32, %struct.TYPE_39__*, i64 }
%struct.TYPE_39__ = type { i64 }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_43__ = type { i32, i32, %struct.TYPE_43__*, i32, i32*, %struct.TYPE_35__*, %struct.TYPE_34__*, i32 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_40__ = type { i64, %struct.TYPE_40__*, %struct.TYPE_40__*, %struct.TYPE_37__*, %struct.TYPE_42__*, i32 }
%struct.TYPE_37__ = type { i64 }
%struct.TYPE_42__ = type { %struct.TYPE_36__*, %struct.TYPE_42__*, i32* }
%struct.TYPE_36__ = type { i64 }
%struct.TYPE_33__ = type { i64, %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i64 }
%struct.TYPE_44__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"Client\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"looks like we got XML without \22Envelope\22 element\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"A SOAP Envelope element cannot have non Namespace qualified attributes\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"encodingStyle\00", align 1
@SOAP_1_2_ENV_NAMESPACE = common dso_local global i8* null, align 8
@SOAP_1_2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"encodingStyle cannot be specified on the Envelope\00", align 1
@SOAP_1_1_ENC_NAMESPACE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"Unknown data encoding style\00", align 1
@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"Header\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Body\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Body must be present in a SOAP envelope\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"A SOAP Body element cannot have non Namespace qualified attributes\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"encodingStyle cannot be specified on the Body\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"A SOAP 1.2 envelope can contain only Header and Body\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"looks like we got \22Body\22 without function call\00", align 1
@SOAP_1_1 = common dso_local global i32 0, align 4
@SOAP_1_1_ENV_NAMESPACE = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [28 x i8] c"Unknown Data Encoding Style\00", align 1
@SOAP_1_2_ENC_NAMESPACE = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [20 x i8] c"DataEncodingUnknown\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"rpc:ProcedureNotPresent\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Procedure not present\00", align 1
@E_ERROR = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [27 x i8] c"Procedure '%s' not present\00", align 1
@.str.18 = private unnamed_addr constant [69 x i8] c"A SOAP Header element cannot have non Namespace qualified attributes\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"encodingStyle cannot be specified on the Header\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"actor\00", align 1
@SOAP_1_1_ACTOR_NEXT = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@SOAP_1_2_ACTOR_UNLIMATERECEIVER = common dso_local global i8* null, align 8
@SOAP_1_2_ACTOR_NEXT = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [15 x i8] c"mustUnderstand\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"mustUnderstand value is not boolean\00", align 1
@BINDING_SOAP = common dso_local global i64 0, align 8
@SOAP_RPC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_35__* (i32*, %struct.TYPE_41__*, i8*, i32*, i32*, i32**, i32*, %struct.TYPE_43__**)* @deserialize_function_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_35__* @deserialize_function_call(i32* %0, %struct.TYPE_41__* %1, i8* %2, i32* %3, i32* %4, i32** %5, i32* %6, %struct.TYPE_43__** %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_41__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_43__**, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_40__*, align 8
  %19 = alloca %struct.TYPE_40__*, align 8
  %20 = alloca %struct.TYPE_40__*, align 8
  %21 = alloca %struct.TYPE_40__*, align 8
  %22 = alloca %struct.TYPE_40__*, align 8
  %23 = alloca %struct.TYPE_42__*, align 8
  %24 = alloca %struct.TYPE_35__*, align 8
  %25 = alloca %struct.TYPE_43__*, align 8
  %26 = alloca %struct.TYPE_43__*, align 8
  %27 = alloca %struct.TYPE_40__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_34__*, align 8
  %30 = alloca %struct.TYPE_33__*, align 8
  %31 = alloca %struct.TYPE_44__, align 4
  %32 = alloca %struct.TYPE_33__*, align 8
  %33 = alloca %struct.TYPE_33__*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_41__* %1, %struct.TYPE_41__** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32** %5, i32*** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.TYPE_43__** %7, %struct.TYPE_43__*** %16, align 8
  store i8* null, i8** %17, align 8
  %34 = call i32 (...) @encode_reset_ns()
  %35 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %15, align 8
  %39 = call %struct.TYPE_40__* @get_envelope(i32 %37, i32* %38, i8** %17)
  store %struct.TYPE_40__* %39, %struct.TYPE_40__** %19, align 8
  %40 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %41 = icmp ne %struct.TYPE_40__* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %8
  %43 = call i32 @soap_server_fault(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null, i32* null)
  br label %44

44:                                               ; preds = %42, %8
  %45 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %46 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_42__*, %struct.TYPE_42__** %46, align 8
  store %struct.TYPE_42__* %47, %struct.TYPE_42__** %23, align 8
  br label %48

48:                                               ; preds = %85, %44
  %49 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %50 = icmp ne %struct.TYPE_42__* %49, null
  br i1 %50, label %51, label %89

51:                                               ; preds = %48
  %52 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %53 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 @soap_server_fault(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null, i32* null)
  br label %85

58:                                               ; preds = %51
  %59 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %60 = load i8*, i8** @SOAP_1_2_ENV_NAMESPACE, align 8
  %61 = call i64 @attr_is_equal_ex(%struct.TYPE_42__* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %58
  %64 = load i32*, i32** %15, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SOAP_1_2, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = call i32 @soap_server_fault(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32* null, i32* null, i32* null)
  br label %83

70:                                               ; preds = %63
  %71 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %72 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_36__*, %struct.TYPE_36__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = load i8*, i8** @SOAP_1_1_ENC_NAMESPACE, align 8
  %78 = call i64 @strcmp(i8* %76, i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = call i32 @soap_server_fault(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32* null, i32* null, i32* null)
  br label %82

82:                                               ; preds = %80, %70
  br label %83

83:                                               ; preds = %82, %68
  br label %84

84:                                               ; preds = %83, %58
  br label %85

85:                                               ; preds = %84, %56
  %86 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %87 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_42__*, %struct.TYPE_42__** %87, align 8
  store %struct.TYPE_42__* %88, %struct.TYPE_42__** %23, align 8
  br label %48

89:                                               ; preds = %48
  store %struct.TYPE_40__* null, %struct.TYPE_40__** %20, align 8
  %90 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %91 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_40__*, %struct.TYPE_40__** %91, align 8
  store %struct.TYPE_40__* %92, %struct.TYPE_40__** %18, align 8
  br label %93

93:                                               ; preds = %104, %89
  %94 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %95 = icmp ne %struct.TYPE_40__* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %98 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %101 = icmp ne i64 %99, %100
  br label %102

102:                                              ; preds = %96, %93
  %103 = phi i1 [ false, %93 ], [ %101, %96 ]
  br i1 %103, label %104, label %108

104:                                              ; preds = %102
  %105 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %106 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_40__*, %struct.TYPE_40__** %106, align 8
  store %struct.TYPE_40__* %107, %struct.TYPE_40__** %18, align 8
  br label %93

108:                                              ; preds = %102
  %109 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %110 = icmp ne %struct.TYPE_40__* %109, null
  br i1 %110, label %111, label %121

111:                                              ; preds = %108
  %112 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %113 = load i8*, i8** %17, align 8
  %114 = call i64 @node_is_equal_ex(%struct.TYPE_40__* %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  store %struct.TYPE_40__* %117, %struct.TYPE_40__** %20, align 8
  %118 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %119 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_40__*, %struct.TYPE_40__** %119, align 8
  store %struct.TYPE_40__* %120, %struct.TYPE_40__** %18, align 8
  br label %121

121:                                              ; preds = %116, %111, %108
  store %struct.TYPE_40__* null, %struct.TYPE_40__** %21, align 8
  br label %122

122:                                              ; preds = %133, %121
  %123 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %124 = icmp ne %struct.TYPE_40__* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %127 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %130 = icmp ne i64 %128, %129
  br label %131

131:                                              ; preds = %125, %122
  %132 = phi i1 [ false, %122 ], [ %130, %125 ]
  br i1 %132, label %133, label %137

133:                                              ; preds = %131
  %134 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %135 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_40__*, %struct.TYPE_40__** %135, align 8
  store %struct.TYPE_40__* %136, %struct.TYPE_40__** %18, align 8
  br label %122

137:                                              ; preds = %131
  %138 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %139 = icmp ne %struct.TYPE_40__* %138, null
  br i1 %139, label %140, label %150

140:                                              ; preds = %137
  %141 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %142 = load i8*, i8** %17, align 8
  %143 = call i64 @node_is_equal_ex(%struct.TYPE_40__* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  store %struct.TYPE_40__* %146, %struct.TYPE_40__** %21, align 8
  %147 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %148 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_40__*, %struct.TYPE_40__** %148, align 8
  store %struct.TYPE_40__* %149, %struct.TYPE_40__** %18, align 8
  br label %150

150:                                              ; preds = %145, %140, %137
  br label %151

151:                                              ; preds = %162, %150
  %152 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %153 = icmp ne %struct.TYPE_40__* %152, null
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %156 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %159 = icmp ne i64 %157, %158
  br label %160

160:                                              ; preds = %154, %151
  %161 = phi i1 [ false, %151 ], [ %159, %154 ]
  br i1 %161, label %162, label %166

162:                                              ; preds = %160
  %163 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %164 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_40__*, %struct.TYPE_40__** %164, align 8
  store %struct.TYPE_40__* %165, %struct.TYPE_40__** %18, align 8
  br label %151

166:                                              ; preds = %160
  %167 = load %struct.TYPE_40__*, %struct.TYPE_40__** %21, align 8
  %168 = icmp eq %struct.TYPE_40__* %167, null
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = call i32 @soap_server_fault(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32* null, i32* null, i32* null)
  br label %171

171:                                              ; preds = %169, %166
  %172 = load %struct.TYPE_40__*, %struct.TYPE_40__** %21, align 8
  %173 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %172, i32 0, i32 4
  %174 = load %struct.TYPE_42__*, %struct.TYPE_42__** %173, align 8
  store %struct.TYPE_42__* %174, %struct.TYPE_42__** %23, align 8
  br label %175

175:                                              ; preds = %218, %171
  %176 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %177 = icmp ne %struct.TYPE_42__* %176, null
  br i1 %177, label %178, label %222

178:                                              ; preds = %175
  %179 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %180 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = icmp eq i32* %181, null
  br i1 %182, label %183, label %191

183:                                              ; preds = %178
  %184 = load i32*, i32** %15, align 8
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @SOAP_1_2, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %183
  %189 = call i32 @soap_server_fault(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i64 0, i64 0), i32* null, i32* null, i32* null)
  br label %190

190:                                              ; preds = %188, %183
  br label %218

191:                                              ; preds = %178
  %192 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %193 = load i8*, i8** @SOAP_1_2_ENV_NAMESPACE, align 8
  %194 = call i64 @attr_is_equal_ex(%struct.TYPE_42__* %192, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %217

196:                                              ; preds = %191
  %197 = load i32*, i32** %15, align 8
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @SOAP_1_2, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %196
  %202 = call i32 @soap_server_fault(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32* null, i32* null, i32* null)
  br label %216

203:                                              ; preds = %196
  %204 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %205 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_36__*, %struct.TYPE_36__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = inttoptr i64 %208 to i8*
  %210 = load i8*, i8** @SOAP_1_1_ENC_NAMESPACE, align 8
  %211 = call i64 @strcmp(i8* %209, i8* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %203
  %214 = call i32 @soap_server_fault(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32* null, i32* null, i32* null)
  br label %215

215:                                              ; preds = %213, %203
  br label %216

216:                                              ; preds = %215, %201
  br label %217

217:                                              ; preds = %216, %191
  br label %218

218:                                              ; preds = %217, %190
  %219 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %220 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_42__*, %struct.TYPE_42__** %220, align 8
  store %struct.TYPE_42__* %221, %struct.TYPE_42__** %23, align 8
  br label %175

222:                                              ; preds = %175
  %223 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %224 = icmp ne %struct.TYPE_40__* %223, null
  br i1 %224, label %225, label %232

225:                                              ; preds = %222
  %226 = load i32*, i32** %15, align 8
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @SOAP_1_2, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %225
  %231 = call i32 @soap_server_fault(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i32* null, i32* null, i32* null)
  br label %232

232:                                              ; preds = %230, %225, %222
  store %struct.TYPE_40__* null, %struct.TYPE_40__** %22, align 8
  %233 = load %struct.TYPE_40__*, %struct.TYPE_40__** %21, align 8
  %234 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_40__*, %struct.TYPE_40__** %234, align 8
  store %struct.TYPE_40__* %235, %struct.TYPE_40__** %18, align 8
  br label %236

236:                                              ; preds = %247, %232
  %237 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %238 = icmp ne %struct.TYPE_40__* %237, null
  br i1 %238, label %239, label %251

239:                                              ; preds = %236
  %240 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %241 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %239
  %246 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  store %struct.TYPE_40__* %246, %struct.TYPE_40__** %22, align 8
  br label %251

247:                                              ; preds = %239
  %248 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %249 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %248, i32 0, i32 2
  %250 = load %struct.TYPE_40__*, %struct.TYPE_40__** %249, align 8
  store %struct.TYPE_40__* %250, %struct.TYPE_40__** %18, align 8
  br label %236

251:                                              ; preds = %245, %236
  %252 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %253 = icmp eq %struct.TYPE_40__* %252, null
  br i1 %253, label %254, label %269

254:                                              ; preds = %251
  %255 = load i32*, i32** %9, align 8
  %256 = call %struct.TYPE_35__* @get_doc_function(i32* %255, i32* null)
  store %struct.TYPE_35__* %256, %struct.TYPE_35__** %24, align 8
  %257 = load %struct.TYPE_35__*, %struct.TYPE_35__** %24, align 8
  %258 = icmp ne %struct.TYPE_35__* %257, null
  br i1 %258, label %259, label %266

259:                                              ; preds = %254
  %260 = load i32*, i32** %12, align 8
  %261 = load %struct.TYPE_35__*, %struct.TYPE_35__** %24, align 8
  %262 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = inttoptr i64 %263 to i8*
  %265 = call i32 @ZVAL_STRING(i32* %260, i8* %264)
  br label %268

266:                                              ; preds = %254
  %267 = call i32 @soap_server_fault(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0), i32* null, i32* null, i32* null)
  br label %268

268:                                              ; preds = %266, %259
  br label %342

269:                                              ; preds = %251
  %270 = load i32*, i32** %15, align 8
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @SOAP_1_1, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %295

274:                                              ; preds = %269
  %275 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %276 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %275, i32 0, i32 4
  %277 = load %struct.TYPE_42__*, %struct.TYPE_42__** %276, align 8
  %278 = load i8*, i8** @SOAP_1_1_ENV_NAMESPACE, align 8
  %279 = call %struct.TYPE_42__* @get_attribute_ex(%struct.TYPE_42__* %277, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %278)
  store %struct.TYPE_42__* %279, %struct.TYPE_42__** %23, align 8
  %280 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %281 = icmp ne %struct.TYPE_42__* %280, null
  br i1 %281, label %282, label %294

282:                                              ; preds = %274
  %283 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %284 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %283, i32 0, i32 0
  %285 = load %struct.TYPE_36__*, %struct.TYPE_36__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = inttoptr i64 %287 to i8*
  %289 = load i8*, i8** @SOAP_1_1_ENC_NAMESPACE, align 8
  %290 = call i64 @strcmp(i8* %288, i8* %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %282
  %293 = call i32 @soap_server_fault(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32* null, i32* null, i32* null)
  br label %294

294:                                              ; preds = %292, %282, %274
  br label %316

295:                                              ; preds = %269
  %296 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %297 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %296, i32 0, i32 4
  %298 = load %struct.TYPE_42__*, %struct.TYPE_42__** %297, align 8
  %299 = load i8*, i8** @SOAP_1_2_ENV_NAMESPACE, align 8
  %300 = call %struct.TYPE_42__* @get_attribute_ex(%struct.TYPE_42__* %298, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %299)
  store %struct.TYPE_42__* %300, %struct.TYPE_42__** %23, align 8
  %301 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %302 = icmp ne %struct.TYPE_42__* %301, null
  br i1 %302, label %303, label %315

303:                                              ; preds = %295
  %304 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %305 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_36__*, %struct.TYPE_36__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = inttoptr i64 %308 to i8*
  %310 = load i8*, i8** @SOAP_1_2_ENC_NAMESPACE, align 8
  %311 = call i64 @strcmp(i8* %309, i8* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %303
  %314 = call i32 @soap_server_fault(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32* null, i32* null, i32* null)
  br label %315

315:                                              ; preds = %313, %303, %295
  br label %316

316:                                              ; preds = %315, %294
  %317 = load i32*, i32** %9, align 8
  %318 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %319 = load i32*, i32** %12, align 8
  %320 = call i8* @find_function(i32* %317, %struct.TYPE_40__* %318, i32* %319)
  %321 = bitcast i8* %320 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %321, %struct.TYPE_35__** %24, align 8
  %322 = load i32*, i32** %9, align 8
  %323 = icmp ne i32* %322, null
  br i1 %323, label %324, label %341

324:                                              ; preds = %316
  %325 = load %struct.TYPE_35__*, %struct.TYPE_35__** %24, align 8
  %326 = icmp eq %struct.TYPE_35__* %325, null
  br i1 %326, label %327, label %341

327:                                              ; preds = %324
  %328 = load i32*, i32** %15, align 8
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @SOAP_1_2, align 4
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %332, label %334

332:                                              ; preds = %327
  %333 = call i32 @soap_server_fault(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32* null, i32* null, i32* null)
  br label %340

334:                                              ; preds = %327
  %335 = load i32, i32* @E_ERROR, align 4
  %336 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %337 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %336, i32 0, i32 5
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @php_error(i32 %335, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i32 %338)
  br label %340

340:                                              ; preds = %334, %332
  br label %341

341:                                              ; preds = %340, %324, %316
  br label %342

342:                                              ; preds = %341, %268
  %343 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %16, align 8
  store %struct.TYPE_43__* null, %struct.TYPE_43__** %343, align 8
  %344 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %345 = icmp ne %struct.TYPE_40__* %344, null
  br i1 %345, label %346, label %769

346:                                              ; preds = %342
  store %struct.TYPE_43__* null, %struct.TYPE_43__** %26, align 8
  %347 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %348 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %347, i32 0, i32 4
  %349 = load %struct.TYPE_42__*, %struct.TYPE_42__** %348, align 8
  store %struct.TYPE_42__* %349, %struct.TYPE_42__** %23, align 8
  br label %350

350:                                              ; preds = %387, %346
  %351 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %352 = icmp ne %struct.TYPE_42__* %351, null
  br i1 %352, label %353, label %391

353:                                              ; preds = %350
  %354 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %355 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %354, i32 0, i32 2
  %356 = load i32*, i32** %355, align 8
  %357 = icmp eq i32* %356, null
  br i1 %357, label %358, label %360

358:                                              ; preds = %353
  %359 = call i32 @soap_server_fault(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.18, i64 0, i64 0), i32* null, i32* null, i32* null)
  br label %387

360:                                              ; preds = %353
  %361 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %362 = load i8*, i8** @SOAP_1_2_ENV_NAMESPACE, align 8
  %363 = call i64 @attr_is_equal_ex(%struct.TYPE_42__* %361, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %386

365:                                              ; preds = %360
  %366 = load i32*, i32** %15, align 8
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* @SOAP_1_2, align 4
  %369 = icmp eq i32 %367, %368
  br i1 %369, label %370, label %372

370:                                              ; preds = %365
  %371 = call i32 @soap_server_fault(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i64 0, i64 0), i32* null, i32* null, i32* null)
  br label %385

372:                                              ; preds = %365
  %373 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %374 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %373, i32 0, i32 0
  %375 = load %struct.TYPE_36__*, %struct.TYPE_36__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = inttoptr i64 %377 to i8*
  %379 = load i8*, i8** @SOAP_1_1_ENC_NAMESPACE, align 8
  %380 = call i64 @strcmp(i8* %378, i8* %379)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %384

382:                                              ; preds = %372
  %383 = call i32 @soap_server_fault(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32* null, i32* null, i32* null)
  br label %384

384:                                              ; preds = %382, %372
  br label %385

385:                                              ; preds = %384, %370
  br label %386

386:                                              ; preds = %385, %360
  br label %387

387:                                              ; preds = %386, %358
  %388 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %389 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %388, i32 0, i32 1
  %390 = load %struct.TYPE_42__*, %struct.TYPE_42__** %389, align 8
  store %struct.TYPE_42__* %390, %struct.TYPE_42__** %23, align 8
  br label %350

391:                                              ; preds = %350
  %392 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %393 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %392, i32 0, i32 1
  %394 = load %struct.TYPE_40__*, %struct.TYPE_40__** %393, align 8
  store %struct.TYPE_40__* %394, %struct.TYPE_40__** %18, align 8
  br label %395

395:                                              ; preds = %764, %391
  %396 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %397 = icmp ne %struct.TYPE_40__* %396, null
  br i1 %397, label %398, label %768

398:                                              ; preds = %395
  %399 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %400 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %399, i32 0, i32 0
  %401 = load i64, i64* %400, align 8
  %402 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %403 = icmp eq i64 %401, %402
  br i1 %403, label %404, label %763

404:                                              ; preds = %398
  %405 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  store %struct.TYPE_40__* %405, %struct.TYPE_40__** %27, align 8
  store i32 0, i32* %28, align 4
  %406 = load i32*, i32** %15, align 8
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* @SOAP_1_1, align 4
  %409 = icmp eq i32 %407, %408
  br i1 %409, label %410, label %464

410:                                              ; preds = %404
  %411 = load %struct.TYPE_40__*, %struct.TYPE_40__** %27, align 8
  %412 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %411, i32 0, i32 4
  %413 = load %struct.TYPE_42__*, %struct.TYPE_42__** %412, align 8
  %414 = load i8*, i8** @SOAP_1_1_ENV_NAMESPACE, align 8
  %415 = call %struct.TYPE_42__* @get_attribute_ex(%struct.TYPE_42__* %413, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %414)
  store %struct.TYPE_42__* %415, %struct.TYPE_42__** %23, align 8
  %416 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %417 = icmp ne %struct.TYPE_42__* %416, null
  br i1 %417, label %418, label %430

418:                                              ; preds = %410
  %419 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %420 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %419, i32 0, i32 0
  %421 = load %struct.TYPE_36__*, %struct.TYPE_36__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %421, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = inttoptr i64 %423 to i8*
  %425 = load i8*, i8** @SOAP_1_1_ENC_NAMESPACE, align 8
  %426 = call i64 @strcmp(i8* %424, i8* %425)
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %430

428:                                              ; preds = %418
  %429 = call i32 @soap_server_fault(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32* null, i32* null, i32* null)
  br label %430

430:                                              ; preds = %428, %418, %410
  %431 = load %struct.TYPE_40__*, %struct.TYPE_40__** %27, align 8
  %432 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %431, i32 0, i32 4
  %433 = load %struct.TYPE_42__*, %struct.TYPE_42__** %432, align 8
  %434 = load i8*, i8** %17, align 8
  %435 = call %struct.TYPE_42__* @get_attribute_ex(%struct.TYPE_42__* %433, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* %434)
  store %struct.TYPE_42__* %435, %struct.TYPE_42__** %23, align 8
  %436 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %437 = icmp ne %struct.TYPE_42__* %436, null
  br i1 %437, label %438, label %463

438:                                              ; preds = %430
  %439 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %440 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %439, i32 0, i32 0
  %441 = load %struct.TYPE_36__*, %struct.TYPE_36__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = inttoptr i64 %443 to i8*
  %445 = load i8*, i8** @SOAP_1_1_ACTOR_NEXT, align 8
  %446 = call i64 @strcmp(i8* %444, i8* %445)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %462

448:                                              ; preds = %438
  %449 = load i8*, i8** %11, align 8
  %450 = icmp eq i8* %449, null
  br i1 %450, label %461, label %451

451:                                              ; preds = %448
  %452 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %453 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %452, i32 0, i32 0
  %454 = load %struct.TYPE_36__*, %struct.TYPE_36__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %454, i32 0, i32 0
  %456 = load i64, i64* %455, align 8
  %457 = inttoptr i64 %456 to i8*
  %458 = load i8*, i8** %11, align 8
  %459 = call i64 @strcmp(i8* %457, i8* %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %451, %448
  br label %764

462:                                              ; preds = %451, %438
  br label %463

463:                                              ; preds = %462, %430
  br label %534

464:                                              ; preds = %404
  %465 = load i32*, i32** %15, align 8
  %466 = load i32, i32* %465, align 4
  %467 = load i32, i32* @SOAP_1_2, align 4
  %468 = icmp eq i32 %466, %467
  br i1 %468, label %469, label %533

469:                                              ; preds = %464
  %470 = load %struct.TYPE_40__*, %struct.TYPE_40__** %27, align 8
  %471 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %470, i32 0, i32 4
  %472 = load %struct.TYPE_42__*, %struct.TYPE_42__** %471, align 8
  %473 = load i8*, i8** @SOAP_1_2_ENV_NAMESPACE, align 8
  %474 = call %struct.TYPE_42__* @get_attribute_ex(%struct.TYPE_42__* %472, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %473)
  store %struct.TYPE_42__* %474, %struct.TYPE_42__** %23, align 8
  %475 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %476 = icmp ne %struct.TYPE_42__* %475, null
  br i1 %476, label %477, label %489

477:                                              ; preds = %469
  %478 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %479 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %478, i32 0, i32 0
  %480 = load %struct.TYPE_36__*, %struct.TYPE_36__** %479, align 8
  %481 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %480, i32 0, i32 0
  %482 = load i64, i64* %481, align 8
  %483 = inttoptr i64 %482 to i8*
  %484 = load i8*, i8** @SOAP_1_2_ENC_NAMESPACE, align 8
  %485 = call i64 @strcmp(i8* %483, i8* %484)
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %489

487:                                              ; preds = %477
  %488 = call i32 @soap_server_fault(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32* null, i32* null, i32* null)
  br label %489

489:                                              ; preds = %487, %477, %469
  %490 = load %struct.TYPE_40__*, %struct.TYPE_40__** %27, align 8
  %491 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %490, i32 0, i32 4
  %492 = load %struct.TYPE_42__*, %struct.TYPE_42__** %491, align 8
  %493 = load i8*, i8** %17, align 8
  %494 = call %struct.TYPE_42__* @get_attribute_ex(%struct.TYPE_42__* %492, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* %493)
  store %struct.TYPE_42__* %494, %struct.TYPE_42__** %23, align 8
  %495 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %496 = icmp ne %struct.TYPE_42__* %495, null
  br i1 %496, label %497, label %532

497:                                              ; preds = %489
  %498 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %499 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %498, i32 0, i32 0
  %500 = load %struct.TYPE_36__*, %struct.TYPE_36__** %499, align 8
  %501 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %500, i32 0, i32 0
  %502 = load i64, i64* %501, align 8
  %503 = inttoptr i64 %502 to i8*
  %504 = load i8*, i8** @SOAP_1_2_ACTOR_UNLIMATERECEIVER, align 8
  %505 = call i64 @strcmp(i8* %503, i8* %504)
  %506 = icmp ne i64 %505, 0
  br i1 %506, label %507, label %531

507:                                              ; preds = %497
  %508 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %509 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %508, i32 0, i32 0
  %510 = load %struct.TYPE_36__*, %struct.TYPE_36__** %509, align 8
  %511 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %510, i32 0, i32 0
  %512 = load i64, i64* %511, align 8
  %513 = inttoptr i64 %512 to i8*
  %514 = load i8*, i8** @SOAP_1_2_ACTOR_NEXT, align 8
  %515 = call i64 @strcmp(i8* %513, i8* %514)
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %517, label %531

517:                                              ; preds = %507
  %518 = load i8*, i8** %11, align 8
  %519 = icmp eq i8* %518, null
  br i1 %519, label %530, label %520

520:                                              ; preds = %517
  %521 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %522 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %521, i32 0, i32 0
  %523 = load %struct.TYPE_36__*, %struct.TYPE_36__** %522, align 8
  %524 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %523, i32 0, i32 0
  %525 = load i64, i64* %524, align 8
  %526 = inttoptr i64 %525 to i8*
  %527 = load i8*, i8** %11, align 8
  %528 = call i64 @strcmp(i8* %526, i8* %527)
  %529 = icmp ne i64 %528, 0
  br i1 %529, label %530, label %531

530:                                              ; preds = %520, %517
  br label %764

531:                                              ; preds = %520, %507, %497
  br label %532

532:                                              ; preds = %531, %489
  br label %533

533:                                              ; preds = %532, %464
  br label %534

534:                                              ; preds = %533, %463
  %535 = load %struct.TYPE_40__*, %struct.TYPE_40__** %27, align 8
  %536 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %535, i32 0, i32 4
  %537 = load %struct.TYPE_42__*, %struct.TYPE_42__** %536, align 8
  %538 = load i8*, i8** %17, align 8
  %539 = call %struct.TYPE_42__* @get_attribute_ex(%struct.TYPE_42__* %537, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i8* %538)
  store %struct.TYPE_42__* %539, %struct.TYPE_42__** %23, align 8
  %540 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %541 = icmp ne %struct.TYPE_42__* %540, null
  br i1 %541, label %542, label %584

542:                                              ; preds = %534
  %543 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %544 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %543, i32 0, i32 0
  %545 = load %struct.TYPE_36__*, %struct.TYPE_36__** %544, align 8
  %546 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %545, i32 0, i32 0
  %547 = load i64, i64* %546, align 8
  %548 = inttoptr i64 %547 to i8*
  %549 = call i64 @strcmp(i8* %548, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  %550 = icmp eq i64 %549, 0
  br i1 %550, label %560, label %551

551:                                              ; preds = %542
  %552 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %553 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %552, i32 0, i32 0
  %554 = load %struct.TYPE_36__*, %struct.TYPE_36__** %553, align 8
  %555 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %554, i32 0, i32 0
  %556 = load i64, i64* %555, align 8
  %557 = inttoptr i64 %556 to i8*
  %558 = call i64 @strcmp(i8* %557, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %559 = icmp eq i64 %558, 0
  br i1 %559, label %560, label %561

560:                                              ; preds = %551, %542
  store i32 1, i32* %28, align 4
  br label %583

561:                                              ; preds = %551
  %562 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %563 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %562, i32 0, i32 0
  %564 = load %struct.TYPE_36__*, %struct.TYPE_36__** %563, align 8
  %565 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %564, i32 0, i32 0
  %566 = load i64, i64* %565, align 8
  %567 = inttoptr i64 %566 to i8*
  %568 = call i64 @strcmp(i8* %567, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  %569 = icmp eq i64 %568, 0
  br i1 %569, label %579, label %570

570:                                              ; preds = %561
  %571 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %572 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %571, i32 0, i32 0
  %573 = load %struct.TYPE_36__*, %struct.TYPE_36__** %572, align 8
  %574 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %573, i32 0, i32 0
  %575 = load i64, i64* %574, align 8
  %576 = inttoptr i64 %575 to i8*
  %577 = call i64 @strcmp(i8* %576, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0))
  %578 = icmp eq i64 %577, 0
  br i1 %578, label %579, label %580

579:                                              ; preds = %570, %561
  store i32 0, i32* %28, align 4
  br label %582

580:                                              ; preds = %570
  %581 = call i32 @soap_server_fault(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i64 0, i64 0), i32* null, i32* null, i32* null)
  br label %582

582:                                              ; preds = %580, %579
  br label %583

583:                                              ; preds = %582, %560
  br label %584

584:                                              ; preds = %583, %534
  %585 = call i8* @emalloc(i32 56)
  %586 = bitcast i8* %585 to %struct.TYPE_43__*
  store %struct.TYPE_43__* %586, %struct.TYPE_43__** %25, align 8
  %587 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %588 = call i32 @memset(%struct.TYPE_43__* %587, i32 0, i32 56)
  %589 = load i32, i32* %28, align 4
  %590 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %591 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %590, i32 0, i32 0
  store i32 %589, i32* %591, align 8
  %592 = load i32*, i32** %9, align 8
  %593 = load %struct.TYPE_40__*, %struct.TYPE_40__** %27, align 8
  %594 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %595 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %594, i32 0, i32 7
  %596 = call i8* @find_function(i32* %592, %struct.TYPE_40__* %593, i32* %595)
  %597 = bitcast i8* %596 to %struct.TYPE_35__*
  %598 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %599 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %598, i32 0, i32 5
  store %struct.TYPE_35__* %597, %struct.TYPE_35__** %599, align 8
  %600 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %601 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %600, i32 0, i32 5
  %602 = load %struct.TYPE_35__*, %struct.TYPE_35__** %601, align 8
  %603 = icmp ne %struct.TYPE_35__* %602, null
  br i1 %603, label %675, label %604

604:                                              ; preds = %584
  %605 = load i32*, i32** %9, align 8
  %606 = icmp ne i32* %605, null
  br i1 %606, label %607, label %675

607:                                              ; preds = %604
  %608 = load %struct.TYPE_35__*, %struct.TYPE_35__** %24, align 8
  %609 = icmp ne %struct.TYPE_35__* %608, null
  br i1 %609, label %610, label %675

610:                                              ; preds = %607
  %611 = load %struct.TYPE_35__*, %struct.TYPE_35__** %24, align 8
  %612 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %611, i32 0, i32 1
  %613 = load %struct.TYPE_39__*, %struct.TYPE_39__** %612, align 8
  %614 = icmp ne %struct.TYPE_39__* %613, null
  br i1 %614, label %615, label %675

615:                                              ; preds = %610
  %616 = load %struct.TYPE_35__*, %struct.TYPE_35__** %24, align 8
  %617 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %616, i32 0, i32 1
  %618 = load %struct.TYPE_39__*, %struct.TYPE_39__** %617, align 8
  %619 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %618, i32 0, i32 0
  %620 = load i64, i64* %619, align 8
  %621 = load i64, i64* @BINDING_SOAP, align 8
  %622 = icmp eq i64 %620, %621
  br i1 %622, label %623, label %675

623:                                              ; preds = %615
  %624 = load %struct.TYPE_35__*, %struct.TYPE_35__** %24, align 8
  %625 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %624, i32 0, i32 0
  %626 = load i32, i32* %625, align 8
  %627 = sext i32 %626 to i64
  %628 = inttoptr i64 %627 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %628, %struct.TYPE_33__** %30, align 8
  %629 = load %struct.TYPE_33__*, %struct.TYPE_33__** %30, align 8
  %630 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %629, i32 0, i32 1
  %631 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %630, i32 0, i32 0
  %632 = load i64, i64* %631, align 8
  %633 = icmp ne i64 %632, 0
  br i1 %633, label %634, label %674

634:                                              ; preds = %623
  %635 = bitcast %struct.TYPE_44__* %31 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %635, i8 0, i64 8, i1 false)
  %636 = load %struct.TYPE_40__*, %struct.TYPE_40__** %27, align 8
  %637 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %636, i32 0, i32 3
  %638 = load %struct.TYPE_37__*, %struct.TYPE_37__** %637, align 8
  %639 = icmp ne %struct.TYPE_37__* %638, null
  br i1 %639, label %640, label %649

640:                                              ; preds = %634
  %641 = load %struct.TYPE_40__*, %struct.TYPE_40__** %27, align 8
  %642 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %641, i32 0, i32 3
  %643 = load %struct.TYPE_37__*, %struct.TYPE_37__** %642, align 8
  %644 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %643, i32 0, i32 0
  %645 = load i64, i64* %644, align 8
  %646 = inttoptr i64 %645 to i8*
  %647 = call i32 @smart_str_appends(%struct.TYPE_44__* %31, i8* %646)
  %648 = call i32 @smart_str_appendc(%struct.TYPE_44__* %31, i8 signext 58)
  br label %649

649:                                              ; preds = %640, %634
  %650 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %651 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %650, i32 0, i32 7
  %652 = load i32, i32* %651, align 8
  %653 = call i32 @Z_STRVAL(i32 %652)
  %654 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %655 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %654, i32 0, i32 7
  %656 = load i32, i32* %655, align 8
  %657 = call i32 @Z_STRLEN(i32 %656)
  %658 = call i32 @smart_str_appendl(%struct.TYPE_44__* %31, i32 %653, i32 %657)
  %659 = call i32 @smart_str_0(%struct.TYPE_44__* %31)
  %660 = load %struct.TYPE_33__*, %struct.TYPE_33__** %30, align 8
  %661 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %660, i32 0, i32 1
  %662 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %661, i32 0, i32 0
  %663 = load i64, i64* %662, align 8
  %664 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %31, i32 0, i32 0
  %665 = load i32, i32* %664, align 4
  %666 = call %struct.TYPE_34__* @zend_hash_find_ptr(i64 %663, i32 %665)
  store %struct.TYPE_34__* %666, %struct.TYPE_34__** %29, align 8
  %667 = icmp ne %struct.TYPE_34__* %666, null
  br i1 %667, label %668, label %672

668:                                              ; preds = %649
  %669 = load %struct.TYPE_34__*, %struct.TYPE_34__** %29, align 8
  %670 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %671 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %670, i32 0, i32 6
  store %struct.TYPE_34__* %669, %struct.TYPE_34__** %671, align 8
  br label %672

672:                                              ; preds = %668, %649
  %673 = call i32 @smart_str_free(%struct.TYPE_44__* %31)
  br label %674

674:                                              ; preds = %672, %623
  br label %675

675:                                              ; preds = %674, %615, %610, %607, %604, %584
  %676 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %677 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %676, i32 0, i32 6
  %678 = load %struct.TYPE_34__*, %struct.TYPE_34__** %677, align 8
  %679 = icmp ne %struct.TYPE_34__* %678, null
  br i1 %679, label %680, label %698

680:                                              ; preds = %675
  %681 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %682 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %681, i32 0, i32 1
  store i32 1, i32* %682, align 4
  %683 = call i8* @emalloc(i32 4)
  %684 = bitcast i8* %683 to i32*
  %685 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %686 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %685, i32 0, i32 4
  store i32* %684, i32** %686, align 8
  %687 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %688 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %687, i32 0, i32 4
  %689 = load i32*, i32** %688, align 8
  %690 = getelementptr inbounds i32, i32* %689, i64 0
  %691 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %692 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %691, i32 0, i32 6
  %693 = load %struct.TYPE_34__*, %struct.TYPE_34__** %692, align 8
  %694 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %693, i32 0, i32 0
  %695 = load i32, i32* %694, align 4
  %696 = load %struct.TYPE_40__*, %struct.TYPE_40__** %27, align 8
  %697 = call i32 @master_to_zval(i32* %690, i32 %695, %struct.TYPE_40__* %696)
  br label %748

698:                                              ; preds = %675
  %699 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %700 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %699, i32 0, i32 5
  %701 = load %struct.TYPE_35__*, %struct.TYPE_35__** %700, align 8
  %702 = icmp ne %struct.TYPE_35__* %701, null
  br i1 %702, label %703, label %738

703:                                              ; preds = %698
  %704 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %705 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %704, i32 0, i32 5
  %706 = load %struct.TYPE_35__*, %struct.TYPE_35__** %705, align 8
  %707 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %706, i32 0, i32 1
  %708 = load %struct.TYPE_39__*, %struct.TYPE_39__** %707, align 8
  %709 = icmp ne %struct.TYPE_39__* %708, null
  br i1 %709, label %710, label %738

710:                                              ; preds = %703
  %711 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %712 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %711, i32 0, i32 5
  %713 = load %struct.TYPE_35__*, %struct.TYPE_35__** %712, align 8
  %714 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %713, i32 0, i32 1
  %715 = load %struct.TYPE_39__*, %struct.TYPE_39__** %714, align 8
  %716 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %715, i32 0, i32 0
  %717 = load i64, i64* %716, align 8
  %718 = load i64, i64* @BINDING_SOAP, align 8
  %719 = icmp eq i64 %717, %718
  br i1 %719, label %720, label %738

720:                                              ; preds = %710
  %721 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %722 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %721, i32 0, i32 5
  %723 = load %struct.TYPE_35__*, %struct.TYPE_35__** %722, align 8
  %724 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %723, i32 0, i32 0
  %725 = load i32, i32* %724, align 8
  %726 = sext i32 %725 to i64
  %727 = inttoptr i64 %726 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %727, %struct.TYPE_33__** %32, align 8
  %728 = load %struct.TYPE_33__*, %struct.TYPE_33__** %32, align 8
  %729 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %728, i32 0, i32 0
  %730 = load i64, i64* %729, align 8
  %731 = load i64, i64* @SOAP_RPC, align 8
  %732 = icmp eq i64 %730, %731
  br i1 %732, label %733, label %737

733:                                              ; preds = %720
  %734 = load %struct.TYPE_40__*, %struct.TYPE_40__** %27, align 8
  %735 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %734, i32 0, i32 1
  %736 = load %struct.TYPE_40__*, %struct.TYPE_40__** %735, align 8
  store %struct.TYPE_40__* %736, %struct.TYPE_40__** %27, align 8
  br label %737

737:                                              ; preds = %733, %720
  br label %738

738:                                              ; preds = %737, %710, %703, %698
  %739 = load %struct.TYPE_40__*, %struct.TYPE_40__** %27, align 8
  %740 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %741 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %740, i32 0, i32 5
  %742 = load %struct.TYPE_35__*, %struct.TYPE_35__** %741, align 8
  %743 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %744 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %743, i32 0, i32 1
  %745 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %746 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %745, i32 0, i32 4
  %747 = call i32 @deserialize_parameters(%struct.TYPE_40__* %739, %struct.TYPE_35__* %742, i32* %744, i32** %746)
  br label %748

748:                                              ; preds = %738, %680
  %749 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %750 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %749, i32 0, i32 3
  %751 = call i32 @ZVAL_NULL(i32* %750)
  %752 = load %struct.TYPE_43__*, %struct.TYPE_43__** %26, align 8
  %753 = icmp eq %struct.TYPE_43__* %752, null
  br i1 %753, label %754, label %757

754:                                              ; preds = %748
  %755 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %756 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %16, align 8
  store %struct.TYPE_43__* %755, %struct.TYPE_43__** %756, align 8
  br label %761

757:                                              ; preds = %748
  %758 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %759 = load %struct.TYPE_43__*, %struct.TYPE_43__** %26, align 8
  %760 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %759, i32 0, i32 2
  store %struct.TYPE_43__* %758, %struct.TYPE_43__** %760, align 8
  br label %761

761:                                              ; preds = %757, %754
  %762 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  store %struct.TYPE_43__* %762, %struct.TYPE_43__** %26, align 8
  br label %763

763:                                              ; preds = %761, %398
  br label %764

764:                                              ; preds = %763, %530, %461
  %765 = load %struct.TYPE_40__*, %struct.TYPE_40__** %18, align 8
  %766 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %765, i32 0, i32 2
  %767 = load %struct.TYPE_40__*, %struct.TYPE_40__** %766, align 8
  store %struct.TYPE_40__* %767, %struct.TYPE_40__** %18, align 8
  br label %395

768:                                              ; preds = %395
  br label %769

769:                                              ; preds = %768, %342
  %770 = load %struct.TYPE_35__*, %struct.TYPE_35__** %24, align 8
  %771 = icmp ne %struct.TYPE_35__* %770, null
  br i1 %771, label %772, label %801

772:                                              ; preds = %769
  %773 = load %struct.TYPE_35__*, %struct.TYPE_35__** %24, align 8
  %774 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %773, i32 0, i32 1
  %775 = load %struct.TYPE_39__*, %struct.TYPE_39__** %774, align 8
  %776 = icmp ne %struct.TYPE_39__* %775, null
  br i1 %776, label %777, label %801

777:                                              ; preds = %772
  %778 = load %struct.TYPE_35__*, %struct.TYPE_35__** %24, align 8
  %779 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %778, i32 0, i32 1
  %780 = load %struct.TYPE_39__*, %struct.TYPE_39__** %779, align 8
  %781 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %780, i32 0, i32 0
  %782 = load i64, i64* %781, align 8
  %783 = load i64, i64* @BINDING_SOAP, align 8
  %784 = icmp eq i64 %782, %783
  br i1 %784, label %785, label %801

785:                                              ; preds = %777
  %786 = load %struct.TYPE_35__*, %struct.TYPE_35__** %24, align 8
  %787 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %786, i32 0, i32 0
  %788 = load i32, i32* %787, align 8
  %789 = sext i32 %788 to i64
  %790 = inttoptr i64 %789 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %790, %struct.TYPE_33__** %33, align 8
  %791 = load %struct.TYPE_33__*, %struct.TYPE_33__** %33, align 8
  %792 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %791, i32 0, i32 0
  %793 = load i64, i64* %792, align 8
  %794 = load i64, i64* @SOAP_RPC, align 8
  %795 = icmp eq i64 %793, %794
  br i1 %795, label %796, label %800

796:                                              ; preds = %785
  %797 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %798 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %797, i32 0, i32 1
  %799 = load %struct.TYPE_40__*, %struct.TYPE_40__** %798, align 8
  store %struct.TYPE_40__* %799, %struct.TYPE_40__** %22, align 8
  br label %800

800:                                              ; preds = %796, %785
  br label %805

801:                                              ; preds = %777, %772, %769
  %802 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %803 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %802, i32 0, i32 1
  %804 = load %struct.TYPE_40__*, %struct.TYPE_40__** %803, align 8
  store %struct.TYPE_40__* %804, %struct.TYPE_40__** %22, align 8
  br label %805

805:                                              ; preds = %801, %800
  %806 = load %struct.TYPE_40__*, %struct.TYPE_40__** %22, align 8
  %807 = load %struct.TYPE_35__*, %struct.TYPE_35__** %24, align 8
  %808 = load i32*, i32** %13, align 8
  %809 = load i32**, i32*** %14, align 8
  %810 = call i32 @deserialize_parameters(%struct.TYPE_40__* %806, %struct.TYPE_35__* %807, i32* %808, i32** %809)
  %811 = call i32 (...) @encode_finish()
  %812 = load %struct.TYPE_35__*, %struct.TYPE_35__** %24, align 8
  ret %struct.TYPE_35__* %812
}

declare dso_local i32 @encode_reset_ns(...) #1

declare dso_local %struct.TYPE_40__* @get_envelope(i32, i32*, i8**) #1

declare dso_local i32 @soap_server_fault(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @attr_is_equal_ex(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @node_is_equal_ex(%struct.TYPE_40__*, i8*, i8*) #1

declare dso_local %struct.TYPE_35__* @get_doc_function(i32*, i32*) #1

declare dso_local i32 @ZVAL_STRING(i32*, i8*) #1

declare dso_local %struct.TYPE_42__* @get_attribute_ex(%struct.TYPE_42__*, i8*, i8*) #1

declare dso_local i8* @find_function(i32*, %struct.TYPE_40__*, i32*) #1

declare dso_local i32 @php_error(i32, i8*, i32) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_43__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @smart_str_appends(%struct.TYPE_44__*, i8*) #1

declare dso_local i32 @smart_str_appendc(%struct.TYPE_44__*, i8 signext) #1

declare dso_local i32 @smart_str_appendl(%struct.TYPE_44__*, i32, i32) #1

declare dso_local i32 @Z_STRVAL(i32) #1

declare dso_local i32 @Z_STRLEN(i32) #1

declare dso_local i32 @smart_str_0(%struct.TYPE_44__*) #1

declare dso_local %struct.TYPE_34__* @zend_hash_find_ptr(i64, i32) #1

declare dso_local i32 @smart_str_free(%struct.TYPE_44__*) #1

declare dso_local i32 @master_to_zval(i32*, i32, %struct.TYPE_40__*) #1

declare dso_local i32 @deserialize_parameters(%struct.TYPE_40__*, %struct.TYPE_35__*, i32*, i32**) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @encode_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
