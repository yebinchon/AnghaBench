; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/omnikeyish/extr_dynamic_macro.c_dynamic_macro_load_eeprom.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/omnikeyish/extr_dynamic_macro.c_dynamic_macro_load_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@dynamic_macros = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [54 x i8] c"dynamic macro: slot %d not loaded, checksum mismatch\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"dynamic macro: slot %d loaded from eeprom, checksum okay\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dynamic_macro_load_eeprom(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dynamic_macros, align 8
  %5 = load i64, i64* %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i64 %5
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = load i64, i64* %2, align 8
  %9 = call i32 @dynamic_macro_eeprom_macro_addr(i64 %8)
  %10 = call i32 @eeprom_read_block(%struct.TYPE_5__* %7, i32 %9, i32 16)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = call i64 @dynamic_macro_calc_crc(%struct.TYPE_5__* %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i64, i64* %2, align 8
  %19 = call i32 @dprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  br label %25

22:                                               ; preds = %1
  %23 = load i64, i64* %2, align 8
  %24 = call i32 @dprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  br label %25

25:                                               ; preds = %22, %17
  ret void
}

declare dso_local i32 @eeprom_read_block(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @dynamic_macro_eeprom_macro_addr(i64) #1

declare dso_local i64 @dynamic_macro_calc_crc(%struct.TYPE_5__*) #1

declare dso_local i32 @dprintf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
