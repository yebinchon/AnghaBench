; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson04/1/rs/src/extr_printf.c_ui2a.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson04/1/rs/src/extr_printf.c_ui2a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8*)* @ui2a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ui2a(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %12

12:                                               ; preds = %18, %4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %10, align 4
  %15 = udiv i32 %13, %14
  %16 = load i32, i32* %6, align 4
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %10, align 4
  %21 = mul i32 %20, %19
  store i32 %21, i32* %10, align 4
  br label %12

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %63, %22
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %64

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %10, align 4
  %29 = udiv i32 %27, %28
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %5, align 4
  %32 = urem i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %10, align 4
  %35 = udiv i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %26
  %39 = load i32, i32* %11, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %41, %38, %26
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 10
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %55

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 65, i32 97
  %54 = sub nsw i32 %53, 10
  br label %55

55:                                               ; preds = %49, %48
  %56 = phi i32 [ 48, %48 ], [ %54, %49 ]
  %57 = add nsw i32 %45, %56
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %8, align 8
  store i8 %58, i8* %59, align 1
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %55, %41
  br label %23

64:                                               ; preds = %23
  %65 = load i8*, i8** %8, align 8
  store i8 0, i8* %65, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
