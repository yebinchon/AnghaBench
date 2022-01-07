; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_si7021.c_si7021_lua_setup.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_si7021.c_si7021_lua_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SI7021_CMD_RESET = common dso_local global i32 0, align 4
@SI7021_CMD_READ_RHT_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"found no device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @si7021_lua_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si7021_lua_setup(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [1 x i32], align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32, i32* @SI7021_CMD_RESET, align 4
  %6 = call i32 @write_byte(i32 %5)
  %7 = call i32 @os_delay_us(i32 50000)
  %8 = load i32, i32* @SI7021_CMD_READ_RHT_REG, align 4
  %9 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %10 = call i32 @read_reg(i32 %8, i32* %9, i32 1)
  %11 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 58
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @luaL_error(i32* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %2, align 4
  br label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @write_byte(i32) #1

declare dso_local i32 @os_delay_us(i32) #1

declare dso_local i32 @read_reg(i32, i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
