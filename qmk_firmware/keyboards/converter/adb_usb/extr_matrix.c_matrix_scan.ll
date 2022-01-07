; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/converter/adb_usb/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/converter/adb_usb/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matrix_scan.extra_key = internal global i32 65535, align 4
@matrix_scan.tick_ms = internal global i32 0, align 4
@debug_matrix = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"adb_host_kbd_recv: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"adb_host_kbd_recv: ERROR(%d)\0A\00", align 1
@is_iso_layout = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matrix_scan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load volatile i32, i32* @matrix_scan.extra_key, align 4
  store i32 %5, i32* %2, align 4
  store volatile i32 65535, i32* @matrix_scan.extra_key, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, 65535
  br i1 %7, label %8, label %16

8:                                                ; preds = %0
  %9 = load i32, i32* @matrix_scan.tick_ms, align 4
  %10 = call i32 @timer_elapsed(i32 %9)
  %11 = icmp slt i32 %10, 12
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %89

13:                                               ; preds = %8
  %14 = call i32 (...) @timer_read()
  store i32 %14, i32* @matrix_scan.tick_ms, align 4
  %15 = call i32 (...) @adb_host_kbd_recv()
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %13, %0
  %17 = load i32, i32* %2, align 4
  %18 = ashr i32 %17, 8
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %2, align 4
  %20 = and i32 %19, 255
  store i32 %20, i32* %4, align 4
  %21 = load i64, i64* @debug_matrix, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load i32, i32* %2, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = call i32 @print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @phex16(i32 %28)
  %30 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %23, %16
  %32 = load i32, i32* %2, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %1, align 4
  br label %89

35:                                               ; preds = %31
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %36, 32639
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @register_key(i32 127)
  br label %86

40:                                               ; preds = %35
  %41 = load i32, i32* %2, align 4
  %42 = icmp eq i32 %41, 65535
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 @register_key(i32 255)
  br label %85

45:                                               ; preds = %40
  %46 = load i32, i32* %3, align 4
  %47 = icmp eq i32 %46, 255
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @xprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = call i32 (...) @matrix_init()
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %1, align 4
  br label %89

53:                                               ; preds = %45
  %54 = load i64, i64* @is_iso_layout, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %53
  %57 = load i32, i32* %3, align 4
  %58 = and i32 %57, 127
  %59 = icmp eq i32 %58, 50
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* %3, align 4
  %62 = and i32 %61, 128
  %63 = or i32 %62, 10
  store i32 %63, i32* %3, align 4
  br label %73

64:                                               ; preds = %56
  %65 = load i32, i32* %3, align 4
  %66 = and i32 %65, 127
  %67 = icmp eq i32 %66, 10
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* %3, align 4
  %70 = and i32 %69, 128
  %71 = or i32 %70, 50
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %64
  br label %73

73:                                               ; preds = %72, %60
  br label %74

74:                                               ; preds = %73, %53
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @register_key(i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 255
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* %4, align 4
  %81 = shl i32 %80, 8
  %82 = or i32 %81, 255
  store volatile i32 %82, i32* @matrix_scan.extra_key, align 4
  br label %83

83:                                               ; preds = %79, %74
  br label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %84, %43
  br label %86

86:                                               ; preds = %85, %38
  br label %87

87:                                               ; preds = %86
  %88 = call i32 (...) @matrix_scan_quantum()
  store i32 1, i32* %1, align 4
  br label %89

89:                                               ; preds = %87, %48, %34, %12
  %90 = load i32, i32* %1, align 4
  ret i32 %90
}

declare dso_local i32 @timer_elapsed(i32) #1

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @adb_host_kbd_recv(...) #1

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @phex16(i32) #1

declare dso_local i32 @register_key(i32) #1

declare dso_local i32 @xprintf(i8*, i32) #1

declare dso_local i32 @matrix_init(...) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
