; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/bigseries/1key/keymaps/leddance/extr_keymap.c_dance_toggle.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/bigseries/1key/keymaps/leddance/extr_keymap.c_dance_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Double tapped, switching layers\00", align 1
@LED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Single tapped: \00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Base layer, sending string\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"This thing is BIG!!\0A\00", align 1
@rgblight_config = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dance_toggle(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp sge i32 %7, 2
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = call i32 @println(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @LED, align 4
  %12 = call i64 @layer_state_is(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i32, i32* @LED, align 4
  %16 = call i32 @layer_off(i32 %15)
  br label %20

17:                                               ; preds = %9
  %18 = load i32, i32* @LED, align 4
  %19 = call i32 @layer_on(i32 %18)
  br label %20

20:                                               ; preds = %17, %14
  br label %31

21:                                               ; preds = %2
  %22 = call i32 @print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @LED, align 4
  %24 = call i64 @layer_state_is(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %30

27:                                               ; preds = %21
  %28 = call i32 @println(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 @SEND_STRING(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %26
  br label %31

31:                                               ; preds = %30, %20
  ret void
}

declare dso_local i32 @println(i8*) #1

declare dso_local i64 @layer_state_is(i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @SEND_STRING(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
