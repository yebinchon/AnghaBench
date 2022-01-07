; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_element.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_47__ = type { i32* }
%struct.TYPE_44__ = type { %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i64 }
%struct.TYPE_43__ = type { %struct.TYPE_43__*, i32, %struct.TYPE_43__*, i32, %struct.TYPE_43__*, %struct.TYPE_44__* }
%struct.TYPE_46__ = type { i8*, i8*, i32, i64, i32, i8*, i8*, %struct.TYPE_40__, i32, i32*, i32 }
%struct.TYPE_40__ = type { i32*, %struct.TYPE_46__* }
%struct.TYPE_45__ = type { i32, i32 }
%struct.TYPE_42__ = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"targetNamespace\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@FALSE = common dso_local global i8* null, align 8
@delete_type = common dso_local global i32 0, align 4
@E_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Parsing Schema: element '%s' already defined\00", align 1
@XSD_CONTENT_ELEMENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"Parsing Schema: element has no 'name' nor 'ref' attributes\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"nillable\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"Parsing Schema: element has both 'ref' and 'nillable' attributes\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"Parsing Schema: element has both 'ref' and 'fixed' attributes\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.12 = private unnamed_addr constant [66 x i8] c"Parsing Schema: element has both 'default' and 'fixed' attributes\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"form\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"qualified\00", align 1
@XSD_FORM_QUALIFIED = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [12 x i8] c"unqualified\00", align 1
@XSD_FORM_UNQUALIFIED = common dso_local global i8* null, align 8
@XSD_FORM_DEFAULT = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [7 x i8] c"schema\00", align 1
@SCHEMA_NAMESPACE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [19 x i8] c"elementFormDefault\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.19 = private unnamed_addr constant [61 x i8] c"Parsing Schema: element has both 'ref' and 'type' attributes\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"annotation\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"simpleType\00", align 1
@.str.22 = private unnamed_addr constant [61 x i8] c"Parsing Schema: element has both 'ref' attribute and subtype\00", align 1
@.str.23 = private unnamed_addr constant [62 x i8] c"Parsing Schema: element has both 'type' attribute and subtype\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"complexType\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"unique\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"keyref\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"Parsing Schema: unexpected <%s> in element\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_47__*, %struct.TYPE_44__*, %struct.TYPE_43__*, %struct.TYPE_46__*, %struct.TYPE_46__*)* @schema_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schema_element(%struct.TYPE_47__* %0, %struct.TYPE_44__* %1, %struct.TYPE_43__* %2, %struct.TYPE_46__* %3, %struct.TYPE_46__* %4) #0 {
  %6 = alloca %struct.TYPE_47__*, align 8
  %7 = alloca %struct.TYPE_44__*, align 8
  %8 = alloca %struct.TYPE_43__*, align 8
  %9 = alloca %struct.TYPE_46__*, align 8
  %10 = alloca %struct.TYPE_46__*, align 8
  %11 = alloca %struct.TYPE_43__*, align 8
  %12 = alloca %struct.TYPE_44__*, align 8
  %13 = alloca %struct.TYPE_44__*, align 8
  %14 = alloca %struct.TYPE_44__*, align 8
  %15 = alloca %struct.TYPE_44__*, align 8
  %16 = alloca %struct.TYPE_44__*, align 8
  %17 = alloca %struct.TYPE_44__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_46__*, align 8
  %20 = alloca %struct.TYPE_45__, align 4
  %21 = alloca %struct.TYPE_45__, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_42__*, align 8
  %25 = alloca %struct.TYPE_44__*, align 8
  %26 = alloca %struct.TYPE_46__*, align 8
  %27 = alloca %struct.TYPE_43__*, align 8
  %28 = alloca %struct.TYPE_44__*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca %struct.TYPE_42__*, align 8
  store %struct.TYPE_47__* %0, %struct.TYPE_47__** %6, align 8
  store %struct.TYPE_44__* %1, %struct.TYPE_44__** %7, align 8
  store %struct.TYPE_43__* %2, %struct.TYPE_43__** %8, align 8
  store %struct.TYPE_46__* %3, %struct.TYPE_46__** %9, align 8
  store %struct.TYPE_46__* %4, %struct.TYPE_46__** %10, align 8
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %17, align 8
  %32 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_44__*, %struct.TYPE_44__** %33, align 8
  store %struct.TYPE_44__* %34, %struct.TYPE_44__** %12, align 8
  %35 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %36 = call %struct.TYPE_44__* @get_attribute(%struct.TYPE_44__* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_44__* %36, %struct.TYPE_44__** %14, align 8
  %37 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %38 = icmp eq %struct.TYPE_44__* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %5
  %40 = load %struct.TYPE_44__*, %struct.TYPE_44__** %7, align 8
  store %struct.TYPE_44__* %40, %struct.TYPE_44__** %14, align 8
  br label %41

41:                                               ; preds = %39, %5
  %42 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %43 = call %struct.TYPE_44__* @get_attribute(%struct.TYPE_44__* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_44__* %43, %struct.TYPE_44__** %15, align 8
  %44 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %45 = icmp eq %struct.TYPE_44__* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %48 = call %struct.TYPE_44__* @get_attribute(%struct.TYPE_44__* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_44__* %48, %struct.TYPE_44__** %17, align 8
  store %struct.TYPE_44__* %48, %struct.TYPE_44__** %15, align 8
  br label %49

49:                                               ; preds = %46, %41
  %50 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %51 = icmp ne %struct.TYPE_44__* %50, null
  br i1 %51, label %52, label %264

52:                                               ; preds = %49
  %53 = bitcast %struct.TYPE_45__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %53, i8 0, i64 8, i1 false)
  %54 = call i8* @emalloc(i32 4)
  %55 = bitcast i8* %54 to %struct.TYPE_46__*
  store %struct.TYPE_46__* %55, %struct.TYPE_46__** %19, align 8
  %56 = load %struct.TYPE_46__*, %struct.TYPE_46__** %19, align 8
  %57 = call i32 @memset(%struct.TYPE_46__* %56, i32 0, i32 4)
  %58 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %59 = icmp ne %struct.TYPE_44__* %58, null
  br i1 %59, label %60, label %140

60:                                               ; preds = %52
  %61 = bitcast %struct.TYPE_45__* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %61, i8 0, i64 8, i1 false)
  %62 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_41__*, %struct.TYPE_41__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @parse_namespace(i64 %66, i8** %22, i8** %23)
  %68 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %72 = load i8*, i8** %23, align 8
  %73 = call i32 @BAD_CAST(i8* %72)
  %74 = call %struct.TYPE_42__* @xmlSearchNs(i32 %70, %struct.TYPE_43__* %71, i32 %73)
  store %struct.TYPE_42__* %74, %struct.TYPE_42__** %24, align 8
  %75 = load %struct.TYPE_42__*, %struct.TYPE_42__** %24, align 8
  %76 = icmp ne %struct.TYPE_42__* %75, null
  br i1 %76, label %77, label %90

77:                                               ; preds = %60
  %78 = load %struct.TYPE_42__*, %struct.TYPE_42__** %24, align 8
  %79 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = call i32 @smart_str_appends(%struct.TYPE_45__* %21, i8* %81)
  %83 = load %struct.TYPE_42__*, %struct.TYPE_42__** %24, align 8
  %84 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = call i8* @estrdup(i8* %86)
  %88 = load %struct.TYPE_46__*, %struct.TYPE_46__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  br label %109

90:                                               ; preds = %60
  %91 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %92 = call %struct.TYPE_44__* @get_attribute(%struct.TYPE_44__* %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_44__* %92, %struct.TYPE_44__** %25, align 8
  %93 = load %struct.TYPE_44__*, %struct.TYPE_44__** %25, align 8
  %94 = icmp eq %struct.TYPE_44__* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load %struct.TYPE_44__*, %struct.TYPE_44__** %7, align 8
  store %struct.TYPE_44__* %96, %struct.TYPE_44__** %25, align 8
  br label %97

97:                                               ; preds = %95, %90
  %98 = load %struct.TYPE_44__*, %struct.TYPE_44__** %25, align 8
  %99 = icmp ne %struct.TYPE_44__* %98, null
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load %struct.TYPE_44__*, %struct.TYPE_44__** %25, align 8
  %102 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_41__*, %struct.TYPE_41__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = call i32 @smart_str_appends(%struct.TYPE_45__* %21, i8* %106)
  br label %108

108:                                              ; preds = %100, %97
  br label %109

109:                                              ; preds = %108, %77
  %110 = call i32 @smart_str_appendc(%struct.TYPE_45__* %21, i8 signext 58)
  %111 = load i8*, i8** %22, align 8
  %112 = call i32 @smart_str_appends(%struct.TYPE_45__* %21, i8* %111)
  %113 = load i8*, i8** %22, align 8
  %114 = call i8* @estrdup(i8* %113)
  %115 = load %struct.TYPE_46__*, %struct.TYPE_46__** %19, align 8
  %116 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = call i32 @smart_str_0(%struct.TYPE_45__* %21)
  %118 = load i8*, i8** %22, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %109
  %121 = load i8*, i8** %22, align 8
  %122 = call i32 @efree(i8* %121)
  br label %123

123:                                              ; preds = %120, %109
  %124 = load i8*, i8** %23, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i8*, i8** %23, align 8
  %128 = call i32 @efree(i8* %127)
  br label %129

129:                                              ; preds = %126, %123
  %130 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %21, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ZSTR_VAL(i32 %131)
  %133 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %21, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ZSTR_LEN(i32 %134)
  %136 = call i32 @estrndup(i32 %132, i32 %135)
  %137 = load %struct.TYPE_46__*, %struct.TYPE_46__** %19, align 8
  %138 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %137, i32 0, i32 10
  store i32 %136, i32* %138, align 8
  %139 = call i32 @smart_str_free(%struct.TYPE_45__* %21)
  br label %159

140:                                              ; preds = %52
  %141 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_41__*, %struct.TYPE_41__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to i8*
  %147 = call i8* @estrdup(i8* %146)
  %148 = load %struct.TYPE_46__*, %struct.TYPE_46__** %19, align 8
  %149 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  %150 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_41__*, %struct.TYPE_41__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to i8*
  %156 = call i8* @estrdup(i8* %155)
  %157 = load %struct.TYPE_46__*, %struct.TYPE_46__** %19, align 8
  %158 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %157, i32 0, i32 0
  store i8* %156, i8** %158, align 8
  br label %159

159:                                              ; preds = %140, %129
  %160 = load i8*, i8** @FALSE, align 8
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.TYPE_46__*, %struct.TYPE_46__** %19, align 8
  %163 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  %164 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %165 = icmp eq %struct.TYPE_46__* %164, null
  br i1 %165, label %166, label %194

166:                                              ; preds = %159
  %167 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = icmp eq i32* %169, null
  br i1 %170, label %171, label %181

171:                                              ; preds = %166
  %172 = call i8* @emalloc(i32 4)
  %173 = bitcast i8* %172 to i32*
  %174 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %174, i32 0, i32 0
  store i32* %173, i32** %175, align 8
  %176 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* @delete_type, align 4
  %180 = call i32 @zend_hash_init(i32* %178, i32 0, i32* null, i32 %179, i32 0)
  br label %181

181:                                              ; preds = %171, %166
  %182 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  store i32* %184, i32** %18, align 8
  %185 = load %struct.TYPE_46__*, %struct.TYPE_46__** %19, align 8
  %186 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @smart_str_appends(%struct.TYPE_45__* %20, i8* %187)
  %189 = call i32 @smart_str_appendc(%struct.TYPE_45__* %20, i8 signext 58)
  %190 = load %struct.TYPE_46__*, %struct.TYPE_46__** %19, align 8
  %191 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %190, i32 0, i32 1
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @smart_str_appends(%struct.TYPE_45__* %20, i8* %192)
  br label %217

194:                                              ; preds = %159
  %195 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %195, i32 0, i32 9
  %197 = load i32*, i32** %196, align 8
  %198 = icmp eq i32* %197, null
  br i1 %198, label %199, label %209

199:                                              ; preds = %194
  %200 = call i8* @emalloc(i32 4)
  %201 = bitcast i8* %200 to i32*
  %202 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %202, i32 0, i32 9
  store i32* %201, i32** %203, align 8
  %204 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %204, i32 0, i32 9
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* @delete_type, align 4
  %208 = call i32 @zend_hash_init(i32* %206, i32 0, i32* null, i32 %207, i32 0)
  br label %209

209:                                              ; preds = %199, %194
  %210 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %210, i32 0, i32 9
  %212 = load i32*, i32** %211, align 8
  store i32* %212, i32** %18, align 8
  %213 = load %struct.TYPE_46__*, %struct.TYPE_46__** %19, align 8
  %214 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @smart_str_appends(%struct.TYPE_45__* %20, i8* %215)
  br label %217

217:                                              ; preds = %209, %181
  %218 = call i32 @smart_str_0(%struct.TYPE_45__* %20)
  %219 = load i32*, i32** %18, align 8
  %220 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %20, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_46__*, %struct.TYPE_46__** %19, align 8
  %223 = call i32* @zend_hash_add_ptr(i32* %219, i32 %221, %struct.TYPE_46__* %222)
  %224 = icmp eq i32* %223, null
  br i1 %224, label %225, label %239

225:                                              ; preds = %217
  %226 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %227 = icmp eq %struct.TYPE_46__* %226, null
  br i1 %227, label %228, label %234

228:                                              ; preds = %225
  %229 = load i32, i32* @E_ERROR, align 4
  %230 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %20, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @ZSTR_VAL(i32 %231)
  %233 = call i32 @soap_error1(i32 %229, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %232)
  br label %238

234:                                              ; preds = %225
  %235 = load i32*, i32** %18, align 8
  %236 = load %struct.TYPE_46__*, %struct.TYPE_46__** %19, align 8
  %237 = call i32 @zend_hash_next_index_insert_ptr(i32* %235, %struct.TYPE_46__* %236)
  br label %238

238:                                              ; preds = %234, %228
  br label %239

239:                                              ; preds = %238, %217
  %240 = call i32 @smart_str_free(%struct.TYPE_45__* %20)
  %241 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %242 = icmp ne %struct.TYPE_46__* %241, null
  br i1 %242, label %243, label %262

243:                                              ; preds = %239
  %244 = call i8* @emalloc(i32 4)
  %245 = bitcast i8* %244 to %struct.TYPE_46__*
  store %struct.TYPE_46__* %245, %struct.TYPE_46__** %26, align 8
  %246 = load i32, i32* @XSD_CONTENT_ELEMENT, align 4
  %247 = load %struct.TYPE_46__*, %struct.TYPE_46__** %26, align 8
  %248 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %247, i32 0, i32 8
  store i32 %246, i32* %248, align 8
  %249 = load %struct.TYPE_46__*, %struct.TYPE_46__** %19, align 8
  %250 = load %struct.TYPE_46__*, %struct.TYPE_46__** %26, align 8
  %251 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %250, i32 0, i32 7
  %252 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %251, i32 0, i32 1
  store %struct.TYPE_46__* %249, %struct.TYPE_46__** %252, align 8
  %253 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %254 = load %struct.TYPE_46__*, %struct.TYPE_46__** %26, align 8
  %255 = call i32 @schema_min_max(%struct.TYPE_43__* %253, %struct.TYPE_46__* %254)
  %256 = load %struct.TYPE_46__*, %struct.TYPE_46__** %10, align 8
  %257 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %256, i32 0, i32 7
  %258 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = load %struct.TYPE_46__*, %struct.TYPE_46__** %26, align 8
  %261 = call i32 @zend_hash_next_index_insert_ptr(i32* %259, %struct.TYPE_46__* %260)
  br label %262

262:                                              ; preds = %243, %239
  %263 = load %struct.TYPE_46__*, %struct.TYPE_46__** %19, align 8
  store %struct.TYPE_46__* %263, %struct.TYPE_46__** %9, align 8
  br label %267

264:                                              ; preds = %49
  %265 = load i32, i32* @E_ERROR, align 4
  %266 = call i32 @soap_error0(i32 %265, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  br label %267

267:                                              ; preds = %264, %262
  %268 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %268, i32 0, i32 5
  %270 = load %struct.TYPE_44__*, %struct.TYPE_44__** %269, align 8
  store %struct.TYPE_44__* %270, %struct.TYPE_44__** %12, align 8
  %271 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %272 = call %struct.TYPE_44__* @get_attribute(%struct.TYPE_44__* %271, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_44__* %272, %struct.TYPE_44__** %13, align 8
  %273 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %274 = icmp ne %struct.TYPE_44__* %273, null
  br i1 %274, label %275, label %309

275:                                              ; preds = %267
  %276 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %277 = icmp ne %struct.TYPE_44__* %276, null
  br i1 %277, label %278, label %281

278:                                              ; preds = %275
  %279 = load i32, i32* @E_ERROR, align 4
  %280 = call i32 @soap_error0(i32 %279, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0))
  br label %281

281:                                              ; preds = %278, %275
  %282 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %283 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %282, i32 0, i32 0
  %284 = load %struct.TYPE_41__*, %struct.TYPE_41__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = inttoptr i64 %286 to i8*
  %288 = call i32 @stricmp(i8* %287, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %299

290:                                              ; preds = %281
  %291 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %292 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_41__*, %struct.TYPE_41__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = inttoptr i64 %295 to i8*
  %297 = call i32 @stricmp(i8* %296, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %303, label %299

299:                                              ; preds = %290, %281
  %300 = load i32, i32* @TRUE, align 4
  %301 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %302 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %301, i32 0, i32 2
  store i32 %300, i32* %302, align 8
  br label %308

303:                                              ; preds = %290
  %304 = load i8*, i8** @FALSE, align 8
  %305 = ptrtoint i8* %304 to i32
  %306 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %307 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %306, i32 0, i32 2
  store i32 %305, i32* %307, align 8
  br label %308

308:                                              ; preds = %303, %299
  br label %314

309:                                              ; preds = %267
  %310 = load i8*, i8** @FALSE, align 8
  %311 = ptrtoint i8* %310 to i32
  %312 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %313 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %312, i32 0, i32 2
  store i32 %311, i32* %313, align 8
  br label %314

314:                                              ; preds = %309, %308
  %315 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %316 = call %struct.TYPE_44__* @get_attribute(%struct.TYPE_44__* %315, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  store %struct.TYPE_44__* %316, %struct.TYPE_44__** %13, align 8
  %317 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %318 = icmp ne %struct.TYPE_44__* %317, null
  br i1 %318, label %319, label %335

319:                                              ; preds = %314
  %320 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %321 = icmp ne %struct.TYPE_44__* %320, null
  br i1 %321, label %322, label %325

322:                                              ; preds = %319
  %323 = load i32, i32* @E_ERROR, align 4
  %324 = call i32 @soap_error0(i32 %323, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0))
  br label %325

325:                                              ; preds = %322, %319
  %326 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %327 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %326, i32 0, i32 0
  %328 = load %struct.TYPE_41__*, %struct.TYPE_41__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = inttoptr i64 %330 to i8*
  %332 = call i8* @estrdup(i8* %331)
  %333 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %334 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %333, i32 0, i32 6
  store i8* %332, i8** %334, align 8
  br label %335

335:                                              ; preds = %325, %314
  %336 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %337 = call %struct.TYPE_44__* @get_attribute(%struct.TYPE_44__* %336, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  store %struct.TYPE_44__* %337, %struct.TYPE_44__** %13, align 8
  %338 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %339 = icmp ne %struct.TYPE_44__* %338, null
  br i1 %339, label %340, label %363

340:                                              ; preds = %335
  %341 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %342 = icmp ne %struct.TYPE_44__* %341, null
  br i1 %342, label %343, label %346

343:                                              ; preds = %340
  %344 = load i32, i32* @E_ERROR, align 4
  %345 = call i32 @soap_error0(i32 %344, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0))
  br label %353

346:                                              ; preds = %340
  %347 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %348 = icmp ne %struct.TYPE_44__* %347, null
  br i1 %348, label %349, label %352

349:                                              ; preds = %346
  %350 = load i32, i32* @E_ERROR, align 4
  %351 = call i32 @soap_error0(i32 %350, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.12, i64 0, i64 0))
  br label %352

352:                                              ; preds = %349, %346
  br label %353

353:                                              ; preds = %352, %343
  %354 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %355 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %354, i32 0, i32 0
  %356 = load %struct.TYPE_41__*, %struct.TYPE_41__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = inttoptr i64 %358 to i8*
  %360 = call i8* @estrdup(i8* %359)
  %361 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %362 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %361, i32 0, i32 5
  store i8* %360, i8** %362, align 8
  br label %363

363:                                              ; preds = %353, %335
  %364 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %365 = call %struct.TYPE_44__* @get_attribute(%struct.TYPE_44__* %364, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  store %struct.TYPE_44__* %365, %struct.TYPE_44__** %13, align 8
  %366 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %367 = icmp ne %struct.TYPE_44__* %366, null
  br i1 %367, label %368, label %402

368:                                              ; preds = %363
  %369 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %370 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %369, i32 0, i32 0
  %371 = load %struct.TYPE_41__*, %struct.TYPE_41__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = inttoptr i64 %373 to i8*
  %375 = call i64 @strncmp(i8* %374, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 10)
  %376 = icmp eq i64 %375, 0
  br i1 %376, label %377, label %382

377:                                              ; preds = %368
  %378 = load i8*, i8** @XSD_FORM_QUALIFIED, align 8
  %379 = ptrtoint i8* %378 to i64
  %380 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %381 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %380, i32 0, i32 3
  store i64 %379, i64* %381, align 8
  br label %401

382:                                              ; preds = %368
  %383 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %384 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %383, i32 0, i32 0
  %385 = load %struct.TYPE_41__*, %struct.TYPE_41__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = inttoptr i64 %387 to i8*
  %389 = call i64 @strncmp(i8* %388, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 12)
  %390 = icmp eq i64 %389, 0
  br i1 %390, label %391, label %396

391:                                              ; preds = %382
  %392 = load i8*, i8** @XSD_FORM_UNQUALIFIED, align 8
  %393 = ptrtoint i8* %392 to i64
  %394 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %395 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %394, i32 0, i32 3
  store i64 %393, i64* %395, align 8
  br label %400

396:                                              ; preds = %382
  %397 = load i64, i64* @XSD_FORM_DEFAULT, align 8
  %398 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %399 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %398, i32 0, i32 3
  store i64 %397, i64* %399, align 8
  br label %400

400:                                              ; preds = %396, %391
  br label %401

401:                                              ; preds = %400, %377
  br label %406

402:                                              ; preds = %363
  %403 = load i64, i64* @XSD_FORM_DEFAULT, align 8
  %404 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %405 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %404, i32 0, i32 3
  store i64 %403, i64* %405, align 8
  br label %406

406:                                              ; preds = %402, %401
  %407 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %408 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %407, i32 0, i32 3
  %409 = load i64, i64* %408, align 8
  %410 = load i64, i64* @XSD_FORM_DEFAULT, align 8
  %411 = icmp eq i64 %409, %410
  br i1 %411, label %412, label %464

412:                                              ; preds = %406
  %413 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %414 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %413, i32 0, i32 4
  %415 = load %struct.TYPE_43__*, %struct.TYPE_43__** %414, align 8
  store %struct.TYPE_43__* %415, %struct.TYPE_43__** %27, align 8
  br label %416

416:                                              ; preds = %451, %412
  %417 = load %struct.TYPE_43__*, %struct.TYPE_43__** %27, align 8
  %418 = icmp ne %struct.TYPE_43__* %417, null
  br i1 %418, label %419, label %455

419:                                              ; preds = %416
  %420 = load %struct.TYPE_43__*, %struct.TYPE_43__** %27, align 8
  %421 = load i32, i32* @SCHEMA_NAMESPACE, align 4
  %422 = call i64 @node_is_equal_ex(%struct.TYPE_43__* %420, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 %421)
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %451

424:                                              ; preds = %419
  %425 = load %struct.TYPE_43__*, %struct.TYPE_43__** %27, align 8
  %426 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %425, i32 0, i32 5
  %427 = load %struct.TYPE_44__*, %struct.TYPE_44__** %426, align 8
  %428 = call %struct.TYPE_44__* @get_attribute(%struct.TYPE_44__* %427, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  store %struct.TYPE_44__* %428, %struct.TYPE_44__** %28, align 8
  %429 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %430 = icmp eq %struct.TYPE_44__* %429, null
  br i1 %430, label %440, label %431

431:                                              ; preds = %424
  %432 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %433 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %432, i32 0, i32 0
  %434 = load %struct.TYPE_41__*, %struct.TYPE_41__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %434, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = inttoptr i64 %436 to i8*
  %438 = call i64 @strncmp(i8* %437, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 10)
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %445

440:                                              ; preds = %431, %424
  %441 = load i8*, i8** @XSD_FORM_UNQUALIFIED, align 8
  %442 = ptrtoint i8* %441 to i64
  %443 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %444 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %443, i32 0, i32 3
  store i64 %442, i64* %444, align 8
  br label %450

445:                                              ; preds = %431
  %446 = load i8*, i8** @XSD_FORM_QUALIFIED, align 8
  %447 = ptrtoint i8* %446 to i64
  %448 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %449 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %448, i32 0, i32 3
  store i64 %447, i64* %449, align 8
  br label %450

450:                                              ; preds = %445, %440
  br label %455

451:                                              ; preds = %419
  %452 = load %struct.TYPE_43__*, %struct.TYPE_43__** %27, align 8
  %453 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %452, i32 0, i32 4
  %454 = load %struct.TYPE_43__*, %struct.TYPE_43__** %453, align 8
  store %struct.TYPE_43__* %454, %struct.TYPE_43__** %27, align 8
  br label %416

455:                                              ; preds = %450, %416
  %456 = load %struct.TYPE_43__*, %struct.TYPE_43__** %27, align 8
  %457 = icmp eq %struct.TYPE_43__* %456, null
  br i1 %457, label %458, label %463

458:                                              ; preds = %455
  %459 = load i8*, i8** @XSD_FORM_UNQUALIFIED, align 8
  %460 = ptrtoint i8* %459 to i64
  %461 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %462 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %461, i32 0, i32 3
  store i64 %460, i64* %462, align 8
  br label %463

463:                                              ; preds = %458, %455
  br label %464

464:                                              ; preds = %463, %406
  %465 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %466 = call %struct.TYPE_44__* @get_attribute(%struct.TYPE_44__* %465, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  store %struct.TYPE_44__* %466, %struct.TYPE_44__** %16, align 8
  %467 = load %struct.TYPE_44__*, %struct.TYPE_44__** %16, align 8
  %468 = icmp ne %struct.TYPE_44__* %467, null
  br i1 %468, label %469, label %515

469:                                              ; preds = %464
  %470 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %471 = icmp ne %struct.TYPE_44__* %470, null
  br i1 %471, label %472, label %475

472:                                              ; preds = %469
  %473 = load i32, i32* @E_ERROR, align 4
  %474 = call i32 @soap_error0(i32 %473, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.19, i64 0, i64 0))
  br label %475

475:                                              ; preds = %472, %469
  %476 = load %struct.TYPE_44__*, %struct.TYPE_44__** %16, align 8
  %477 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %476, i32 0, i32 0
  %478 = load %struct.TYPE_41__*, %struct.TYPE_41__** %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %478, i32 0, i32 0
  %480 = load i64, i64* %479, align 8
  %481 = call i32 @parse_namespace(i64 %480, i8** %29, i8** %30)
  %482 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %483 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %482, i32 0, i32 3
  %484 = load i32, i32* %483, align 8
  %485 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %486 = load i8*, i8** %30, align 8
  %487 = call i32 @BAD_CAST(i8* %486)
  %488 = call %struct.TYPE_42__* @xmlSearchNs(i32 %484, %struct.TYPE_43__* %485, i32 %487)
  store %struct.TYPE_42__* %488, %struct.TYPE_42__** %31, align 8
  %489 = load %struct.TYPE_42__*, %struct.TYPE_42__** %31, align 8
  %490 = icmp ne %struct.TYPE_42__* %489, null
  br i1 %490, label %491, label %502

491:                                              ; preds = %475
  %492 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %493 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %494 = load %struct.TYPE_42__*, %struct.TYPE_42__** %31, align 8
  %495 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %494, i32 0, i32 0
  %496 = load i64, i64* %495, align 8
  %497 = load i8*, i8** %29, align 8
  %498 = call i32 @BAD_CAST(i8* %497)
  %499 = call i32 @get_create_encoder(%struct.TYPE_47__* %492, %struct.TYPE_46__* %493, i64 %496, i32 %498)
  %500 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %501 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %500, i32 0, i32 4
  store i32 %499, i32* %501, align 8
  br label %502

502:                                              ; preds = %491, %475
  %503 = load i8*, i8** %30, align 8
  %504 = icmp ne i8* %503, null
  br i1 %504, label %505, label %508

505:                                              ; preds = %502
  %506 = load i8*, i8** %30, align 8
  %507 = call i32 @efree(i8* %506)
  br label %508

508:                                              ; preds = %505, %502
  %509 = load i8*, i8** %29, align 8
  %510 = icmp ne i8* %509, null
  br i1 %510, label %511, label %514

511:                                              ; preds = %508
  %512 = load i8*, i8** %29, align 8
  %513 = call i32 @efree(i8* %512)
  br label %514

514:                                              ; preds = %511, %508
  br label %515

515:                                              ; preds = %514, %464
  %516 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %517 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %516, i32 0, i32 2
  %518 = load %struct.TYPE_43__*, %struct.TYPE_43__** %517, align 8
  store %struct.TYPE_43__* %518, %struct.TYPE_43__** %11, align 8
  %519 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %520 = icmp ne %struct.TYPE_43__* %519, null
  br i1 %520, label %521, label %529

521:                                              ; preds = %515
  %522 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %523 = call i64 @node_is_equal(%struct.TYPE_43__* %522, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %529

525:                                              ; preds = %521
  %526 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %527 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %526, i32 0, i32 0
  %528 = load %struct.TYPE_43__*, %struct.TYPE_43__** %527, align 8
  store %struct.TYPE_43__* %528, %struct.TYPE_43__** %11, align 8
  br label %529

529:                                              ; preds = %525, %521, %515
  %530 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %531 = icmp ne %struct.TYPE_43__* %530, null
  br i1 %531, label %532, label %586

532:                                              ; preds = %529
  %533 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %534 = call i64 @node_is_equal(%struct.TYPE_43__* %533, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %536, label %558

536:                                              ; preds = %532
  %537 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %538 = icmp ne %struct.TYPE_44__* %537, null
  br i1 %538, label %539, label %542

539:                                              ; preds = %536
  %540 = load i32, i32* @E_ERROR, align 4
  %541 = call i32 @soap_error0(i32 %540, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.22, i64 0, i64 0))
  br label %549

542:                                              ; preds = %536
  %543 = load %struct.TYPE_44__*, %struct.TYPE_44__** %16, align 8
  %544 = icmp ne %struct.TYPE_44__* %543, null
  br i1 %544, label %545, label %548

545:                                              ; preds = %542
  %546 = load i32, i32* @E_ERROR, align 4
  %547 = call i32 @soap_error0(i32 %546, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.23, i64 0, i64 0))
  br label %548

548:                                              ; preds = %545, %542
  br label %549

549:                                              ; preds = %548, %539
  %550 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %551 = load %struct.TYPE_44__*, %struct.TYPE_44__** %7, align 8
  %552 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %553 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %554 = call i32 @schema_simpleType(%struct.TYPE_47__* %550, %struct.TYPE_44__* %551, %struct.TYPE_43__* %552, %struct.TYPE_46__* %553)
  %555 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %556 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %555, i32 0, i32 0
  %557 = load %struct.TYPE_43__*, %struct.TYPE_43__** %556, align 8
  store %struct.TYPE_43__* %557, %struct.TYPE_43__** %11, align 8
  br label %585

558:                                              ; preds = %532
  %559 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %560 = call i64 @node_is_equal(%struct.TYPE_43__* %559, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0))
  %561 = icmp ne i64 %560, 0
  br i1 %561, label %562, label %584

562:                                              ; preds = %558
  %563 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %564 = icmp ne %struct.TYPE_44__* %563, null
  br i1 %564, label %565, label %568

565:                                              ; preds = %562
  %566 = load i32, i32* @E_ERROR, align 4
  %567 = call i32 @soap_error0(i32 %566, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.22, i64 0, i64 0))
  br label %575

568:                                              ; preds = %562
  %569 = load %struct.TYPE_44__*, %struct.TYPE_44__** %16, align 8
  %570 = icmp ne %struct.TYPE_44__* %569, null
  br i1 %570, label %571, label %574

571:                                              ; preds = %568
  %572 = load i32, i32* @E_ERROR, align 4
  %573 = call i32 @soap_error0(i32 %572, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.23, i64 0, i64 0))
  br label %574

574:                                              ; preds = %571, %568
  br label %575

575:                                              ; preds = %574, %565
  %576 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %577 = load %struct.TYPE_44__*, %struct.TYPE_44__** %7, align 8
  %578 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %579 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %580 = call i32 @schema_complexType(%struct.TYPE_47__* %576, %struct.TYPE_44__* %577, %struct.TYPE_43__* %578, %struct.TYPE_46__* %579)
  %581 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %582 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %581, i32 0, i32 0
  %583 = load %struct.TYPE_43__*, %struct.TYPE_43__** %582, align 8
  store %struct.TYPE_43__* %583, %struct.TYPE_43__** %11, align 8
  br label %584

584:                                              ; preds = %575, %558
  br label %585

585:                                              ; preds = %584, %549
  br label %586

586:                                              ; preds = %585, %529
  br label %587

587:                                              ; preds = %613, %586
  %588 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %589 = icmp ne %struct.TYPE_43__* %588, null
  br i1 %589, label %590, label %617

590:                                              ; preds = %587
  %591 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %592 = call i64 @node_is_equal(%struct.TYPE_43__* %591, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0))
  %593 = icmp ne i64 %592, 0
  br i1 %593, label %594, label %595

594:                                              ; preds = %590
  br label %613

595:                                              ; preds = %590
  %596 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %597 = call i64 @node_is_equal(%struct.TYPE_43__* %596, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  %598 = icmp ne i64 %597, 0
  br i1 %598, label %599, label %600

599:                                              ; preds = %595
  br label %612

600:                                              ; preds = %595
  %601 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %602 = call i64 @node_is_equal(%struct.TYPE_43__* %601, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  %603 = icmp ne i64 %602, 0
  br i1 %603, label %604, label %605

604:                                              ; preds = %600
  br label %611

605:                                              ; preds = %600
  %606 = load i32, i32* @E_ERROR, align 4
  %607 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %608 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %607, i32 0, i32 1
  %609 = load i32, i32* %608, align 8
  %610 = call i32 @soap_error1(i32 %606, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.28, i64 0, i64 0), i32 %609)
  br label %611

611:                                              ; preds = %605, %604
  br label %612

612:                                              ; preds = %611, %599
  br label %613

613:                                              ; preds = %612, %594
  %614 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %615 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %614, i32 0, i32 0
  %616 = load %struct.TYPE_43__*, %struct.TYPE_43__** %615, align 8
  store %struct.TYPE_43__* %616, %struct.TYPE_43__** %11, align 8
  br label %587

617:                                              ; preds = %587
  %618 = load i32, i32* @TRUE, align 4
  ret i32 %618
}

declare dso_local %struct.TYPE_44__* @get_attribute(%struct.TYPE_44__*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_46__*, i32, i32) #1

declare dso_local i32 @parse_namespace(i64, i8**, i8**) #1

declare dso_local %struct.TYPE_42__* @xmlSearchNs(i32, %struct.TYPE_43__*, i32) #1

declare dso_local i32 @BAD_CAST(i8*) #1

declare dso_local i32 @smart_str_appends(%struct.TYPE_45__*, i8*) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i32 @smart_str_appendc(%struct.TYPE_45__*, i8 signext) #1

declare dso_local i32 @smart_str_0(%struct.TYPE_45__*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @estrndup(i32, i32) #1

declare dso_local i32 @ZSTR_VAL(i32) #1

declare dso_local i32 @ZSTR_LEN(i32) #1

declare dso_local i32 @smart_str_free(%struct.TYPE_45__*) #1

declare dso_local i32 @zend_hash_init(i32*, i32, i32*, i32, i32) #1

declare dso_local i32* @zend_hash_add_ptr(i32*, i32, %struct.TYPE_46__*) #1

declare dso_local i32 @soap_error1(i32, i8*, i32) #1

declare dso_local i32 @zend_hash_next_index_insert_ptr(i32*, %struct.TYPE_46__*) #1

declare dso_local i32 @schema_min_max(%struct.TYPE_43__*, %struct.TYPE_46__*) #1

declare dso_local i32 @soap_error0(i32, i8*) #1

declare dso_local i32 @stricmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @node_is_equal_ex(%struct.TYPE_43__*, i8*, i32) #1

declare dso_local i32 @get_create_encoder(%struct.TYPE_47__*, %struct.TYPE_46__*, i64, i32) #1

declare dso_local i64 @node_is_equal(%struct.TYPE_43__*, i8*) #1

declare dso_local i32 @schema_simpleType(%struct.TYPE_47__*, %struct.TYPE_44__*, %struct.TYPE_43__*, %struct.TYPE_46__*) #1

declare dso_local i32 @schema_complexType(%struct.TYPE_47__*, %struct.TYPE_44__*, %struct.TYPE_43__*, %struct.TYPE_46__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
