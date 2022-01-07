; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/fc980c/keymaps/actuation-point-example/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/fc980c/keymaps/actuation-point-example/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"RDAC: %d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"EEPROM: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %23 [
    i32 128, label %13
    i32 131, label %15
    i32 129, label %17
    i32 130, label %20
  ]

13:                                               ; preds = %11
  %14 = call i32 (...) @actuation_point_up()
  store i32 0, i32* %3, align 4
  br label %25

15:                                               ; preds = %11
  %16 = call i32 (...) @actuation_point_down()
  store i32 0, i32* %3, align 4
  br label %25

17:                                               ; preds = %11
  %18 = call i32 (...) @read_rdac()
  %19 = call i32 @xprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 0, i32* %3, align 4
  br label %25

20:                                               ; preds = %11
  %21 = call i32 (...) @read_eeprom()
  %22 = call i32 @xprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store i32 0, i32* %3, align 4
  br label %25

23:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %25

24:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %23, %20, %17, %15, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @actuation_point_up(...) #1

declare dso_local i32 @actuation_point_down(...) #1

declare dso_local i32 @xprintf(i8*, i32) #1

declare dso_local i32 @read_rdac(...) #1

declare dso_local i32 @read_eeprom(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
