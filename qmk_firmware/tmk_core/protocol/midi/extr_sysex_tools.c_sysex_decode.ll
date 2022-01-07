; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/midi/extr_sysex_tools.c_sysex_decode.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/midi/extr_sysex_tools.c_sysex_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysex_decode(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sdiv i32 %16, 8
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %134

21:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %71, %21
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %74

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = mul nsw i32 %27, 8
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = mul nsw i32 %29, 7
  store i32 %30, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %67, %26
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 7
  br i1 %33, label %34, label %70

34:                                               ; preds = %31
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %36, %37
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = and i32 127, %42
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  store i32 %43, i32* %49, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 1, %55
  %57 = shl i32 %54, %56
  %58 = and i32 128, %57
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %58
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %34
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %31

70:                                               ; preds = %31
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %22

74:                                               ; preds = %22
  %75 = load i32, i32* %7, align 4
  %76 = srem i32 %75, 8
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %131

79:                                               ; preds = %74
  %80 = load i32, i32* %8, align 4
  %81 = mul nsw i32 %80, 8
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %8, align 4
  %83 = mul nsw i32 %82, 7
  store i32 %83, i32* %15, align 4
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %122, %79
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %13, align 4
  %87 = sub nsw i32 %86, 1
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %125

89:                                               ; preds = %84
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %91, %92
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %90, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = and i32 127, %97
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %99, i64 %103
  store i32 %98, i32* %104, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 1, %110
  %112 = shl i32 %109, %111
  %113 = and i32 128, %112
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %114, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %113
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %89
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %84

125:                                              ; preds = %84
  %126 = load i32, i32* %8, align 4
  %127 = mul nsw i32 %126, 7
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %127, %128
  %130 = sub nsw i32 %129, 1
  store i32 %130, i32* %4, align 4
  br label %134

131:                                              ; preds = %74
  %132 = load i32, i32* %8, align 4
  %133 = mul nsw i32 %132, 7
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %131, %125, %20
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
