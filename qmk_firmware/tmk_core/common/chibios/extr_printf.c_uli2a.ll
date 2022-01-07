; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/common/chibios/extr_printf.c_uli2a.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/common/chibios/extr_printf.c_uli2a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32, i8*)* @uli2a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uli2a(i64 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %12

12:                                               ; preds = %20, %4
  %13 = load i64, i64* %5, align 8
  %14 = load i32, i32* %10, align 4
  %15 = zext i32 %14 to i64
  %16 = udiv i64 %13, %15
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = icmp uge i64 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %10, align 4
  %23 = mul i32 %22, %21
  store i32 %23, i32* %10, align 4
  br label %12

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %68, %24
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %69

28:                                               ; preds = %25
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* %10, align 4
  %31 = zext i32 %30 to i64
  %32 = udiv i64 %29, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = zext i32 %34 to i64
  %36 = load i64, i64* %5, align 8
  %37 = urem i64 %36, %35
  store i64 %37, i64* %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %10, align 4
  %40 = udiv i32 %39, %38
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %28
  %44 = load i32, i32* %11, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %46, %43, %28
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 10
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %60

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 65, i32 97
  %59 = sub nsw i32 %58, 10
  br label %60

60:                                               ; preds = %54, %53
  %61 = phi i32 [ 48, %53 ], [ %59, %54 ]
  %62 = add nsw i32 %50, %61
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %8, align 8
  store i8 %63, i8* %64, align 1
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %60, %46
  br label %25

69:                                               ; preds = %25
  %70 = load i8*, i8** %8, align 8
  store i8 0, i8* %70, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
