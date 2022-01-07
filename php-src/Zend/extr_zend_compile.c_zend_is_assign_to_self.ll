; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_is_assign_to_self.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_is_assign_to_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_6__** }

@ZEND_AST_VAR = common dso_local global i64 0, align 8
@ZEND_AST_ZVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zend_is_assign_to_self(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ZEND_AST_VAR, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %17, i64 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ZEND_AST_ZVAL, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %84

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %38, %25
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = call i64 @zend_is_variable(%struct.TYPE_6__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ZEND_AST_VAR, align 8
  %35 = icmp ne i64 %33, %34
  br label %36

36:                                               ; preds = %30, %26
  %37 = phi i1 [ false, %26 ], [ %35, %30 ]
  br i1 %37, label %38, label %44

38:                                               ; preds = %36
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %41, i64 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %4, align 8
  br label %26

44:                                               ; preds = %36
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ZEND_AST_VAR, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %60, label %50

50:                                               ; preds = %44
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %53, i64 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ZEND_AST_ZVAL, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %50, %44
  store i32 0, i32* %3, align 4
  br label %84

61:                                               ; preds = %50
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %64, i64 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = call i32 @zend_ast_get_zval(%struct.TYPE_6__* %66)
  %68 = call i32* @zval_get_string(i32 %67)
  store i32* %68, i32** %6, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %71, i64 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = call i32 @zend_ast_get_zval(%struct.TYPE_6__* %73)
  %75 = call i32* @zval_get_string(i32 %74)
  store i32* %75, i32** %7, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @zend_string_equals(i32* %76, i32* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @zend_string_release_ex(i32* %79, i32 0)
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @zend_string_release_ex(i32* %81, i32 0)
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %61, %60, %24
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @zend_is_variable(%struct.TYPE_6__*) #1

declare dso_local i32* @zval_get_string(i32) #1

declare dso_local i32 @zend_ast_get_zval(%struct.TYPE_6__*) #1

declare dso_local i32 @zend_string_equals(i32*, i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
