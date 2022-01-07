; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lwip/core/extr_init.c_lwip_init.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lwip/core/extr_init.c_lwip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEMP_NUM_TCP_PCB = common dso_local global i32 0, align 4
@TCP_MSS = common dso_local global i32 0, align 4
@TCP_WND = common dso_local global i32 0, align 4
@TCP_MAXRTX = common dso_local global i32 0, align 4
@TCP_SYNMAXRTX = common dso_local global i32 0, align 4
@_bss_end = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwip_init() #0 {
  store i32 5, i32* @MEMP_NUM_TCP_PCB, align 4
  %1 = load i32, i32* @TCP_MSS, align 4
  %2 = mul nsw i32 4, %1
  store i32 %2, i32* @TCP_WND, align 4
  store i32 12, i32* @TCP_MAXRTX, align 4
  store i32 6, i32* @TCP_SYNMAXRTX, align 4
  %3 = call i32 (...) @lwip_sanity_check()
  %4 = call i32 (...) @stats_init()
  %5 = call i32 (...) @sys_init()
  %6 = call i32 (...) @memp_init()
  %7 = call i32 (...) @pbuf_init()
  %8 = call i32 (...) @netif_init()
  %9 = call i32 (...) @ip_init()
  ret void
}

declare dso_local i32 @lwip_sanity_check(...) #1

declare dso_local i32 @stats_init(...) #1

declare dso_local i32 @sys_init(...) #1

declare dso_local i32 @memp_init(...) #1

declare dso_local i32 @pbuf_init(...) #1

declare dso_local i32 @netif_init(...) #1

declare dso_local i32 @ip_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
