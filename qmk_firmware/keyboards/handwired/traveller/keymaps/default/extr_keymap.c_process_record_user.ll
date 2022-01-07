; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/traveller/keymaps/default/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/traveller/keymaps/default/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@KC_MS_UP = common dso_local global i32 0, align 4
@KC_MS_LEFT = common dso_local global i32 0, align 4
@KC_MS_RIGHT = common dso_local global i32 0, align 4
@KC_MS_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %79 [
    i32 129, label %7
    i32 128, label %25
    i32 131, label %43
    i32 130, label %61
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = load i32, i32* @KC_MS_UP, align 4
  %15 = call i32 @mousekey_on(i32 %14)
  %16 = load i32, i32* @KC_MS_LEFT, align 4
  %17 = call i32 @mousekey_on(i32 %16)
  br label %23

18:                                               ; preds = %7
  %19 = load i32, i32* @KC_MS_UP, align 4
  %20 = call i32 @mousekey_off(i32 %19)
  %21 = load i32, i32* @KC_MS_LEFT, align 4
  %22 = call i32 @mousekey_off(i32 %21)
  br label %23

23:                                               ; preds = %18, %13
  %24 = call i32 (...) @mousekey_send()
  store i32 0, i32* %3, align 4
  br label %80

25:                                               ; preds = %2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i32, i32* @KC_MS_UP, align 4
  %33 = call i32 @mousekey_on(i32 %32)
  %34 = load i32, i32* @KC_MS_RIGHT, align 4
  %35 = call i32 @mousekey_on(i32 %34)
  br label %41

36:                                               ; preds = %25
  %37 = load i32, i32* @KC_MS_UP, align 4
  %38 = call i32 @mousekey_off(i32 %37)
  %39 = load i32, i32* @KC_MS_RIGHT, align 4
  %40 = call i32 @mousekey_off(i32 %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = call i32 (...) @mousekey_send()
  store i32 0, i32* %3, align 4
  br label %80

43:                                               ; preds = %2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i32, i32* @KC_MS_DOWN, align 4
  %51 = call i32 @mousekey_on(i32 %50)
  %52 = load i32, i32* @KC_MS_LEFT, align 4
  %53 = call i32 @mousekey_on(i32 %52)
  br label %59

54:                                               ; preds = %43
  %55 = load i32, i32* @KC_MS_DOWN, align 4
  %56 = call i32 @mousekey_off(i32 %55)
  %57 = load i32, i32* @KC_MS_LEFT, align 4
  %58 = call i32 @mousekey_off(i32 %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = call i32 (...) @mousekey_send()
  store i32 0, i32* %3, align 4
  br label %80

61:                                               ; preds = %2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32, i32* @KC_MS_DOWN, align 4
  %69 = call i32 @mousekey_on(i32 %68)
  %70 = load i32, i32* @KC_MS_RIGHT, align 4
  %71 = call i32 @mousekey_on(i32 %70)
  br label %77

72:                                               ; preds = %61
  %73 = load i32, i32* @KC_MS_DOWN, align 4
  %74 = call i32 @mousekey_off(i32 %73)
  %75 = load i32, i32* @KC_MS_RIGHT, align 4
  %76 = call i32 @mousekey_off(i32 %75)
  br label %77

77:                                               ; preds = %72, %67
  %78 = call i32 (...) @mousekey_send()
  store i32 0, i32* %3, align 4
  br label %80

79:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %77, %59, %41, %23
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @mousekey_on(i32) #1

declare dso_local i32 @mousekey_off(i32) #1

declare dso_local i32 @mousekey_send(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
