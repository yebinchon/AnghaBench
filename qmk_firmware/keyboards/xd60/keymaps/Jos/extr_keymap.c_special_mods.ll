; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/xd60/keymaps/Jos/extr_keymap.c_special_mods.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/xd60/keymaps/Jos/extr_keymap.c_special_mods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@keyboard_report = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*, i32)* @special_mods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @special_mods(i32 %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** @keyboard_report, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @MOD_BIT(i32 %17)
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @register_code(i32 %22)
  store i32 0, i32* %4, align 4
  br label %27

24:                                               ; preds = %13, %3
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @unregister_code(i32 %25)
  store i32 1, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
