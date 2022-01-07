; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_file_cache.c_zend_file_cache_unserialize_class_constant.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_file_cache.c_zend_file_cache_unserialize_class_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*)* @zend_file_cache_unserialize_class_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_file_cache_unserialize_class_constant(i32* %0, i32* %1, i8* %2) #0 {
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
  br i1 %11, label %50, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = call %struct.TYPE_5__* @Z_PTR_P(i32* %13)
  %15 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_5__* %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call %struct.TYPE_5__* @Z_PTR_P(i32* %16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %7, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @ZEND_ASSERT(i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = call i32 @IS_UNSERIALIZED(%struct.TYPE_5__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %12
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = call i32 @UNSERIALIZE_PTR(%struct.TYPE_5__* %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32*, i32** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @zend_file_cache_unserialize_zval(i32* %35, i32* %36, i8* %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %29
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @UNSERIALIZE_STR(i64 %46)
  br label %48

48:                                               ; preds = %43, %29
  br label %49

49:                                               ; preds = %48, %12
  br label %50

50:                                               ; preds = %49, %3
  ret void
}

declare dso_local i32 @IS_UNSERIALIZED(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @Z_PTR_P(i32*) #1

declare dso_local i32 @UNSERIALIZE_PTR(%struct.TYPE_5__*) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i32 @zend_file_cache_unserialize_zval(i32*, i32*, i8*) #1

declare dso_local i32 @UNSERIALIZE_STR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
