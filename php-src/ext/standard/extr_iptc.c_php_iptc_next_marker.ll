; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_iptc.c_php_iptc_next_marker.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_iptc.c_php_iptc_next_marker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@M_EOI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**)* @php_iptc_next_marker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_iptc_next_marker(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i8**, i8*** %7, align 8
  %12 = call i32 @php_iptc_get1(i32* %9, i32 %10, i8** %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @EOF, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @M_EOI, align 4
  store i32 %17, i32* %4, align 4
  br label %58

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 255
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i8**, i8*** %7, align 8
  %26 = call i32 @php_iptc_get1(i32* %23, i32 %24, i8** %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @EOF, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @M_EOI, align 4
  store i32 %30, i32* %4, align 4
  br label %58

31:                                               ; preds = %22
  br label %19

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %53, %32
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @php_iptc_get1(i32* %34, i32 0, i8** null)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @EOF, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @M_EOI, align 4
  store i32 %40, i32* %4, align 4
  br label %58

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 255
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %8, align 4
  %48 = trunc i32 %47 to i8
  %49 = load i8**, i8*** %7, align 8
  %50 = call i32 @php_iptc_put1(i32* %45, i32 %46, i8 zeroext %48, i8** %49)
  br label %51

51:                                               ; preds = %44, %41
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, 255
  br i1 %55, label %33, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %39, %29, %16
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @php_iptc_get1(i32*, i32, i8**) #1

declare dso_local i32 @php_iptc_put1(i32*, i32, i8 zeroext, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
