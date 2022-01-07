; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/2_milk/keymaps/emoji/extr_keymap.c_dance_key_two.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/2_milk/keymaps/emoji/extr_keymap.c_dance_key_two.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"0CA0 005F 0CA0\00", align 1
@X_ENTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"0028 30CE 0CA0 75CA 0CA0 0029 30CE 5F61 253B 2501 253B\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"256D 2229 256E 0028 002D 005F 002D 0029 256D 2229 256E\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"0028 3065 FFE3 0020 00B3 FFE3 0029 3065\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"0028 FE3A FE39 FE3A 0029\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dance_key_two(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = call i32 @send_unicode_hex_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @X_ENTER, align 4
  %12 = call i32 @SS_TAP(i32 %11)
  %13 = call i32 @SEND_STRING(i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = call i32 @reset_tap_dance(%struct.TYPE_4__* %14)
  br label %68

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = call i32 @send_unicode_hex_string(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @X_ENTER, align 4
  %24 = call i32 @SS_TAP(i32 %23)
  %25 = call i32 @SEND_STRING(i32 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = call i32 @reset_tap_dance(%struct.TYPE_4__* %26)
  br label %67

28:                                               ; preds = %16
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = call i32 @send_unicode_hex_string(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @X_ENTER, align 4
  %36 = call i32 @SS_TAP(i32 %35)
  %37 = call i32 @SEND_STRING(i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = call i32 @reset_tap_dance(%struct.TYPE_4__* %38)
  br label %66

40:                                               ; preds = %28
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = call i32 @send_unicode_hex_string(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* @X_ENTER, align 4
  %48 = call i32 @SS_TAP(i32 %47)
  %49 = call i32 @SEND_STRING(i32 %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = call i32 @reset_tap_dance(%struct.TYPE_4__* %50)
  br label %65

52:                                               ; preds = %40
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 5
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = call i32 @send_unicode_hex_string(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %59 = load i32, i32* @X_ENTER, align 4
  %60 = call i32 @SS_TAP(i32 %59)
  %61 = call i32 @SEND_STRING(i32 %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = call i32 @reset_tap_dance(%struct.TYPE_4__* %62)
  br label %64

64:                                               ; preds = %57, %52
  br label %65

65:                                               ; preds = %64, %45
  br label %66

66:                                               ; preds = %65, %33
  br label %67

67:                                               ; preds = %66, %21
  br label %68

68:                                               ; preds = %67, %9
  ret void
}

declare dso_local i32 @send_unicode_hex_string(i8*) #1

declare dso_local i32 @SEND_STRING(i32) #1

declare dso_local i32 @SS_TAP(i32) #1

declare dso_local i32 @reset_tap_dance(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
