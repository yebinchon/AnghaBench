; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_use.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_8__** }
%struct.TYPE_7__ = type { i64, %struct.TYPE_8__** }

@current_namespace = common dso_local global i32 0, align 4
@ZEND_SYMBOL_CONST = common dso_local global i64 0, align 8
@T_CLASS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@E_COMPILE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"You seem to be trying to use a different language...\00", align 1
@E_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"The use statement with non-compound name '%s' has no effect\00", align 1
@ZEND_SYMBOL_CLASS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c"Cannot use %s as %s because '%s' is a special class name\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Cannot use%s %s as %s because the name is already in use\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_compile_use(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = call %struct.TYPE_7__* @zend_ast_get_list(%struct.TYPE_8__* %18)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %3, align 8
  %20 = load i32, i32* @current_namespace, align 4
  %21 = call i32* @FC(i32 %20)
  store i32* %21, i32** %5, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32* @zend_get_import_ht(i64 %25)
  store i32* %26, i32** %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @ZEND_SYMBOL_CONST, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %8, align 4
  store i64 0, i64* %4, align 8
  br label %31

31:                                               ; preds = %205, %1
  %32 = load i64, i64* %4, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %208

37:                                               ; preds = %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %40, i64 %41
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %9, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %46, i64 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %10, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %51, i64 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %11, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %55 = call i32* @zend_ast_get_str(%struct.TYPE_8__* %54)
  store i32* %55, i32** %12, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %57 = icmp ne %struct.TYPE_8__* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %37
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %60 = call i32* @zend_ast_get_str(%struct.TYPE_8__* %59)
  %61 = call i32* @zend_string_copy(i32* %60)
  store i32* %61, i32** %13, align 8
  br label %93

62:                                               ; preds = %37
  %63 = load i32*, i32** %12, align 8
  %64 = call i64 @zend_get_unqualified_name(i32* %63, i8** %15, i64* %16)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i8*, i8** %15, align 8
  %68 = load i64, i64* %16, align 8
  %69 = call i32* @zend_string_init(i8* %67, i64 %68, i32 0)
  store i32* %69, i32** %13, align 8
  br label %92

70:                                               ; preds = %62
  %71 = load i32*, i32** %12, align 8
  %72 = call i32* @zend_string_copy(i32* %71)
  store i32* %72, i32** %13, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %91, label %75

