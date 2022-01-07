; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_browscap.c_browscap_intern_str_ci.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_browscap.c_browscap_intern_str_ci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@use_heap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32*, i32)* @browscap_intern_str_ci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @browscap_intern_str_ci(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @use_heap, align 4
  %10 = call i32 @ALLOCA_FLAG(i32 %9)
  %11 = load i32*, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @ZSTR_LEN(i32* %12)
  %14 = load i32, i32* @use_heap, align 4
  %15 = call i32 @ZSTR_ALLOCA_ALLOC(i32* %11, i32 %13, i32 %14)
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @ZSTR_VAL(i32* %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @ZSTR_VAL(i32* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @ZSTR_LEN(i32* %20)
  %22 = call i32 @zend_str_tolower_copy(i32 %17, i32 %19, i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %7, align 8
  %26 = call i32* @zend_hash_find_ptr(i32* %24, i32* %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @zend_string_addref(i32* %30)
  br label %47

32:                                               ; preds = %3
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32* @zend_string_dup(i32* %33, i32 %34)
  store i32* %35, i32** %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32*, i32** %8, align 8
  %40 = call i32* @zend_new_interned_string(i32* %39)
  store i32* %40, i32** %8, align 8
  br label %41

41:                                               ; preds = %38, %32
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32*, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @zend_hash_add_new_ptr(i32* %43, i32* %44, i32* %45)
  br label %47

47:                                               ; preds = %41, %29
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* @use_heap, align 4
  %50 = call i32 @ZSTR_ALLOCA_FREE(i32* %48, i32 %49)
  %51 = load i32*, i32** %8, align 8
  ret i32* %51
}

declare dso_local i32 @ALLOCA_FLAG(i32) #1

declare dso_local i32 @ZSTR_ALLOCA_ALLOC(i32*, i32, i32) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @zend_str_tolower_copy(i32, i32, i32) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32* @zend_hash_find_ptr(i32*, i32*) #1

declare dso_local i32 @zend_string_addref(i32*) #1

declare dso_local i32* @zend_string_dup(i32*, i32) #1

declare dso_local i32* @zend_new_interned_string(i32*) #1

declare dso_local i32 @zend_hash_add_new_ptr(i32*, i32*, i32*) #1

declare dso_local i32 @ZSTR_ALLOCA_FREE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
