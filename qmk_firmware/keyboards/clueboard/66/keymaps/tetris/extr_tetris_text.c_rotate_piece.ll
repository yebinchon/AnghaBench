; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/tetris/extr_tetris_text.c_rotate_piece.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/tetris/extr_tetris_text.c_rotate_piece.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([7 x i8]*)* @rotate_piece to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rotate_piece([7 x i8]* %0) #0 {
  %2 = alloca [7 x i8]*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store [7 x i8]* %0, [7 x i8]** %2, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %54, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 7
  br i1 %11, label %12, label %57

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %50, %12
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 7
  br i1 %17, label %18, label %53

18:                                               ; preds = %15
  %19 = load [7 x i8]*, [7 x i8]** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [7 x i8], [7 x i8]* %19, i64 %21
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [7 x i8], [7 x i8]* %22, i64 0, i64 %24
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %5, align 1
  %27 = load [7 x i8]*, [7 x i8]** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [7 x i8], [7 x i8]* %27, i64 %29
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [7 x i8], [7 x i8]* %30, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = load [7 x i8]*, [7 x i8]** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [7 x i8], [7 x i8]* %35, i64 %37
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [7 x i8], [7 x i8]* %38, i64 0, i64 %40
  store i8 %34, i8* %41, align 1
  %42 = load i8, i8* %5, align 1
  %43 = load [7 x i8]*, [7 x i8]** %2, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [7 x i8], [7 x i8]* %43, i64 %45
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [7 x i8], [7 x i8]* %46, i64 0, i64 %48
  store i8 %42, i8* %49, align 1
  br label %50

50:                                               ; preds = %18
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %15

53:                                               ; preds = %15
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %9

57:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %103, %57
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 7
  br i1 %60, label %61, label %106

61:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %99, %61
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 3
  br i1 %64, label %65, label %102

65:                                               ; preds = %62
  %66 = load [7 x i8]*, [7 x i8]** %2, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [7 x i8], [7 x i8]* %66, i64 %68
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 6, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [7 x i8], [7 x i8]* %69, i64 0, i64 %72
  %74 = load i8, i8* %73, align 1
  store i8 %74, i8* %8, align 1
  %75 = load [7 x i8]*, [7 x i8]** %2, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [7 x i8], [7 x i8]* %75, i64 %77
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [7 x i8], [7 x i8]* %78, i64 0, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = load [7 x i8]*, [7 x i8]** %2, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [7 x i8], [7 x i8]* %83, i64 %85
  %87 = load i32, i32* %7, align 4
  %88 = sub nsw i32 6, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [7 x i8], [7 x i8]* %86, i64 0, i64 %89
  store i8 %82, i8* %90, align 1
  %91 = load i8, i8* %8, align 1
  %92 = load [7 x i8]*, [7 x i8]** %2, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [7 x i8], [7 x i8]* %92, i64 %94
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [7 x i8], [7 x i8]* %95, i64 0, i64 %97
  store i8 %91, i8* %98, align 1
  br label %99

99:                                               ; preds = %65
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %62

102:                                              ; preds = %62
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %58

106:                                              ; preds = %58
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
