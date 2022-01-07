; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_do_inherit_property.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_do_inherit_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_17__*, i32*, i32* }
%struct.TYPE_17__ = type { i32* }

@ZEND_ACC_PRIVATE = common dso_local global i32 0, align 4
@ZEND_ACC_CHANGED = common dso_local global i32 0, align 4
@ZEND_ACC_STATIC = common dso_local global i32 0, align 4
@E_COMPILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Cannot redeclare %s%s::$%s as %s%s::$%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"static \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"non static \00", align 1
@ZEND_ACC_PPP_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Access level to %s::$%s must be %s (as in class %s)%s\00", align 1
@ZEND_ACC_PUBLIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" or weaker\00", align 1
@INHERITANCE_ERROR = common dso_local global i64 0, align 8
@INHERITANCE_UNRESOLVED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [53 x i8] c"Type of %s::$%s must not be defined (as in class %s)\00", align 1
@ZEND_INTERNAL_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i32*, %struct.TYPE_19__*)* @do_inherit_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_inherit_property(%struct.TYPE_18__* %0, i32* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %6, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @zend_hash_find_ex(i32* %13, i32* %14, i32 1)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = ptrtoint i32* %16 to i32
  %18 = call i64 @UNEXPECTED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %251

20:                                               ; preds = %3
  %21 = load i32*, i32** %7, align 8
  %22 = call %struct.TYPE_18__* @Z_PTR_P(i32* %21)
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %8, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ZEND_ACC_PRIVATE, align 4
  %27 = load i32, i32* @ZEND_ACC_CHANGED, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %20
  %32 = load i32, i32* @ZEND_ACC_CHANGED, align 4
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %20
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ZEND_ACC_PRIVATE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %250, label %44

44:                                               ; preds = %37
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ZEND_ACC_STATIC, align 4
  %49 = and i32 %47, %48
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ZEND_ACC_STATIC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %49, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @UNEXPECTED(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %92

59:                                               ; preds = %44
  %60 = load i32, i32* @E_COMPILE_ERROR, align 4
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ZEND_ACC_STATIC, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @ZSTR_VAL(i32* %73)
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @ZSTR_VAL(i32* %75)
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @ZEND_ACC_STATIC, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @ZSTR_VAL(i32* %87)
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @ZSTR_VAL(i32* %89)
  %91 = call i32 (i32, i8*, i8*, i32, i32, ...) @zend_error_noreturn(i32 %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %68, i32 %74, i32 %76, i8* %84, i32 %88, i32 %90)
  br label %92

92:                                               ; preds = %59, %44
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @ZEND_ACC_PPP_MASK, align 4
  %97 = and i32 %95, %96
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @ZEND_ACC_PPP_MASK, align 4
  %102 = and i32 %100, %101
  %103 = icmp sgt i32 %97, %102
  %104 = zext i1 %103 to i32
  %105 = call i64 @UNEXPECTED(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %136

107:                                              ; preds = %92
  %108 = load i32, i32* @E_COMPILE_ERROR, align 4
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @ZSTR_VAL(i32* %111)
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  %115 = load i32*, i32** %5, align 8
  %116 = call i32 @ZSTR_VAL(i32* %115)
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @zend_visibility_string(i32 %119)
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @ZSTR_VAL(i32* %125)
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @ZEND_ACC_PUBLIC, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0)
  %135 = call i32 (i32, i8*, i8*, i32, i32, ...) @zend_error_noreturn(i32 %108, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %114, i32 %116, i32 %120, i32 %126, i8* %134)
  br label %185

136:                                              ; preds = %92
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @ZEND_ACC_STATIC, align 4
  %141 = and i32 %139, %140
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %184

143:                                              ; preds = %136
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @OBJ_PROP_TO_NUM(i32 %146)
  store i32 %147, i32* %9, align 4
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @OBJ_PROP_TO_NUM(i32 %150)
  store i32 %151, i32* %10, align 4
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 4
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = call i32 @zval_ptr_dtor_nogc(i32* %157)
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 4
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 %165, i32* %171, align 4
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 4
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = call i32 @ZVAL_UNDEF(i32* %177)
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 4
  br label %184

184:                                              ; preds = %143, %136
  br label %185

185:                                              ; preds = %184, %107
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @ZEND_TYPE_IS_SET(i32 %188)
  %190 = call i64 @UNEXPECTED(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %213

192:                                              ; preds = %185
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %195 = call i64 @property_types_compatible(%struct.TYPE_18__* %193, %struct.TYPE_18__* %194)
  store i64 %195, i64* %11, align 8
  %196 = load i64, i64* %11, align 8
  %197 = load i64, i64* @INHERITANCE_ERROR, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %192
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %202 = call i32 @emit_incompatible_property_error(%struct.TYPE_18__* %200, %struct.TYPE_18__* %201)
  br label %203

203:                                              ; preds = %199, %192
  %204 = load i64, i64* %11, align 8
  %205 = load i64, i64* @INHERITANCE_UNRESOLVED, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %212

207:                                              ; preds = %203
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %211 = call i32 @add_property_compatibility_obligation(%struct.TYPE_19__* %208, %struct.TYPE_18__* %209, %struct.TYPE_18__* %210)
  br label %212

212:                                              ; preds = %207, %203
  br label %249

213:                                              ; preds = %185
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @ZEND_TYPE_IS_SET(i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %213
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @ZEND_TYPE_IS_SET(i32 %222)
  %224 = icmp ne i32 %223, 0
  %225 = xor i1 %224, true
  br label %226

226:                                              ; preds = %219, %213
  %227 = phi i1 [ false, %213 ], [ %225, %219 ]
  %228 = zext i1 %227 to i32
  %229 = call i64 @UNEXPECTED(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %248

231:                                              ; preds = %226
  %232 = load i32, i32* @E_COMPILE_ERROR, align 4
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 3
  %235 = load i32*, i32** %234, align 8
  %236 = call i32 @ZSTR_VAL(i32* %235)
  %237 = sext i32 %236 to i64
  %238 = inttoptr i64 %237 to i8*
  %239 = load i32*, i32** %5, align 8
  %240 = call i32 @ZSTR_VAL(i32* %239)
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 @ZSTR_VAL(i32* %245)
  %247 = call i32 (i32, i8*, i8*, i32, i32, ...) @zend_error_noreturn(i32 %232, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i8* %238, i32 %240, i32 %246)
  br label %248

248:                                              ; preds = %231, %226
  br label %249

249:                                              ; preds = %248, %212
  br label %250

250:                                              ; preds = %249, %37
  br label %270

251:                                              ; preds = %3
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @ZEND_INTERNAL_CLASS, align 4
  %256 = and i32 %254, %255
  %257 = call i64 @UNEXPECTED(i32 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %251
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %261 = call %struct.TYPE_18__* @zend_duplicate_property_info_internal(%struct.TYPE_18__* %260)
  store %struct.TYPE_18__* %261, %struct.TYPE_18__** %8, align 8
  br label %264

262:                                              ; preds = %251
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_18__* %263, %struct.TYPE_18__** %8, align 8
  br label %264

264:                                              ; preds = %262, %259
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 1
  %267 = load i32*, i32** %5, align 8
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %269 = call i32 @_zend_hash_append_ptr(i32* %266, i32* %267, %struct.TYPE_18__* %268)
  br label %270

270:                                              ; preds = %264, %250
  ret void
}

declare dso_local i32* @zend_hash_find_ex(i32*, i32*, i32) #1

declare dso_local i64 @UNEXPECTED(i32) #1

declare dso_local %struct.TYPE_18__* @Z_PTR_P(i32*) #1

declare dso_local i32 @zend_error_noreturn(i32, i8*, i8*, i32, i32, ...) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @zend_visibility_string(i32) #1

declare dso_local i32 @OBJ_PROP_TO_NUM(i32) #1

declare dso_local i32 @zval_ptr_dtor_nogc(i32*) #1

declare dso_local i32 @ZVAL_UNDEF(i32*) #1

declare dso_local i32 @ZEND_TYPE_IS_SET(i32) #1

declare dso_local i64 @property_types_compatible(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @emit_incompatible_property_error(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @add_property_compatibility_obligation(%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @zend_duplicate_property_info_internal(%struct.TYPE_18__*) #1

declare dso_local i32 @_zend_hash_append_ptr(i32*, i32*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
