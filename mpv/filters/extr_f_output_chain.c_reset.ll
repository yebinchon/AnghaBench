; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_reset.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.chain* }
%struct.chain = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.chain*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %4 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %5 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %4, i32 0, i32 0
  %6 = load %struct.chain*, %struct.chain** %5, align 8
  store %struct.chain* %6, %struct.chain** %3, align 8
  %7 = load %struct.chain*, %struct.chain** %3, align 8
  %8 = getelementptr inbounds %struct.chain, %struct.chain* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load %struct.chain*, %struct.chain** %3, align 8
  %11 = getelementptr inbounds %struct.chain, %struct.chain* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 0, i32* %12, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
