; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.h_p2p_iow_flags.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.h_p2p_iow_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@IOW_SHAPER = common dso_local global i32 0, align 4
@IOW_CHECK_RESIDUAL = common dso_local global i32 0, align 4
@IOW_FRAG = common dso_local global i32 0, align 4
@IOW_READ = common dso_local global i32 0, align 4
@IOW_WAIT_SIGNAL = common dso_local global i32 0, align 4
@IOW_TO_LINK = common dso_local global i32 0, align 4
@IOW_TO_TUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.context*)* @p2p_iow_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p2p_iow_flags(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  %3 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %2, align 8
  %4 = load i32, i32* @IOW_SHAPER, align 4
  %5 = load i32, i32* @IOW_CHECK_RESIDUAL, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @IOW_FRAG, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @IOW_READ, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @IOW_WAIT_SIGNAL, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %3, align 4
  %13 = load %struct.context*, %struct.context** %2, align 8
  %14 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @IOW_TO_LINK, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.context*, %struct.context** %2, align 8
  %25 = getelementptr inbounds %struct.context, %struct.context* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @IOW_TO_TUN, align 4
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %23
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
