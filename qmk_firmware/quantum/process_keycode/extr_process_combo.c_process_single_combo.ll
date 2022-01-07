; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_combo.c_process_single_combo.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_combo.c_process_single_combo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@COMBO_END = common dso_local global i64 0, align 8
@is_active = common dso_local global i32 0, align 4
@ALL_COMBO_KEYS_ARE_DOWN = common dso_local global i64 0, align 8
@drop_buffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64, %struct.TYPE_7__*)* @process_single_combo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_single_combo(%struct.TYPE_8__* %0, i64 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 -1, i64* %9, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %10, align 8
  br label %16

16:                                               ; preds = %32, %3
  %17 = load i64*, i64** %10, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = call i64 @pgm_read_word(i64* %19)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i64, i64* %8, align 8
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %24, %16
  %27 = load i64, i64* @COMBO_END, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %35

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %8, align 8
  br label %16

35:                                               ; preds = %30
  %36 = load i64, i64* %9, align 8
  %37 = trunc i64 %36 to i32
  %38 = icmp eq i32 -1, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %76

40:                                               ; preds = %35
  %41 = load i32, i32* @is_active, align 4
  store i32 %41, i32* %12, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %40
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @KEY_STATE_DOWN(i64 %48)
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load i64, i64* @ALL_COMBO_KEYS_ARE_DOWN, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @send_combo(i32 %58, i32 1)
  store i32 1, i32* @drop_buffer, align 4
  br label %60

60:                                               ; preds = %55, %52
  br label %61

61:                                               ; preds = %60, %47
  br label %74

62:                                               ; preds = %40
  %63 = load i64, i64* @ALL_COMBO_KEYS_ARE_DOWN, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @send_combo(i32 %68, i32 0)
  br label %71

70:                                               ; preds = %62
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %70, %65
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @KEY_STATE_UP(i64 %72)
  br label %74

74:                                               ; preds = %71, %61
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %39
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @pgm_read_word(i64*) #1

declare dso_local i32 @KEY_STATE_DOWN(i64) #1

declare dso_local i32 @send_combo(i32, i32) #1

declare dso_local i32 @KEY_STATE_UP(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
