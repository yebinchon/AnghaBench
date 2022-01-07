; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_browscap.c_browscap_zval_copy_ctor.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_browscap.c_browscap_zval_copy_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_STRING = common dso_local global i64 0, align 8
@GC_PERSISTENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @browscap_zval_copy_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @browscap_zval_copy_ctor(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i64 @Z_REFCOUNTED_P(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @Z_TYPE_P(i32* %8)
  %10 = load i64, i64* @IS_STRING, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @ZEND_ASSERT(i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32* @Z_STR_P(i32* %14)
  store i32* %15, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @GC_FLAGS(i32* %16)
  %18 = load i32, i32* @GC_PERSISTENT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %7
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @GC_ADDREF(i32* %22)
  br label %32

24:                                               ; preds = %7
  %25 = load i32*, i32** %2, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @ZSTR_VAL(i32* %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @ZSTR_LEN(i32* %28)
  %30 = call i32 @zend_string_init(i32 %27, i32 %29, i32 0)
  %31 = call i32 @ZVAL_NEW_STR(i32* %25, i32 %30)
  br label %32

32:                                               ; preds = %24, %21
  br label %33

33:                                               ; preds = %32, %1
  ret void
}

declare dso_local i64 @Z_REFCOUNTED_P(i32*) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32* @Z_STR_P(i32*) #1

declare dso_local i32 @GC_FLAGS(i32*) #1

declare dso_local i32 @GC_ADDREF(i32*) #1

declare dso_local i32 @ZVAL_NEW_STR(i32*, i32) #1

declare dso_local i32 @zend_string_init(i32, i32, i32) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
