; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/frenchdev/extr_frenchdev.c_init_mcp23018.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/frenchdev/extr_frenchdev.c_init_mcp23018.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mcp23018_status = common dso_local global i32 0, align 4
@i2c_initialized = common dso_local global i32 0, align 4
@I2C_ADDR_WRITE = common dso_local global i32 0, align 4
@I2C_TIMEOUT = common dso_local global i32 0, align 4
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
  %5 = call i32 @wait_ms(i32 1000)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i32, i32* @I2C_ADDR_WRITE, align 4
  %8 = load i32, i32* @I2C_TIMEOUT, align 4
  %9 = call i32 @i2c_start(i32 %7, i32 %8)
  store i32 %9, i32* @mcp23018_status, align 4
  %10 = load i32, i32* @mcp23018_status, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %60

13:                                               ; preds = %6
  %14 = load i32, i32* @IODIRA, align 4
  %15 = load i32, i32* @I2C_TIMEOUT, align 4
  %16 = call i32 @i2c_write(i32 %14, i32 %15)
  store i32 %16, i32* @mcp23018_status, align 4
  %17 = load i32, i32* @mcp23018_status, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %60

20:                                               ; preds = %13
  %21 = load i32, i32* @I2C_TIMEOUT, align 4
  %22 = call i32 @i2c_write(i32 0, i32 %21)
  store i32 %22, i32* @mcp23018_status, align 4
  %23 = load i32, i32* @mcp23018_status, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %60

26:                                               ; preds = %20
  %27 = load i32, i32* @I2C_TIMEOUT, align 4
  %28 = call i32 @i2c_write(i32 63, i32 %27)
  store i32 %28, i32* @mcp23018_status, align 4
  %29 = load i32, i32* @mcp23018_status, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %60

32:                                               ; preds = %26
  %33 = call i32 (...) @i2c_stop()
  %34 = load i32, i32* @I2C_ADDR_WRITE, align 4
  %35 = load i32, i32* @I2C_TIMEOUT, align 4
  %36 = call i32 @i2c_start(i32 %34, i32 %35)
  store i32 %36, i32* @mcp23018_status, align 4
  %37 = load i32, i32* @mcp23018_status, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %60

40:                                               ; preds = %32
  %41 = load i32, i32* @GPPUA, align 4
  %42 = load i32, i32* @I2C_TIMEOUT, align 4
  %43 = call i32 @i2c_write(i32 %41, i32 %42)
  store i32 %43, i32* @mcp23018_status, align 4
  %44 = load i32, i32* @mcp23018_status, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %60

47:                                               ; preds = %40
  %48 = load i32, i32* @I2C_TIMEOUT, align 4
  %49 = call i32 @i2c_write(i32 0, i32 %48)
  store i32 %49, i32* @mcp23018_status, align 4
  %50 = load i32, i32* @mcp23018_status, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %60

53:                                               ; preds = %47
  %54 = load i32, i32* @I2C_TIMEOUT, align 4
  %55 = call i32 @i2c_write(i32 63, i32 %54)
  store i32 %55, i32* @mcp23018_status, align 4
  %56 = load i32, i32* @mcp23018_status, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %60

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %58, %52, %46, %39, %31, %25, %19, %12
  %61 = call i32 (...) @i2c_stop()
  %62 = load i32, i32* @mcp23018_status, align 4
  ret i32 %62
}

declare dso_local i32 @i2c_init(...) #1

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i32 @i2c_start(i32, i32) #1

declare dso_local i32 @i2c_write(i32, i32) #1

declare dso_local i32 @i2c_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
