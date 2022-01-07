; ModuleID = '/home/carl/AnghaBench/php-src/ext/zip/extr_php_zip.c_php_zip_get_property_ptr_ptr.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/zip/extr_php_zip.c_php_zip_get_property_ptr_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32, i8**)* @php_zip_get_property_ptr_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @php_zip_get_property_ptr_ptr(i32* %0, i32* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.TYPE_3__* @php_zip_fetch_object(i32* %12)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %9, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32* @zend_hash_find_ptr(i32* %21, i32* %22)
  store i32* %23, i32** %11, align 8
  br label %24

24:                                               ; preds = %18, %4
  %25 = load i32*, i32** %11, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i8**, i8*** %8, align 8
  %32 = call i32* @zend_std_get_property_ptr_ptr(i32* %28, i32* %29, i32 %30, i8** %31)
  store i32* %32, i32** %10, align 8
  br label %33

33:                                               ; preds = %27, %24
  %34 = load i32*, i32** %10, align 8
  ret i32* %34
}

declare dso_local %struct.TYPE_3__* @php_zip_fetch_object(i32*) #1

declare dso_local i32* @zend_hash_find_ptr(i32*, i32*) #1

declare dso_local i32* @zend_std_get_property_ptr_ptr(i32*, i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
