; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_check_nested_declarator_start.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_check_nested_declarator_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YY_ID = common dso_local global i32 0, align 4
@yy_text = common dso_local global i64 0, align 8
@yy_pos = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @check_nested_declarator_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_nested_declarator_start(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 132
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %45

7:                                                ; preds = %1
  %8 = call i32 (...) @get_sym()
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @YY_ID, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %7
  %13 = load i64, i64* @yy_text, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = load i64, i64* @yy_pos, align 8
  %16 = load i64, i64* @yy_text, align 8
  %17 = sub nsw i64 %15, %16
  %18 = call i32 @zend_ffi_is_typedef_name(i8* %14, i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @check_ID(i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %45

26:                                               ; preds = %20
  br label %43

27:                                               ; preds = %12, %7
  %28 = load i32, i32* %3, align 4
  switch i32 %28, label %41 [
    i32 130, label %29
    i32 129, label %31
    i32 128, label %33
    i32 131, label %35
    i32 132, label %37
    i32 133, label %39
  ]

29:                                               ; preds = %27
  %30 = call i32 (...) @get_sym()
  store i32 %30, i32* %3, align 4
  br label %42

31:                                               ; preds = %27
  %32 = call i32 (...) @get_sym()
  store i32 %32, i32* %3, align 4
  br label %42

33:                                               ; preds = %27
  %34 = call i32 (...) @get_sym()
  store i32 %34, i32* %3, align 4
  br label %42

35:                                               ; preds = %27
  %36 = call i32 (...) @get_sym()
  store i32 %36, i32* %3, align 4
  br label %42

37:                                               ; preds = %27
  %38 = call i32 (...) @get_sym()
  store i32 %38, i32* %3, align 4
  br label %42

39:                                               ; preds = %27
  %40 = call i32 (...) @get_sym()
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %27
  store i32 -1, i32* %2, align 4
  br label %45

42:                                               ; preds = %39, %37, %35, %33, %31, %29
  br label %43

43:                                               ; preds = %42, %26
  %44 = load i32, i32* %3, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %41, %25, %6
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @get_sym(...) #1

declare dso_local i32 @zend_ffi_is_typedef_name(i8*, i64) #1

declare dso_local i32 @check_ID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
