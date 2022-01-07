; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_sig.c_signal_reset.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_sig.c_signal_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signal_info = type { i32, i32*, i64 }

@SIG_SOURCE_SOFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.signal_info*)* @signal_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @signal_reset(%struct.signal_info* %0) #0 {
  %2 = alloca %struct.signal_info*, align 8
  store %struct.signal_info* %0, %struct.signal_info** %2, align 8
  %3 = load %struct.signal_info*, %struct.signal_info** %2, align 8
  %4 = icmp ne %struct.signal_info* %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load %struct.signal_info*, %struct.signal_info** %2, align 8
  %7 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %6, i32 0, i32 2
  store i64 0, i64* %7, align 8
  %8 = load %struct.signal_info*, %struct.signal_info** %2, align 8
  %9 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %8, i32 0, i32 1
  store i32* null, i32** %9, align 8
  %10 = load i32, i32* @SIG_SOURCE_SOFT, align 4
  %11 = load %struct.signal_info*, %struct.signal_info** %2, align 8
  %12 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  br label %13

13:                                               ; preds = %5, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
