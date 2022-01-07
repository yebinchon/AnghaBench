; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_stmt.c_dbstmt_method_get.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_stmt.c_dbstmt_method_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32** }

@PDO_DBH_DRIVER_METHOD_KIND_STMT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__**, i32*, i32*)* @dbstmt_method_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dbstmt_method_get(%struct.TYPE_11__** %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_11__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %11 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %9, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32* @zend_string_tolower(i32* %13)
  store i32* %14, i32** %8, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32*, i32** %8, align 8
  %20 = call i32* @zend_hash_find_ptr(i32* %18, i32* %19)
  store i32* %20, i32** %7, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %73

22:                                               ; preds = %3
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %24 = call %struct.TYPE_12__* @php_pdo_stmt_fetch_object(%struct.TYPE_11__* %23)
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %10, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = icmp ne %struct.TYPE_10__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %74

30:                                               ; preds = %22
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = load i64, i64* @PDO_DBH_DRIVER_METHOD_KIND_STMT, align 8
  %37 = getelementptr inbounds i32*, i32** %35, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %59, label %40

40:                                               ; preds = %30
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = call i32 @Z_PDO_OBJECT_P(i32* %42)
  %44 = load i64, i64* @PDO_DBH_DRIVER_METHOD_KIND_STMT, align 8
  %45 = call i32 @pdo_hash_methods(i32 %43, i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32**, i32*** %51, align 8
  %53 = load i64, i64* @PDO_DBH_DRIVER_METHOD_KIND_STMT, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %47, %40
  br label %74

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %30
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32**, i32*** %63, align 8
  %65 = load i64, i64* @PDO_DBH_DRIVER_METHOD_KIND_STMT, align 8
  %66 = getelementptr inbounds i32*, i32** %64, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = call i32* @zend_hash_find_ptr(i32* %67, i32* %68)
  store i32* %69, i32** %7, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %74

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %3
  br label %74

74:                                               ; preds = %73, %71, %57, %29
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @zend_string_release_ex(i32* %75, i32 0)
  %77 = load i32*, i32** %7, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = call i32* @zend_std_get_method(%struct.TYPE_11__** %80, i32* %81, i32* %82)
  store i32* %83, i32** %7, align 8
  br label %84

84:                                               ; preds = %79, %74
  %85 = load i32*, i32** %7, align 8
  ret i32* %85
}

declare dso_local i32* @zend_string_tolower(i32*) #1

declare dso_local i32* @zend_hash_find_ptr(i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @php_pdo_stmt_fetch_object(%struct.TYPE_11__*) #1

declare dso_local i32 @pdo_hash_methods(i32, i64) #1

declare dso_local i32 @Z_PDO_OBJECT_P(i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

declare dso_local i32* @zend_std_get_method(%struct.TYPE_11__**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
