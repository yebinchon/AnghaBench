; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_otime.h_tv_within_sigma.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_otime.h_tv_within_sigma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@TV_WITHIN_SIGMA_MAX_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timeval*, %struct.timeval*, i32)* @tv_within_sigma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tv_within_sigma(%struct.timeval* %0, %struct.timeval* %1, i32 %2) #0 {
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.timeval* %0, %struct.timeval** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.timeval*, %struct.timeval** %4, align 8
  %9 = load %struct.timeval*, %struct.timeval** %5, align 8
  %10 = load i32, i32* @TV_WITHIN_SIGMA_MAX_SEC, align 4
  %11 = call i32 @tv_subtract(%struct.timeval* %8, %struct.timeval* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sub nsw i32 0, %12
  %14 = load i32, i32* %7, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sle i32 %17, %18
  br label %20

20:                                               ; preds = %16, %3
  %21 = phi i1 [ false, %3 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

declare dso_local i32 @tv_subtract(%struct.timeval*, %struct.timeval*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
