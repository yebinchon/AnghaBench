; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_get_ssa_alias_types.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_get_ssa_alias_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HTTP_RESPONSE_HEADER_ALIAS = common dso_local global i64 0, align 8
@MAY_BE_ARRAY = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_KEY_LONG = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_OF_STRING = common dso_local global i32 0, align 4
@MAY_BE_RC1 = common dso_local global i32 0, align 4
@MAY_BE_RCN = common dso_local global i32 0, align 4
@MAY_BE_UNDEF = common dso_local global i32 0, align 4
@MAY_BE_REF = common dso_local global i32 0, align 4
@MAY_BE_ANY = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_KEY_ANY = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_OF_ANY = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_OF_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @get_ssa_alias_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ssa_alias_types(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @HTTP_RESPONSE_HEADER_ALIAS, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i32, i32* @MAY_BE_ARRAY, align 4
  %9 = load i32, i32* @MAY_BE_ARRAY_KEY_LONG, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @MAY_BE_ARRAY_OF_STRING, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MAY_BE_RC1, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MAY_BE_RCN, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %2, align 4
  br label %33

17:                                               ; preds = %1
  %18 = load i32, i32* @MAY_BE_UNDEF, align 4
  %19 = load i32, i32* @MAY_BE_RC1, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MAY_BE_RCN, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MAY_BE_REF, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MAY_BE_ANY, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MAY_BE_ARRAY_KEY_ANY, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @MAY_BE_ARRAY_OF_ANY, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @MAY_BE_ARRAY_OF_REF, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %17, %7
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
