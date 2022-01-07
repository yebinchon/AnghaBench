; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_png.c_png_log8bit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_png.c_png_log8bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@png_8bit_l2 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @png_log8bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_log8bit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 255
  store i32 %6, i32* %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %46

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, 240
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  store i32 4, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = shl i32 %14, 4
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 192
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = add i32 %21, 2
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = shl i32 %23, 2
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %20, %16
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 128
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = shl i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = load i32, i32* %4, align 4
  %36 = shl i32 %35, 16
  %37 = load i32*, i32** @png_8bit_l2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sub i32 %38, 128
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 32768
  %44 = ashr i32 %43, 16
  %45 = add i32 %36, %44
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %34, %8
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
