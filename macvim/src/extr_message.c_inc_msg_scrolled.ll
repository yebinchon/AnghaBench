; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_message.c_inc_msg_scrolled.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_message.c_inc_msg_scrolled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@msg_scrolled = common dso_local global i32 0, align 4
@NUL = common dso_local global i64 0, align 8
@VV_SCROLLSTART = common dso_local global i32 0, align 4
@sourcing_lnum = common dso_local global i64 0, align 8
@sourcing_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @inc_msg_scrolled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inc_msg_scrolled() #0 {
  %1 = load i32, i32* @msg_scrolled, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @msg_scrolled, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
