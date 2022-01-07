; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_gpio_pulse.c_gpio_pulse_update.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_gpio_pulse.c_gpio_pulse_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@.str = private unnamed_addr constant [11 x i8] c"gpio.pulse\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"entry number must be in range 1 .. %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @gpio_pulse_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_pulse_update(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.TYPE_3__* @luaL_checkudata(i32* %8, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @luaL_checkinteger(i32* %10, i32 2)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14, %1
  %21 = load i32*, i32** %3, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @luaL_error(i32* %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %2, align 4
  br label %44

26:                                               ; preds = %14
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = getelementptr inbounds i32, i32* %32, i64 -1
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @lua_pushvalue(i32* %36, i32 3)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @fill_entry_from_table(i32* %38, i32* %7)
  %40 = call i32 (...) @ETS_FRC1_INTR_DISABLE()
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  %43 = call i32 (...) @ETS_FRC1_INTR_ENABLE()
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %26, %20
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.TYPE_3__* @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @fill_entry_from_table(i32*, i32*) #1

declare dso_local i32 @ETS_FRC1_INTR_DISABLE(...) #1

declare dso_local i32 @ETS_FRC1_INTR_ENABLE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
