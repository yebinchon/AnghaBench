; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_file_cache.c_zend_file_cache_unserialize_ast.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_file_cache.c_zend_file_cache_unserialize_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_13__** }
%struct.TYPE_12__ = type { i64, %struct.TYPE_13__** }
%struct.TYPE_11__ = type { i32 }

@ZEND_AST_ZVAL = common dso_local global i64 0, align 8
@ZEND_AST_CONSTANT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32*, i8*)* @zend_file_cache_unserialize_ast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_file_cache_unserialize_ast(%struct.TYPE_13__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ZEND_AST_ZVAL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ZEND_AST_CONSTANT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %15, %3
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = bitcast %struct.TYPE_13__* %22 to %struct.TYPE_11__*
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32*, i32** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @zend_file_cache_unserialize_zval(i32* %24, i32* %25, i8* %26)
  br label %125

28:                                               ; preds = %15
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = call i64 @zend_ast_is_list(%struct.TYPE_13__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %79

32:                                               ; preds = %28
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = call %struct.TYPE_12__* @zend_ast_get_list(%struct.TYPE_13__* %33)
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %8, align 8
  store i64 0, i64* %7, align 8
  br label %35

35:                                               ; preds = %75, %32
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %78

41:                                               ; preds = %35
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %44, i64 %45
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = icmp ne %struct.TYPE_13__* %47, null
  br i1 %48, label %49, label %74

49:                                               ; preds = %41
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %52, i64 %53
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = call i32 @IS_UNSERIALIZED(%struct.TYPE_13__* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %74, label %58

58:                                               ; preds = %49
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %61, i64 %62
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_13__* %64)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %68, i64 %69
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i8*, i8** %6, align 8
  call void @zend_file_cache_unserialize_ast(%struct.TYPE_13__* %71, i32* %72, i8* %73)
  br label %74

74:                                               ; preds = %58, %49, %41
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %7, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %7, align 8
  br label %35

78:                                               ; preds = %35
  br label %124

79:                                               ; preds = %28
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = call i64 @zend_ast_get_num_children(%struct.TYPE_13__* %80)
  store i64 %81, i64* %9, align 8
  store i64 0, i64* %7, align 8
  br label %82

82:                                               ; preds = %120, %79
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %9, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %123

86:                                               ; preds = %82
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %89, i64 %90
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = icmp ne %struct.TYPE_13__* %92, null
  br i1 %93, label %94, label %119

94:                                               ; preds = %86
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %96, align 8
  %98 = load i64, i64* %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %97, i64 %98
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = call i32 @IS_UNSERIALIZED(%struct.TYPE_13__* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %119, label %103

103:                                              ; preds = %94
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %105, align 8
  %107 = load i64, i64* %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %106, i64 %107
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_13__* %109)
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %112, align 8
  %114 = load i64, i64* %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %113, i64 %114
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = load i32*, i32** %5, align 8
  %118 = load i8*, i8** %6, align 8
  call void @zend_file_cache_unserialize_ast(%struct.TYPE_13__* %116, i32* %117, i8* %118)
  br label %119

119:                                              ; preds = %103, %94, %86
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %7, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %7, align 8
  br label %82

123:                                              ; preds = %82
  br label %124

124:                                              ; preds = %123, %78
  br label %125

125:                                              ; preds = %124, %21
  ret void
}

declare dso_local i32 @zend_file_cache_unserialize_zval(i32*, i32*, i8*) #1

declare dso_local i64 @zend_ast_is_list(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @zend_ast_get_list(%struct.TYPE_13__*) #1

declare dso_local i32 @IS_UNSERIALIZED(%struct.TYPE_13__*) #1

declare dso_local i32 @UNSERIALIZE_PTR(%struct.TYPE_13__*) #1

declare dso_local i64 @zend_ast_get_num_children(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
