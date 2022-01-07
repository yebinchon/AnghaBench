; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/midi/extr_sysex_tools.c_sysex_encode.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/midi/extr_sysex_tools.c_sysex_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysex_encode(i32* %0, i32* %1, i32 %2) #0 {
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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sdiv i32 %18, 7
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %68, %3
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %71

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = mul nsw i32 %25, 8
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  %28 = mul nsw i32 %27, 7
  store i32 %28, i32* %12, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 0, i32* %32, align 4
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %64, %24
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 7
  br i1 %35, label %36, label %67

36:                                               ; preds = %33
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = and i32 128, %44
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 1, %46
  %48 = ashr i32 %45, %47
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %48
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %13, align 4
  %56 = and i32 127, %55
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %57, i64 %62
  store i32 %56, i32* %63, align 4
  br label %64

64:                                               ; preds = %36
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %33

67:                                               ; preds = %33
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %20

71:                                               ; preds = %20
  %72 = load i32, i32* %7, align 4
  %73 = srem i32 %72, 7
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %125

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  %78 = mul nsw i32 %77, 8
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %8, align 4
  %80 = mul nsw i32 %79, 7
  store i32 %80, i32* %16, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 0, i32* %84, align 4
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %117, %76
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %120

89:                                               ; preds = %85
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %17, align 4
  %98 = and i32 128, %97
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 1, %99
  %101 = ashr i32 %98, %100
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %101
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* %17, align 4
  %109 = and i32 127, %108
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 1
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %110, i64 %115
  store i32 %109, i32* %116, align 4
  br label %117

117:                                              ; preds = %89
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %85

120:                                              ; preds = %85
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %121, %122
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %4, align 4
  br label %128

125:                                              ; preds = %71
  %126 = load i32, i32* %8, align 4
  %127 = mul nsw i32 %126, 8
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %125, %120
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
