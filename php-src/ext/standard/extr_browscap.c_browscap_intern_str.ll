; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_browscap.c_browscap_intern_str.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_browscap.c_browscap_intern_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32*, i64)* @browscap_intern_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @browscap_intern_str(%struct.TYPE_3__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32*, i32** %5, align 8
  %11 = call i32* @zend_hash_find_ptr(i32* %9, i32* %10)
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @zend_string_addref(i32* %15)
  br label %31

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = call i32* @zend_string_copy(i32* %18)
  store i32* %19, i32** %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @zend_new_interned_string(i32* %23)
  store i32* %24, i32** %7, align 8
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @zend_hash_add_new_ptr(i32* %27, i32* %28, i32* %29)
  br label %31

31:                                               ; preds = %25, %14
  %32 = load i32*, i32** %7, align 8
  ret i32* %32
}

declare dso_local i32* @zend_hash_find_ptr(i32*, i32*) #1

declare dso_local i32 @zend_string_addref(i32*) #1

declare dso_local i32* @zend_string_copy(i32*) #1

declare dso_local i32* @zend_new_interned_string(i32*) #1

declare dso_local i32 @zend_hash_add_new_ptr(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
