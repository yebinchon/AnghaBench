; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_zend_convert_type_declaration_mask.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_zend_convert_type_declaration_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAY_BE_ANY = common dso_local global i32 0, align 4
@MAY_BE_VOID = common dso_local global i32 0, align 4
@MAY_BE_NULL = common dso_local global i32 0, align 4
@MAY_BE_CALLABLE = common dso_local global i32 0, align 4
@MAY_BE_STRING = common dso_local global i32 0, align 4
@MAY_BE_OBJECT = common dso_local global i32 0, align 4
@MAY_BE_ARRAY = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_KEY_ANY = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_OF_ANY = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_OF_REF = common dso_local global i32 0, align 4
@MAY_BE_ITERABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @zend_convert_type_declaration_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zend_convert_type_declaration_mask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @MAY_BE_ANY, align 4
  %6 = and i32 %4, %5
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @MAY_BE_VOID, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @MAY_BE_NULL, align 4
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %11, %1
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @MAY_BE_CALLABLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load i32, i32* @MAY_BE_STRING, align 4
  %22 = load i32, i32* @MAY_BE_OBJECT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @MAY_BE_ARRAY, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MAY_BE_ARRAY_KEY_ANY, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MAY_BE_ARRAY_OF_ANY, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @MAY_BE_ARRAY_OF_REF, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %20, %15
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @MAY_BE_ITERABLE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load i32, i32* @MAY_BE_OBJECT, align 4
  %41 = load i32, i32* @MAY_BE_ARRAY, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @MAY_BE_ARRAY_KEY_ANY, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @MAY_BE_ARRAY_OF_ANY, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @MAY_BE_ARRAY_OF_REF, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %39, %34
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @MAY_BE_ARRAY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load i32, i32* @MAY_BE_ARRAY_KEY_ANY, align 4
  %58 = load i32, i32* @MAY_BE_ARRAY_OF_ANY, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @MAY_BE_ARRAY_OF_REF, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %3, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %56, %51
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