75:                                               ; preds = %70
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @T_CLASS, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load i32*, i32** %13, align 8
  %81 = call i64 @zend_string_equals_literal(i32* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* @E_COMPILE_ERROR, align 4
  %85 = call i32 (i32, i8*, ...) @zend_error_noreturn(i32 %84, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %79, %75
  %87 = load i32, i32* @E_WARNING, align 4
  %88 = load i32*, i32** %13, align 8
  %89 = call i8* @ZSTR_VAL(i32* %88)
  %90 = call i32 @zend_error(i32 %87, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %86, %70
  br label %92

92:                                               ; preds = %91, %66
  br label %93

93:                                               ; preds = %92, %58
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32*, i32** %13, align 8
  %98 = call i32* @zend_string_copy(i32* %97)
  store i32* %98, i32** %14, align 8
  br label %102

99:                                               ; preds = %93
  %100 = load i32*, i32** %13, align 8
  %101 = call i32* @zend_string_tolower(i32* %100)
  store i32* %101, i32** %14, align 8
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* @ZEND_SYMBOL_CLASS, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %102
  %107 = load i32*, i32** %13, align 8
  %108 = call i64 @zend_is_reserved_class_name(i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load i32, i32* @E_COMPILE_ERROR, align 4
  %112 = load i32*, i32** %12, align 8
  %113 = call i8* @ZSTR_VAL(i32* %112)
  %114 = load i32*, i32** %13, align 8
  %115 = call i8* @ZSTR_VAL(i32* %114)
  %116 = load i32*, i32** %13, align 8
  %117 = call i8* @ZSTR_VAL(i32* %116)
  %118 = call i32 (i32, i8*, ...) @zend_error_noreturn(i32 %111, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i8* %113, i8* %115, i8* %117)
  br label %119

119:                                              ; preds = %110, %106, %102
  %120 = load i32*, i32** %5, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %169

122:                                              ; preds = %119
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @ZSTR_LEN(i32* %123)
  %125 = add nsw i32 %124, 1
  %126 = load i32*, i32** %13, align 8
  %127 = call i32 @ZSTR_LEN(i32* %126)
  %128 = add nsw i32 %125, %127
  %129 = call i32* @zend_string_alloc(i32 %128, i32 0)
  store i32* %129, i32** %17, align 8
  %130 = load i32*, i32** %17, align 8
  %131 = call i8* @ZSTR_VAL(i32* %130)
  %132 = load i32*, i32** %5, align 8
  %133 = call i8* @ZSTR_VAL(i32* %132)
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @ZSTR_LEN(i32* %134)
  %136 = call i32 @zend_str_tolower_copy(i8* %131, i8* %133, i32 %135)
  %137 = load i32*, i32** %17, align 8
  %138 = call i8* @ZSTR_VAL(i32* %137)
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 @ZSTR_LEN(i32* %139)
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  store i8 92, i8* %142, align 1
  %143 = load i32*, i32** %17, align 8
  %144 = call i8* @ZSTR_VAL(i32* %143)
  %145 = load i32*, i32** %5, align 8
  %146 = call i32 @ZSTR_LEN(i32* %145)
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  %150 = load i32*, i32** %14, align 8
  %151 = call i8* @ZSTR_VAL(i32* %150)
  %152 = load i32*, i32** %14, align 8
  %153 = call i32 @ZSTR_LEN(i32* %152)
  %154 = add nsw i32 %153, 1
  %155 = call i32 @memcpy(i8* %149, i8* %151, i32 %154)
  %156 = load i32*, i32** %17, align 8
  %157 = load i64, i64* %6, align 8
  %158 = call i64 @zend_have_seen_symbol(i32* %156, i64 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %122
  %161 = load i64, i64* %6, align 8
  %162 = load i32*, i32** %12, align 8
  %163 = load i32*, i32** %13, align 8
  %164 = load i32*, i32** %17, align 8
  %165 = call i32 @zend_check_already_in_use(i64 %161, i32* %162, i32* %163, i32* %164)
  br label %166

166:                                              ; preds = %160, %122
  %167 = load i32*, i32** %17, align 8
  %168 = call i32 @zend_string_efree(i32* %167)
  br label %181

169:                                              ; preds = %119
  %170 = load i32*, i32** %14, align 8
  %171 = load i64, i64* %6, align 8
  %172 = call i64 @zend_have_seen_symbol(i32* %170, i64 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load i64, i64* %6, align 8
  %176 = load i32*, i32** %12, align 8
  %177 = load i32*, i32** %13, align 8
  %178 = load i32*, i32** %14, align 8
  %179 = call i32 @zend_check_already_in_use(i64 %175, i32* %176, i32* %177, i32* %178)
  br label %180

180:                                              ; preds = %174, %169
  br label %181

181:                                              ; preds = %180, %166
  %182 = load i32*, i32** %12, align 8
  %183 = call i32 @zend_string_addref(i32* %182)
  %184 = load i32*, i32** %12, align 8
  %185 = call i32* @zend_new_interned_string(i32* %184)
  store i32* %185, i32** %12, align 8
  %186 = load i32*, i32** %7, align 8
  %187 = load i32*, i32** %14, align 8
  %188 = load i32*, i32** %12, align 8
  %189 = call i32 @zend_hash_add_ptr(i32* %186, i32* %187, i32* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %200, label %191

191:                                              ; preds = %181
  %192 = load i32, i32* @E_COMPILE_ERROR, align 4
  %193 = load i64, i64* %6, align 8
  %194 = call i8* @zend_get_use_type_str(i64 %193)
  %195 = load i32*, i32** %12, align 8
  %196 = call i8* @ZSTR_VAL(i32* %195)
  %197 = load i32*, i32** %13, align 8
  %198 = call i8* @ZSTR_VAL(i32* %197)
  %199 = call i32 (i32, i8*, ...) @zend_error_noreturn(i32 %192, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i8* %194, i8* %196, i8* %198)
  br label %200

200:                                              ; preds = %191, %181
  %201 = load i32*, i32** %14, align 8
  %202 = call i32 @zend_string_release_ex(i32* %201, i32 0)
  %203 = load i32*, i32** %13, align 8
  %204 = call i32 @zend_string_release_ex(i32* %203, i32 0)
  br label %205

205:                                              ; preds = %200
  %206 = load i64, i64* %4, align 8
  %207 = add nsw i64 %206, 1
  store i64 %207, i64* %4, align 8
  br label %31

208:                                              ; preds = %31
  ret void
}

declare dso_local %struct.TYPE_7__* @zend_ast_get_list(%struct.TYPE_8__*) #1

declare dso_local i32* @FC(i32) #1

declare dso_local i32* @zend_get_import_ht(i64) #1

declare dso_local i32* @zend_ast_get_str(%struct.TYPE_8__*) #1

declare dso_local i32* @zend_string_copy(i32*) #1

declare dso_local i64 @zend_get_unqualified_name(i32*, i8**, i64*) #1

declare dso_local i32* @zend_string_init(i8*, i64, i32) #1

declare dso_local i64 @zend_string_equals_literal(i32*, i8*) #1

declare dso_local i32 @zend_error_noreturn(i32, i8*, ...) #1

declare dso_local i32 @zend_error(i32, i8*, i8*) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i32* @zend_string_tolower(i32*) #1

declare dso_local i64 @zend_is_reserved_class_name(i32*) #1

declare dso_local i32* @zend_string_alloc(i32, i32) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @zend_str_tolower_copy(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @zend_have_seen_symbol(i32*, i64) #1

declare dso_local i32 @zend_check_already_in_use(i64, i32*, i32*, i32*) #1

declare dso_local i32 @zend_string_efree(i32*) #1

declare dso_local i32 @zend_string_addref(i32*) #1

declare dso_local i32* @zend_new_interned_string(i32*) #1

declare dso_local i32 @zend_hash_add_ptr(i32*, i32*, i32*) #1

declare dso_local i8* @zend_get_use_type_str(i64) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
