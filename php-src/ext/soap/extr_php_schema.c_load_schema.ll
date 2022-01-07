; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_load_schema.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_load_schema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_41__ = type { %struct.TYPE_37__*, i8*, i8* }
%struct.TYPE_37__ = type { i8* }
%struct.TYPE_39__ = type { %struct.TYPE_39__*, i32, %struct.TYPE_42__*, i32, %struct.TYPE_39__* }
%struct.TYPE_42__ = type { i32* }
%struct.TYPE_40__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32 }

@delete_type = common dso_local global i32 0, align 4
@delete_attribute = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"targetNamespace\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"schemaLocation\00", align 1
@E_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"Parsing Schema: include has no 'schemaLocation' attribute\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"redefine\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"Parsing Schema: redefine has no 'schemaLocation' attribute\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@.str.9 = private unnamed_addr constant [111 x i8] c"Parsing Schema: can't import schema from '%s', namespace must not match the enclosing schema 'targetNamespace'\00", align 1
@.str.10 = private unnamed_addr constant [101 x i8] c"Parsing Schema: can't import schema. Namespace must not match the enclosing schema 'targetNamespace'\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"annotation\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"simpleType\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"complexType\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"attributeGroup\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"element\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"attribute\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"notation\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"Parsing Schema: unexpected <%s> in schema\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_schema(%struct.TYPE_41__* %0, %struct.TYPE_39__* %1) #0 {
  %3 = alloca %struct.TYPE_41__*, align 8
  %4 = alloca %struct.TYPE_39__*, align 8
  %5 = alloca %struct.TYPE_39__*, align 8
  %6 = alloca %struct.TYPE_40__*, align 8
  %7 = alloca %struct.TYPE_40__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_40__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_40__*, align 8
  %14 = alloca %struct.TYPE_40__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_41__* %0, %struct.TYPE_41__** %3, align 8
  store %struct.TYPE_39__* %1, %struct.TYPE_39__** %4, align 8
  %17 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %2
  %24 = call i8* @emalloc(i32 4)
  %25 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %27, i32 0, i32 0
  store i8* %24, i8** %28, align 8
  %29 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_37__*, %struct.TYPE_37__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* @delete_type, align 4
  %35 = call i32 @zend_hash_init(i8* %33, i32 0, i32* null, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %23, %2
  %37 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = call i8* @emalloc(i32 4)
  %43 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* @delete_attribute, align 4
  %49 = call i32 @zend_hash_init(i8* %47, i32 0, i32* null, i32 %48, i32 0)
  br label %50

50:                                               ; preds = %41, %36
  %51 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %50
  %56 = call i8* @emalloc(i32 4)
  %57 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* @delete_type, align 4
  %63 = call i32 @zend_hash_init(i8* %61, i32 0, i32* null, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %55, %50
  %65 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.TYPE_40__* @get_attribute(i32 %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_40__* %68, %struct.TYPE_40__** %6, align 8
  %69 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %70 = icmp eq %struct.TYPE_40__* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %73 = call i32 @BAD_CAST(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %74 = call i32 @BAD_CAST(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %75 = call %struct.TYPE_40__* @xmlSetProp(%struct.TYPE_39__* %72, i32 %73, i32 %74)
  store %struct.TYPE_40__* %75, %struct.TYPE_40__** %6, align 8
  %76 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %77 = call i32 @BAD_CAST(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %78 = call i32 @xmlNewNs(%struct.TYPE_39__* %76, i32 %77, i32* null)
  br label %79

79:                                               ; preds = %71, %64
  %80 = load %struct.TYPE_39__*, %struct.TYPE_39__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_39__*, %struct.TYPE_39__** %81, align 8
  store %struct.TYPE_39__* %82, %struct.TYPE_39__** %5, align 8
  br label %83

83:                                               ; preds = %291, %79
  %84 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %85 = icmp ne %struct.TYPE_39__* %84, null
  br i1 %85, label %86, label %295

86:                                               ; preds = %83
  %87 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %88 = call i64 @node_is_equal(%struct.TYPE_39__* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %138

90:                                               ; preds = %86
  %91 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call %struct.TYPE_40__* @get_attribute(i32 %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_40__* %94, %struct.TYPE_40__** %7, align 8
  %95 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %96 = icmp eq %struct.TYPE_40__* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* @E_ERROR, align 4
  %99 = call i32 @soap_error0(i32 %98, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  br label %137

100:                                              ; preds = %90
  %101 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_42__*, %struct.TYPE_42__** %102, align 8
  %104 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %105 = call i32* @xmlNodeGetBase(%struct.TYPE_42__* %103, %struct.TYPE_39__* %104)
  store i32* %105, i32** %9, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %120

108:                                              ; preds = %100
  %109 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_38__*, %struct.TYPE_38__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_42__*, %struct.TYPE_42__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = call i32* @xmlBuildURI(i32 %113, i32* %118)
  store i32* %119, i32** %8, align 8
  br label %130

120:                                              ; preds = %100
  %121 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_38__*, %struct.TYPE_38__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %9, align 8
  %127 = call i32* @xmlBuildURI(i32 %125, i32* %126)
  store i32* %127, i32** %8, align 8
  %128 = load i32*, i32** %9, align 8
  %129 = call i32 @xmlFree(i32* %128)
  br label %130

130:                                              ; preds = %120, %108
  %131 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %134 = call i32 @schema_load_file(%struct.TYPE_41__* %131, %struct.TYPE_40__* null, i32* %132, %struct.TYPE_40__* %133, i32 0)
  %135 = load i32*, i32** %8, align 8
  %136 = call i32 @xmlFree(i32* %135)
  br label %137

137:                                              ; preds = %130, %97
  br label %291

138:                                              ; preds = %86
  %139 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %140 = call i64 @node_is_equal(%struct.TYPE_39__* %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %190

142:                                              ; preds = %138
  %143 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = call %struct.TYPE_40__* @get_attribute(i32 %145, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_40__* %146, %struct.TYPE_40__** %10, align 8
  %147 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %148 = icmp eq %struct.TYPE_40__* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %142
  %150 = load i32, i32* @E_ERROR, align 4
  %151 = call i32 @soap_error0(i32 %150, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  br label %189

152:                                              ; preds = %142
  %153 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_42__*, %struct.TYPE_42__** %154, align 8
  %156 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %157 = call i32* @xmlNodeGetBase(%struct.TYPE_42__* %155, %struct.TYPE_39__* %156)
  store i32* %157, i32** %12, align 8
  %158 = load i32*, i32** %12, align 8
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %172

160:                                              ; preds = %152
  %161 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_38__*, %struct.TYPE_38__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_42__*, %struct.TYPE_42__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = call i32* @xmlBuildURI(i32 %165, i32* %170)
  store i32* %171, i32** %11, align 8
  br label %182

172:                                              ; preds = %152
  %173 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_38__*, %struct.TYPE_38__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %12, align 8
  %179 = call i32* @xmlBuildURI(i32 %177, i32* %178)
  store i32* %179, i32** %11, align 8
  %180 = load i32*, i32** %12, align 8
  %181 = call i32 @xmlFree(i32* %180)
  br label %182

182:                                              ; preds = %172, %160
  %183 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %184 = load i32*, i32** %11, align 8
  %185 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %186 = call i32 @schema_load_file(%struct.TYPE_41__* %183, %struct.TYPE_40__* null, i32* %184, %struct.TYPE_40__* %185, i32 0)
  %187 = load i32*, i32** %11, align 8
  %188 = call i32 @xmlFree(i32* %187)
  br label %189

189:                                              ; preds = %182, %149
  br label %290

190:                                              ; preds = %138
  %191 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %192 = call i64 @node_is_equal(%struct.TYPE_39__* %191, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %282

194:                                              ; preds = %190
  store i32* null, i32** %15, align 8
  %195 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = call %struct.TYPE_40__* @get_attribute(i32 %197, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  store %struct.TYPE_40__* %198, %struct.TYPE_40__** %13, align 8
  %199 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = call %struct.TYPE_40__* @get_attribute(i32 %201, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_40__* %202, %struct.TYPE_40__** %14, align 8
  %203 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %204 = icmp ne %struct.TYPE_40__* %203, null
  br i1 %204, label %205, label %236

205:                                              ; preds = %194
  %206 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %207 = icmp ne %struct.TYPE_40__* %206, null
  br i1 %207, label %208, label %236

208:                                              ; preds = %205
  %209 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %210 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_38__*, %struct.TYPE_38__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_38__*, %struct.TYPE_38__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i64 @xmlStrcmp(i32 %213, i32 %218)
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %236

221:                                              ; preds = %208
  %222 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %223 = icmp ne %struct.TYPE_40__* %222, null
  br i1 %223, label %224, label %232

224:                                              ; preds = %221
  %225 = load i32, i32* @E_ERROR, align 4
  %226 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %227 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_38__*, %struct.TYPE_38__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @soap_error1(i32 %225, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.9, i64 0, i64 0), i32 %230)
  br label %235

232:                                              ; preds = %221
  %233 = load i32, i32* @E_ERROR, align 4
  %234 = call i32 @soap_error0(i32 %233, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.10, i64 0, i64 0))
  br label %235

235:                                              ; preds = %232, %224
  br label %236

236:                                              ; preds = %235, %208, %205, %194
  %237 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %238 = icmp ne %struct.TYPE_40__* %237, null
  br i1 %238, label %239, label %270

239:                                              ; preds = %236
  %240 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %240, i32 0, i32 2
  %242 = load %struct.TYPE_42__*, %struct.TYPE_42__** %241, align 8
  %243 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %244 = call i32* @xmlNodeGetBase(%struct.TYPE_42__* %242, %struct.TYPE_39__* %243)
  store i32* %244, i32** %16, align 8
  %245 = load i32*, i32** %16, align 8
  %246 = icmp eq i32* %245, null
  br i1 %246, label %247, label %259

247:                                              ; preds = %239
  %248 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %249 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_38__*, %struct.TYPE_38__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %253, i32 0, i32 2
  %255 = load %struct.TYPE_42__*, %struct.TYPE_42__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = call i32* @xmlBuildURI(i32 %252, i32* %257)
  store i32* %258, i32** %15, align 8
  br label %269

259:                                              ; preds = %239
  %260 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %261 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_38__*, %struct.TYPE_38__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load i32*, i32** %16, align 8
  %266 = call i32* @xmlBuildURI(i32 %264, i32* %265)
  store i32* %266, i32** %15, align 8
  %267 = load i32*, i32** %16, align 8
  %268 = call i32 @xmlFree(i32* %267)
  br label %269

269:                                              ; preds = %259, %247
  br label %270

270:                                              ; preds = %269, %236
  %271 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %272 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %273 = load i32*, i32** %15, align 8
  %274 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %275 = call i32 @schema_load_file(%struct.TYPE_41__* %271, %struct.TYPE_40__* %272, i32* %273, %struct.TYPE_40__* %274, i32 1)
  %276 = load i32*, i32** %15, align 8
  %277 = icmp ne i32* %276, null
  br i1 %277, label %278, label %281

278:                                              ; preds = %270
  %279 = load i32*, i32** %15, align 8
  %280 = call i32 @xmlFree(i32* %279)
  br label %281

281:                                              ; preds = %278, %270
  br label %289

282:                                              ; preds = %190
  %283 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %284 = call i64 @node_is_equal(%struct.TYPE_39__* %283, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %282
  br label %288

287:                                              ; preds = %282
  br label %295

288:                                              ; preds = %286
  br label %289

289:                                              ; preds = %288, %281
  br label %290

290:                                              ; preds = %289, %189
  br label %291

291:                                              ; preds = %290, %137
  %292 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %292, i32 0, i32 0
  %294 = load %struct.TYPE_39__*, %struct.TYPE_39__** %293, align 8
  store %struct.TYPE_39__* %294, %struct.TYPE_39__** %5, align 8
  br label %83

295:                                              ; preds = %287, %83
  br label %296

296:                                              ; preds = %390, %295
  %297 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %298 = icmp ne %struct.TYPE_39__* %297, null
  br i1 %298, label %299, label %394

299:                                              ; preds = %296
  %300 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %301 = call i64 @node_is_equal(%struct.TYPE_39__* %300, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %310

303:                                              ; preds = %299
  %304 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_37__*, %struct.TYPE_37__** %305, align 8
  %307 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %308 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %309 = call i32 @schema_simpleType(%struct.TYPE_37__* %306, %struct.TYPE_40__* %307, %struct.TYPE_39__* %308, i32* null)
  br label %390

310:                                              ; preds = %299
  %311 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %312 = call i64 @node_is_equal(%struct.TYPE_39__* %311, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %321

314:                                              ; preds = %310
  %315 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_37__*, %struct.TYPE_37__** %316, align 8
  %318 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %319 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %320 = call i32 @schema_complexType(%struct.TYPE_37__* %317, %struct.TYPE_40__* %318, %struct.TYPE_39__* %319, i32* null)
  br label %389

321:                                              ; preds = %310
  %322 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %323 = call i64 @node_is_equal(%struct.TYPE_39__* %322, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %332

325:                                              ; preds = %321
  %326 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %326, i32 0, i32 0
  %328 = load %struct.TYPE_37__*, %struct.TYPE_37__** %327, align 8
  %329 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %330 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %331 = call i32 @schema_group(%struct.TYPE_37__* %328, %struct.TYPE_40__* %329, %struct.TYPE_39__* %330, i32* null, i32* null)
  br label %388

332:                                              ; preds = %321
  %333 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %334 = call i64 @node_is_equal(%struct.TYPE_39__* %333, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %344

336:                                              ; preds = %332
  %337 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %337, i32 0, i32 0
  %339 = load %struct.TYPE_37__*, %struct.TYPE_37__** %338, align 8
  %340 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %341 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %342 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %343 = call i32 @schema_attributeGroup(%struct.TYPE_37__* %339, %struct.TYPE_40__* %340, %struct.TYPE_39__* %341, i32* null, %struct.TYPE_41__* %342)
  br label %387

344:                                              ; preds = %332
  %345 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %346 = call i64 @node_is_equal(%struct.TYPE_39__* %345, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %355

348:                                              ; preds = %344
  %349 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %349, i32 0, i32 0
  %351 = load %struct.TYPE_37__*, %struct.TYPE_37__** %350, align 8
  %352 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %353 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %354 = call i32 @schema_element(%struct.TYPE_37__* %351, %struct.TYPE_40__* %352, %struct.TYPE_39__* %353, i32* null, i32* null)
  br label %386

355:                                              ; preds = %344
  %356 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %357 = call i64 @node_is_equal(%struct.TYPE_39__* %356, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %367

359:                                              ; preds = %355
  %360 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %360, i32 0, i32 0
  %362 = load %struct.TYPE_37__*, %struct.TYPE_37__** %361, align 8
  %363 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %364 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %365 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %366 = call i32 @schema_attribute(%struct.TYPE_37__* %362, %struct.TYPE_40__* %363, %struct.TYPE_39__* %364, i32* null, %struct.TYPE_41__* %365)
  br label %385

367:                                              ; preds = %355
  %368 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %369 = call i64 @node_is_equal(%struct.TYPE_39__* %368, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %367
  br label %384

372:                                              ; preds = %367
  %373 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %374 = call i64 @node_is_equal(%struct.TYPE_39__* %373, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %372
  br label %383

377:                                              ; preds = %372
  %378 = load i32, i32* @E_ERROR, align 4
  %379 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 8
  %382 = call i32 @soap_error1(i32 %378, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i64 0, i64 0), i32 %381)
  br label %383

383:                                              ; preds = %377, %376
  br label %384

384:                                              ; preds = %383, %371
  br label %385

385:                                              ; preds = %384, %359
  br label %386

386:                                              ; preds = %385, %348
  br label %387

387:                                              ; preds = %386, %336
  br label %388

388:                                              ; preds = %387, %325
  br label %389

389:                                              ; preds = %388, %314
  br label %390

390:                                              ; preds = %389, %303
  %391 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %392 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %391, i32 0, i32 0
  %393 = load %struct.TYPE_39__*, %struct.TYPE_39__** %392, align 8
  store %struct.TYPE_39__* %393, %struct.TYPE_39__** %5, align 8
  br label %296

394:                                              ; preds = %296
  %395 = load i32, i32* @TRUE, align 4
  ret i32 %395
}

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @zend_hash_init(i8*, i32, i32*, i32, i32) #1

declare dso_local %struct.TYPE_40__* @get_attribute(i32, i8*) #1

declare dso_local %struct.TYPE_40__* @xmlSetProp(%struct.TYPE_39__*, i32, i32) #1

declare dso_local i32 @BAD_CAST(i8*) #1

declare dso_local i32 @xmlNewNs(%struct.TYPE_39__*, i32, i32*) #1

declare dso_local i64 @node_is_equal(%struct.TYPE_39__*, i8*) #1

declare dso_local i32 @soap_error0(i32, i8*) #1

declare dso_local i32* @xmlNodeGetBase(%struct.TYPE_42__*, %struct.TYPE_39__*) #1

declare dso_local i32* @xmlBuildURI(i32, i32*) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local i32 @schema_load_file(%struct.TYPE_41__*, %struct.TYPE_40__*, i32*, %struct.TYPE_40__*, i32) #1

declare dso_local i64 @xmlStrcmp(i32, i32) #1

declare dso_local i32 @soap_error1(i32, i8*, i32) #1

declare dso_local i32 @schema_simpleType(%struct.TYPE_37__*, %struct.TYPE_40__*, %struct.TYPE_39__*, i32*) #1

declare dso_local i32 @schema_complexType(%struct.TYPE_37__*, %struct.TYPE_40__*, %struct.TYPE_39__*, i32*) #1

declare dso_local i32 @schema_group(%struct.TYPE_37__*, %struct.TYPE_40__*, %struct.TYPE_39__*, i32*, i32*) #1

declare dso_local i32 @schema_attributeGroup(%struct.TYPE_37__*, %struct.TYPE_40__*, %struct.TYPE_39__*, i32*, %struct.TYPE_41__*) #1

declare dso_local i32 @schema_element(%struct.TYPE_37__*, %struct.TYPE_40__*, %struct.TYPE_39__*, i32*, i32*) #1

declare dso_local i32 @schema_attribute(%struct.TYPE_37__*, %struct.TYPE_40__*, %struct.TYPE_39__*, i32*, %struct.TYPE_41__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
