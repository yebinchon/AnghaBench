; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_file_cache.c_zend_file_cache_unserialize_prop_info.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_file_cache.c_zend_file_cache_unserialize_prop_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*)* @zend_file_cache_unserialize_prop_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_file_cache_unserialize_prop_info(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call %struct.TYPE_5__* @Z_PTR_P(i32* %8)
  %10 = call i32 @IS_UNSERIALIZED(%struct.TYPE_5__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %61, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = call %struct.TYPE_5__* @Z_PTR_P(i32* %13)
  %15 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_5__* %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call %struct.TYPE_5__* @Z_PTR_P(i32* %16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %7, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br label %27

27:                                               ; preds = %22, %12
  %28 = phi i1 [ false, %12 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @ZEND_ASSERT(i32 %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = call i32 @IS_UNSERIALIZED(%struct.TYPE_5__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %60, label %36

36:                                               ; preds = %27
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_5__* %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @UNSERIALIZE_STR(i32* %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %36
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @UNSERIALIZE_STR(i32* %52)
  br label %54

54:                                               ; preds = %49, %36
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32*, i32** %5, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @zend_file_cache_unserialize_type(i32* %56, i32* %57, i8* %58)
  br label %60

60:                                               ; preds = %54, %27
  br label %61

61:                                               ; preds = %60, %3
  ret void
}

declare dso_local i32 @IS_UNSERIALIZED(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @Z_PTR_P(i32*) #1

declare dso_local i32 @UNSERIALIZE_PTR(%struct.TYPE_5__*) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i32 @UNSERIALIZE_STR(i32*) #1

declare dso_local i32 @zend_file_cache_unserialize_type(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
