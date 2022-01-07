; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_execute_API.c_zval_call_destructor.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_execute_API.c_zval_call_destructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_INDIRECT = common dso_local global i64 0, align 8
@IS_OBJECT = common dso_local global i64 0, align 8
@ZEND_HASH_APPLY_REMOVE = common dso_local global i32 0, align 4
@ZEND_HASH_APPLY_KEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @zval_call_destructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zval_call_destructor(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i64 @Z_TYPE_P(i32* %4)
  %6 = load i64, i64* @IS_INDIRECT, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i32* @Z_INDIRECT_P(i32* %9)
  store i32* %10, i32** %3, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @Z_TYPE_P(i32* %12)
  %14 = load i64, i64* @IS_OBJECT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @Z_REFCOUNT_P(i32* %17)
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @ZEND_HASH_APPLY_REMOVE, align 4
  store i32 %21, i32* %2, align 4
  br label %24

22:                                               ; preds = %16, %11
  %23 = load i32, i32* @ZEND_HASH_APPLY_KEEP, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32* @Z_INDIRECT_P(i32*) #1

declare dso_local i32 @Z_REFCOUNT_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
