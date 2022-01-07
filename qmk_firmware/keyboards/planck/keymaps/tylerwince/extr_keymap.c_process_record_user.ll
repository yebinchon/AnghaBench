; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/tylerwince/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/tylerwince/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@rgb_matrix_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@disable_layer_color = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %45 [
    i32 130, label %7
    i32 129, label %16
    i32 128, label %35
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = call i32 @rgblight_mode(i32 1)
  br label %15

15:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %46

16:                                               ; preds = %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgb_matrix_config, i32 0, i32 2), align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgb_matrix_config, i32 0, i32 1), align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgb_matrix_config, i32 0, i32 0), align 4
  %28 = call i32 @rgb_matrix_sethsv(i32 %26, i32 %27, i32 0)
  br label %33

29:                                               ; preds = %22
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgb_matrix_config, i32 0, i32 1), align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rgb_matrix_config, i32 0, i32 0), align 4
  %32 = call i32 @rgb_matrix_sethsv(i32 %30, i32 %31, i32 255)
  br label %33

33:                                               ; preds = %29, %25
  br label %34

34:                                               ; preds = %33, %16
  store i32 0, i32* %3, align 4
  br label %46

35:                                               ; preds = %2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @disable_layer_color, align 4
  %43 = xor i32 %42, 1
  store i32 %43, i32* @disable_layer_color, align 4
  br label %44

44:                                               ; preds = %41, %35
  store i32 0, i32* %3, align 4
  br label %46

45:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %44, %34, %15
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @rgblight_mode(i32) #1

declare dso_local i32 @rgb_matrix_sethsv(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
