; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergo42/extr_serial.c_serial_update_buffers.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergo42/extr_serial.c_serial_update_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SERIAL_DELAY = common dso_local global i32 0, align 4
@SERIAL_SLAVE_BUFFER_LENGTH = common dso_local global i32 0, align 4
@serial_slave_buffer = common dso_local global i64* null, align 8
@SERIAL_MASTER_BUFFER_LENGTH = common dso_local global i32 0, align 4
@serial_master_buffer = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serial_update_buffers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = call i32 (...) @cli()
  %8 = call i32 (...) @serial_output()
  %9 = call i32 (...) @serial_low()
  %10 = call i32 @_delay_us(i32 1)
  %11 = call i32 (...) @serial_input()
  %12 = call i32 (...) @serial_high()
  %13 = load i32, i32* @SERIAL_DELAY, align 4
  %14 = call i32 @_delay_us(i32 %13)
  %15 = call i64 (...) @serial_read_pin()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = call i32 (...) @sei()
  store i32 1, i32* %1, align 4
  br label %80

19:                                               ; preds = %0
  %20 = call i32 (...) @sync_recv()
  store i64 0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %39, %19
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @SERIAL_SLAVE_BUFFER_LENGTH, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = call i64 (...) @serial_read_byte()
  %27 = load i64*, i64** @serial_slave_buffer, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  store i64 %26, i64* %30, align 8
  %31 = call i32 (...) @sync_recv()
  %32 = load i64*, i64** @serial_slave_buffer, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %2, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %2, align 8
  br label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %21

42:                                               ; preds = %21
  %43 = call i64 (...) @serial_read_byte()
  store i64 %43, i64* %4, align 8
  %44 = call i32 (...) @sync_recv()
  %45 = load i64, i64* %2, align 8
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call i32 (...) @sei()
  store i32 1, i32* %1, align 4
  br label %80

50:                                               ; preds = %42
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %70, %50
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @SERIAL_MASTER_BUFFER_LENGTH, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = load i64*, i64** @serial_master_buffer, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @serial_write_byte(i64 %60)
  %62 = call i32 (...) @sync_recv()
  %63 = load i64*, i64** @serial_master_buffer, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %55
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %51

73:                                               ; preds = %51
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @serial_write_byte(i64 %74)
  %76 = call i32 (...) @sync_recv()
  %77 = call i32 (...) @serial_output()
  %78 = call i32 (...) @serial_high()
  %79 = call i32 (...) @sei()
  store i32 0, i32* %1, align 4
  br label %80

80:                                               ; preds = %73, %48, %17
  %81 = load i32, i32* %1, align 4
  ret i32 %81
}

declare dso_local i32 @cli(...) #1

declare dso_local i32 @serial_output(...) #1

declare dso_local i32 @serial_low(...) #1

declare dso_local i32 @_delay_us(i32) #1

declare dso_local i32 @serial_input(...) #1

declare dso_local i32 @serial_high(...) #1

declare dso_local i64 @serial_read_pin(...) #1

declare dso_local i32 @sei(...) #1

declare dso_local i32 @sync_recv(...) #1

declare dso_local i64 @serial_read_byte(...) #1

declare dso_local i32 @serial_write_byte(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
