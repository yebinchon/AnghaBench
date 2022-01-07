; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_xboxvideo.c_XboxVideoAttrToSingleColor.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_xboxvideo.c_XboxVideoAttrToSingleColor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @XboxVideoAttrToSingleColor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XboxVideoAttrToSingleColor(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = and i32 %4, 8
  %6 = icmp eq i32 0, %5
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i32 127, i32 255
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %2, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 0, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %16

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = shl i32 %14, 16
  br label %16

16:                                               ; preds = %13, %12
  %17 = phi i32 [ 0, %12 ], [ %15, %13 ]
  %18 = or i32 -16777216, %17
  %19 = load i32, i32* %2, align 4
  %20 = and i32 %19, 2
  %21 = icmp eq i32 0, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %26

23:                                               ; preds = %16
  %24 = load i32, i32* %3, align 4
  %25 = shl i32 %24, 8
  br label %26

26:                                               ; preds = %23, %22
  %27 = phi i32 [ 0, %22 ], [ %25, %23 ]
  %28 = or i32 %18, %27
  %29 = load i32, i32* %2, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 0, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i32 [ 0, %32 ], [ %34, %33 ]
  %37 = or i32 %28, %36
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
