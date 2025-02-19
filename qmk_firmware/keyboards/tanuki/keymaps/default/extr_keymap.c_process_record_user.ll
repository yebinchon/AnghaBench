; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/tanuki/keymaps/default/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/tanuki/keymaps/default/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@user_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@layer_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %36 [
    i32 134, label %7
    i32 132, label %25
    i32 131, label %25
    i32 130, label %25
    i32 133, label %25
    i32 129, label %25
    i32 128, label %25
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %7
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @user_config, i32 0, i32 0), align 4
  %15 = xor i32 %14, 1
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @user_config, i32 0, i32 0), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @user_config, i32 0, i32 1), align 4
  %17 = call i32 @eeconfig_update_user(i32 %16)
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @user_config, i32 0, i32 0), align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* @layer_state, align 4
  %22 = call i32 @layer_state_set(i32 %21)
  br label %23

23:                                               ; preds = %20, %13
  br label %24

24:                                               ; preds = %23, %7
  store i32 0, i32* %3, align 4
  br label %37

25:                                               ; preds = %2, %2, %2, %2, %2, %2
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @user_config, i32 0, i32 0), align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %37

35:                                               ; preds = %28, %25
  br label %36

36:                                               ; preds = %2, %35
  store i32 1, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %34, %24
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @eeconfig_update_user(i32) #1

declare dso_local i32 @layer_state_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
