; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/gergo/extr_gergo.c_init_mcp23018.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/gergo/extr_gergo.c_init_mcp23018.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"starting init\00", align 1
@mcp23018_status = common dso_local global i32 0, align 4
@i2c_initialized = common dso_local global i32 0, align 4
@I2C_ADDR_WRITE = common dso_local global i32 0, align 4
@I2C_TIMEOUT = common dso_local global i32 0, align 4
@IODIRA = common dso_local global i32 0, align 4
@GPPUA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_mcp23018() #0 {
  %1 = call i32 @print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 32, i32* @mcp23018_status, align 4
  %2 = load i32, i32* @i2c_initialized, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = call i32 (...) @i2c_init()
  store i32 1, i32* @i2c_initialized, align 4
  %6 = call i32 @_delay_ms(i32 1000)
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i32, i32* @I2C_ADDR_WRITE, align 4
  %9 = load i32, i32* @I2C_TIMEOUT, align 4
  %10 = call i32 @i2c_start(i32 %8, i32 %9)
  store i32 %10, i32* @mcp23018_status, align 4
  %11 = load i32, i32* @mcp23018_status, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %61

14:                                               ; preds = %7
  %15 = load i32, i32* @IODIRA, align 4
  %16 = load i32, i32* @I2C_TIMEOUT, align 4
  %17 = call i32 @i2c_write(i32 %15, i32 %16)
  store i32 %17, i32* @mcp23018_status, align 4
  %18 = load i32, i32* @mcp23018_status, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %61

21:                                               ; preds = %14
  %22 = load i32, i32* @I2C_TIMEOUT, align 4
  %23 = call i32 @i2c_write(i32 128, i32 %22)
  store i32 %23, i32* @mcp23018_status, align 4
  %24 = load i32, i32* @mcp23018_status, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %61

27:                                               ; preds = %21
  %28 = load i32, i32* @I2C_TIMEOUT, align 4
  %29 = call i32 @i2c_write(i32 255, i32 %28)
  store i32 %29, i32* @mcp23018_status, align 4
  %30 = load i32, i32* @mcp23018_status, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %61

33:                                               ; preds = %27
  %34 = call i32 (...) @i2c_stop()
  %35 = load i32, i32* @I2C_ADDR_WRITE, align 4
  %36 = load i32, i32* @I2C_TIMEOUT, align 4
  %37 = call i32 @i2c_start(i32 %35, i32 %36)
  store i32 %37, i32* @mcp23018_status, align 4
  %38 = load i32, i32* @mcp23018_status, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %61

41:                                               ; preds = %33
  %42 = load i32, i32* @GPPUA, align 4
  %43 = load i32, i32* @I2C_TIMEOUT, align 4
  %44 = call i32 @i2c_write(i32 %42, i32 %43)
  store i32 %44, i32* @mcp23018_status, align 4
  %45 = load i32, i32* @mcp23018_status, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %61

48:                                               ; preds = %41
  %49 = load i32, i32* @I2C_TIMEOUT, align 4
  %50 = call i32 @i2c_write(i32 128, i32 %49)
  store i32 %50, i32* @mcp23018_status, align 4
  %51 = load i32, i32* @mcp23018_status, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %61

54:                                               ; preds = %48
  %55 = load i32, i32* @I2C_TIMEOUT, align 4
  %56 = call i32 @i2c_write(i32 255, i32 %55)
  store i32 %56, i32* @mcp23018_status, align 4
  %57 = load i32, i32* @mcp23018_status, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %61

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %59, %53, %47, %40, %32, %26, %20, %13
  %62 = call i32 (...) @i2c_stop()
  %63 = load i32, i32* @mcp23018_status, align 4
  ret i32 %63
}

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @i2c_init(...) #1

declare dso_local i32 @_delay_ms(i32) #1

declare dso_local i32 @i2c_start(i32, i32) #1

declare dso_local i32 @i2c_write(i32, i32) #1

declare dso_local i32 @i2c_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
