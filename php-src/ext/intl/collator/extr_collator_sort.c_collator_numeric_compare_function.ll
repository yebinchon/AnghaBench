; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/collator/extr_collator_sort.c_collator_numeric_compare_function.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/collator/extr_collator_sort.c_collator_numeric_compare_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_STRING = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @collator_numeric_compare_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collator_numeric_compare_function(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @Z_TYPE_P(i32* %11)
  %13 = load i64, i64* @IS_STRING, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32* @collator_convert_string_to_double(i32* %16, i32* %7)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  store i32* %18, i32** %5, align 8
  br label %19

19:                                               ; preds = %15, %3
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @Z_TYPE_P(i32* %20)
  %22 = load i64, i64* @IS_STRING, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32*, i32** %6, align 8
  %26 = call i32* @collator_convert_string_to_double(i32* %25, i32* %8)
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  store i32* %27, i32** %6, align 8
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @numeric_compare_function(i32* %30, i32* %31)
  %33 = call i32 @ZVAL_LONG(i32* %29, i32 %32)
  %34 = load i32*, i32** %9, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @zval_ptr_dtor(i32* %37)
  br label %39

39:                                               ; preds = %36, %28
  %40 = load i32*, i32** %10, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @zval_ptr_dtor(i32* %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* @SUCCESS, align 4
  ret i32 %46
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32* @collator_convert_string_to_double(i32*, i32*) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @numeric_compare_function(i32*, i32*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
