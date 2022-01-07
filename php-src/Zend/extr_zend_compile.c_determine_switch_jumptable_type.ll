; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_determine_switch_jumptable_type.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_determine_switch_jumptable_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64, %struct.TYPE_7__** }

@IS_UNDEF = common dso_local global i64 0, align 8
@ZEND_AST_ZVAL = common dso_local global i64 0, align 8
@IS_LONG = common dso_local global i64 0, align 8
@IS_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*)* @determine_switch_jumptable_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @determine_switch_jumptable_type(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %9 = load i64, i64* @IS_UNDEF, align 8
  store i64 %9, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %10

10:                                               ; preds = %93, %1
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %96

16:                                               ; preds = %10
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %19, i64 %20
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %6, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %25, i64 0
  store %struct.TYPE_7__** %26, %struct.TYPE_7__*** %7, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %29, i64 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = icmp ne %struct.TYPE_7__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %16
  br label %93

34:                                               ; preds = %16
  %35 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %36 = call i32 @zend_eval_const_expr(%struct.TYPE_7__** %35)
  %37 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ZEND_AST_ZVAL, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i64, i64* @IS_UNDEF, align 8
  store i64 %44, i64* %2, align 8
  br label %98

45:                                               ; preds = %34
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %48, i64 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = call i32* @zend_ast_get_zval(%struct.TYPE_7__* %50)
  store i32* %51, i32** %8, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i64 @Z_TYPE_P(i32* %52)
  %54 = load i64, i64* @IS_LONG, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %45
  %57 = load i32*, i32** %8, align 8
  %58 = call i64 @Z_TYPE_P(i32* %57)
  %59 = load i64, i64* @IS_STRING, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i64, i64* @IS_UNDEF, align 8
  store i64 %62, i64* %2, align 8
  br label %98

63:                                               ; preds = %56, %45
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* @IS_UNDEF, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32*, i32** %8, align 8
  %69 = call i64 @Z_TYPE_P(i32* %68)
  store i64 %69, i64* %5, align 8
  br label %78

70:                                               ; preds = %63
  %71 = load i64, i64* %5, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = call i64 @Z_TYPE_P(i32* %72)
  %74 = icmp ne i64 %71, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i64, i64* @IS_UNDEF, align 8
  store i64 %76, i64* %2, align 8
  br label %98

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %67
  %79 = load i32*, i32** %8, align 8
  %80 = call i64 @Z_TYPE_P(i32* %79)
  %81 = load i64, i64* @IS_STRING, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @Z_STRVAL_P(i32* %84)
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @Z_STRLEN_P(i32* %86)
  %88 = call i64 @is_numeric_string(i32 %85, i32 %87, i32* null, i32* null, i32 0)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i64, i64* @IS_UNDEF, align 8
  store i64 %91, i64* %2, align 8
  br label %98

92:                                               ; preds = %83, %78
  br label %93

93:                                               ; preds = %92, %33
  %94 = load i64, i64* %4, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %4, align 8
  br label %10

96:                                               ; preds = %10
  %97 = load i64, i64* %5, align 8
  store i64 %97, i64* %2, align 8
  br label %98

98:                                               ; preds = %96, %90, %75, %61, %43
  %99 = load i64, i64* %2, align 8
  ret i64 %99
}

declare dso_local i32 @zend_eval_const_expr(%struct.TYPE_7__**) #1

declare dso_local i32* @zend_ast_get_zval(%struct.TYPE_7__*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i64 @is_numeric_string(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @Z_STRVAL_P(i32*) #1

declare dso_local i32 @Z_STRLEN_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
