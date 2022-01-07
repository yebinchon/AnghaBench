; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_quantum.c_get_event_keycode.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_quantum.c_get_event_keycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@disable_action_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_event_keycode(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i32, align 4
  %6 = bitcast %struct.TYPE_3__* %4 to { i32, i64 }*
  %7 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %6, i32 0, i32 0
  store i32 %0, i32* %7, align 8
  %8 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %6, i32 0, i32 1
  store i64 %1, i64* %8, align 8
  %9 = load i32, i32* @disable_action_cache, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @layer_switch_get_layer(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @update_source_layers_cache(i32 %20, i32 %21)
  br label %27

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @read_source_layers_cache(i32 %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %23, %15
  %28 = load i32, i32* %5, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @keymap_key_to_keycode(i32 %28, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %39

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @layer_switch_get_layer(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @keymap_key_to_keycode(i32 %35, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %32, %27
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @layer_switch_get_layer(i32) #1

declare dso_local i32 @update_source_layers_cache(i32, i32) #1

declare dso_local i32 @read_source_layers_cache(i32) #1

declare dso_local i32 @keymap_key_to_keycode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
