; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/al1/extr_matrix.c_select_col.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/al1/extr_matrix.c_select_col.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PD3 = common dso_local global i32 0, align 4
@PD4 = common dso_local global i32 0, align 4
@PD5 = common dso_local global i32 0, align 4
@PD6 = common dso_local global i32 0, align 4
@PD7 = common dso_local global i32 0, align 4
@DDRD = common dso_local global i32 0, align 4
@PORTD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @select_col to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_col(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @PD3, align 4
  %4 = shl i32 1, %3
  %5 = load i32, i32* @PD4, align 4
  %6 = shl i32 1, %5
  %7 = or i32 %4, %6
  %8 = load i32, i32* @PD5, align 4
  %9 = shl i32 1, %8
  %10 = or i32 %7, %9
  %11 = load i32, i32* @PD6, align 4
  %12 = shl i32 1, %11
  %13 = or i32 %10, %12
  %14 = load i32, i32* @PD7, align 4
  %15 = shl i32 1, %14
  %16 = or i32 %13, %15
  %17 = load i32, i32* @DDRD, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* @DDRD, align 4
  %19 = load i32, i32* @PD3, align 4
  %20 = shl i32 1, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* @PORTD, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* @PORTD, align 4
  %24 = load i32, i32* %2, align 4
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load i32, i32* @PD4, align 4
  %29 = shl i32 1, %28
  %30 = load i32, i32* @PORTD, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* @PORTD, align 4
  br label %38

32:                                               ; preds = %1
  %33 = load i32, i32* @PD4, align 4
  %34 = shl i32 1, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* @PORTD, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* @PORTD, align 4
  br label %38

38:                                               ; preds = %32, %27
  %39 = load i32, i32* %2, align 4
  %40 = and i32 %39, 2
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32, i32* @PD5, align 4
  %44 = shl i32 1, %43
  %45 = load i32, i32* @PORTD, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* @PORTD, align 4
  br label %53

47:                                               ; preds = %38
  %48 = load i32, i32* @PD5, align 4
  %49 = shl i32 1, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* @PORTD, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* @PORTD, align 4
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i32, i32* %2, align 4
  %55 = and i32 %54, 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32, i32* @PD6, align 4
  %59 = shl i32 1, %58
  %60 = load i32, i32* @PORTD, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* @PORTD, align 4
  br label %68

62:                                               ; preds = %53
  %63 = load i32, i32* @PD6, align 4
  %64 = shl i32 1, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* @PORTD, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* @PORTD, align 4
  br label %68

68:                                               ; preds = %62, %57
  %69 = load i32, i32* %2, align 4
  %70 = and i32 %69, 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32, i32* @PD7, align 4
  %74 = shl i32 1, %73
  %75 = load i32, i32* @PORTD, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* @PORTD, align 4
  br label %83

77:                                               ; preds = %68
  %78 = load i32, i32* @PD7, align 4
  %79 = shl i32 1, %78
  %80 = xor i32 %79, -1
  %81 = load i32, i32* @PORTD, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* @PORTD, align 4
  br label %83

83:                                               ; preds = %77, %72
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
