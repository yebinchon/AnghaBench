; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/redscarf_iiplus/verd/extr_verd.c_led_update_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/redscarf_iiplus/verd/extr_verd.c_led_update_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@C7 = common dso_local global i32 0, align 4
@E6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @led_update_kb(i64 %0) #0 {
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = bitcast %struct.TYPE_4__* %2 to i64*
  store i64 %0, i64* %3, align 4
  %4 = bitcast %struct.TYPE_4__* %2 to i64*
  %5 = load i64, i64* %4, align 4
  %6 = call i64 @led_update_user(i64 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load i32, i32* @C7, align 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @writePin(i32 %9, i32 %14)
  %16 = load i32, i32* @E6, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @writePin(i32 %16, i32 %21)
  br label %23

23:                                               ; preds = %8, %1
  ret i32 1
}

declare dso_local i64 @led_update_user(i64) #1

declare dso_local i32 @writePin(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
