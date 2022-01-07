; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_node.c_node_random_range.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_node.c_node_random_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @node_random_range(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %10, 1
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp uge i32 %14, 2147483647
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %21, %16
  %18 = call i32 (...) @os_random()
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %17

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %4, align 4
  %25 = add i32 %23, %24
  store i32 %25, i32* %3, align 4
  br label %55

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %3, align 4
  br label %55

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (...) @os_random()
  store i32 %35, i32* %3, align 4
  br label %55

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %37, 1
  %39 = lshr i32 %38, 1
  %40 = udiv i32 -2147483648, %39
  %41 = sub i32 %40, 1
  %42 = load i32, i32* %6, align 4
  %43 = mul i32 %41, %42
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %48, %36
  %45 = call i32 (...) @os_random()
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp uge i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %44

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %6, align 4
  %52 = urem i32 %50, %51
  %53 = load i32, i32* %4, align 4
  %54 = add i32 %52, %53
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %34, %29, %22
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @os_random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
