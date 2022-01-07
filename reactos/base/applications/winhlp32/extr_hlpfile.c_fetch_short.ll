; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_fetch_short.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_fetch_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i32**)* @fetch_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @fetch_short(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i16, align 2
  store i32** %0, i32*** %2, align 8
  %4 = load i32**, i32*** %2, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load i32**, i32*** %2, align 8
  %11 = load i32*, i32** %10, align 8
  %12 = bitcast i32* %11 to i16*
  %13 = load i16, i16* %12, align 2
  %14 = zext i16 %13 to i32
  %15 = sub nsw i32 %14, 32768
  %16 = sdiv i32 %15, 2
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %3, align 2
  %18 = load i32**, i32*** %2, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  store i32* %20, i32** %18, align 8
  br label %33

21:                                               ; preds = %1
  %22 = load i32**, i32*** %2, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = bitcast i32* %23 to i8*
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %26, 128
  %28 = sdiv i32 %27, 2
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %3, align 2
  %30 = load i32**, i32*** %2, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %30, align 8
  br label %33

33:                                               ; preds = %21, %9
  %34 = load i16, i16* %3, align 2
  ret i16 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
