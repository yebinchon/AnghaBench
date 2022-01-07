; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_builtin_functions.c_same_name.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_builtin_functions.c_same_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @same_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @same_name(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %34

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @ZSTR_LEN(i32* %13)
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @ZSTR_LEN(i32* %15)
  %17 = icmp ne i64 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %34

19:                                               ; preds = %12
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* @zend_string_tolower(i32* %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @ZSTR_VAL(i32* %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @ZSTR_VAL(i32* %24)
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @ZSTR_LEN(i32* %26)
  %28 = call i64 @memcmp(i32 %23, i32 %25, i64 %27)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @zend_string_release_ex(i32* %31, i32 0)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %19, %18, %11
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @ZSTR_LEN(i32*) #1

declare dso_local i32* @zend_string_tolower(i32*) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
