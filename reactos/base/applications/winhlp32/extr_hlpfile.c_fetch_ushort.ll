; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_fetch_ushort.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_fetch_ushort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i32**)* @fetch_ushort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @fetch_ushort(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i16, align 2
  store i32** %0, i32*** %2, align 8
  %4 = load i32**, i32*** %2, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load i32**, i32*** %2, align 8
  %11 = load i32*, i32** %10, align 8
  %12 = bitcast i32* %11 to i16*
  %13 = load i16, i16* %12, align 2
  %14 = zext i16 %13 to i32
  %15 = sdiv i32 %14, 2
  %16 = trunc i32 %15 to i16
  store i16 %16, i16* %3, align 2
  %17 = load i32**, i32*** %2, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  store i32* %19, i32** %17, align 8
  br label %31

20:                                               ; preds = %1
  %21 = load i32**, i32*** %2, align 8
  %22 = load i32*, i32** %21, align 8
  %23 = bitcast i32* %22 to i8*
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = sdiv i32 %25, 2
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %3, align 2
  %28 = load i32**, i32*** %2, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %28, align 8
  br label %31

31:                                               ; preds = %20, %9
  %32 = load i16, i16* %3, align 2
  ret i16 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
