; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/z80/extr_z80_tab.h_z80_ed_branch_index_res.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/z80/extr_z80_tab.h_z80_ed_branch_index_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @z80_ed_branch_index_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z80_ed_branch_index_res(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sgt i32 %4, 63
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp sgt i32 76, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = sub nsw i32 %10, 64
  store i32 %11, i32* %2, align 4
  br label %107

12:                                               ; preds = %6, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 77
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 12, i32* %2, align 4
  br label %107

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = icmp sgt i32 %17, 77
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = icmp sgt i32 84, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = sub nsw i32 %23, 66
  store i32 %24, i32* %2, align 4
  br label %107

25:                                               ; preds = %19, %16
  %26 = load i32, i32* %3, align 4
  %27 = icmp sgt i32 %26, 85
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = icmp sgt i32 92, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = sub nsw i32 %32, 68
  store i32 %33, i32* %2, align 4
  br label %107

34:                                               ; preds = %28, %25
  %35 = load i32, i32* %3, align 4
  %36 = icmp sgt i32 %35, 93
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32, i32* %3, align 4
  %39 = icmp sgt i32 99, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = sub nsw i32 %41, 70
  store i32 %42, i32* %2, align 4
  br label %107

43:                                               ; preds = %37, %34
  %44 = load i32, i32* %3, align 4
  %45 = icmp sgt i32 %44, 102
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* %3, align 4
  %48 = icmp sgt i32 107, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %3, align 4
  %51 = sub nsw i32 %50, 74
  store i32 %51, i32* %2, align 4
  br label %107

52:                                               ; preds = %46, %43
  %53 = load i32, i32* %3, align 4
  %54 = icmp sgt i32 %53, 110
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* %3, align 4
  %57 = icmp sgt i32 116, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %3, align 4
  %60 = sub nsw i32 %59, 78
  store i32 %60, i32* %2, align 4
  br label %107

61:                                               ; preds = %55, %52
  %62 = load i32, i32* %3, align 4
  %63 = icmp sgt i32 %62, 119
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* %3, align 4
  %66 = icmp sgt i32 124, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %3, align 4
  %69 = sub nsw i32 %68, 82
  store i32 %69, i32* %2, align 4
  br label %107

70:                                               ; preds = %64, %61
  %71 = load i32, i32* %3, align 4
  %72 = icmp sgt i32 %71, 159
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, i32* %3, align 4
  %75 = icmp sgt i32 164, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %3, align 4
  %78 = sub nsw i32 %77, 118
  store i32 %78, i32* %2, align 4
  br label %107

79:                                               ; preds = %73, %70
  %80 = load i32, i32* %3, align 4
  %81 = icmp sgt i32 %80, 167
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32, i32* %3, align 4
  %84 = icmp sgt i32 172, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %3, align 4
  %87 = sub nsw i32 %86, 122
  store i32 %87, i32* %2, align 4
  br label %107

88:                                               ; preds = %82, %79
  %89 = load i32, i32* %3, align 4
  %90 = icmp sgt i32 %89, 175
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i32, i32* %3, align 4
  %93 = icmp sgt i32 180, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %3, align 4
  %96 = sub nsw i32 %95, 126
  store i32 %96, i32* %2, align 4
  br label %107

97:                                               ; preds = %91, %88
  %98 = load i32, i32* %3, align 4
  %99 = icmp sgt i32 %98, 183
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32, i32* %3, align 4
  %102 = icmp sgt i32 188, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* %3, align 4
  %105 = sub nsw i32 %104, 130
  store i32 %105, i32* %2, align 4
  br label %107

106:                                              ; preds = %100, %97
  store i32 59, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %103, %94, %85, %76, %67, %58, %49, %40, %31, %22, %15, %9
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
