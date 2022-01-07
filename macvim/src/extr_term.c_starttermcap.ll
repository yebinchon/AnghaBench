; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_term.c_starttermcap.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_term.c_starttermcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@full_screen = common dso_local global i64 0, align 8
@termcap_active = common dso_local global i64 0, align 8
@T_TI = common dso_local global i32 0, align 4
@T_KS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@CRV_SENT = common dso_local global i64 0, align 8
@crv_status = common dso_local global i64 0, align 8
@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @starttermcap() #0 {
  %1 = load i64, i64* @full_screen, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %14

3:                                                ; preds = %0
  %4 = load i64, i64* @termcap_active, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = load i32, i32* @T_TI, align 4
  %8 = call i32 @out_str(i32 %7)
  %9 = load i32, i32* @T_KS, align 4
  %10 = call i32 @out_str(i32 %9)
  %11 = call i32 (...) @out_flush()
  %12 = load i64, i64* @TRUE, align 8
  store i64 %12, i64* @termcap_active, align 8
  %13 = call i32 (...) @screen_start()
  br label %14

14:                                               ; preds = %6, %3, %0
  ret void
}

declare dso_local i32 @out_str(i32) #1

declare dso_local i32 @out_flush(...) #1

declare dso_local i32 @screen_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
