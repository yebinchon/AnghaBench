; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/wpa_supplicant/extr_ubus.c_wpas_ubus_ref_dec.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/wpa_supplicant/extr_ubus.c_wpas_ubus_ref_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ctx_ref = common dso_local global i64 0, align 8
@ctx = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wpas_ubus_ref_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_ubus_ref_dec() #0 {
  %1 = load i64, i64* @ctx_ref, align 8
  %2 = add nsw i64 %1, -1
  store i64 %2, i64* @ctx_ref, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctx, align 8
  %4 = icmp ne %struct.TYPE_5__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %18

6:                                                ; preds = %0
  %7 = load i64, i64* @ctx_ref, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  br label %18

10:                                               ; preds = %6
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctx, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @eloop_unregister_read_sock(i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctx, align 8
  %17 = call i32 @ubus_free(%struct.TYPE_5__* %16)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** @ctx, align 8
  br label %18

18:                                               ; preds = %10, %9, %5
  ret void
}

declare dso_local i32 @eloop_unregister_read_sock(i32) #1

declare dso_local i32 @ubus_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
