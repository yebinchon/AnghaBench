; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_persist_calc.c_zend_persist_ast_calc.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_persist_calc.c_zend_persist_ast_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_11__** }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__** }
%struct.TYPE_9__ = type { i32 }

@ZEND_AST_ZVAL = common dso_local global i64 0, align 8
@ZEND_AST_CONSTANT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @zend_persist_ast_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_persist_ast_calc(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ZEND_AST_ZVAL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ZEND_AST_CONSTANT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11, %1
  %18 = call i32 @ADD_SIZE(i32 4)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = bitcast %struct.TYPE_11__* %19 to %struct.TYPE_9__*
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = call i32 @zend_persist_zval_calc(i32* %21)
  br label %98

23:                                               ; preds = %11
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = call i64 @zend_ast_is_list(%struct.TYPE_11__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %23
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = call %struct.TYPE_10__* @zend_ast_get_list(%struct.TYPE_11__* %28)
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %4, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = mul i64 8, %33
  %35 = add i64 8, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32 @ADD_SIZE(i32 %36)
  store i64 0, i64* %3, align 8
  br label %38

38:                                               ; preds = %61, %27
  %39 = load i64, i64* %3, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %39, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %38
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %47, align 8
  %49 = load i64, i64* %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %48, i64 %49
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = icmp ne %struct.TYPE_11__* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %55, align 8
  %57 = load i64, i64* %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %56, i64 %57
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  call void @zend_persist_ast_calc(%struct.TYPE_11__* %59)
  br label %60

60:                                               ; preds = %53, %45
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %3, align 8
  br label %38

64:                                               ; preds = %38
  br label %97

65:                                               ; preds = %23
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %67 = call i64 @zend_ast_get_num_children(%struct.TYPE_11__* %66)
  store i64 %67, i64* %5, align 8
  %68 = load i64, i64* %5, align 8
  %69 = mul i64 8, %68
  %70 = add i64 8, %69
  %71 = trunc i64 %70 to i32
  %72 = call i32 @ADD_SIZE(i32 %71)
  store i64 0, i64* %3, align 8
  br label %73

73:                                               ; preds = %93, %65
  %74 = load i64, i64* %3, align 8
  %75 = load i64, i64* %5, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %96

77:                                               ; preds = %73
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %79, align 8
  %81 = load i64, i64* %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %80, i64 %81
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = icmp ne %struct.TYPE_11__* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %87, align 8
  %89 = load i64, i64* %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %88, i64 %89
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  call void @zend_persist_ast_calc(%struct.TYPE_11__* %91)
  br label %92

92:                                               ; preds = %85, %77
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %3, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %3, align 8
  br label %73

96:                                               ; preds = %73
  br label %97

97:                                               ; preds = %96, %64
  br label %98

98:                                               ; preds = %97, %17
  ret void
}

declare dso_local i32 @ADD_SIZE(i32) #1

declare dso_local i32 @zend_persist_zval_calc(i32*) #1

declare dso_local i64 @zend_ast_is_list(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @zend_ast_get_list(%struct.TYPE_11__*) #1

declare dso_local i64 @zend_ast_get_num_children(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
