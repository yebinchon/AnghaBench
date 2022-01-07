; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/tetris/extr_tetris_text.c_move_piece_from_to.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/tetris/extr_tetris_text.c_move_piece_from_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([7 x i8]*, [7 x i8]*, i32, i32)* @move_piece_from_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_piece_from_to([7 x i8]* %0, [7 x i8]* %1, i32 %2, i32 %3) #0 {
  %5 = alloca [7 x i8]*, align 8
  %6 = alloca [7 x i8]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store [7 x i8]* %0, [7 x i8]** %5, align 8
  store [7 x i8]* %1, [7 x i8]** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %71, %4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 7
  br i1 %13, label %14, label %74

14:                                               ; preds = %11
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %67, %14
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 7
  br i1 %17, label %18, label %70

18:                                               ; preds = %15
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %18
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  %27 = icmp slt i32 %26, 7
  br i1 %27, label %28, label %58

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %29, %30
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %34, %35
  %37 = icmp slt i32 %36, 7
  br i1 %37, label %38, label %58

38:                                               ; preds = %33
  %39 = load [7 x i8]*, [7 x i8]** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [7 x i8], [7 x i8]* %39, i64 %43
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [7 x i8], [7 x i8]* %44, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = load [7 x i8]*, [7 x i8]** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [7 x i8], [7 x i8]* %51, i64 %53
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [7 x i8], [7 x i8]* %54, i64 0, i64 %56
  store i8 %50, i8* %57, align 1
  br label %66

58:                                               ; preds = %33, %28, %23, %18
  %59 = load [7 x i8]*, [7 x i8]** %6, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [7 x i8], [7 x i8]* %59, i64 %61
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [7 x i8], [7 x i8]* %62, i64 0, i64 %64
  store i8 0, i8* %65, align 1
  br label %66

66:                                               ; preds = %58, %38
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %15

70:                                               ; preds = %15
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %11

74:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
