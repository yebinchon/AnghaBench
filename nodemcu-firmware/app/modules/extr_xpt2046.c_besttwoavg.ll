; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_xpt2046.c_besttwoavg.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_xpt2046.c_besttwoavg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64)* @besttwoavg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @besttwoavg(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %10, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = sub nsw i64 %15, %16
  store i64 %17, i64* %7, align 8
  br label %22

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %4, align 8
  %21 = sub nsw i64 %19, %20
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %6, align 8
  %29 = sub nsw i64 %27, %28
  store i64 %29, i64* %8, align 8
  br label %34

30:                                               ; preds = %22
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %4, align 8
  %33 = sub nsw i64 %31, %32
  store i64 %33, i64* %8, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %5, align 8
  %41 = sub nsw i64 %39, %40
  store i64 %41, i64* %9, align 8
  br label %46

42:                                               ; preds = %34
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = sub nsw i64 %43, %44
  store i64 %45, i64* %9, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp sle i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = add nsw i64 %55, %56
  %58 = ashr i64 %57, 1
  store i64 %58, i64* %10, align 8
  br label %78

59:                                               ; preds = %50, %46
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp sle i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = icmp sle i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* %6, align 8
  %70 = add nsw i64 %68, %69
  %71 = ashr i64 %70, 1
  store i64 %71, i64* %10, align 8
  br label %77

72:                                               ; preds = %63, %59
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* %6, align 8
  %75 = add nsw i64 %73, %74
  %76 = ashr i64 %75, 1
  store i64 %76, i64* %10, align 8
  br label %77

77:                                               ; preds = %72, %67
  br label %78

78:                                               ; preds = %77, %54
  %79 = load i64, i64* %10, align 8
  ret i64 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
