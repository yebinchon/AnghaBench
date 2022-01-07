; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_load_wsdl_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_load_wsdl_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i32, i32, i32, i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_25__ = type { i8*, %struct.TYPE_25__*, i32, %struct.TYPE_30__*, %struct.TYPE_25__* }
%struct.TYPE_30__ = type { i32* }
%struct.TYPE_27__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_26__ = type { i32 }

@E_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Parsing WSDL: Couldn't load from '%s' : %s\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Parsing WSDL: Couldn't load from '%s'\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"definitions\00", align 1
@WSDL_NAMESPACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"schema\00", align 1
@XSD_NAMESPACE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"Parsing WSDL: Couldn't find <definitions> in '%s'\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"targetNamespace\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"types\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"documentation\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Parsing WSDL: Unexpected WSDL element <%s>\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"Parsing WSDL: <message> '%s' already defined\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"Parsing WSDL: <message> has no name attribute\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"portType\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"Parsing WSDL: <portType> '%s' already defined\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"Parsing WSDL: <portType> has no name attribute\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"binding\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"Parsing WSDL: <binding> '%s' already defined\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"Parsing WSDL: <binding> has no name attribute\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"service\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"Parsing WSDL: <service> '%s' already defined\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"Parsing WSDL: <service> has no name attribute\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.TYPE_29__*, i32)* @load_wsdl_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_wsdl_ex(i32* %0, i8* %1, %struct.TYPE_29__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca %struct.TYPE_26__*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca %struct.TYPE_27__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_27__*, align 8
  %22 = alloca %struct.TYPE_27__*, align 8
  %23 = alloca %struct.TYPE_27__*, align 8
  %24 = alloca %struct.TYPE_27__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %7, align 8
  store i32 %3, i32* %8, align 4
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  store %struct.TYPE_28__* %27, %struct.TYPE_28__** %9, align 8
  %28 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %28, i32 0, i32 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = call i64 @zend_hash_str_exists(i32* %29, i8* %30, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  br label %452

36:                                               ; preds = %4
  %37 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @sdl_set_uri_credentials(%struct.TYPE_29__* %37, i8* %38)
  %40 = load i8*, i8** %6, align 8
  %41 = call %struct.TYPE_25__* @soap_xmlParseFile(i8* %40)
  store %struct.TYPE_25__* %41, %struct.TYPE_25__** %10, align 8
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %43 = call i32 @sdl_restore_uri_credentials(%struct.TYPE_29__* %42)
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %45 = icmp ne %struct.TYPE_25__* %44, null
  br i1 %45, label %62, label %46

46:                                               ; preds = %36
  %47 = call %struct.TYPE_26__* (...) @xmlGetLastError()
  store %struct.TYPE_26__* %47, %struct.TYPE_26__** %15, align 8
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %49 = icmp ne %struct.TYPE_26__* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i32, i32* @E_ERROR, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @soap_error2(i32 %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %52, i32 %55)
  br label %61

57:                                               ; preds = %46
  %58 = load i32, i32* @E_ERROR, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @soap_error1(i32 %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %57, %50
  br label %62

62:                                               ; preds = %61, %36
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i32 0, i32 4
  %65 = load i8*, i8** %6, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %69 = call i32* @zend_hash_str_add_ptr(i32* %64, i8* %65, i32 %67, %struct.TYPE_25__* %68)
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %71, align 8
  store %struct.TYPE_25__* %72, %struct.TYPE_25__** %11, align 8
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %74 = load i32, i32* @WSDL_NAMESPACE, align 4
  %75 = call %struct.TYPE_25__* @get_node_ex(%struct.TYPE_25__* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  store %struct.TYPE_25__* %75, %struct.TYPE_25__** %12, align 8
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %77 = icmp ne %struct.TYPE_25__* %76, null
  br i1 %77, label %96, label %78

78:                                               ; preds = %62
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %83 = load i32, i32* @XSD_NAMESPACE, align 4
  %84 = call %struct.TYPE_25__* @get_node_ex(%struct.TYPE_25__* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  store %struct.TYPE_25__* %84, %struct.TYPE_25__** %16, align 8
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %86 = icmp ne %struct.TYPE_25__* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %90 = call i32 @load_schema(%struct.TYPE_29__* %88, %struct.TYPE_25__* %89)
  br label %452

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91, %78
  %93 = load i32, i32* @E_ERROR, align 4
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @soap_error1(i32 %93, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %92, %62
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %116, label %99

99:                                               ; preds = %96
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call %struct.TYPE_27__* @get_attribute(i32 %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_27__* %103, %struct.TYPE_27__** %14, align 8
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %105 = icmp ne %struct.TYPE_27__* %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %99
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @estrdup(i8* %111)
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %106, %99
  br label %116

116:                                              ; preds = %115, %96
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 4
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %118, align 8
  store %struct.TYPE_25__* %119, %struct.TYPE_25__** %13, align 8
  br label %120

120:                                              ; preds = %448, %127, %116
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %122 = icmp ne %struct.TYPE_25__* %121, null
  br i1 %122, label %123, label %452

123:                                              ; preds = %120
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %125 = call i64 @is_wsdl_element(%struct.TYPE_25__* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %129, align 8
  store %struct.TYPE_25__* %130, %struct.TYPE_25__** %13, align 8
  br label %120

131:                                              ; preds = %123
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %133 = call i64 @node_is_equal(%struct.TYPE_25__* %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %171

135:                                              ; preds = %131
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %137, align 8
  store %struct.TYPE_25__* %138, %struct.TYPE_25__** %17, align 8
  br label %139

139:                                              ; preds = %166, %135
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %141 = icmp ne %struct.TYPE_25__* %140, null
  br i1 %141, label %142, label %170

142:                                              ; preds = %139
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %144 = load i32, i32* @XSD_NAMESPACE, align 4
  %145 = call i64 @node_is_equal_ex(%struct.TYPE_25__* %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %150 = call i32 @load_schema(%struct.TYPE_29__* %148, %struct.TYPE_25__* %149)
  br label %166

151:                                              ; preds = %142
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %153 = call i64 @is_wsdl_element(%struct.TYPE_25__* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %151
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %157 = call i64 @node_is_equal(%struct.TYPE_25__* %156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %165, label %159

159:                                              ; preds = %155
  %160 = load i32, i32* @E_ERROR, align 4
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @soap_error1(i32 %160, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i8* %163)
  br label %165

165:                                              ; preds = %159, %155, %151
  br label %166

166:                                              ; preds = %165, %147
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %168, align 8
  store %struct.TYPE_25__* %169, %struct.TYPE_25__** %17, align 8
  br label %139

170:                                              ; preds = %139
  br label %448

171:                                              ; preds = %131
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %173 = call i64 @node_is_equal(%struct.TYPE_25__* %172, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %220

175:                                              ; preds = %171
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = call %struct.TYPE_27__* @get_attribute(i32 %178, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  store %struct.TYPE_27__* %179, %struct.TYPE_27__** %18, align 8
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %181 = icmp ne %struct.TYPE_27__* %180, null
  br i1 %181, label %182, label %219

182:                                              ; preds = %175
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 3
  %185 = load %struct.TYPE_30__*, %struct.TYPE_30__** %184, align 8
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %187 = call i32* @xmlNodeGetBase(%struct.TYPE_30__* %185, %struct.TYPE_25__* %186)
  store i32* %187, i32** %20, align 8
  %188 = load i32*, i32** %20, align 8
  %189 = icmp eq i32* %188, null
  br i1 %189, label %190, label %202

190:                                              ; preds = %182
  %191 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %192 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 3
  %198 = load %struct.TYPE_30__*, %struct.TYPE_30__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = call i32* @xmlBuildURI(i8* %195, i32* %200)
  store i32* %201, i32** %19, align 8
  br label %212

202:                                              ; preds = %182
  %203 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %204 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = load i32*, i32** %20, align 8
  %209 = call i32* @xmlBuildURI(i8* %207, i32* %208)
  store i32* %209, i32** %19, align 8
  %210 = load i32*, i32** %20, align 8
  %211 = call i32 @xmlFree(i32* %210)
  br label %212

212:                                              ; preds = %202, %190
  %213 = load i32*, i32** %5, align 8
  %214 = load i32*, i32** %19, align 8
  %215 = bitcast i32* %214 to i8*
  %216 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  call void @load_wsdl_ex(i32* %213, i8* %215, %struct.TYPE_29__* %216, i32 1)
  %217 = load i32*, i32** %19, align 8
  %218 = call i32 @xmlFree(i32* %217)
  br label %219

219:                                              ; preds = %212, %175
  br label %447

220:                                              ; preds = %171
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %222 = call i64 @node_is_equal(%struct.TYPE_25__* %221, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %273

224:                                              ; preds = %220
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %226 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = call %struct.TYPE_27__* @get_attribute(i32 %227, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  store %struct.TYPE_27__* %228, %struct.TYPE_27__** %21, align 8
  %229 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  %230 = icmp ne %struct.TYPE_27__* %229, null
  br i1 %230, label %231, label %269

231:                                              ; preds = %224
  %232 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  %233 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %233, align 8
  %235 = icmp ne %struct.TYPE_24__* %234, null
  br i1 %235, label %236, label %269

236:                                              ; preds = %231
  %237 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  %238 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %239, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %243, label %269

243:                                              ; preds = %236
  %244 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %244, i32 0, i32 3
  %246 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  %247 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  %252 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 0
  %255 = load i8*, i8** %254, align 8
  %256 = call i32 @xmlStrlen(i8* %255)
  %257 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %258 = call i32* @zend_hash_str_add_ptr(i32* %245, i8* %250, i32 %256, %struct.TYPE_25__* %257)
  %259 = icmp eq i32* %258, null
  br i1 %259, label %260, label %268

260:                                              ; preds = %243
  %261 = load i32, i32* @E_ERROR, align 4
  %262 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  %263 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_24__*, %struct.TYPE_24__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %264, i32 0, i32 0
  %266 = load i8*, i8** %265, align 8
  %267 = call i32 @soap_error1(i32 %261, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0), i8* %266)
  br label %268

268:                                              ; preds = %260, %243
  br label %272

269:                                              ; preds = %236, %231, %224
  %270 = load i32, i32* @E_ERROR, align 4
  %271 = call i32 @soap_error0(i32 %270, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0))
  br label %272

272:                                              ; preds = %269, %268
  br label %446

273:                                              ; preds = %220
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %275 = call i64 @node_is_equal(%struct.TYPE_25__* %274, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %326

277:                                              ; preds = %273
  %278 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %279 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = call %struct.TYPE_27__* @get_attribute(i32 %280, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  store %struct.TYPE_27__* %281, %struct.TYPE_27__** %22, align 8
  %282 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %283 = icmp ne %struct.TYPE_27__* %282, null
  br i1 %283, label %284, label %322

284:                                              ; preds = %277
  %285 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %286 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_24__*, %struct.TYPE_24__** %286, align 8
  %288 = icmp ne %struct.TYPE_24__* %287, null
  br i1 %288, label %289, label %322

289:                                              ; preds = %284
  %290 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %291 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_24__*, %struct.TYPE_24__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %292, i32 0, i32 0
  %294 = load i8*, i8** %293, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %296, label %322

296:                                              ; preds = %289
  %297 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %297, i32 0, i32 2
  %299 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %300 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_24__*, %struct.TYPE_24__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %301, i32 0, i32 0
  %303 = load i8*, i8** %302, align 8
  %304 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %305 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_24__*, %struct.TYPE_24__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %306, i32 0, i32 0
  %308 = load i8*, i8** %307, align 8
  %309 = call i32 @xmlStrlen(i8* %308)
  %310 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %311 = call i32* @zend_hash_str_add_ptr(i32* %298, i8* %303, i32 %309, %struct.TYPE_25__* %310)
  %312 = icmp eq i32* %311, null
  br i1 %312, label %313, label %321

313:                                              ; preds = %296
  %314 = load i32, i32* @E_ERROR, align 4
  %315 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %316 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 0
  %319 = load i8*, i8** %318, align 8
  %320 = call i32 @soap_error1(i32 %314, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i64 0, i64 0), i8* %319)
  br label %321

321:                                              ; preds = %313, %296
  br label %325

322:                                              ; preds = %289, %284, %277
  %323 = load i32, i32* @E_ERROR, align 4
  %324 = call i32 @soap_error0(i32 %323, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i64 0, i64 0))
  br label %325

325:                                              ; preds = %322, %321
  br label %445

326:                                              ; preds = %273
  %327 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %328 = call i64 @node_is_equal(%struct.TYPE_25__* %327, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %379

330:                                              ; preds = %326
  %331 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %332 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = call %struct.TYPE_27__* @get_attribute(i32 %333, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  store %struct.TYPE_27__* %334, %struct.TYPE_27__** %23, align 8
  %335 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %336 = icmp ne %struct.TYPE_27__* %335, null
  br i1 %336, label %337, label %375

337:                                              ; preds = %330
  %338 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %339 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %338, i32 0, i32 0
  %340 = load %struct.TYPE_24__*, %struct.TYPE_24__** %339, align 8
  %341 = icmp ne %struct.TYPE_24__* %340, null
  br i1 %341, label %342, label %375

342:                                              ; preds = %337
  %343 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %344 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %343, i32 0, i32 0
  %345 = load %struct.TYPE_24__*, %struct.TYPE_24__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %345, i32 0, i32 0
  %347 = load i8*, i8** %346, align 8
  %348 = icmp ne i8* %347, null
  br i1 %348, label %349, label %375

349:                                              ; preds = %342
  %350 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %351 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %350, i32 0, i32 1
  %352 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %353 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %352, i32 0, i32 0
  %354 = load %struct.TYPE_24__*, %struct.TYPE_24__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %354, i32 0, i32 0
  %356 = load i8*, i8** %355, align 8
  %357 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %358 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %357, i32 0, i32 0
  %359 = load %struct.TYPE_24__*, %struct.TYPE_24__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %359, i32 0, i32 0
  %361 = load i8*, i8** %360, align 8
  %362 = call i32 @xmlStrlen(i8* %361)
  %363 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %364 = call i32* @zend_hash_str_add_ptr(i32* %351, i8* %356, i32 %362, %struct.TYPE_25__* %363)
  %365 = icmp eq i32* %364, null
  br i1 %365, label %366, label %374

366:                                              ; preds = %349
  %367 = load i32, i32* @E_ERROR, align 4
  %368 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %369 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %368, i32 0, i32 0
  %370 = load %struct.TYPE_24__*, %struct.TYPE_24__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %370, i32 0, i32 0
  %372 = load i8*, i8** %371, align 8
  %373 = call i32 @soap_error1(i32 %367, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0), i8* %372)
  br label %374

374:                                              ; preds = %366, %349
  br label %378

375:                                              ; preds = %342, %337, %330
  %376 = load i32, i32* @E_ERROR, align 4
  %377 = call i32 @soap_error0(i32 %376, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0))
  br label %378

378:                                              ; preds = %375, %374
  br label %444

379:                                              ; preds = %326
  %380 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %381 = call i64 @node_is_equal(%struct.TYPE_25__* %380, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %432

383:                                              ; preds = %379
  %384 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %385 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 8
  %387 = call %struct.TYPE_27__* @get_attribute(i32 %386, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  store %struct.TYPE_27__* %387, %struct.TYPE_27__** %24, align 8
  %388 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %389 = icmp ne %struct.TYPE_27__* %388, null
  br i1 %389, label %390, label %428

390:                                              ; preds = %383
  %391 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %392 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %391, i32 0, i32 0
  %393 = load %struct.TYPE_24__*, %struct.TYPE_24__** %392, align 8
  %394 = icmp ne %struct.TYPE_24__* %393, null
  br i1 %394, label %395, label %428

395:                                              ; preds = %390
  %396 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %397 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %396, i32 0, i32 0
  %398 = load %struct.TYPE_24__*, %struct.TYPE_24__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %398, i32 0, i32 0
  %400 = load i8*, i8** %399, align 8
  %401 = icmp ne i8* %400, null
  br i1 %401, label %402, label %428

402:                                              ; preds = %395
  %403 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %404 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %403, i32 0, i32 0
  %405 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %406 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %405, i32 0, i32 0
  %407 = load %struct.TYPE_24__*, %struct.TYPE_24__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %407, i32 0, i32 0
  %409 = load i8*, i8** %408, align 8
  %410 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %411 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %410, i32 0, i32 0
  %412 = load %struct.TYPE_24__*, %struct.TYPE_24__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %412, i32 0, i32 0
  %414 = load i8*, i8** %413, align 8
  %415 = call i32 @xmlStrlen(i8* %414)
  %416 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %417 = call i32* @zend_hash_str_add_ptr(i32* %404, i8* %409, i32 %415, %struct.TYPE_25__* %416)
  %418 = icmp eq i32* %417, null
  br i1 %418, label %419, label %427

419:                                              ; preds = %402
  %420 = load i32, i32* @E_ERROR, align 4
  %421 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %422 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %421, i32 0, i32 0
  %423 = load %struct.TYPE_24__*, %struct.TYPE_24__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %423, i32 0, i32 0
  %425 = load i8*, i8** %424, align 8
  %426 = call i32 @soap_error1(i32 %420, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0), i8* %425)
  br label %427

427:                                              ; preds = %419, %402
  br label %431

428:                                              ; preds = %395, %390, %383
  %429 = load i32, i32* @E_ERROR, align 4
  %430 = call i32 @soap_error0(i32 %429, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.23, i64 0, i64 0))
  br label %431

431:                                              ; preds = %428, %427
  br label %443

432:                                              ; preds = %379
  %433 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %434 = call i64 @node_is_equal(%struct.TYPE_25__* %433, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %442, label %436

436:                                              ; preds = %432
  %437 = load i32, i32* @E_ERROR, align 4
  %438 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %439 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %438, i32 0, i32 0
  %440 = load i8*, i8** %439, align 8
  %441 = call i32 @soap_error1(i32 %437, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i8* %440)
  br label %442

442:                                              ; preds = %436, %432
  br label %443

443:                                              ; preds = %442, %431
  br label %444

444:                                              ; preds = %443, %378
  br label %445

445:                                              ; preds = %444, %325
  br label %446

446:                                              ; preds = %445, %272
  br label %447

447:                                              ; preds = %446, %219
  br label %448

448:                                              ; preds = %447, %170
  %449 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %450 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %449, i32 0, i32 1
  %451 = load %struct.TYPE_25__*, %struct.TYPE_25__** %450, align 8
  store %struct.TYPE_25__* %451, %struct.TYPE_25__** %13, align 8
  br label %120

452:                                              ; preds = %35, %87, %120
  ret void
}

declare dso_local i64 @zend_hash_str_exists(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sdl_set_uri_credentials(%struct.TYPE_29__*, i8*) #1

declare dso_local %struct.TYPE_25__* @soap_xmlParseFile(i8*) #1

declare dso_local i32 @sdl_restore_uri_credentials(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_26__* @xmlGetLastError(...) #1

declare dso_local i32 @soap_error2(i32, i8*, i8*, i32) #1

declare dso_local i32 @soap_error1(i32, i8*, i8*) #1

declare dso_local i32* @zend_hash_str_add_ptr(i32*, i8*, i32, %struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @get_node_ex(%struct.TYPE_25__*, i8*, i32) #1

declare dso_local i32 @load_schema(%struct.TYPE_29__*, %struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_27__* @get_attribute(i32, i8*) #1

declare dso_local i32 @estrdup(i8*) #1

declare dso_local i64 @is_wsdl_element(%struct.TYPE_25__*) #1

declare dso_local i64 @node_is_equal(%struct.TYPE_25__*, i8*) #1

declare dso_local i64 @node_is_equal_ex(%struct.TYPE_25__*, i8*, i32) #1

declare dso_local i32* @xmlNodeGetBase(%struct.TYPE_30__*, %struct.TYPE_25__*) #1

declare dso_local i32* @xmlBuildURI(i8*, i32*) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local i32 @xmlStrlen(i8*) #1

declare dso_local i32 @soap_error0(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
