; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_switec.c_lswitec_moveto.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_switec.c_lswitec_moveto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@switec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unable to move stepper.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lswitec_moveto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lswitec_moveto(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i8* @luaL_checkinteger(i32* %6, i32 1)
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @switec, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @MOD_CHECK_ID(i32 %9, i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call i8* @luaL_checkinteger(i32* %12, i32 2)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @lua_gettop(i32* %15)
  %17 = icmp sge i32 %16, 3
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @callback_set(i32* %19, i32 %20, i32 3)
  br label %26

22:                                               ; preds = %1
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @callback_free(i32* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @switec_moveto(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @luaL_error(i32* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i8* @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @MOD_CHECK_ID(i32, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @callback_set(i32*, i32, i32) #1

declare dso_local i32 @callback_free(i32*, i32) #1

declare dso_local i64 @switec_moveto(i32, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
