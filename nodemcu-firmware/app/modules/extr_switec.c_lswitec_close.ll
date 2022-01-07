; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_switec.c_lswitec_close.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_switec.c_lswitec_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@switec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unable to close stepper.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lswitec_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lswitec_close(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @luaL_checkinteger(i32* %5, i32 1)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @switec, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @MOD_CHECK_ID(i32 %7, i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @callback_free(i32* %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @switec_close(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @luaL_error(i32* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %2, align 4
  br label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @MOD_CHECK_ID(i32, i32) #1

declare dso_local i32 @callback_free(i32*, i32) #1

declare dso_local i64 @switec_close(i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
