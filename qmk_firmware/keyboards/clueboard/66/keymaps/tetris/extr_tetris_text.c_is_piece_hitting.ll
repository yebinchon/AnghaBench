; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/tetris/extr_tetris_text.c_is_piece_hitting.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/tetris/extr_tetris_text.c_is_piece_hitting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ([10 x i8]*, [7 x i8]*, i32, i32)* @is_piece_hitting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_piece_hitting([10 x i8]* %0, [7 x i8]* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca [10 x i8]*, align 8
  %7 = alloca [7 x i8]*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store [10 x i8]* %0, [10 x i8]** %6, align 8
  store [7 x i8]* %1, [7 x i8]** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %71, %4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 7
  br i1 %14, label %15, label %74

15:                                               ; preds = %12
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %67, %15
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 7
  br i1 %18, label %19, label %70

19:                                               ; preds = %16
  %20 = load [7 x i8]*, [7 x i8]** %7, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [7 x i8], [7 x i8]* %20, i64 %22
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [7 x i8], [7 x i8]* %23, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %66

30:                                               ; preds = %19
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %31, %32
  %34 = icmp sge i32 %33, 10
  br i1 %34, label %65, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %36, %37
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %65, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %41, %42
  %44 = icmp sge i32 %43, 20
  br i1 %44, label %65, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %46, %47
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %45
  %51 = load [10 x i8]*, [10 x i8]** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [10 x i8], [10 x i8]* %51, i64 %55
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [10 x i8], [10 x i8]* %56, i64 0, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %50, %45, %40, %35, %30
  store i32 1, i32* %5, align 4
  br label %75

66:                                               ; preds = %50, %19
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %16

70:                                               ; preds = %16
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %12

74:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %65
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
