; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_spi.c_spi_recv.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_spi.c_spi_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spi = common dso_local global i32 0, align 4
@spi_databits = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @spi_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_recv(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @luaL_checkinteger(i32* %9, i32 1)
  store i32 %10, i32* %4, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @luaL_checkinteger(i32* %11, i32 2)
  store i32 %12, i32* %5, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @luaL_optinteger(i32* %13, i32 3, i32 -1)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @spi, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @MOD_CHECK_ID(i32 %15, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @luaL_buffinit(i32* %22, i32* %8)
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %39, %21
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = load i32*, i32** @spi_databits, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @platform_spi_send_recv(i32 %29, i32 %34, i32 %35)
  %37 = trunc i64 %36 to i8
  %38 = call i32 @luaL_addchar(i32* %8, i8 signext %37)
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %24

42:                                               ; preds = %24
  %43 = call i32 @luaL_pushresult(i32* %8)
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %20
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @luaL_optinteger(i32*, i32, i32) #1

declare dso_local i32 @MOD_CHECK_ID(i32, i32) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @luaL_addchar(i32*, i8 signext) #1

declare dso_local i64 @platform_spi_send_recv(i32, i32, i32) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
