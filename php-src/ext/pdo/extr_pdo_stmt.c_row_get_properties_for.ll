; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_stmt.c_row_get_properties_for.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_stmt.c_row_get_properties_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_9__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@ZEND_PROP_PURPOSE_DEBUG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64)* @row_get_properties_for to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @row_get_properties_for(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %6, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @ZEND_PROP_PURPOSE_DEBUG, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = icmp eq %struct.TYPE_7__* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19, %2
  %23 = load i32*, i32** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32* @zend_std_get_properties_for(i32* %23, i64 %24)
  store i32* %25, i32** %3, align 8
  br label %67

26:                                               ; preds = %19
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = call i32 @rebuild_object_properties(%struct.TYPE_9__* %34)
  br label %36

36:                                               ; preds = %32, %26
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32* @zend_array_dup(i32 %40)
  store i32* %41, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %62, %36
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %42
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @fetch_value(%struct.TYPE_7__* %49, i32* %10, i32 %50, i32* null)
  %52 = load i32*, i32** %8, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @zend_hash_update(i32* %52, i32 %60, i32* %10)
  br label %62

62:                                               ; preds = %48
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %42

65:                                               ; preds = %42
  %66 = load i32*, i32** %8, align 8
  store i32* %66, i32** %3, align 8
  br label %67

67:                                               ; preds = %65, %22
  %68 = load i32*, i32** %3, align 8
  ret i32* %68
}

declare dso_local i32* @zend_std_get_properties_for(i32*, i64) #1

declare dso_local i32 @rebuild_object_properties(%struct.TYPE_9__*) #1

declare dso_local i32* @zend_array_dup(i32) #1

declare dso_local i32 @fetch_value(%struct.TYPE_7__*, i32*, i32, i32*) #1

declare dso_local i32 @zend_hash_update(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
