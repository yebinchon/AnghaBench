; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_union.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_25__*, %struct.TYPE_25__*, i32, i32 }
%struct.TYPE_27__ = type { i8*, i32*, i8*, i32 }
%struct.TYPE_24__ = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"memberTypes\00", align 1
@delete_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"annotation\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"simpleType\00", align 1
@MAX_LENGTH_OF_LONG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"anonymous\00", align 1
@E_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Parsing Schema: unexpected <%s> in union\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_25__*, %struct.TYPE_27__*)* @schema_union to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schema_union(%struct.TYPE_28__* %0, %struct.TYPE_26__* %1, %struct.TYPE_25__* %2, %struct.TYPE_27__* %3) #0 {
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  %18 = alloca %struct.TYPE_27__*, align 8
  %19 = alloca %struct.TYPE_27__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %7, align 8
  store %struct.TYPE_27__* %3, %struct.TYPE_27__** %8, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_26__* @get_attribute(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_26__* %27, %struct.TYPE_26__** %10, align 8
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %29 = icmp ne %struct.TYPE_26__* %28, null
  br i1 %29, label %30, label %138

30:                                               ; preds = %4
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = call i8* @estrdup(i8* %36)
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @BAD_CAST(i8* %38)
  %40 = call i32 @whiteSpace_collapse(i32 %39)
  %41 = load i8*, i8** %11, align 8
  store i8* %41, i8** %12, align 8
  br label %42

42:                                               ; preds = %133, %30
  %43 = load i8*, i8** %12, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i8*, i8** %12, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %45, %42
  %51 = phi i1 [ false, %42 ], [ %49, %45 ]
  br i1 %51, label %52, label %135

52:                                               ; preds = %50
  %53 = load i8*, i8** %12, align 8
  %54 = call i8* @strchr(i8* %53, i8 signext 32)
  store i8* %54, i8** %13, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i8* null, i8** %14, align 8
  br label %62

58:                                               ; preds = %52
  %59 = load i8*, i8** %13, align 8
  store i8 0, i8* %59, align 1
  %60 = load i8*, i8** %13, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  store i8* %61, i8** %14, align 8
  br label %62

62:                                               ; preds = %58, %57
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @BAD_CAST(i8* %63)
  %65 = call i32 @parse_namespace(i32 %64, i8** %15, i8** %16)
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %70 = load i8*, i8** %16, align 8
  %71 = call i32 @BAD_CAST(i8* %70)
  %72 = call %struct.TYPE_24__* @xmlSearchNs(i32 %68, %struct.TYPE_25__* %69, i32 %71)
  store %struct.TYPE_24__* %72, %struct.TYPE_24__** %17, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %74 = icmp ne %struct.TYPE_24__* %73, null
  br i1 %74, label %75, label %121

75:                                               ; preds = %62
  %76 = call i8* @emalloc(i32 4)
  %77 = bitcast i8* %76 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %77, %struct.TYPE_27__** %18, align 8
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %79 = call i32 @memset(%struct.TYPE_27__* %78, i32 0, i32 4)
  %80 = load i8*, i8** %15, align 8
  %81 = call i8* @estrdup(i8* %80)
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = call i8* @estrdup(i8* %87)
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i8*, i8** %15, align 8
  %97 = call i32 @BAD_CAST(i8* %96)
  %98 = call i32 @get_create_encoder(%struct.TYPE_28__* %91, %struct.TYPE_27__* %92, i64 %95, i32 %97)
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %115

105:                                              ; preds = %75
  %106 = call i8* @emalloc(i32 4)
  %107 = bitcast i8* %106 to i32*
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 1
  store i32* %107, i32** %109, align 8
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* @delete_type, align 4
  %114 = call i32 @zend_hash_init(i32* %112, i32 0, i32* null, i32 %113, i32 0)
  br label %115

115:                                              ; preds = %105, %75
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %120 = call i32 @zend_hash_next_index_insert_ptr(i32* %118, %struct.TYPE_27__* %119)
  br label %121

121:                                              ; preds = %115, %62
  %122 = load i8*, i8** %15, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i8*, i8** %15, align 8
  %126 = call i32 @efree(i8* %125)
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i8*, i8** %16, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i8*, i8** %16, align 8
  %132 = call i32 @efree(i8* %131)
  br label %133

133:                                              ; preds = %130, %127
  %134 = load i8*, i8** %14, align 8
  store i8* %134, i8** %12, align 8
  br label %42

135:                                              ; preds = %50
  %136 = load i8*, i8** %11, align 8
  %137 = call i32 @efree(i8* %136)
  br label %138

138:                                              ; preds = %135, %4
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %140, align 8
  store %struct.TYPE_25__* %141, %struct.TYPE_25__** %9, align 8
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %143 = icmp ne %struct.TYPE_25__* %142, null
  br i1 %143, label %144, label %152

144:                                              ; preds = %138
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %146 = call i64 @node_is_equal(%struct.TYPE_25__* %145, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %150, align 8
  store %struct.TYPE_25__* %151, %struct.TYPE_25__** %9, align 8
  br label %152

152:                                              ; preds = %148, %144, %138
  br label %153

153:                                              ; preds = %242, %152
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %155 = icmp ne %struct.TYPE_25__* %154, null
  br i1 %155, label %156, label %246

156:                                              ; preds = %153
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %158 = call i64 @node_is_equal(%struct.TYPE_25__* %157, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %236

160:                                              ; preds = %156
  %161 = call i8* @emalloc(i32 4)
  %162 = bitcast i8* %161 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %162, %struct.TYPE_27__** %19, align 8
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %164 = call i32 @memset(%struct.TYPE_27__* %163, i32 0, i32 4)
  %165 = load i32, i32* @MAX_LENGTH_OF_LONG, align 4
  %166 = add nsw i32 %165, 1
  %167 = zext i32 %166 to i64
  %168 = call i8* @llvm.stacksave()
  store i8* %168, i8** %20, align 8
  %169 = alloca i8, i64 %167, align 16
  store i64 %167, i64* %21, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 %167
  %171 = getelementptr inbounds i8, i8* %170, i64 -1
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @zend_hash_num_elements(i32 %174)
  %176 = call i8* @zend_print_long_to_buf(i8* %171, i32 %175)
  store i8* %176, i8** %22, align 8
  %177 = getelementptr inbounds i8, i8* %169, i64 %167
  %178 = load i8*, i8** %22, align 8
  %179 = ptrtoint i8* %177 to i64
  %180 = ptrtoint i8* %178 to i64
  %181 = sub i64 %179, %180
  %182 = add i64 9, %181
  %183 = trunc i64 %182 to i32
  %184 = call i8* @emalloc(i32 %183)
  store i8* %184, i8** %23, align 8
  %185 = load i8*, i8** %23, align 8
  %186 = call i32 @memcpy(i8* %185, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  %187 = load i8*, i8** %23, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 10
  %189 = getelementptr inbounds i8, i8* %188, i64 -1
  %190 = load i8*, i8** %22, align 8
  %191 = getelementptr inbounds i8, i8* %169, i64 %167
  %192 = load i8*, i8** %22, align 8
  %193 = ptrtoint i8* %191 to i64
  %194 = ptrtoint i8* %192 to i64
  %195 = sub i64 %193, %194
  %196 = trunc i64 %195 to i32
  %197 = call i32 @memcpy(i8* %189, i8* %190, i32 %196)
  %198 = load i8*, i8** %23, align 8
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %200 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %199, i32 0, i32 0
  store i8* %198, i8** %200, align 8
  %201 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %201)
  %202 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = inttoptr i64 %206 to i8*
  %208 = call i8* @estrdup(i8* %207)
  %209 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %210 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %209, i32 0, i32 2
  store i8* %208, i8** %210, align 8
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = icmp eq i32* %213, null
  br i1 %214, label %215, label %225

215:                                              ; preds = %160
  %216 = call i8* @emalloc(i32 4)
  %217 = bitcast i8* %216 to i32*
  %218 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %218, i32 0, i32 1
  store i32* %217, i32** %219, align 8
  %220 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* @delete_type, align 4
  %224 = call i32 @zend_hash_init(i32* %222, i32 0, i32* null, i32 %223, i32 0)
  br label %225

225:                                              ; preds = %215, %160
  %226 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %230 = call i32 @zend_hash_next_index_insert_ptr(i32* %228, %struct.TYPE_27__* %229)
  %231 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %232 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %234 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %235 = call i32 @schema_simpleType(%struct.TYPE_28__* %231, %struct.TYPE_26__* %232, %struct.TYPE_25__* %233, %struct.TYPE_27__* %234)
  br label %242

236:                                              ; preds = %156
  %237 = load i32, i32* @E_ERROR, align 4
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @soap_error1(i32 %237, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %240)
  br label %242

242:                                              ; preds = %236, %225
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %244, align 8
  store %struct.TYPE_25__* %245, %struct.TYPE_25__** %9, align 8
  br label %153

246:                                              ; preds = %153
  %247 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %248 = icmp ne %struct.TYPE_25__* %247, null
  br i1 %248, label %249, label %255

249:                                              ; preds = %246
  %250 = load i32, i32* @E_ERROR, align 4
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @soap_error1(i32 %250, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %253)
  br label %255

255:                                              ; preds = %249, %246
  %256 = load i32, i32* @TRUE, align 4
  ret i32 %256
}

declare dso_local %struct.TYPE_26__* @get_attribute(i32, i8*) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i32 @whiteSpace_collapse(i32) #1

declare dso_local i32 @BAD_CAST(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @parse_namespace(i32, i8**, i8**) #1

declare dso_local %struct.TYPE_24__* @xmlSearchNs(i32, %struct.TYPE_25__*, i32) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @get_create_encoder(%struct.TYPE_28__*, %struct.TYPE_27__*, i64, i32) #1

declare dso_local i32 @zend_hash_init(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @zend_hash_next_index_insert_ptr(i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i64 @node_is_equal(%struct.TYPE_25__*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @zend_print_long_to_buf(i8*, i32) #1

declare dso_local i32 @zend_hash_num_elements(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @schema_simpleType(%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_25__*, %struct.TYPE_27__*) #1

declare dso_local i32 @soap_error1(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
