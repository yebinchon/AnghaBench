; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_group_use.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_group_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_9__** }

@ZEND_AST_USE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_compile_group_use(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @zend_ast_get_str(i32 %15)
  store i32* %16, i32** %4, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_8__* @zend_ast_get_list(i32 %21)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %5, align 8
  store i64 0, i64* %3, align 8
  br label %23

23:                                               ; preds = %79, %1
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %82

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %32, i64 %33
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %7, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32* @zend_ast_get_zval(i32 %40)
  store i32* %41, i32** %8, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32* @Z_STR_P(i32* %42)
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @ZSTR_VAL(i32* %44)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @ZSTR_LEN(i32* %46)
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @ZSTR_VAL(i32* %48)
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @ZSTR_LEN(i32* %50)
  %52 = call i32* @zend_concat_names(i32 %45, i32 %47, i32 %49, i32 %51)
  store i32* %52, i32** %10, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @zend_string_release_ex(i32* %53, i32 0)
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @ZVAL_STR(i32* %55, i32* %56)
  %58 = load i32, i32* @ZEND_AST_USE, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %60 = call %struct.TYPE_9__* @zend_ast_create_list(i32 1, i32 %58, %struct.TYPE_9__* %59)
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %6, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %29
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  br label %73

69:                                               ; preds = %29
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i64 [ %68, %65 ], [ %72, %69 ]
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %78 = call i32 @zend_compile_use(%struct.TYPE_9__* %77)
  br label %79

79:                                               ; preds = %73
  %80 = load i64, i64* %3, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %3, align 8
  br label %23

82:                                               ; preds = %23
  ret void
}

declare dso_local i32* @zend_ast_get_str(i32) #1

declare dso_local %struct.TYPE_8__* @zend_ast_get_list(i32) #1

declare dso_local i32* @zend_ast_get_zval(i32) #1

declare dso_local i32* @Z_STR_P(i32*) #1

declare dso_local i32* @zend_concat_names(i32, i32, i32, i32) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

declare dso_local i32 @ZVAL_STR(i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @zend_ast_create_list(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @zend_compile_use(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
