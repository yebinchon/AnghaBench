; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_otime.h_tv_subtract.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_otime.h_tv_subtract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timeval*, %struct.timeval*, i32)* @tv_subtract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tv_subtract(%struct.timeval* %0, %struct.timeval* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca %struct.timeval*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.timeval* %0, %struct.timeval** %5, align 8
  store %struct.timeval* %1, %struct.timeval** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = mul i32 %10, 1000000
  store i32 %11, i32* %8, align 4
  %12 = load %struct.timeval*, %struct.timeval** %5, align 8
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.timeval*, %struct.timeval** %6, align 8
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %14, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 10
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %51

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 10
  %29 = sub nsw i32 0, %28
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %51

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %36, 1000000
  %38 = sext i32 %37 to i64
  %39 = load %struct.timeval*, %struct.timeval** %5, align 8
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.timeval*, %struct.timeval** %6, align 8
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = add nsw i64 %38, %45
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 0, %47
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @constrain_int(i64 %46, i32 %48, i32 %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %35, %31, %23
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @constrain_int(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
