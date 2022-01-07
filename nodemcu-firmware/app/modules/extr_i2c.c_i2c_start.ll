; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_i2c.c_i2c_start.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_i2c.c_i2c_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i2c = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"i2c %d is not configured\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @i2c_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_start(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @luaL_checkinteger(i32* %4, i32 1)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @i2c, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @MOD_CHECK_ID(i32 %6, i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @platform_i2c_configured(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @platform_i2c_send_start(i32 %13)
  br label %19

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @luaL_error(i32* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %15, %12
  ret i32 0
}

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @MOD_CHECK_ID(i32, i32) #1

declare dso_local i64 @platform_i2c_configured(i32) #1

declare dso_local i32 @platform_i2c_send_start(i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
