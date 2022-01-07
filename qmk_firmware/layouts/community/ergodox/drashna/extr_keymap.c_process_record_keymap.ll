; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/drashna/extr_keymap.c_process_record_keymap.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/drashna/extr_keymap.c_process_record_keymap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_GAMEPAD = common dso_local global i32 0, align 4
@userspace_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_keymap(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %57 [
    i32 130, label %7
    i32 129, label %26
    i32 128, label %45
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @_GAMEPAD, align 4
  %9 = call i32 @IS_LAYER_ON(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @userspace_config, i32 0, i32 0), align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 @register_code(i32 129)
  br label %24

22:                                               ; preds = %14
  %23 = call i32 @unregister_code(i32 129)
  br label %24

24:                                               ; preds = %22, %20
  store i32 0, i32* %3, align 4
  br label %58

25:                                               ; preds = %11, %7
  br label %57

26:                                               ; preds = %2
  %27 = load i32, i32* @_GAMEPAD, align 4
  %28 = call i32 @IS_LAYER_ON(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @userspace_config, i32 0, i32 0), align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 @register_code(i32 130)
  br label %43

41:                                               ; preds = %33
  %42 = call i32 @unregister_code(i32 130)
  br label %43

43:                                               ; preds = %41, %39
  store i32 0, i32* %3, align 4
  br label %58

44:                                               ; preds = %30, %26
  br label %57

45:                                               ; preds = %2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @userspace_config, i32 0, i32 0), align 4
  %53 = xor i32 %52, 1
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @userspace_config, i32 0, i32 0), align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @userspace_config, i32 0, i32 1), align 4
  %55 = call i32 @eeconfig_update_user(i32 %54)
  br label %56

56:                                               ; preds = %51, %45
  br label %57

57:                                               ; preds = %2, %56, %44, %25
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %43, %24
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @IS_LAYER_ON(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @eeconfig_update_user(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
