; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/turbomech/extr_backupturbomech.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/turbomech/extr_backupturbomech.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"make alu84:TurboMech:dfu\00", align 1
@X_ENTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"cd QMK/qmk_firmware\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %42 [
    i32 128, label %7
    i32 131, label %9
    i32 130, label %21
    i32 129, label %33
  ]

7:                                                ; preds = %2
  %8 = call i32 @persistent_default_layer_set(i64 undef)
  store i32 0, i32* %3, align 4
  br label %46

9:                                                ; preds = %2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = call i32 @SEND_STRING(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @X_ENTER, align 4
  %18 = call i8* @SS_TAP(i32 %17)
  %19 = call i32 @SEND_STRING(i8* %18)
  br label %20

20:                                               ; preds = %15, %9
  store i32 0, i32* %3, align 4
  br label %46

21:                                               ; preds = %2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = call i32 @SEND_STRING(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @X_ENTER, align 4
  %30 = call i8* @SS_TAP(i32 %29)
  %31 = call i32 @SEND_STRING(i8* %30)
  br label %32

32:                                               ; preds = %27, %21
  store i32 0, i32* %3, align 4
  br label %46

33:                                               ; preds = %2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = call i32 (...) @reset_keyboard()
  br label %41

41:                                               ; preds = %39, %33
  store i32 0, i32* %3, align 4
  br label %46

42:                                               ; preds = %2
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = call i32 @process_record_keymap(i32 %43, %struct.TYPE_6__* %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %41, %32, %20, %7
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @persistent_default_layer_set(i64) #1

declare dso_local i32 @SEND_STRING(i8*) #1

declare dso_local i8* @SS_TAP(i32) #1

declare dso_local i32 @reset_keyboard(...) #1

declare dso_local i32 @process_record_keymap(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
