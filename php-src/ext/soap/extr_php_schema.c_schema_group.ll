; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_group.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_50__ = type { i32* }
%struct.TYPE_47__ = type { %struct.TYPE_43__* }
%struct.TYPE_43__ = type { i64 }
%struct.TYPE_46__ = type { i32, %struct.TYPE_46__*, %struct.TYPE_46__*, i32, i32 }
%struct.TYPE_49__ = type { %struct.TYPE_51__* }
%struct.TYPE_51__ = type { i8*, %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32*, i32 }
%struct.TYPE_48__ = type { i32, i32 }
%struct.TYPE_45__ = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"targetNamespace\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@XSD_CONTENT_GROUP_REF = common dso_local global i8* null, align 8
@XSD_CONTENT_SEQUENCE = common dso_local global i8* null, align 8
@delete_model = common dso_local global i32 0, align 4
@delete_type = common dso_local global i32 0, align 4
@E_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Parsing Schema: group '%s' already defined\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Parsing Schema: group has no 'name' nor 'ref' attributes\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"annotation\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"choice\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"Parsing Schema: group has both 'ref' attribute and subcontent\00", align 1
@XSD_CONTENT_CHOICE = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@XSD_CONTENT_ALL = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [41 x i8] c"Parsing Schema: unexpected <%s> in group\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_50__*, %struct.TYPE_47__*, %struct.TYPE_46__*, %struct.TYPE_49__*, %struct.TYPE_51__*)* @schema_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schema_group(%struct.TYPE_50__* %0, %struct.TYPE_47__* %1, %struct.TYPE_46__* %2, %struct.TYPE_49__* %3, %struct.TYPE_51__* %4) #0 {
  %6 = alloca %struct.TYPE_50__*, align 8
  %7 = alloca %struct.TYPE_47__*, align 8
  %8 = alloca %struct.TYPE_46__*, align 8
  %9 = alloca %struct.TYPE_49__*, align 8
  %10 = alloca %struct.TYPE_51__*, align 8
  %11 = alloca %struct.TYPE_46__*, align 8
  %12 = alloca %struct.TYPE_47__*, align 8
  %13 = alloca %struct.TYPE_47__*, align 8
  %14 = alloca %struct.TYPE_47__*, align 8
  %15 = alloca %struct.TYPE_51__*, align 8
  %16 = alloca %struct.TYPE_48__, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_45__*, align 8
  %20 = alloca %struct.TYPE_47__*, align 8
  %21 = alloca %struct.TYPE_49__*, align 8
  store %struct.TYPE_50__* %0, %struct.TYPE_50__** %6, align 8
  store %struct.TYPE_47__* %1, %struct.TYPE_47__** %7, align 8
  store %struct.TYPE_46__* %2, %struct.TYPE_46__** %8, align 8
  store %struct.TYPE_49__* %3, %struct.TYPE_49__** %9, align 8
  store %struct.TYPE_51__* %4, %struct.TYPE_51__** %10, align 8
  store %struct.TYPE_47__* null, %struct.TYPE_47__** %14, align 8
  store %struct.TYPE_51__* null, %struct.TYPE_51__** %15, align 8
  %22 = load %struct.TYPE_46__*, %struct.TYPE_46__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.TYPE_47__* @get_attribute(i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_47__* %25, %struct.TYPE_47__** %12, align 8
  %26 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %27 = icmp eq %struct.TYPE_47__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  store %struct.TYPE_47__* %29, %struct.TYPE_47__** %12, align 8
  br label %30

30:                                               ; preds = %28, %5
  %31 = load %struct.TYPE_46__*, %struct.TYPE_46__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.TYPE_47__* @get_attribute(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_47__* %34, %struct.TYPE_47__** %13, align 8
  %35 = load %struct.TYPE_47__*, %struct.TYPE_47__** %13, align 8
  %36 = icmp eq %struct.TYPE_47__* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.TYPE_46__*, %struct.TYPE_46__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.TYPE_47__* @get_attribute(i32 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_47__* %41, %struct.TYPE_47__** %14, align 8
  store %struct.TYPE_47__* %41, %struct.TYPE_47__** %13, align 8
  br label %42

42:                                               ; preds = %37, %30
  %43 = load %struct.TYPE_47__*, %struct.TYPE_47__** %13, align 8
  %44 = icmp ne %struct.TYPE_47__* %43, null
  br i1 %44, label %45, label %212

45:                                               ; preds = %42
  %46 = bitcast %struct.TYPE_48__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %46, i8 0, i64 8, i1 false)
  %47 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %48 = icmp ne %struct.TYPE_47__* %47, null
  br i1 %48, label %49, label %124

49:                                               ; preds = %45
  %50 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_43__*, %struct.TYPE_43__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @parse_namespace(i64 %54, i8** %17, i8** %18)
  %56 = load %struct.TYPE_46__*, %struct.TYPE_46__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_46__*, %struct.TYPE_46__** %8, align 8
  %60 = load i8*, i8** %18, align 8
  %61 = call i32 @BAD_CAST(i8* %60)
  %62 = call %struct.TYPE_45__* @xmlSearchNs(i32 %58, %struct.TYPE_46__* %59, i32 %61)
  store %struct.TYPE_45__* %62, %struct.TYPE_45__** %19, align 8
  %63 = load %struct.TYPE_45__*, %struct.TYPE_45__** %19, align 8
  %64 = icmp ne %struct.TYPE_45__* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %49
  %66 = load %struct.TYPE_45__*, %struct.TYPE_45__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 @smart_str_appends(%struct.TYPE_48__* %16, i8* %69)
  br label %92

71:                                               ; preds = %49
  %72 = load %struct.TYPE_46__*, %struct.TYPE_46__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call %struct.TYPE_47__* @get_attribute(i32 %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_47__* %75, %struct.TYPE_47__** %20, align 8
  %76 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %77 = icmp eq %struct.TYPE_47__* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  store %struct.TYPE_47__* %79, %struct.TYPE_47__** %20, align 8
  br label %80

80:                                               ; preds = %78, %71
  %81 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %82 = icmp ne %struct.TYPE_47__* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load %struct.TYPE_47__*, %struct.TYPE_47__** %20, align 8
  %85 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_43__*, %struct.TYPE_43__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = call i32 @smart_str_appends(%struct.TYPE_48__* %16, i8* %89)
  br label %91

91:                                               ; preds = %83, %80
  br label %92

92:                                               ; preds = %91, %65
  %93 = call i32 @smart_str_appendc(%struct.TYPE_48__* %16, i8 signext 58)
  %94 = load i8*, i8** %17, align 8
  %95 = call i32 @smart_str_appends(%struct.TYPE_48__* %16, i8* %94)
  %96 = call i32 @smart_str_0(%struct.TYPE_48__* %16)
  %97 = call i8* @emalloc(i32 4)
  %98 = bitcast i8* %97 to %struct.TYPE_51__*
  store %struct.TYPE_51__* %98, %struct.TYPE_51__** %15, align 8
  %99 = load i8*, i8** @XSD_CONTENT_GROUP_REF, align 8
  %100 = load %struct.TYPE_51__*, %struct.TYPE_51__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %16, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ZSTR_VAL(i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %16, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ZSTR_LEN(i32 %106)
  %108 = call i32 @estrndup(i32 %104, i32 %107)
  %109 = load %struct.TYPE_51__*, %struct.TYPE_51__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 8
  %112 = load i8*, i8** %17, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %92
  %115 = load i8*, i8** %17, align 8
  %116 = call i32 @efree(i8* %115)
  br label %117

117:                                              ; preds = %114, %92
  %118 = load i8*, i8** %18, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i8*, i8** %18, align 8
  %122 = call i32 @efree(i8* %121)
  br label %123

123:                                              ; preds = %120, %117
  br label %157

124:                                              ; preds = %45
  %125 = call i8* @emalloc(i32 4)
  %126 = bitcast i8* %125 to %struct.TYPE_51__*
  store %struct.TYPE_51__* %126, %struct.TYPE_51__** %15, align 8
  %127 = load i8*, i8** @XSD_CONTENT_SEQUENCE, align 8
  %128 = load %struct.TYPE_51__*, %struct.TYPE_51__** %15, align 8
  %129 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %128, i32 0, i32 0
  store i8* %127, i8** %129, align 8
  %130 = call i8* @emalloc(i32 4)
  %131 = bitcast i8* %130 to i32*
  %132 = load %struct.TYPE_51__*, %struct.TYPE_51__** %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %133, i32 0, i32 0
  store i32* %131, i32** %134, align 8
  %135 = load %struct.TYPE_51__*, %struct.TYPE_51__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* @delete_model, align 4
  %140 = call i32 @zend_hash_init(i32* %138, i32 0, i32* null, i32 %139, i32 0)
  %141 = load %struct.TYPE_47__*, %struct.TYPE_47__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_43__*, %struct.TYPE_43__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to i8*
  %147 = call i32 @smart_str_appends(%struct.TYPE_48__* %16, i8* %146)
  %148 = call i32 @smart_str_appendc(%struct.TYPE_48__* %16, i8 signext 58)
  %149 = load %struct.TYPE_47__*, %struct.TYPE_47__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_43__*, %struct.TYPE_43__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to i8*
  %155 = call i32 @smart_str_appends(%struct.TYPE_48__* %16, i8* %154)
  %156 = call i32 @smart_str_0(%struct.TYPE_48__* %16)
  br label %157

157:                                              ; preds = %124, %123
  %158 = load %struct.TYPE_49__*, %struct.TYPE_49__** %9, align 8
  %159 = icmp eq %struct.TYPE_49__* %158, null
  br i1 %159, label %160, label %196

160:                                              ; preds = %157
  %161 = call i8* @emalloc(i32 4)
  %162 = bitcast i8* %161 to %struct.TYPE_49__*
  store %struct.TYPE_49__* %162, %struct.TYPE_49__** %21, align 8
  %163 = load %struct.TYPE_49__*, %struct.TYPE_49__** %21, align 8
  %164 = call i32 @memset(%struct.TYPE_49__* %163, i32 0, i32 4)
  %165 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = icmp eq i32* %167, null
  br i1 %168, label %169, label %179

169:                                              ; preds = %160
  %170 = call i8* @emalloc(i32 4)
  %171 = bitcast i8* %170 to i32*
  %172 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %172, i32 0, i32 0
  store i32* %171, i32** %173, align 8
  %174 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* @delete_type, align 4
  %178 = call i32 @zend_hash_init(i32* %176, i32 0, i32* null, i32 %177, i32 0)
  br label %179

179:                                              ; preds = %169, %160
  %180 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %16, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_49__*, %struct.TYPE_49__** %21, align 8
  %186 = call i32* @zend_hash_add_ptr(i32* %182, i32 %184, %struct.TYPE_49__* %185)
  %187 = icmp eq i32* %186, null
  br i1 %187, label %188, label %194

188:                                              ; preds = %179
  %189 = load i32, i32* @E_ERROR, align 4
  %190 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %16, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @ZSTR_VAL(i32 %191)
  %193 = call i32 @soap_error1(i32 %189, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %192)
  br label %194

194:                                              ; preds = %188, %179
  %195 = load %struct.TYPE_49__*, %struct.TYPE_49__** %21, align 8
  store %struct.TYPE_49__* %195, %struct.TYPE_49__** %9, align 8
  br label %196

196:                                              ; preds = %194, %157
  %197 = call i32 @smart_str_free(%struct.TYPE_48__* %16)
  %198 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %199 = icmp eq %struct.TYPE_51__* %198, null
  br i1 %199, label %200, label %204

200:                                              ; preds = %196
  %201 = load %struct.TYPE_51__*, %struct.TYPE_51__** %15, align 8
  %202 = load %struct.TYPE_49__*, %struct.TYPE_49__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %202, i32 0, i32 0
  store %struct.TYPE_51__* %201, %struct.TYPE_51__** %203, align 8
  br label %211

204:                                              ; preds = %196
  %205 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.TYPE_51__*, %struct.TYPE_51__** %15, align 8
  %210 = call i32 @zend_hash_next_index_insert_ptr(i32* %208, %struct.TYPE_51__* %209)
  br label %211

211:                                              ; preds = %204, %200
  br label %215

212:                                              ; preds = %42
  %213 = load i32, i32* @E_ERROR, align 4
  %214 = call i32 @soap_error0(i32 %213, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  br label %215

215:                                              ; preds = %212, %211
  %216 = load %struct.TYPE_46__*, %struct.TYPE_46__** %8, align 8
  %217 = load %struct.TYPE_51__*, %struct.TYPE_51__** %15, align 8
  %218 = call i32 @schema_min_max(%struct.TYPE_46__* %216, %struct.TYPE_51__* %217)
  %219 = load %struct.TYPE_46__*, %struct.TYPE_46__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %219, i32 0, i32 2
  %221 = load %struct.TYPE_46__*, %struct.TYPE_46__** %220, align 8
  store %struct.TYPE_46__* %221, %struct.TYPE_46__** %11, align 8
  %222 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %223 = icmp ne %struct.TYPE_46__* %222, null
  br i1 %223, label %224, label %232

224:                                              ; preds = %215
  %225 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %226 = call i64 @node_is_equal(%struct.TYPE_46__* %225, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %224
  %229 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_46__*, %struct.TYPE_46__** %230, align 8
  store %struct.TYPE_46__* %231, %struct.TYPE_46__** %11, align 8
  br label %232

232:                                              ; preds = %228, %224, %215
  %233 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %234 = icmp ne %struct.TYPE_46__* %233, null
  br i1 %234, label %235, label %313

235:                                              ; preds = %232
  %236 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %237 = call i64 @node_is_equal(%struct.TYPE_46__* %236, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %258

239:                                              ; preds = %235
  %240 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %241 = icmp ne %struct.TYPE_47__* %240, null
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load i32, i32* @E_ERROR, align 4
  %244 = call i32 @soap_error0(i32 %243, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0))
  br label %245

245:                                              ; preds = %242, %239
  %246 = load i8*, i8** @XSD_CONTENT_CHOICE, align 8
  %247 = load %struct.TYPE_51__*, %struct.TYPE_51__** %15, align 8
  %248 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %247, i32 0, i32 0
  store i8* %246, i8** %248, align 8
  %249 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %250 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  %251 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %252 = load %struct.TYPE_49__*, %struct.TYPE_49__** %9, align 8
  %253 = load %struct.TYPE_51__*, %struct.TYPE_51__** %15, align 8
  %254 = call i32 @schema_choice(%struct.TYPE_50__* %249, %struct.TYPE_47__* %250, %struct.TYPE_46__* %251, %struct.TYPE_49__* %252, %struct.TYPE_51__* %253)
  %255 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_46__*, %struct.TYPE_46__** %256, align 8
  store %struct.TYPE_46__* %257, %struct.TYPE_46__** %11, align 8
  br label %312

258:                                              ; preds = %235
  %259 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %260 = call i64 @node_is_equal(%struct.TYPE_46__* %259, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %281

262:                                              ; preds = %258
  %263 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %264 = icmp ne %struct.TYPE_47__* %263, null
  br i1 %264, label %265, label %268

265:                                              ; preds = %262
  %266 = load i32, i32* @E_ERROR, align 4
  %267 = call i32 @soap_error0(i32 %266, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0))
  br label %268

268:                                              ; preds = %265, %262
  %269 = load i8*, i8** @XSD_CONTENT_SEQUENCE, align 8
  %270 = load %struct.TYPE_51__*, %struct.TYPE_51__** %15, align 8
  %271 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %270, i32 0, i32 0
  store i8* %269, i8** %271, align 8
  %272 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %273 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  %274 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %275 = load %struct.TYPE_49__*, %struct.TYPE_49__** %9, align 8
  %276 = load %struct.TYPE_51__*, %struct.TYPE_51__** %15, align 8
  %277 = call i32 @schema_sequence(%struct.TYPE_50__* %272, %struct.TYPE_47__* %273, %struct.TYPE_46__* %274, %struct.TYPE_49__* %275, %struct.TYPE_51__* %276)
  %278 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %279 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_46__*, %struct.TYPE_46__** %279, align 8
  store %struct.TYPE_46__* %280, %struct.TYPE_46__** %11, align 8
  br label %311

281:                                              ; preds = %258
  %282 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %283 = call i64 @node_is_equal(%struct.TYPE_46__* %282, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %304

285:                                              ; preds = %281
  %286 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %287 = icmp ne %struct.TYPE_47__* %286, null
  br i1 %287, label %288, label %291

288:                                              ; preds = %285
  %289 = load i32, i32* @E_ERROR, align 4
  %290 = call i32 @soap_error0(i32 %289, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0))
  br label %291

291:                                              ; preds = %288, %285
  %292 = load i8*, i8** @XSD_CONTENT_ALL, align 8
  %293 = load %struct.TYPE_51__*, %struct.TYPE_51__** %15, align 8
  %294 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %293, i32 0, i32 0
  store i8* %292, i8** %294, align 8
  %295 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %296 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  %297 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %298 = load %struct.TYPE_49__*, %struct.TYPE_49__** %9, align 8
  %299 = load %struct.TYPE_51__*, %struct.TYPE_51__** %15, align 8
  %300 = call i32 @schema_all(%struct.TYPE_50__* %295, %struct.TYPE_47__* %296, %struct.TYPE_46__* %297, %struct.TYPE_49__* %298, %struct.TYPE_51__* %299)
  %301 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %302 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %301, i32 0, i32 1
  %303 = load %struct.TYPE_46__*, %struct.TYPE_46__** %302, align 8
  store %struct.TYPE_46__* %303, %struct.TYPE_46__** %11, align 8
  br label %310

304:                                              ; preds = %281
  %305 = load i32, i32* @E_ERROR, align 4
  %306 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %307 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @soap_error1(i32 %305, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %308)
  br label %310

310:                                              ; preds = %304, %291
  br label %311

311:                                              ; preds = %310, %268
  br label %312

312:                                              ; preds = %311, %245
  br label %313

313:                                              ; preds = %312, %232
  %314 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %315 = icmp ne %struct.TYPE_46__* %314, null
  br i1 %315, label %316, label %322

316:                                              ; preds = %313
  %317 = load i32, i32* @E_ERROR, align 4
  %318 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %319 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = call i32 @soap_error1(i32 %317, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %320)
  br label %322

322:                                              ; preds = %316, %313
  %323 = load i32, i32* @TRUE, align 4
  ret i32 %323
}

declare dso_local %struct.TYPE_47__* @get_attribute(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @parse_namespace(i64, i8**, i8**) #1

declare dso_local %struct.TYPE_45__* @xmlSearchNs(i32, %struct.TYPE_46__*, i32) #1

declare dso_local i32 @BAD_CAST(i8*) #1

declare dso_local i32 @smart_str_appends(%struct.TYPE_48__*, i8*) #1

declare dso_local i32 @smart_str_appendc(%struct.TYPE_48__*, i8 signext) #1

declare dso_local i32 @smart_str_0(%struct.TYPE_48__*) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @estrndup(i32, i32) #1

declare dso_local i32 @ZSTR_VAL(i32) #1

declare dso_local i32 @ZSTR_LEN(i32) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @zend_hash_init(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_49__*, i32, i32) #1

declare dso_local i32* @zend_hash_add_ptr(i32*, i32, %struct.TYPE_49__*) #1

declare dso_local i32 @soap_error1(i32, i8*, i32) #1

declare dso_local i32 @smart_str_free(%struct.TYPE_48__*) #1

declare dso_local i32 @zend_hash_next_index_insert_ptr(i32*, %struct.TYPE_51__*) #1

declare dso_local i32 @soap_error0(i32, i8*) #1

declare dso_local i32 @schema_min_max(%struct.TYPE_46__*, %struct.TYPE_51__*) #1

declare dso_local i64 @node_is_equal(%struct.TYPE_46__*, i8*) #1

declare dso_local i32 @schema_choice(%struct.TYPE_50__*, %struct.TYPE_47__*, %struct.TYPE_46__*, %struct.TYPE_49__*, %struct.TYPE_51__*) #1

declare dso_local i32 @schema_sequence(%struct.TYPE_50__*, %struct.TYPE_47__*, %struct.TYPE_46__*, %struct.TYPE_49__*, %struct.TYPE_51__*) #1

declare dso_local i32 @schema_all(%struct.TYPE_50__*, %struct.TYPE_47__*, %struct.TYPE_46__*, %struct.TYPE_49__*, %struct.TYPE_51__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
