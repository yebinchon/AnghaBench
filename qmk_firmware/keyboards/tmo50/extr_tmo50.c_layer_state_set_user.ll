; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/tmo50/extr_tmo50.c_layer_state_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/tmo50/extr_tmo50.c_layer_state_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PB0 = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4
@PB1 = common dso_local global i32 0, align 4
@PB2 = common dso_local global i32 0, align 4
@PB3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @layer_state_set_user(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @biton32(i32 %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i32, i32* @PB0, align 4
  %8 = shl i32 1, %7
  %9 = xor i32 %8, -1
  %10 = load i32, i32* @PORTB, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* @PORTB, align 4
  br label %17

12:                                               ; preds = %1
  %13 = load i32, i32* @PB0, align 4
  %14 = shl i32 1, %13
  %15 = load i32, i32* @PORTB, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* @PORTB, align 4
  br label %17

17:                                               ; preds = %12, %6
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @biton32(i32 %18)
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* @PB1, align 4
  %23 = shl i32 1, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* @PORTB, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* @PORTB, align 4
  br label %32

27:                                               ; preds = %17
  %28 = load i32, i32* @PB1, align 4
  %29 = shl i32 1, %28
  %30 = load i32, i32* @PORTB, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* @PORTB, align 4
  br label %32

32:                                               ; preds = %27, %21
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @biton32(i32 %33)
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* @PB2, align 4
  %38 = shl i32 1, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* @PORTB, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* @PORTB, align 4
  br label %47

42:                                               ; preds = %32
  %43 = load i32, i32* @PB2, align 4
  %44 = shl i32 1, %43
  %45 = load i32, i32* @PORTB, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* @PORTB, align 4
  br label %47

47:                                               ; preds = %42, %36
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @biton32(i32 %48)
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* @PB3, align 4
  %53 = shl i32 1, %52
  %54 = xor i32 %53, -1
  %55 = load i32, i32* @PORTB, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* @PORTB, align 4
  br label %62

57:                                               ; preds = %47
  %58 = load i32, i32* @PB3, align 4
  %59 = shl i32 1, %58
  %60 = load i32, i32* @PORTB, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* @PORTB, align 4
  br label %62

62:                                               ; preds = %57, %51
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @biton32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
