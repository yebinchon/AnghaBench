; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_color_is_gray.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_color_is_gray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @color_is_gray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @color_is_gray(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = ashr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = trunc i32 %8 to i8
  store i8 %9, i8* %3, align 1
  %10 = load i32, i32* %2, align 4
  %11 = ashr i32 %10, 8
  %12 = and i32 %11, 255
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %4, align 1
  %14 = load i32, i32* %2, align 4
  %15 = and i32 %14, 255
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %5, align 1
  %17 = load i8, i8* %3, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* %4, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load i8, i8* %4, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* %5, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br label %28

28:                                               ; preds = %22, %1
  %29 = phi i1 [ false, %1 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
