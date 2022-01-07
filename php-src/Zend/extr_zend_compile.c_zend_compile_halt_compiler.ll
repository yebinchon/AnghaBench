; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_halt_compiler.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_halt_compiler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__** }

@__const.zend_compile_halt_compiler.const_name = private unnamed_addr constant [25 x i8] c"__COMPILER_HALT_OFFSET__\00", align 16
@has_bracketed_namespaces = common dso_local global i32 0, align 4
@in_namespace = common dso_local global i32 0, align 4
@E_COMPILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"__HALT_COMPILER() can only be used from the outermost scope\00", align 1
@CONST_CS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_compile_halt_compiler(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [25 x i8], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %10, i64 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %3, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = call i32 @zend_ast_get_zval(%struct.TYPE_4__* %13)
  %15 = call i32 @Z_LVAL_P(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = bitcast [25 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 getelementptr inbounds ([25 x i8], [25 x i8]* @__const.zend_compile_halt_compiler.const_name, i32 0, i32 0), i64 25, i1 false)
  %17 = load i32, i32* @has_bracketed_namespaces, align 4
  %18 = call i64 @FC(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load i32, i32* @in_namespace, align 4
  %22 = call i64 @FC(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @E_COMPILE_ERROR, align 4
  %26 = call i32 @zend_error_noreturn(i32 %25, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %20, %1
  %28 = call i32* (...) @zend_get_compiled_filename()
  store i32* %28, i32** %5, align 8
  %29 = getelementptr inbounds [25 x i8], [25 x i8]* %7, i64 0, i64 0
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @ZSTR_VAL(i32* %30)
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @ZSTR_LEN(i32* %32)
  %34 = call i32* @zend_mangle_property_name(i8* %29, i32 24, i32 %31, i32 %33, i32 0)
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @ZSTR_VAL(i32* %35)
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @ZSTR_LEN(i32* %37)
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @CONST_CS, align 4
  %41 = call i32 @zend_register_long_constant(i32 %36, i32 %38, i32 %39, i32 %40, i32 0)
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @zend_string_release_ex(i32* %42, i32 0)
  ret void
}

declare dso_local i32 @Z_LVAL_P(i32) #1

declare dso_local i32 @zend_ast_get_zval(%struct.TYPE_4__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @FC(i32) #1

declare dso_local i32 @zend_error_noreturn(i32, i8*) #1

declare dso_local i32* @zend_get_compiled_filename(...) #1

declare dso_local i32* @zend_mangle_property_name(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @zend_register_long_constant(i32, i32, i32, i32, i32) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
