; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_mtu.c_frame_init_mssfix.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_mtu.c_frame_init_mssfix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame = type { i32 }
%struct.options = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SET_MTU_UPPER_BOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @frame_init_mssfix(%struct.frame* %0, %struct.options* %1) #0 {
  %3 = alloca %struct.frame*, align 8
  %4 = alloca %struct.options*, align 8
  store %struct.frame* %0, %struct.frame** %3, align 8
  store %struct.options* %1, %struct.options** %4, align 8
  %5 = load %struct.options*, %struct.options** %4, align 8
  %6 = getelementptr inbounds %struct.options, %struct.options* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.frame*, %struct.frame** %3, align 8
  %12 = load %struct.options*, %struct.options** %4, align 8
  %13 = getelementptr inbounds %struct.options, %struct.options* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @SET_MTU_UPPER_BOUND, align 4
  %17 = call i32 @frame_set_mtu_dynamic(%struct.frame* %11, i64 %15, i32 %16)
  br label %18

18:                                               ; preds = %10, %2
  ret void
}

declare dso_local i32 @frame_set_mtu_dynamic(%struct.frame*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
