; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_begin_method_decl.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_begin_method_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32 }

@active_class_entry = common dso_local global i32 0, align 4
@ZEND_ACC_INTERFACE = common dso_local global i32 0, align 4
@ZEND_ACC_PUBLIC = common dso_local global i32 0, align 4
@ZEND_ACC_FINAL = common dso_local global i32 0, align 4
@ZEND_ACC_ABSTRACT = common dso_local global i32 0, align 4
@E_COMPILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Access type for interface method %s::%s() must be omitted\00", align 1
@ZEND_ACC_PRIVATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"%s function %s::%s() cannot be declared private\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Interface\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Abstract\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"%s function %s::%s() cannot contain body\00", align 1
@ZEND_ACC_IMPLICIT_ABSTRACT_CLASS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"Non-abstract method %s::%s() must contain body\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Cannot redeclare %s::%s()\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"serialize\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"unserialize\00", align 1
@ZEND_CONSTRUCTOR_FUNC_NAME = common dso_local global i8* null, align 8
@ZEND_DESTRUCTOR_FUNC_NAME = common dso_local global i8* null, align 8
@ZEND_CLONE_FUNC_NAME = common dso_local global i8* null, align 8
@ZEND_CALL_FUNC_NAME = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"__call\00", align 1
@ZEND_CALLSTATIC_FUNC_NAME = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"__callStatic\00", align 1
@ZEND_GET_FUNC_NAME = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"__get\00", align 1
@ZEND_ACC_USE_GUARDS = common dso_local global i32 0, align 4
@ZEND_SET_FUNC_NAME = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c"__set\00", align 1
@ZEND_UNSET_FUNC_NAME = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"__unset\00", align 1
@ZEND_ISSET_FUNC_NAME = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [8 x i8] c"__isset\00", align 1
@ZEND_TOSTRING_FUNC_NAME = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [11 x i8] c"__toString\00", align 1
@ZEND_INVOKE_FUNC_NAME = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [9 x i8] c"__invoke\00", align 1
@ZEND_DEBUGINFO_FUNC_NAME = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [12 x i8] c"__debugInfo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_begin_method_decl(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @active_class_entry, align 4
  %12 = call %struct.TYPE_7__* @CG(i32 %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %7, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ZEND_ACC_INTERFACE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @ZEND_ACC_PUBLIC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @ZEND_ACC_FINAL, align 4
  %33 = load i32, i32* @ZEND_ACC_ABSTRACT, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %30, %25
  %38 = load i32, i32* @E_COMPILE_ERROR, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 14
  %41 = load i32*, i32** %40, align 8
  %42 = call i8* @ZSTR_VAL(i32* %41)
  %43 = load i32*, i32** %5, align 8
  %44 = call i8* @ZSTR_VAL(i32* %43)
  %45 = call i32 (i32, i8*, i8*, i8*, ...) @zend_error_noreturn(i32 %38, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %42, i8* %44)
  br label %46

46:                                               ; preds = %37, %30
  %47 = load i32, i32* @ZEND_ACC_ABSTRACT, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46, %3
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ZEND_ACC_ABSTRACT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %101

59:                                               ; preds = %52
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ZEND_ACC_PRIVATE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %59
  %67 = load i32, i32* @E_COMPILE_ERROR, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 14
  %74 = load i32*, i32** %73, align 8
  %75 = call i8* @ZSTR_VAL(i32* %74)
  %76 = load i32*, i32** %5, align 8
  %77 = call i8* @ZSTR_VAL(i32* %76)
  %78 = call i32 (i32, i8*, i8*, i8*, ...) @zend_error_noreturn(i32 %67, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %71, i8* %75, i8* %77)
  br label %79

79:                                               ; preds = %66, %59
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = load i32, i32* @E_COMPILE_ERROR, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 14
  %90 = load i32*, i32** %89, align 8
  %91 = call i8* @ZSTR_VAL(i32* %90)
  %92 = load i32*, i32** %5, align 8
  %93 = call i8* @ZSTR_VAL(i32* %92)
  %94 = call i32 (i32, i8*, i8*, i8*, ...) @zend_error_noreturn(i32 %83, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %87, i8* %91, i8* %93)
  br label %95

95:                                               ; preds = %82, %79
  %96 = load i32, i32* @ZEND_ACC_IMPLICIT_ABSTRACT_CLASS, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %114

101:                                              ; preds = %52
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* @E_COMPILE_ERROR, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 14
  %108 = load i32*, i32** %107, align 8
  %109 = call i8* @ZSTR_VAL(i32* %108)
  %110 = load i32*, i32** %5, align 8
  %111 = call i8* @ZSTR_VAL(i32* %110)
  %112 = call i32 (i32, i8*, i8*, i8*, ...) @zend_error_noreturn(i32 %105, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* %109, i8* %111)
  br label %113

113:                                              ; preds = %104, %101
  br label %114

114:                                              ; preds = %113, %95
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  store %struct.TYPE_7__* %115, %struct.TYPE_7__** %117, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = call i32 @zend_string_copy(i32* %118)
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load i32*, i32** %5, align 8
  %123 = call i32* @zend_string_tolower(i32* %122)
  store i32* %123, i32** %10, align 8
  %124 = load i32*, i32** %10, align 8
  %125 = call i32* @zend_new_interned_string(i32* %124)
  store i32* %125, i32** %10, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 15
  %128 = load i32*, i32** %10, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %130 = call i32* @zend_hash_add_ptr(i32* %127, i32* %128, %struct.TYPE_6__* %129)
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %141

132:                                              ; preds = %114
  %133 = load i32, i32* @E_COMPILE_ERROR, align 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 14
  %136 = load i32*, i32** %135, align 8
  %137 = call i8* @ZSTR_VAL(i32* %136)
  %138 = load i32*, i32** %5, align 8
  %139 = call i8* @ZSTR_VAL(i32* %138)
  %140 = call i32 (i32, i8*, i8*, i8*, ...) @zend_error_noreturn(i32 %133, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %137, i8* %139)
  br label %141

141:                                              ; preds = %132, %114
  %142 = load i32*, i32** %10, align 8
  %143 = call i64 @zend_string_equals_literal(i32* %142, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %141
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %147 = bitcast %struct.TYPE_6__* %146 to i32*
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 13
  store i32* %147, i32** %149, align 8
  br label %342

150:                                              ; preds = %141
  %151 = load i32*, i32** %10, align 8
  %152 = call i64 @zend_string_equals_literal(i32* %151, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %156 = bitcast %struct.TYPE_6__* %155 to i32*
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 12
  store i32* %156, i32** %158, align 8
  br label %341

159:                                              ; preds = %150
  %160 = load i32*, i32** %10, align 8
  %161 = call i8* @ZSTR_VAL(i32* %160)
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 95
  br i1 %165, label %173, label %166

166:                                              ; preds = %159
  %167 = load i32*, i32** %10, align 8
  %168 = call i8* @ZSTR_VAL(i32* %167)
  %169 = getelementptr inbounds i8, i8* %168, i64 1
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp ne i32 %171, 95
  br i1 %172, label %173, label %174

173:                                              ; preds = %166, %159
  br label %340

174:                                              ; preds = %166
  %175 = load i32*, i32** %10, align 8
  %176 = load i8*, i8** @ZEND_CONSTRUCTOR_FUNC_NAME, align 8
  %177 = call i64 @zend_string_equals_literal(i32* %175, i8* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %174
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %181 = bitcast %struct.TYPE_6__* %180 to i32*
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 11
  store i32* %181, i32** %183, align 8
  br label %339

184:                                              ; preds = %174
  %185 = load i32*, i32** %10, align 8
  %186 = load i8*, i8** @ZEND_DESTRUCTOR_FUNC_NAME, align 8
  %187 = call i64 @zend_string_equals_literal(i32* %185, i8* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %184
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %191 = bitcast %struct.TYPE_6__* %190 to i32*
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 10
  store i32* %191, i32** %193, align 8
  br label %338

194:                                              ; preds = %184
  %195 = load i32*, i32** %10, align 8
  %196 = load i8*, i8** @ZEND_CLONE_FUNC_NAME, align 8
  %197 = call i64 @zend_string_equals_literal(i32* %195, i8* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %194
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %201 = bitcast %struct.TYPE_6__* %200 to i32*
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 9
  store i32* %201, i32** %203, align 8
  br label %337

204:                                              ; preds = %194
  %205 = load i32*, i32** %10, align 8
  %206 = load i8*, i8** @ZEND_CALL_FUNC_NAME, align 8
  %207 = call i64 @zend_string_equals_literal(i32* %205, i8* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %204
  %210 = load i32, i32* %9, align 4
  %211 = call i32 @zend_check_magic_method_attr(i32 %210, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %213 = bitcast %struct.TYPE_6__* %212 to i32*
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 8
  store i32* %213, i32** %215, align 8
  br label %336

216:                                              ; preds = %204
  %217 = load i32*, i32** %10, align 8
  %218 = load i8*, i8** @ZEND_CALLSTATIC_FUNC_NAME, align 8
  %219 = call i64 @zend_string_equals_literal(i32* %217, i8* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %216
  %222 = load i32, i32* %9, align 4
  %223 = call i32 @zend_check_magic_method_attr(i32 %222, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 1)
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %225 = bitcast %struct.TYPE_6__* %224 to i32*
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 7
  store i32* %225, i32** %227, align 8
  br label %335

228:                                              ; preds = %216
  %229 = load i32*, i32** %10, align 8
  %230 = load i8*, i8** @ZEND_GET_FUNC_NAME, align 8
  %231 = call i64 @zend_string_equals_literal(i32* %229, i8* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %245

233:                                              ; preds = %228
  %234 = load i32, i32* %9, align 4
  %235 = call i32 @zend_check_magic_method_attr(i32 %234, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 0)
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %237 = bitcast %struct.TYPE_6__* %236 to i32*
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 6
  store i32* %237, i32** %239, align 8
  %240 = load i32, i32* @ZEND_ACC_USE_GUARDS, align 4
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = or i32 %243, %240
  store i32 %244, i32* %242, align 8
  br label %334

245:                                              ; preds = %228
  %246 = load i32*, i32** %10, align 8
  %247 = load i8*, i8** @ZEND_SET_FUNC_NAME, align 8
  %248 = call i64 @zend_string_equals_literal(i32* %246, i8* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %262

250:                                              ; preds = %245
  %251 = load i32, i32* %9, align 4
  %252 = call i32 @zend_check_magic_method_attr(i32 %251, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 0)
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %254 = bitcast %struct.TYPE_6__* %253 to i32*
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 5
  store i32* %254, i32** %256, align 8
  %257 = load i32, i32* @ZEND_ACC_USE_GUARDS, align 4
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = or i32 %260, %257
  store i32 %261, i32* %259, align 8
  br label %333

262:                                              ; preds = %245
  %263 = load i32*, i32** %10, align 8
  %264 = load i8*, i8** @ZEND_UNSET_FUNC_NAME, align 8
  %265 = call i64 @zend_string_equals_literal(i32* %263, i8* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %279

267:                                              ; preds = %262
  %268 = load i32, i32* %9, align 4
  %269 = call i32 @zend_check_magic_method_attr(i32 %268, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 0)
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %271 = bitcast %struct.TYPE_6__* %270 to i32*
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 4
  store i32* %271, i32** %273, align 8
  %274 = load i32, i32* @ZEND_ACC_USE_GUARDS, align 4
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = or i32 %277, %274
  store i32 %278, i32* %276, align 8
  br label %332

279:                                              ; preds = %262
  %280 = load i32*, i32** %10, align 8
  %281 = load i8*, i8** @ZEND_ISSET_FUNC_NAME, align 8
  %282 = call i64 @zend_string_equals_literal(i32* %280, i8* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %296

284:                                              ; preds = %279
  %285 = load i32, i32* %9, align 4
  %286 = call i32 @zend_check_magic_method_attr(i32 %285, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 0)
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %288 = bitcast %struct.TYPE_6__* %287 to i32*
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 3
  store i32* %288, i32** %290, align 8
  %291 = load i32, i32* @ZEND_ACC_USE_GUARDS, align 4
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = or i32 %294, %291
  store i32 %295, i32* %293, align 8
  br label %331

296:                                              ; preds = %279
  %297 = load i32*, i32** %10, align 8
  %298 = load i8*, i8** @ZEND_TOSTRING_FUNC_NAME, align 8
  %299 = call i64 @zend_string_equals_literal(i32* %297, i8* %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %308

301:                                              ; preds = %296
  %302 = load i32, i32* %9, align 4
  %303 = call i32 @zend_check_magic_method_attr(i32 %302, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 0)
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %305 = bitcast %struct.TYPE_6__* %304 to i32*
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 2
  store i32* %305, i32** %307, align 8
  br label %330

308:                                              ; preds = %296
  %309 = load i32*, i32** %10, align 8
  %310 = load i8*, i8** @ZEND_INVOKE_FUNC_NAME, align 8
  %311 = call i64 @zend_string_equals_literal(i32* %309, i8* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %316

313:                                              ; preds = %308
  %314 = load i32, i32* %9, align 4
  %315 = call i32 @zend_check_magic_method_attr(i32 %314, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 0)
  br label %329

316:                                              ; preds = %308
  %317 = load i32*, i32** %10, align 8
  %318 = load i8*, i8** @ZEND_DEBUGINFO_FUNC_NAME, align 8
  %319 = call i64 @zend_string_equals_literal(i32* %317, i8* %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %328

321:                                              ; preds = %316
  %322 = load i32, i32* %9, align 4
  %323 = call i32 @zend_check_magic_method_attr(i32 %322, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 0)
  %324 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %325 = bitcast %struct.TYPE_6__* %324 to i32*
  %326 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 1
  store i32* %325, i32** %327, align 8
  br label %328

328:                                              ; preds = %321, %316
  br label %329

329:                                              ; preds = %328, %313
  br label %330

330:                                              ; preds = %329, %301
  br label %331

331:                                              ; preds = %330, %284
  br label %332

332:                                              ; preds = %331, %267
  br label %333

333:                                              ; preds = %332, %250
  br label %334

334:                                              ; preds = %333, %233
  br label %335

335:                                              ; preds = %334, %221
  br label %336

336:                                              ; preds = %335, %209
  br label %337

337:                                              ; preds = %336, %199
  br label %338

338:                                              ; preds = %337, %189
  br label %339

339:                                              ; preds = %338, %179
  br label %340

340:                                              ; preds = %339, %173
  br label %341

341:                                              ; preds = %340, %154
  br label %342

342:                                              ; preds = %341, %145
  %343 = load i32*, i32** %10, align 8
  %344 = call i32 @zend_string_release_ex(i32* %343, i32 0)
  ret void
}

declare dso_local %struct.TYPE_7__* @CG(i32) #1

declare dso_local i32 @zend_error_noreturn(i32, i8*, i8*, i8*, ...) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i32 @zend_string_copy(i32*) #1

declare dso_local i32* @zend_string_tolower(i32*) #1

declare dso_local i32* @zend_new_interned_string(i32*) #1

declare dso_local i32* @zend_hash_add_ptr(i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @zend_string_equals_literal(i32*, i8*) #1

declare dso_local i32 @zend_check_magic_method_attr(i32, i8*, i32) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
