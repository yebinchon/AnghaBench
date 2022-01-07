; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_file_cache.c_zend_file_cache_serialize_ast.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_file_cache.c_zend_file_cache_serialize_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_14__** }
%struct.TYPE_13__ = type { i64, %struct.TYPE_14__** }
%struct.TYPE_12__ = type { i32 }

@ZEND_AST_ZVAL = common dso_local global i64 0, align 8
@ZEND_AST_CONSTANT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32*, i32*, i8*)* @zend_file_cache_serialize_ast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_file_cache_serialize_ast(%struct.TYPE_14__* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ZEND_AST_ZVAL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ZEND_AST_CONSTANT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18, %4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = bitcast %struct.TYPE_14__* %25 to %struct.TYPE_12__*
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @zend_file_cache_serialize_zval(i32* %27, i32* %28, i32* %29, i8* %30)
  br label %137

32:                                               ; preds = %18
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = call i64 @zend_ast_is_list(%struct.TYPE_14__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %87

36:                                               ; preds = %32
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = call %struct.TYPE_13__* @zend_ast_get_list(%struct.TYPE_14__* %37)
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %11, align 8
  store i64 0, i64* %9, align 8
  br label %39

39:                                               ; preds = %83, %36
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %86

45:                                               ; preds = %39
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %48, i64 %49
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = icmp ne %struct.TYPE_14__* %51, null
  br i1 %52, label %53, label %82

53:                                               ; preds = %45
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %56, i64 %57
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = call i32 @IS_SERIALIZED(%struct.TYPE_14__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %53
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %65, i64 %66
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = call i32 @SERIALIZE_PTR(%struct.TYPE_14__* %68)
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %72, i64 %73
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  store %struct.TYPE_14__* %75, %struct.TYPE_14__** %10, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %77 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_14__* %76)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = load i8*, i8** %8, align 8
  call void @zend_file_cache_serialize_ast(%struct.TYPE_14__* %78, i32* %79, i32* %80, i8* %81)
  br label %82

82:                                               ; preds = %62, %53, %45
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %9, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %9, align 8
  br label %39

86:                                               ; preds = %39
  br label %136

87:                                               ; preds = %32
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %89 = call i64 @zend_ast_get_num_children(%struct.TYPE_14__* %88)
  store i64 %89, i64* %12, align 8
  store i64 0, i64* %9, align 8
  br label %90

90:                                               ; preds = %132, %87
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* %12, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %135

94:                                               ; preds = %90
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %96, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %97, i64 %98
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = icmp ne %struct.TYPE_14__* %100, null
  br i1 %101, label %102, label %131

102:                                              ; preds = %94
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %104, align 8
  %106 = load i64, i64* %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %105, i64 %106
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = call i32 @IS_SERIALIZED(%struct.TYPE_14__* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %131, label %111

111:                                              ; preds = %102
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %113, align 8
  %115 = load i64, i64* %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %114, i64 %115
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = call i32 @SERIALIZE_PTR(%struct.TYPE_14__* %117)
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %120, align 8
  %122 = load i64, i64* %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %121, i64 %122
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  store %struct.TYPE_14__* %124, %struct.TYPE_14__** %10, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %126 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_14__* %125)
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = load i32*, i32** %7, align 8
  %130 = load i8*, i8** %8, align 8
  call void @zend_file_cache_serialize_ast(%struct.TYPE_14__* %127, i32* %128, i32* %129, i8* %130)
  br label %131

131:                                              ; preds = %111, %102, %94
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %9, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %9, align 8
  br label %90

135:                                              ; preds = %90
  br label %136

136:                                              ; preds = %135, %86
  br label %137

137:                                              ; preds = %136, %24
  ret void
}

declare dso_local i32 @zend_file_cache_serialize_zval(i32*, i32*, i32*, i8*) #1

declare dso_local i64 @zend_ast_is_list(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @zend_ast_get_list(%struct.TYPE_14__*) #1

declare dso_local i32 @IS_SERIALIZED(%struct.TYPE_14__*) #1

declare dso_local i32 @SERIALIZE_PTR(%struct.TYPE_14__*) #1

declare dso_local i32 @UNSERIALIZE_PTR(%struct.TYPE_14__*) #1

declare dso_local i64 @zend_ast_get_num_children(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
