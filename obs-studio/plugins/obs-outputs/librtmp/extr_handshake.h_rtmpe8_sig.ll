; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_handshake.h_rtmpe8_sig.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_handshake.h_rtmpe8_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rtmpe8_keys = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @rtmpe8_sig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtmpe8_sig(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 32, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 -1640531527, i32* %12, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 8
  %21 = or i32 %16, %20
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 16
  %26 = or i32 %21, %25
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 24
  %31 = or i32 %26, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 5
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 8
  %39 = or i32 %34, %38
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 6
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 16
  %44 = or i32 %39, %43
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 7
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 24
  %49 = or i32 %44, %48
  store i32 %49, i32* %10, align 4
  %50 = load i32**, i32*** @rtmpe8_keys, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %13, align 8
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %100, %3
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %103

59:                                               ; preds = %55
  %60 = load i32, i32* %10, align 4
  %61 = shl i32 %60, 4
  %62 = load i32, i32* %10, align 4
  %63 = ashr i32 %62, 5
  %64 = xor i32 %61, %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* %11, align 4
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, 3
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %67, %73
  %75 = xor i32 %66, %74
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %9, align 4
  %82 = shl i32 %81, 4
  %83 = load i32, i32* %9, align 4
  %84 = ashr i32 %83, 5
  %85 = xor i32 %82, %84
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* %11, align 4
  %89 = load i32*, i32** %13, align 8
  %90 = load i32, i32* %11, align 4
  %91 = ashr i32 %90, 11
  %92 = and i32 %91, 3
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %88, %95
  %97 = xor i32 %87, %96
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %59
  %101 = load i32, i32* %7, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %55

103:                                              ; preds = %55
  %104 = load i32, i32* %9, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %9, align 4
  %108 = ashr i32 %107, 8
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32*, i32** %5, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %9, align 4
  %113 = ashr i32 %112, 8
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %9, align 4
  %118 = ashr i32 %117, 8
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32*, i32** %5, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 3
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i32*, i32** %5, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 4
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %10, align 4
  %126 = ashr i32 %125, 8
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32*, i32** %5, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 5
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* %10, align 4
  %131 = ashr i32 %130, 8
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32*, i32** %5, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 6
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %10, align 4
  %136 = ashr i32 %135, 8
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = load i32*, i32** %5, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 7
  store i32 %137, i32* %139, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
