; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/xealous/extr_matrix.c_optimized_col_reader.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/xealous/extr_matrix.c_optimized_col_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PINB = common dso_local global i32 0, align 4
@ROW_SHIFTER = common dso_local global i32 0, align 4
@PINF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @optimized_col_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @optimized_col_reader() #0 {
  %1 = load i32, i32* @PINB, align 4
  %2 = and i32 %1, 64
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @ROW_SHIFTER, align 4
  %7 = shl i32 %6, 0
  br label %8

8:                                                ; preds = %5, %4
  %9 = phi i32 [ 0, %4 ], [ %7, %5 ]
  %10 = load i32, i32* @PINB, align 4
  %11 = and i32 %10, 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %17

14:                                               ; preds = %8
  %15 = load i32, i32* @ROW_SHIFTER, align 4
  %16 = shl i32 %15, 1
  br label %17

17:                                               ; preds = %14, %13
  %18 = phi i32 [ 0, %13 ], [ %16, %14 ]
  %19 = or i32 %9, %18
  %20 = load i32, i32* @PINB, align 4
  %21 = and i32 %20, 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @ROW_SHIFTER, align 4
  %26 = shl i32 %25, 2
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi i32 [ 0, %23 ], [ %26, %24 ]
  %29 = or i32 %19, %28
  %30 = load i32, i32* @PINB, align 4
  %31 = and i32 %30, 2
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @ROW_SHIFTER, align 4
  %36 = shl i32 %35, 3
  br label %37

37:                                               ; preds = %34, %33
  %38 = phi i32 [ 0, %33 ], [ %36, %34 ]
  %39 = or i32 %29, %38
  %40 = load i32, i32* @PINF, align 4
  %41 = and i32 %40, 128
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @ROW_SHIFTER, align 4
  %46 = shl i32 %45, 4
  br label %47

47:                                               ; preds = %44, %43
  %48 = phi i32 [ 0, %43 ], [ %46, %44 ]
  %49 = or i32 %39, %48
  %50 = load i32, i32* @PINF, align 4
  %51 = and i32 %50, 64
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @ROW_SHIFTER, align 4
  %56 = shl i32 %55, 5
  br label %57

57:                                               ; preds = %54, %53
  %58 = phi i32 [ 0, %53 ], [ %56, %54 ]
  %59 = or i32 %49, %58
  %60 = load i32, i32* @PINF, align 4
  %61 = and i32 %60, 32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @ROW_SHIFTER, align 4
  %66 = shl i32 %65, 6
  br label %67

67:                                               ; preds = %64, %63
  %68 = phi i32 [ 0, %63 ], [ %66, %64 ]
  %69 = or i32 %59, %68
  %70 = load i32, i32* @PINF, align 4
  %71 = and i32 %70, 16
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %77

74:                                               ; preds = %67
  %75 = load i32, i32* @ROW_SHIFTER, align 4
  %76 = shl i32 %75, 7
  br label %77

77:                                               ; preds = %74, %73
  %78 = phi i32 [ 0, %73 ], [ %76, %74 ]
  %79 = or i32 %69, %78
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
