; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/ericgebhart/extr_ericgebhart.c_tap_dance_default_layer_switch.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/ericgebhart/extr_ericgebhart.c_tap_dance_default_layer_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@DVORAK = common dso_local global i32 0, align 4
@DVORAK_ON_BEPO = common dso_local global i32 0, align 4
@BEPO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tap_dance_default_layer_switch(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %17 [
    i32 1, label %8
    i32 2, label %11
    i32 3, label %14
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @DVORAK, align 4
  %10 = call i32 @switch_default_layer(i32 %9)
  br label %18

11:                                               ; preds = %2
  %12 = load i32, i32* @DVORAK_ON_BEPO, align 4
  %13 = call i32 @switch_default_layer(i32 %12)
  br label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @BEPO, align 4
  %16 = call i32 @switch_default_layer(i32 %15)
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %14, %11, %8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = call i32 @reset_tap_dance(%struct.TYPE_4__* %19)
  ret void
}

declare dso_local i32 @switch_default_layer(i32) #1

declare dso_local i32 @reset_tap_dance(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
