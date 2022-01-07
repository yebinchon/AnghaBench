; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/sx60/extr_sx60.c_init_mcp23018.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/sx60/extr_sx60.c_init_mcp23018.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mcp23018_status = common dso_local global i32 0, align 4
@i2c_initialized = common dso_local global i32 0, align 4
@I2C_ADDR_WRITE = common dso_local global i32 0, align 4
@IODIRA = common dso_local global i32 0, align 4
@GPPUA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_mcp23018() #0 {
  store i32 32, i32* @mcp23018_status, align 4
  %1 = load i32, i32* @i2c_initialized, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = call i32 (...) @i2c_init()
  store i32 1, i32* @i2c_initialized, align 4
  %5 = call i32 @_delay_ms(i32 1000)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i32, i32* @I2C_ADDR_WRITE, align 4
  %8 = call i32 @i2c_start(i32 %7)
  store i32 %8, i32* @mcp23018_status, align 4
  %9 = load i32, i32* @mcp23018_status, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %52

12:                                               ; preds = %6
  %13 = load i32, i32* @IODIRA, align 4
  %14 = call i32 @i2c_write(i32 %13)
  store i32 %14, i32* @mcp23018_status, align 4
  %15 = load i32, i32* @mcp23018_status, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %52

18:                                               ; preds = %12
  %19 = call i32 @i2c_write(i32 255)
  store i32 %19, i32* @mcp23018_status, align 4
  %20 = load i32, i32* @mcp23018_status, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %52

23:                                               ; preds = %18
  %24 = call i32 @i2c_write(i32 0)
  store i32 %24, i32* @mcp23018_status, align 4
  %25 = load i32, i32* @mcp23018_status, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %52

28:                                               ; preds = %23
  %29 = call i32 (...) @i2c_stop()
  %30 = load i32, i32* @I2C_ADDR_WRITE, align 4
  %31 = call i32 @i2c_start(i32 %30)
  store i32 %31, i32* @mcp23018_status, align 4
  %32 = load i32, i32* @mcp23018_status, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %52

35:                                               ; preds = %28
  %36 = load i32, i32* @GPPUA, align 4
  %37 = call i32 @i2c_write(i32 %36)
  store i32 %37, i32* @mcp23018_status, align 4
  %38 = load i32, i32* @mcp23018_status, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %52

41:                                               ; preds = %35
  %42 = call i32 @i2c_write(i32 255)
  store i32 %42, i32* @mcp23018_status, align 4
  %43 = load i32, i32* @mcp23018_status, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %52

46:                                               ; preds = %41
  %47 = call i32 @i2c_write(i32 0)
  store i32 %47, i32* @mcp23018_status, align 4
  %48 = load i32, i32* @mcp23018_status, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %52

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %50, %45, %40, %34, %27, %22, %17, %11
  %53 = call i32 (...) @i2c_stop()
  %54 = load i32, i32* @mcp23018_status, align 4
  ret i32 %54
}

declare dso_local i32 @i2c_init(...) #1

declare dso_local i32 @_delay_ms(i32) #1

declare dso_local i32 @i2c_start(i32) #1

declare dso_local i32 @i2c_write(i32) #1

declare dso_local i32 @i2c_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
