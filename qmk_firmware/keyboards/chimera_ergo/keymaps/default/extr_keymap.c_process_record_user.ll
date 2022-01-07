; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/chimera_ergo/keymaps/default/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/chimera_ergo/keymaps/default/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"#include <>\00", align 1
@KC_LEFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"git pull\00", align 1
@KC_ENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"git push\00", align 1
@_CAPS = common dso_local global i32 0, align 4
@KC_CAPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %64 [
    i32 132, label %7
    i32 131, label %18
    i32 130, label %29
    i32 129, label %40
    i32 128, label %52
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = call i32 @SEND_STRING(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @KC_LEFT, align 4
  %16 = call i32 @tap_code(i32 %15)
  br label %17

17:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %65

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = call i32 @SEND_STRING(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @KC_ENT, align 4
  %27 = call i32 @tap_code(i32 %26)
  br label %28

28:                                               ; preds = %24, %18
  store i32 0, i32* %3, align 4
  br label %65

29:                                               ; preds = %2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = call i32 @SEND_STRING(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @KC_ENT, align 4
  %38 = call i32 @tap_code(i32 %37)
  br label %39

39:                                               ; preds = %35, %29
  store i32 0, i32* %3, align 4
  br label %65

40:                                               ; preds = %2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i32, i32* @_CAPS, align 4
  %48 = call i32 @layer_on(i32 %47)
  %49 = load i32, i32* @KC_CAPS, align 4
  %50 = call i32 @tap_code(i32 %49)
  br label %51

51:                                               ; preds = %46, %40
  store i32 0, i32* %3, align 4
  br label %65

52:                                               ; preds = %2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i32, i32* @_CAPS, align 4
  %60 = call i32 @layer_off(i32 %59)
  %61 = load i32, i32* @KC_CAPS, align 4
  %62 = call i32 @tap_code(i32 %61)
  br label %63

63:                                               ; preds = %58, %52
  store i32 0, i32* %3, align 4
  br label %65

64:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %63, %51, %39, %28, %17
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @SEND_STRING(i8*) #1

declare dso_local i32 @tap_code(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @layer_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
