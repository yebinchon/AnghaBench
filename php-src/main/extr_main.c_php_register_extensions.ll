; ModuleID = '/home/carl/AnghaBench/php-src/main/extr_main.c_php_register_extensions.c'
source_filename = "/home/carl/AnghaBench/php-src/main/extr_main.c_php_register_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @php_register_extensions(i32** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32**, i32*** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32*, i32** %7, i64 %9
  store i32** %10, i32*** %6, align 8
  br label %11

11:                                               ; preds = %27, %2
  %12 = load i32**, i32*** %4, align 8
  %13 = load i32**, i32*** %6, align 8
  %14 = icmp ult i32** %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load i32**, i32*** %4, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i32**, i32*** %4, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = call i32* @zend_register_internal_module(i32* %21)
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @FAILURE, align 4
  store i32 %25, i32* %3, align 4
  br label %32

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %15
  %28 = load i32**, i32*** %4, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i32 1
  store i32** %29, i32*** %4, align 8
  br label %11

30:                                               ; preds = %11
  %31 = load i32, i32* @SUCCESS, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32* @zend_register_internal_module(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
