; ModuleID = '/home/carl/AnghaBench/openwrt/scripts/config/lxdialog/extr_util.c_init_dialog_colors.c'
source_filename = "/home/carl/AnghaBench/openwrt/scripts/config/lxdialog/extr_util.c_init_dialog_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@dlg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_dialog_colors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_dialog_colors() #0 {
  %1 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 28))
  %2 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 27))
  %3 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 26))
  %4 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 25))
  %5 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 24))
  %6 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 23))
  %7 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 22))
  %8 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 21))
  %9 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 20))
  %10 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 19))
  %11 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 18))
  %12 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 17))
  %13 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 16))
  %14 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 15))
  %15 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 14))
  %16 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 13))
  %17 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 12))
  %18 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 11))
  %19 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 10))
  %20 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 9))
  %21 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 8))
  %22 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 7))
  %23 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 6))
  %24 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 5))
  %25 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 4))
  %26 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 3))
  %27 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 2))
  %28 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 1))
  %29 = call i32 @init_one_color(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlg, i32 0, i32 0))
  ret void
}

declare dso_local i32 @init_one_color(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
