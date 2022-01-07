; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/visualizer/extr_lcd_keyframes.c_format_layer_bitmap_string.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/visualizer/extr_lcd_keyframes.c_format_layer_bitmap_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @format_layer_bitmap_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_layer_bitmap_string(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %55, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 16
  br i1 %11, label %12, label %58

12:                                               ; preds = %9
  %13 = load i32, i32* %7, align 4
  %14 = shl i32 1, %13
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  store i8 66, i8* %25, align 1
  br label %28

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  store i8 68, i8* %27, align 1
  br label %28

28:                                               ; preds = %26, %24
  br label %39

29:                                               ; preds = %12
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i8*, i8** %6, align 8
  store i8 49, i8* %35, align 1
  br label %38

36:                                               ; preds = %29
  %37 = load i8*, i8** %6, align 8
  store i8 48, i8* %37, align 1
  br label %38

38:                                               ; preds = %36, %34
  br label %39

39:                                               ; preds = %38, %28
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 7
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 11
  br i1 %49, label %50, label %54

50:                                               ; preds = %47, %44, %39
  %51 = load i8*, i8** %6, align 8
  store i8 32, i8* %51, align 1
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %6, align 8
  br label %54

54:                                               ; preds = %50, %47
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %9

58:                                               ; preds = %9
  %59 = load i8*, i8** %6, align 8
  store i8 0, i8* %59, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
