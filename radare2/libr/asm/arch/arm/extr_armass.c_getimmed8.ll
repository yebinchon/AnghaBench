; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass.c_getimmed8.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass.c_getimmed8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@err = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @getimmed8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getimmed8(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @getnum(i8* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @err, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp sle i32 %12, 255
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %40

16:                                               ; preds = %11
  store i32 1, i32* %5, align 4
  br label %17

17:                                               ; preds = %36, %16
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = shl i32 %21, 2
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 30
  %25 = or i32 %22, %24
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 255
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 %32, 8
  %34 = or i32 %31, %33
  store i32 %34, i32* %2, align 4
  br label %40

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %17

39:                                               ; preds = %17
  store i32 1, i32* @err, align 4
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %30, %14, %10
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @getnum(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
