; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson04/3/avenito/src/extr_printf.c_putchw.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson04/3/avenito/src/extr_printf.c_putchw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32 (i8*, i8)*, i32, i8, i8*)* @putchw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putchw(i8* %0, i32 (i8*, i8)* %1, i32 %2, i8 signext %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i8*, i8)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 (i8*, i8)* %1, i32 (i8*, i8)** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  store i8* %4, i8** %10, align 8
  %14 = load i8, i8* %9, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 48, i32 32
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %11, align 1
  %20 = load i8*, i8** %10, align 8
  store i8* %20, i8** %13, align 8
  br label %21

21:                                               ; preds = %32, %5
  %22 = load i8*, i8** %13, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %13, align 8
  %24 = load i8, i8* %22, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, 0
  br label %30

30:                                               ; preds = %27, %21
  %31 = phi i1 [ false, %21 ], [ %29, %27 ]
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %8, align 4
  br label %21

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %40, %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %8, align 4
  %39 = icmp sgt i32 %37, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32 (i8*, i8)*, i32 (i8*, i8)** %7, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %11, align 1
  %44 = call i32 %41(i8* %42, i8 signext %43)
  br label %36

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %51, %45
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %10, align 8
  %49 = load i8, i8* %47, align 1
  store i8 %49, i8* %12, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32 (i8*, i8)*, i32 (i8*, i8)** %7, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i8, i8* %12, align 1
  %55 = call i32 %52(i8* %53, i8 signext %54)
  br label %46

56:                                               ; preds = %46
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
