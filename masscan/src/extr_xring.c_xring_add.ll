; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_xring.c_xring_add.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_xring.c_xring_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.XRing = type { i64*, i32, i32 }

@XringFailure = common dso_local global i32 0, align 4
@XRING_SIZE = common dso_local global i32 0, align 4
@XringSuccess = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.XRing*, i64)* @xring_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xring_add(%struct.XRing* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XRing*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store %struct.XRing* %0, %struct.XRing** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.XRing*, %struct.XRing** %4, align 8
  %9 = getelementptr inbounds %struct.XRing, %struct.XRing* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  store i64* %10, i64** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @XringFailure, align 4
  store i32 %14, i32* %3, align 4
  br label %60

15:                                               ; preds = %2
  %16 = load %struct.XRing*, %struct.XRing** %4, align 8
  %17 = getelementptr inbounds %struct.XRing, %struct.XRing* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.XRing*, %struct.XRing** %4, align 8
  %20 = getelementptr inbounds %struct.XRing, %struct.XRing* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @XRING_SIZE, align 4
  %23 = add nsw i32 %21, %22
  %24 = icmp sge i32 %18, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @XringFailure, align 4
  store i32 %26, i32* %3, align 4
  br label %60

27:                                               ; preds = %15
  %28 = load %struct.XRing*, %struct.XRing** %4, align 8
  %29 = getelementptr inbounds %struct.XRing, %struct.XRing* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load %struct.XRing*, %struct.XRing** %4, align 8
  %32 = getelementptr inbounds %struct.XRing, %struct.XRing* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @XRING_SIZE, align 4
  %35 = sub nsw i32 %34, 1
  %36 = and i32 %33, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %30, i64 %37
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %27
  %43 = load i64, i64* %5, align 8
  %44 = load i64*, i64** %6, align 8
  %45 = load %struct.XRing*, %struct.XRing** %4, align 8
  %46 = getelementptr inbounds %struct.XRing, %struct.XRing* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @XRING_SIZE, align 4
  %49 = sub nsw i32 %48, 1
  %50 = and i32 %47, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %44, i64 %51
  store volatile i64 %43, i64* %52, align 8
  %53 = load %struct.XRing*, %struct.XRing** %4, align 8
  %54 = getelementptr inbounds %struct.XRing, %struct.XRing* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* @XringSuccess, align 4
  store i32 %57, i32* %3, align 4
  br label %60

58:                                               ; preds = %27
  %59 = load i32, i32* @XringFailure, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %42, %25, %13
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
