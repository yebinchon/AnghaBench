; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/tetris/extr_tetris_text.c_clear_lines.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/tetris/extr_tetris_text.c_clear_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cury = common dso_local global i32 0, align 4
@curx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ([10 x i8]*)* @clear_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_lines([10 x i8]* %0) #0 {
  %2 = alloca [10 x i8]*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store [10 x i8]* %0, [10 x i8]** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 19, i32* %4, align 4
  br label %11

11:                                               ; preds = %76, %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %79

14:                                               ; preds = %11
  store i8 1, i8* %5, align 1
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %30, %14
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 10
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load [10 x i8]*, [10 x i8]** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [10 x i8], [10 x i8]* %19, i64 %21
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [10 x i8], [10 x i8]* %22, i64 0, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  store i8 0, i8* %5, align 1
  br label %29

29:                                               ; preds = %28, %18
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %15

33:                                               ; preds = %15
  %34 = load i8, i8* %5, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @send_goto_xy(i32 12, i32 %37)
  %39 = call i32 @send_backspaces(i32 12)
  %40 = call i32 (...) @tetris_send_backspace()
  %41 = load i32, i32* @cury, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* @cury, align 4
  store i32 12, i32* @curx, align 4
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %75

45:                                               ; preds = %33
  %46 = load i32, i32* %3, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %74

48:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %70, %48
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 10
  br i1 %51, label %52, label %73

52:                                               ; preds = %49
  %53 = load [10 x i8]*, [10 x i8]** %2, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [10 x i8], [10 x i8]* %53, i64 %55
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [10 x i8], [10 x i8]* %56, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = load [10 x i8]*, [10 x i8]** %2, align 8
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [10 x i8], [10 x i8]* %61, i64 %65
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [10 x i8], [10 x i8]* %66, i64 0, i64 %68
  store i8 %60, i8* %69, align 1
  br label %70

70:                                               ; preds = %52
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %49

73:                                               ; preds = %49
  br label %74

74:                                               ; preds = %73, %45
  br label %75

75:                                               ; preds = %74, %36
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %4, align 4
  br label %11

79:                                               ; preds = %11
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %100, %79
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %3, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %80
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %96, %84
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 10
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = load [10 x i8]*, [10 x i8]** %2, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [10 x i8], [10 x i8]* %89, i64 %91
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [10 x i8], [10 x i8]* %92, i64 0, i64 %94
  store i8 0, i8* %95, align 1
  br label %96

96:                                               ; preds = %88
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %85

99:                                               ; preds = %85
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %80

103:                                              ; preds = %80
  %104 = load i32, i32* %3, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %103
  %107 = call i32 @send_goto_xy(i32 0, i32 0)
  store i32 0, i32* %10, align 4
  br label %108

108:                                              ; preds = %116, %106
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %3, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = call i32 (...) @draw_board_line()
  store i32 0, i32* @curx, align 4
  %114 = load i32, i32* @cury, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* @cury, align 4
  br label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %108

119:                                              ; preds = %108
  br label %120

120:                                              ; preds = %119, %103
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @send_goto_xy(i32, i32) #1

declare dso_local i32 @send_backspaces(i32) #1

declare dso_local i32 @tetris_send_backspace(...) #1

declare dso_local i32 @draw_board_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
