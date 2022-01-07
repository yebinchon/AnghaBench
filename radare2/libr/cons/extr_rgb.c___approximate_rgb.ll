; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_rgb.c___approximate_rgb.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_rgb.c___approximate_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @__approximate_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__approximate_rgb(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 255
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %20, %21
  br label %23

23:                                               ; preds = %19, %15, %12, %3
  %24 = phi i1 [ false, %15 ], [ false, %12 ], [ false, %3 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = sitofp i32 %29 to double
  %31 = fdiv double %30, 0x4025296D69296D69
  %32 = fptosi double %31 to i32
  %33 = add nsw i32 232, %32
  store i32 %33, i32* %4, align 4
  br label %55

34:                                               ; preds = %23
  store i32 42, i32* %9, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sdiv i32 %35, 42
  %37 = call i8* @R_DIM(i32 %36, i32 0, i32 6)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sdiv i32 %39, 42
  %41 = call i8* @R_DIM(i32 %40, i32 0, i32 6)
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sdiv i32 %43, 42
  %45 = call i8* @R_DIM(i32 %44, i32 0, i32 6)
  %46 = ptrtoint i8* %45 to i32
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %5, align 4
  %48 = mul nsw i32 %47, 36
  %49 = add nsw i32 16, %48
  %50 = load i32, i32* %6, align 4
  %51 = mul nsw i32 %50, 6
  %52 = add nsw i32 %49, %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %52, %53
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %34, %28
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i8* @R_DIM(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
