; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_persist.c_zend_persist_ast.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_persist.c_zend_persist_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_13__** }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__** }

@ZEND_AST_ZVAL = common dso_local global i64 0, align 8
@ZEND_AST_CONSTANT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_13__*)* @zend_persist_ast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @zend_persist_ast(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ZEND_AST_ZVAL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ZEND_AST_CONSTANT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14, %1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = call i8* @zend_shared_memdup(%struct.TYPE_13__* %21, i32 4)
  %23 = bitcast i8* %22 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %5, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = call i32 @zend_persist_zval(i32* %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = bitcast %struct.TYPE_11__* %27 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %4, align 8
  br label %122

29:                                               ; preds = %14
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %31 = call i64 @zend_ast_is_list(%struct.TYPE_13__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %81

33:                                               ; preds = %29
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %35 = call %struct.TYPE_12__* @zend_ast_get_list(%struct.TYPE_13__* %34)
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %6, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul i64 8, %40
  %42 = add i64 8, %41
  %43 = trunc i64 %42 to i32
  %44 = call i8* @zend_shared_memdup(%struct.TYPE_13__* %36, i32 %43)
  %45 = bitcast i8* %44 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %7, align 8
  store i64 0, i64* %3, align 8
  br label %46

46:                                               ; preds = %75, %33
  %47 = load i64, i64* %3, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %47, %51
  br i1 %52, label %53, label %78

53:                                               ; preds = %46
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %55, align 8
  %57 = load i64, i64* %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %56, i64 %57
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = icmp ne %struct.TYPE_13__* %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %53
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %63, align 8
  %65 = load i64, i64* %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %64, i64 %65
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = call %struct.TYPE_13__* @zend_persist_ast(%struct.TYPE_13__* %67)
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %70, align 8
  %72 = load i64, i64* %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %71, i64 %72
  store %struct.TYPE_13__* %68, %struct.TYPE_13__** %73, align 8
  br label %74

74:                                               ; preds = %61, %53
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %3, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %3, align 8
  br label %46

78:                                               ; preds = %46
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %80 = bitcast %struct.TYPE_12__* %79 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %80, %struct.TYPE_13__** %4, align 8
  br label %121

81:                                               ; preds = %29
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %83 = call i64 @zend_ast_get_num_children(%struct.TYPE_13__* %82)
  store i64 %83, i64* %8, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %85 = load i64, i64* %8, align 8
  %86 = mul i64 8, %85
  %87 = add i64 8, %86
  %88 = trunc i64 %87 to i32
  %89 = call i8* @zend_shared_memdup(%struct.TYPE_13__* %84, i32 %88)
  %90 = bitcast i8* %89 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %90, %struct.TYPE_13__** %4, align 8
  store i64 0, i64* %3, align 8
  br label %91

91:                                               ; preds = %117, %81
  %92 = load i64, i64* %3, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %120

95:                                               ; preds = %91
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %97, align 8
  %99 = load i64, i64* %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %98, i64 %99
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  %102 = icmp ne %struct.TYPE_13__* %101, null
  br i1 %102, label %103, label %116

103:                                              ; preds = %95
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %105, align 8
  %107 = load i64, i64* %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %106, i64 %107
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = call %struct.TYPE_13__* @zend_persist_ast(%struct.TYPE_13__* %109)
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %112, align 8
  %114 = load i64, i64* %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %113, i64 %114
  store %struct.TYPE_13__* %110, %struct.TYPE_13__** %115, align 8
  br label %116

116:                                              ; preds = %103, %95
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %3, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %3, align 8
  br label %91

120:                                              ; preds = %91
  br label %121

121:                                              ; preds = %120, %78
  br label %122

122:                                              ; preds = %121, %20
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %123
}

declare dso_local i8* @zend_shared_memdup(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @zend_persist_zval(i32*) #1

declare dso_local i64 @zend_ast_is_list(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @zend_ast_get_list(%struct.TYPE_13__*) #1

declare dso_local i64 @zend_ast_get_num_children(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
