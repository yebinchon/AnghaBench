; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_otime.h_tv_add.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_otime.h_tv_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timeval*, %struct.timeval*)* @tv_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tv_add(%struct.timeval* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca %struct.timeval*, align 8
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %5 = load %struct.timeval*, %struct.timeval** %4, align 8
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.timeval*, %struct.timeval** %3, align 8
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load %struct.timeval*, %struct.timeval** %4, align 8
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.timeval*, %struct.timeval** %3, align 8
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.timeval*, %struct.timeval** %3, align 8
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 20
  %23 = load %struct.timeval*, %struct.timeval** %3, align 8
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.timeval*, %struct.timeval** %3, align 8
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 1048575
  store i32 %30, i32* %28, align 4
  %31 = load %struct.timeval*, %struct.timeval** %3, align 8
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %33, 1000000
  br i1 %34, label %35, label %44

35:                                               ; preds = %2
  %36 = load %struct.timeval*, %struct.timeval** %3, align 8
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1000000
  store i32 %39, i32* %37, align 4
  %40 = load %struct.timeval*, %struct.timeval** %3, align 8
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %35, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
