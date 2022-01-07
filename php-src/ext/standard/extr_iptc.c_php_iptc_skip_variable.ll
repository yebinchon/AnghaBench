; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_iptc.c_php_iptc_skip_variable.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_iptc.c_php_iptc_skip_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@M_EOI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**)* @php_iptc_skip_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_iptc_skip_variable(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i8**, i8*** %7, align 8
  %14 = call i32 @php_iptc_get1(i32* %11, i32 %12, i8** %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @EOF, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @M_EOI, align 4
  store i32 %18, i32* %4, align 4
  br label %54

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i8**, i8*** %7, align 8
  %23 = call i32 @php_iptc_get1(i32* %20, i32 %21, i8** %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @EOF, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @M_EOI, align 4
  store i32 %27, i32* %4, align 4
  br label %54

28:                                               ; preds = %19
  %29 = load i32, i32* %9, align 4
  %30 = trunc i32 %29 to i8
  %31 = zext i8 %30 to i32
  %32 = shl i32 %31, 8
  %33 = load i32, i32* %10, align 4
  %34 = trunc i32 %33 to i8
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %32, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sub i32 %37, 2
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %52, %28
  %40 = load i32, i32* %8, align 4
  %41 = add i32 %40, -1
  store i32 %41, i32* %8, align 4
  %42 = icmp ne i32 %40, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i8**, i8*** %7, align 8
  %47 = call i32 @php_iptc_get1(i32* %44, i32 %45, i8** %46)
  %48 = load i32, i32* @EOF, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @M_EOI, align 4
  store i32 %51, i32* %4, align 4
  br label %54

52:                                               ; preds = %43
  br label %39

53:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %50, %26, %17
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @php_iptc_get1(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
