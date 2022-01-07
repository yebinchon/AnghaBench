; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_zend_traits_init_trait_structures.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_zend_traits_init_trait_structures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32*, i32, %struct.TYPE_12__**, %struct.TYPE_13__** }
%struct.TYPE_12__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32*, i32* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_14__, i32** }

@ZEND_FETCH_CLASS_TRAIT = common dso_local global i32 0, align 4
@ZEND_FETCH_CLASS_NO_AUTOLOAD = common dso_local global i32 0, align 4
@E_COMPILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Could not find trait %s\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"A precedence rule was defined for %s::%s but this method does not exist\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"Failed to evaluate a trait precedence (%s). Method of trait %s was defined to be excluded multiple times\00", align 1
@.str.3 = private unnamed_addr constant [107 x i8] c"Inconsistent insteadof definition. The method %s is to be used from %s, but %s is also on the exclude list\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"An alias was defined for %s::%s but this method does not exist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_15__**, i32***, %struct.TYPE_15__***)* @zend_traits_init_trait_structures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_traits_init_trait_structures(%struct.TYPE_15__* %0, %struct.TYPE_15__** %1, i32*** %2, %struct.TYPE_15__*** %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__**, align 8
  %7 = alloca i32***, align 8
  %8 = alloca %struct.TYPE_15__***, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__**, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca %struct.TYPE_15__**, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__** %1, %struct.TYPE_15__*** %6, align 8
  store i32*** %2, i32**** %7, align 8
  store %struct.TYPE_15__*** %3, %struct.TYPE_15__**** %8, align 8
  store i64 0, i64* %10, align 8
  store i32** null, i32*** %15, align 8
  store %struct.TYPE_15__** null, %struct.TYPE_15__*** %16, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %22, align 8
  %24 = icmp ne %struct.TYPE_13__** %23, null
  br i1 %24, label %25, label %188

25:                                               ; preds = %4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i8* @ecalloc(i64 %28, i32 8)
  %30 = bitcast i8* %29 to i32**
  store i32** %30, i32*** %15, align 8
  store i64 0, i64* %9, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %32, align 8
  store %struct.TYPE_13__** %33, %struct.TYPE_13__*** %11, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 4
  store %struct.TYPE_13__** null, %struct.TYPE_13__*** %35, align 8
  br label %36

36:                                               ; preds = %179, %25
  %37 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %11, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %37, i64 %38
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %12, align 8
  %41 = icmp ne %struct.TYPE_13__* %40, null
  br i1 %41, label %42, label %184

42:                                               ; preds = %36
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %13, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @ZEND_FETCH_CLASS_TRAIT, align 4
  %49 = load i32, i32* @ZEND_FETCH_CLASS_NO_AUTOLOAD, align 4
  %50 = or i32 %48, %49
  %51 = call %struct.TYPE_15__* @zend_fetch_class(i32* %47, i32 %50)
  store %struct.TYPE_15__* %51, %struct.TYPE_15__** %17, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %53 = icmp ne %struct.TYPE_15__* %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %42
  %55 = load i32, i32* @E_COMPILE_ERROR, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @ZSTR_VAL(i32* %58)
  %60 = call i32 (i32, i8*, i32, ...) @zend_error_noreturn(i32 %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %54, %42
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %64 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  %65 = call i64 @zend_check_trait_usage(%struct.TYPE_15__* %62, %struct.TYPE_15__* %63, %struct.TYPE_15__** %64)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32* @zend_string_tolower(i32* %68)
  store i32* %69, i32** %14, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  %72 = load i32*, i32** %14, align 8
  %73 = call i32 @zend_hash_exists(i32* %71, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %61
  %76 = load i32, i32* @E_COMPILE_ERROR, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @ZSTR_VAL(i32* %79)
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @ZSTR_VAL(i32* %83)
  %85 = call i32 (i32, i8*, i32, ...) @zend_error_noreturn(i32 %76, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %84)
  br label %86

86:                                               ; preds = %75, %61
  store i64 0, i64* %10, align 8
  br label %87

87:                                               ; preds = %176, %86
  %88 = load i64, i64* %10, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ult i64 %88, %91
  br i1 %92, label %93, label %179

93:                                               ; preds = %87
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  %96 = load i32**, i32*** %95, align 8
  %97 = load i64, i64* %10, align 8
  %98 = getelementptr inbounds i32*, i32** %96, i64 %97
  %99 = load i32*, i32** %98, align 8
  store i32* %99, i32** %18, align 8
  %100 = load i32*, i32** %18, align 8
  %101 = load i32, i32* @ZEND_FETCH_CLASS_TRAIT, align 4
  %102 = load i32, i32* @ZEND_FETCH_CLASS_NO_AUTOLOAD, align 4
  %103 = or i32 %101, %102
  %104 = call %struct.TYPE_15__* @zend_fetch_class(i32* %100, i32 %103)
  store %struct.TYPE_15__* %104, %struct.TYPE_15__** %19, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %106 = icmp ne %struct.TYPE_15__* %105, null
  br i1 %106, label %112, label %107

107:                                              ; preds = %93
  %108 = load i32, i32* @E_COMPILE_ERROR, align 4
  %109 = load i32*, i32** %18, align 8
  %110 = call i32 @ZSTR_VAL(i32* %109)
  %111 = call i32 (i32, i8*, i32, ...) @zend_error_noreturn(i32 %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %107, %93
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %115 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  %116 = call i64 @zend_check_trait_usage(%struct.TYPE_15__* %113, %struct.TYPE_15__* %114, %struct.TYPE_15__** %115)
  store i64 %116, i64* %20, align 8
  %117 = load i32**, i32*** %15, align 8
  %118 = load i64, i64* %20, align 8
  %119 = getelementptr inbounds i32*, i32** %117, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %133, label %122

122:                                              ; preds = %112
  %123 = load i32**, i32*** %15, align 8
  %124 = load i64, i64* %20, align 8
  %125 = getelementptr inbounds i32*, i32** %123, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @ALLOC_HASHTABLE(i32* %126)
  %128 = load i32**, i32*** %15, align 8
  %129 = load i64, i64* %20, align 8
  %130 = getelementptr inbounds i32*, i32** %128, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @zend_hash_init(i32* %131, i32 0, i32* null, i32* null, i32 0)
  br label %133

133:                                              ; preds = %122, %112
  %134 = load i32**, i32*** %15, align 8
  %135 = load i64, i64* %20, align 8
  %136 = getelementptr inbounds i32*, i32** %134, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = load i32*, i32** %14, align 8
  %139 = call i32* @zend_hash_add_empty_element(i32* %137, i32* %138)
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %156

141:                                              ; preds = %133
  %142 = load i32, i32* @E_COMPILE_ERROR, align 4
  %143 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %11, align 8
  %144 = load i64, i64* %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %143, i64 %144
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @ZSTR_VAL(i32* %149)
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @ZSTR_VAL(i32* %153)
  %155 = call i32 (i32, i8*, i32, ...) @zend_error_noreturn(i32 %142, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 %150, i32 %154)
  br label %156

156:                                              ; preds = %141, %133
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %159 = icmp eq %struct.TYPE_15__* %157, %158
  br i1 %159, label %160, label %175

160:                                              ; preds = %156
  %161 = load i32, i32* @E_COMPILE_ERROR, align 4
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @ZSTR_VAL(i32* %164)
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @ZSTR_VAL(i32* %168)
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @ZSTR_VAL(i32* %172)
  %174 = call i32 (i32, i8*, i32, ...) @zend_error_noreturn(i32 %161, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.3, i64 0, i64 0), i32 %165, i32 %169, i32 %173)
  br label %175

175:                                              ; preds = %160, %156
  br label %176

176:                                              ; preds = %175
  %177 = load i64, i64* %10, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %10, align 8
  br label %87

179:                                              ; preds = %87
  %180 = load i32*, i32** %14, align 8
  %181 = call i32 @zend_string_release_ex(i32* %180, i32 0)
  %182 = load i64, i64* %9, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %9, align 8
  br label %36

184:                                              ; preds = %36
  %185 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %11, align 8
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 4
  store %struct.TYPE_13__** %185, %struct.TYPE_13__*** %187, align 8
  br label %188

188:                                              ; preds = %184, %4
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 3
  %191 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %190, align 8
  %192 = icmp ne %struct.TYPE_12__** %191, null
  br i1 %192, label %193, label %288

193:                                              ; preds = %188
  store i64 0, i64* %9, align 8
  br label %194

194:                                              ; preds = %202, %193
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 3
  %197 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %196, align 8
  %198 = load i64, i64* %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %197, i64 %198
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %199, align 8
  %201 = icmp ne %struct.TYPE_12__* %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %194
  %203 = load i64, i64* %9, align 8
  %204 = add i64 %203, 1
  store i64 %204, i64* %9, align 8
  br label %194

205:                                              ; preds = %194
  %206 = load i64, i64* %9, align 8
  %207 = call i8* @ecalloc(i64 %206, i32 8)
  %208 = bitcast i8* %207 to %struct.TYPE_15__**
  store %struct.TYPE_15__** %208, %struct.TYPE_15__*** %16, align 8
  store i64 0, i64* %9, align 8
  br label %209

209:                                              ; preds = %284, %205
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 3
  %212 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %211, align 8
  %213 = load i64, i64* %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %212, i64 %213
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %214, align 8
  %216 = icmp ne %struct.TYPE_12__* %215, null
  br i1 %216, label %217, label %287

217:                                              ; preds = %209
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 3
  %220 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %219, align 8
  %221 = load i64, i64* %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %220, i64 %221
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %228, label %284

228:                                              ; preds = %217
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 3
  %231 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %230, align 8
  %232 = load i64, i64* %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %231, i64 %232
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 0
  store %struct.TYPE_14__* %235, %struct.TYPE_14__** %13, align 8
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* @ZEND_FETCH_CLASS_TRAIT, align 4
  %240 = load i32, i32* @ZEND_FETCH_CLASS_NO_AUTOLOAD, align 4
  %241 = or i32 %239, %240
  %242 = call %struct.TYPE_15__* @zend_fetch_class(i32* %238, i32 %241)
  store %struct.TYPE_15__* %242, %struct.TYPE_15__** %17, align 8
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %244 = icmp ne %struct.TYPE_15__* %243, null
  br i1 %244, label %252, label %245

245:                                              ; preds = %228
  %246 = load i32, i32* @E_COMPILE_ERROR, align 4
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = call i32 @ZSTR_VAL(i32* %249)
  %251 = call i32 (i32, i8*, i32, ...) @zend_error_noreturn(i32 %246, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %250)
  br label %252

252:                                              ; preds = %245, %228
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %255 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  %256 = call i64 @zend_check_trait_usage(%struct.TYPE_15__* %253, %struct.TYPE_15__* %254, %struct.TYPE_15__** %255)
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %258 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %16, align 8
  %259 = load i64, i64* %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %258, i64 %259
  store %struct.TYPE_15__* %257, %struct.TYPE_15__** %260, align 8
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 0
  %263 = load i32*, i32** %262, align 8
  %264 = call i32* @zend_string_tolower(i32* %263)
  store i32* %264, i32** %14, align 8
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 2
  %267 = load i32*, i32** %14, align 8
  %268 = call i32 @zend_hash_exists(i32* %266, i32* %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %281, label %270

270:                                              ; preds = %252
  %271 = load i32, i32* @E_COMPILE_ERROR, align 4
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 1
  %274 = load i32*, i32** %273, align 8
  %275 = call i32 @ZSTR_VAL(i32* %274)
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 0
  %278 = load i32*, i32** %277, align 8
  %279 = call i32 @ZSTR_VAL(i32* %278)
  %280 = call i32 (i32, i8*, i32, ...) @zend_error_noreturn(i32 %271, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %275, i32 %279)
  br label %281

281:                                              ; preds = %270, %252
  %282 = load i32*, i32** %14, align 8
  %283 = call i32 @zend_string_release_ex(i32* %282, i32 0)
  br label %284

284:                                              ; preds = %281, %217
  %285 = load i64, i64* %9, align 8
  %286 = add i64 %285, 1
  store i64 %286, i64* %9, align 8
  br label %209

287:                                              ; preds = %209
  br label %288

288:                                              ; preds = %287, %188
  %289 = load i32**, i32*** %15, align 8
  %290 = load i32***, i32**** %7, align 8
  store i32** %289, i32*** %290, align 8
  %291 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %16, align 8
  %292 = load %struct.TYPE_15__***, %struct.TYPE_15__**** %8, align 8
  store %struct.TYPE_15__** %291, %struct.TYPE_15__*** %292, align 8
  ret void
}

declare dso_local i8* @ecalloc(i64, i32) #1

declare dso_local %struct.TYPE_15__* @zend_fetch_class(i32*, i32) #1

declare dso_local i32 @zend_error_noreturn(i32, i8*, i32, ...) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i64 @zend_check_trait_usage(%struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__**) #1

declare dso_local i32* @zend_string_tolower(i32*) #1

declare dso_local i32 @zend_hash_exists(i32*, i32*) #1

declare dso_local i32 @ALLOC_HASHTABLE(i32*) #1

declare dso_local i32 @zend_hash_init(i32*, i32, i32*, i32*, i32) #1

declare dso_local i32* @zend_hash_add_empty_element(i32*, i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
