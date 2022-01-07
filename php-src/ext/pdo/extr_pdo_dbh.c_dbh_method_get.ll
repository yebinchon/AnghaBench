; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_dbh.c_dbh_method_get.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_dbh.c_dbh_method_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@PDO_DBH_DRIVER_METHOD_KIND_DBH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i32*)* @dbh_method_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dbh_method_get(i32** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %10 = load i32**, i32*** %4, align 8
  %11 = load i32*, i32** %10, align 8
  %12 = call %struct.TYPE_6__* @php_pdo_dbh_fetch_object(i32* %11)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %8, align 8
  %13 = load i32**, i32*** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32* @zend_std_get_method(i32** %13, i32* %14, i32* %15)
  store i32* %16, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %60

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @PDO_DBH_DRIVER_METHOD_KIND_DBH, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %18
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = load i64, i64* @PDO_DBH_DRIVER_METHOD_KIND_DBH, align 8
  %31 = call i32 @pdo_hash_methods(%struct.TYPE_6__* %29, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @PDO_DBH_DRIVER_METHOD_KIND_DBH, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %33, %28
  br label %61

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %18
  %46 = load i32*, i32** %5, align 8
  %47 = call i32* @zend_string_tolower(i32* %46)
  store i32* %47, i32** %9, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @PDO_DBH_DRIVER_METHOD_KIND_DBH, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = call i32* @zend_hash_find_ptr(i32 %55, i32* %56)
  store i32* %57, i32** %7, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @zend_string_release_ex(i32* %58, i32 0)
  br label %60

60:                                               ; preds = %45, %3
  br label %61

61:                                               ; preds = %60, %43
  %62 = load i32*, i32** %7, align 8
  ret i32* %62
}

declare dso_local %struct.TYPE_6__* @php_pdo_dbh_fetch_object(i32*) #1

declare dso_local i32* @zend_std_get_method(i32**, i32*, i32*) #1

declare dso_local i32 @pdo_hash_methods(%struct.TYPE_6__*, i64) #1

declare dso_local i32* @zend_string_tolower(i32*) #1

declare dso_local i32* @zend_hash_find_ptr(i32, i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
