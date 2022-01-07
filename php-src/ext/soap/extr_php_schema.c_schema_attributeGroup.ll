; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_attributeGroup.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_attributeGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_29__*, %struct.TYPE_29__*, i32, i32 }
%struct.TYPE_32__ = type { i8*, i8*, i32*, i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_28__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"targetNamespace\00", align 1
@E_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Parsing Schema: attributeGroup '%s' already defined\00", align 1
@delete_attribute = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [66 x i8] c"Parsing Schema: attributeGroup has no 'name' nor 'ref' attributes\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"annotation\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"attribute\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"Parsing Schema: attributeGroup has both 'ref' attribute and subattribute\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"attributeGroup\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"anyAttribute\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Parsing Schema: unexpected <%s> in attributeGroup\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_30__*, %struct.TYPE_29__*, %struct.TYPE_32__*, %struct.TYPE_33__*)* @schema_attributeGroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schema_attributeGroup(i32 %0, %struct.TYPE_30__* %1, %struct.TYPE_29__* %2, %struct.TYPE_32__* %3, %struct.TYPE_33__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca %struct.TYPE_30__*, align 8
  %14 = alloca %struct.TYPE_30__*, align 8
  %15 = alloca %struct.TYPE_32__*, align 8
  %16 = alloca %struct.TYPE_31__, align 4
  %17 = alloca %struct.TYPE_32__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_31__, align 4
  %21 = alloca %struct.TYPE_28__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %7, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %8, align 8
  store %struct.TYPE_32__* %3, %struct.TYPE_32__** %9, align 8
  store %struct.TYPE_33__* %4, %struct.TYPE_33__** %10, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %13, align 8
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_30__* @get_attribute(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_30__* %25, %struct.TYPE_30__** %12, align 8
  %26 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %27 = icmp eq %struct.TYPE_30__* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %5
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.TYPE_30__* @get_attribute(i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_30__* %32, %struct.TYPE_30__** %13, align 8
  store %struct.TYPE_30__* %32, %struct.TYPE_30__** %12, align 8
  br label %33

33:                                               ; preds = %28, %5
  %34 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %35 = icmp ne %struct.TYPE_30__* %34, null
  br i1 %35, label %36, label %178

36:                                               ; preds = %33
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %38 = icmp eq %struct.TYPE_32__* %37, null
  br i1 %38, label %39, label %99

39:                                               ; preds = %36
  %40 = bitcast %struct.TYPE_31__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %40, i8 0, i64 8, i1 false)
  %41 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.TYPE_30__* @get_attribute(i32 %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_30__* %44, %struct.TYPE_30__** %14, align 8
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %46 = icmp eq %struct.TYPE_30__* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  store %struct.TYPE_30__* %48, %struct.TYPE_30__** %14, align 8
  br label %49

49:                                               ; preds = %47, %39
  %50 = call i8* @emalloc(i32 4)
  %51 = bitcast i8* %50 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %51, %struct.TYPE_32__** %15, align 8
  %52 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %53 = call i32 @memset(%struct.TYPE_32__* %52, i32 0, i32 4)
  %54 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = call i8* @estrdup(i8* %59)
  %61 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = call i8* @estrdup(i8* %68)
  %70 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @smart_str_appends(%struct.TYPE_31__* %16, i8* %74)
  %76 = call i32 @smart_str_appendc(%struct.TYPE_31__* %16, i8 signext 58)
  %77 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @smart_str_appends(%struct.TYPE_31__* %16, i8* %79)
  %81 = call i32 @smart_str_0(%struct.TYPE_31__* %16)
  %82 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %88 = call i32* @zend_hash_add_ptr(i32 %84, i32 %86, %struct.TYPE_32__* %87)
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %49
  %91 = load i32, i32* @E_ERROR, align 4
  %92 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ZSTR_VAL(i32 %93)
  %95 = call i32 @soap_error1(i32 %91, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %90, %49
  %97 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  store %struct.TYPE_32__* %97, %struct.TYPE_32__** %9, align 8
  %98 = call i32 @smart_str_free(%struct.TYPE_31__* %16)
  br label %177

99:                                               ; preds = %36
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %101 = icmp ne %struct.TYPE_30__* %100, null
  br i1 %101, label %102, label %176

102:                                              ; preds = %99
  %103 = bitcast %struct.TYPE_31__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %103, i8 0, i64 8, i1 false)
  %104 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %118

108:                                              ; preds = %102
  %109 = call i8* @emalloc(i32 4)
  %110 = bitcast i8* %109 to i32*
  %111 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %111, i32 0, i32 2
  store i32* %110, i32** %112, align 8
  %113 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* @delete_attribute, align 4
  %117 = call i32 @zend_hash_init(i32* %115, i32 0, i32* null, i32 %116, i32 0)
  br label %118

118:                                              ; preds = %108, %102
  %119 = call i8* @emalloc(i32 4)
  %120 = bitcast i8* %119 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %120, %struct.TYPE_32__** %17, align 8
  %121 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %122 = call i32 @memset(%struct.TYPE_32__* %121, i32 0, i32 4)
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @parse_namespace(i64 %127, i8** %18, i8** %19)
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %133 = load i8*, i8** %19, align 8
  %134 = call i32 @BAD_CAST(i8* %133)
  %135 = call %struct.TYPE_28__* @xmlSearchNs(i32 %131, %struct.TYPE_29__* %132, i32 %134)
  store %struct.TYPE_28__* %135, %struct.TYPE_28__** %21, align 8
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %137 = icmp ne %struct.TYPE_28__* %136, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %118
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = inttoptr i64 %141 to i8*
  %143 = call i32 @smart_str_appends(%struct.TYPE_31__* %20, i8* %142)
  br label %144

144:                                              ; preds = %138, %118
  %145 = call i32 @smart_str_appendc(%struct.TYPE_31__* %20, i8 signext 58)
  %146 = load i8*, i8** %18, align 8
  %147 = call i32 @smart_str_appends(%struct.TYPE_31__* %20, i8* %146)
  %148 = call i32 @smart_str_0(%struct.TYPE_31__* %20)
  %149 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %20, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @ZSTR_VAL(i32 %150)
  %152 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %20, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @ZSTR_LEN(i32 %153)
  %155 = call i32 @estrndup(i32 %151, i32 %154)
  %156 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 8
  %158 = load i8*, i8** %18, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %144
  %161 = load i8*, i8** %18, align 8
  %162 = call i32 @efree(i8* %161)
  br label %163

163:                                              ; preds = %160, %144
  %164 = load i8*, i8** %19, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i8*, i8** %19, align 8
  %168 = call i32 @efree(i8* %167)
  br label %169

169:                                              ; preds = %166, %163
  %170 = call i32 @smart_str_free(%struct.TYPE_31__* %20)
  %171 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %175 = call i32 @zend_hash_next_index_insert_ptr(i32* %173, %struct.TYPE_32__* %174)
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %9, align 8
  br label %176

176:                                              ; preds = %169, %99
  br label %177

177:                                              ; preds = %176, %96
  br label %181

178:                                              ; preds = %33
  %179 = load i32, i32* @E_ERROR, align 4
  %180 = call i32 @soap_error0(i32 %179, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  br label %181

181:                                              ; preds = %178, %177
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_29__*, %struct.TYPE_29__** %183, align 8
  store %struct.TYPE_29__* %184, %struct.TYPE_29__** %11, align 8
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %186 = icmp ne %struct.TYPE_29__* %185, null
  br i1 %186, label %187, label %195

187:                                              ; preds = %181
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %189 = call i64 @node_is_equal(%struct.TYPE_29__* %188, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %193, align 8
  store %struct.TYPE_29__* %194, %struct.TYPE_29__** %11, align 8
  br label %195

195:                                              ; preds = %191, %187, %181
  br label %196

196:                                              ; preds = %253, %195
  %197 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %198 = icmp ne %struct.TYPE_29__* %197, null
  br i1 %198, label %199, label %257

199:                                              ; preds = %196
  %200 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %201 = call i64 @node_is_equal(%struct.TYPE_29__* %200, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %215

203:                                              ; preds = %199
  %204 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %205 = icmp ne %struct.TYPE_30__* %204, null
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i32, i32* @E_ERROR, align 4
  %208 = call i32 @soap_error0(i32 %207, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i64 0, i64 0))
  br label %209

209:                                              ; preds = %206, %203
  %210 = load i32, i32* %6, align 4
  %211 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %212 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %213 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %214 = call i32 @schema_attribute(i32 %210, %struct.TYPE_30__* %211, %struct.TYPE_29__* %212, %struct.TYPE_32__* %213, i32* null)
  br label %253

215:                                              ; preds = %199
  %216 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %217 = call i64 @node_is_equal(%struct.TYPE_29__* %216, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %231

219:                                              ; preds = %215
  %220 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %221 = icmp ne %struct.TYPE_30__* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load i32, i32* @E_ERROR, align 4
  %224 = call i32 @soap_error0(i32 %223, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i64 0, i64 0))
  br label %225

225:                                              ; preds = %222, %219
  %226 = load i32, i32* %6, align 4
  %227 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %228 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %229 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %230 = call i32 @schema_attributeGroup(i32 %226, %struct.TYPE_30__* %227, %struct.TYPE_29__* %228, %struct.TYPE_32__* %229, %struct.TYPE_33__* null)
  br label %252

231:                                              ; preds = %215
  %232 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %233 = call i64 @node_is_equal(%struct.TYPE_29__* %232, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %245

235:                                              ; preds = %231
  %236 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %237 = icmp ne %struct.TYPE_30__* %236, null
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = load i32, i32* @E_ERROR, align 4
  %240 = call i32 @soap_error0(i32 %239, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i64 0, i64 0))
  br label %241

241:                                              ; preds = %238, %235
  %242 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_29__*, %struct.TYPE_29__** %243, align 8
  store %struct.TYPE_29__* %244, %struct.TYPE_29__** %11, align 8
  br label %257

245:                                              ; preds = %231
  %246 = load i32, i32* @E_ERROR, align 4
  %247 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %248 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @soap_error1(i32 %246, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0), i32 %249)
  br label %251

251:                                              ; preds = %245
  br label %252

252:                                              ; preds = %251, %225
  br label %253

253:                                              ; preds = %252, %209
  %254 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_29__*, %struct.TYPE_29__** %255, align 8
  store %struct.TYPE_29__* %256, %struct.TYPE_29__** %11, align 8
  br label %196

257:                                              ; preds = %241, %196
  %258 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %259 = icmp ne %struct.TYPE_29__* %258, null
  br i1 %259, label %260, label %266

260:                                              ; preds = %257
  %261 = load i32, i32* @E_ERROR, align 4
  %262 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %263 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @soap_error1(i32 %261, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0), i32 %264)
  br label %266

266:                                              ; preds = %260, %257
  %267 = load i32, i32* @TRUE, align 4
  ret i32 %267
}

declare dso_local %struct.TYPE_30__* @get_attribute(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i32 @smart_str_appends(%struct.TYPE_31__*, i8*) #1

declare dso_local i32 @smart_str_appendc(%struct.TYPE_31__*, i8 signext) #1

declare dso_local i32 @smart_str_0(%struct.TYPE_31__*) #1

declare dso_local i32* @zend_hash_add_ptr(i32, i32, %struct.TYPE_32__*) #1

declare dso_local i32 @soap_error1(i32, i8*, i32) #1

declare dso_local i32 @ZSTR_VAL(i32) #1

declare dso_local i32 @smart_str_free(%struct.TYPE_31__*) #1

declare dso_local i32 @zend_hash_init(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @parse_namespace(i64, i8**, i8**) #1

declare dso_local %struct.TYPE_28__* @xmlSearchNs(i32, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @BAD_CAST(i8*) #1

declare dso_local i32 @estrndup(i32, i32) #1

declare dso_local i32 @ZSTR_LEN(i32) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @zend_hash_next_index_insert_ptr(i32*, %struct.TYPE_32__*) #1

declare dso_local i32 @soap_error0(i32, i8*) #1

declare dso_local i64 @node_is_equal(%struct.TYPE_29__*, i8*) #1

declare dso_local i32 @schema_attribute(i32, %struct.TYPE_30__*, %struct.TYPE_29__*, %struct.TYPE_32__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
