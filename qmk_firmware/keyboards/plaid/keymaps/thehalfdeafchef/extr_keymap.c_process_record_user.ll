; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/plaid/keymaps/thehalfdeafchef/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/plaid/keymaps/thehalfdeafchef/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_QWERTY = common dso_local global i32 0, align 4
@_COLEMAK = common dso_local global i32 0, align 4
@_DVORAK = common dso_local global i32 0, align 4
@led_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@LED_ON = common dso_local global i8* null, align 8
@LED_OFF = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %70 [
    i32 128, label %7
    i32 131, label %17
    i32 130, label %27
    i32 129, label %37
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32, i32* @_QWERTY, align 4
  %15 = call i32 @set_single_persistent_default_layer(i32 %14)
  br label %16

16:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %71

17:                                               ; preds = %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @_COLEMAK, align 4
  %25 = call i32 @set_single_persistent_default_layer(i32 %24)
  br label %26

26:                                               ; preds = %23, %17
  store i32 0, i32* %3, align 4
  br label %71

27:                                               ; preds = %2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @_DVORAK, align 4
  %35 = call i32 @set_single_persistent_default_layer(i32 %34)
  br label %36

36:                                               ; preds = %33, %27
  store i32 0, i32* %3, align 4
  br label %71

37:                                               ; preds = %2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %37
  %44 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @led_config, i32 0, i32 0), align 8
  %45 = load i8*, i8** @LED_ON, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @led_config, i32 0, i32 1), align 8
  %49 = load i8*, i8** @LED_ON, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i8*, i8** @LED_OFF, align 8
  store i8* %52, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @led_config, i32 0, i32 0), align 8
  %53 = load i8*, i8** @LED_OFF, align 8
  store i8* %53, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @led_config, i32 0, i32 1), align 8
  br label %66

54:                                               ; preds = %47, %43
  %55 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @led_config, i32 0, i32 0), align 8
  %56 = load i8*, i8** @LED_OFF, align 8
  %57 = icmp eq i8* %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @led_config, i32 0, i32 1), align 8
  %60 = load i8*, i8** @LED_OFF, align 8
  %61 = icmp eq i8* %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i8*, i8** @LED_ON, align 8
  store i8* %63, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @led_config, i32 0, i32 0), align 8
  %64 = load i8*, i8** @LED_ON, align 8
  store i8* %64, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @led_config, i32 0, i32 1), align 8
  br label %65

65:                                               ; preds = %62, %58, %54
  br label %66

66:                                               ; preds = %65, %51
  br label %67

67:                                               ; preds = %66, %37
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @led_config, i32 0, i32 2), align 8
  %69 = call i32 @eeconfig_update_user(i32 %68)
  store i32 0, i32* %3, align 4
  br label %71

70:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %67, %36, %26, %16
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

declare dso_local i32 @eeconfig_update_user(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
