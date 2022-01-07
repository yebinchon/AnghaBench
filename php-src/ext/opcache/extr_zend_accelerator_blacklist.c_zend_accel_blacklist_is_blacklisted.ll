; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_accelerator_blacklist.c_zend_accel_blacklist_is_blacklisted.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_accelerator_blacklist.c_zend_accel_blacklist_is_blacklisted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zend_accel_blacklist_is_blacklisted(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %9, align 8
  %16 = call i32* (...) @php_pcre_mctx()
  store i32* %16, i32** %10, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %18 = icmp eq %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %55

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %47, %31, %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %53

24:                                               ; preds = %21
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32* @php_pcre_create_match_data(i32 0, i32 %27)
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %21

32:                                               ; preds = %24
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = load i64, i64* %7, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @pcre2_match(i32 %35, i32 %37, i64 %38, i32 0, i32 0, i32* %39, i32* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  store i32 1, i32* %8, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @php_pcre_free_match_data(i32* %45)
  br label %53

47:                                               ; preds = %32
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @php_pcre_free_match_data(i32* %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %9, align 8
  br label %21

53:                                               ; preds = %44, %21
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %19
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32* @php_pcre_mctx(...) #1

declare dso_local i32* @php_pcre_create_match_data(i32, i32) #1

declare dso_local i32 @pcre2_match(i32, i32, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @php_pcre_free_match_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
