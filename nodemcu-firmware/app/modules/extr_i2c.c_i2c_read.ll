; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_i2c.c_i2c_read.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_i2c.c_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i2c = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_read(i32* %0) #0 {
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
  %13 = load i32, i32* @i2c, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @MOD_CHECK_ID(i32 %13, i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @luaL_buffinit(i32* %20, i32* %7)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %41, %19
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sub nsw i32 %29, 1
  %31 = icmp slt i32 %28, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @platform_i2c_recv_byte(i32 %27, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %44

36:                                               ; preds = %26
  %37 = load i32, i32* %8, align 4
  %38 = trunc i32 %37 to i8
  %39 = call i32 @luaL_addchar(i32* %7, i8 signext %38)
  br label %40

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %22

44:                                               ; preds = %35, %22
  %45 = call i32 @luaL_pushresult(i32* %7)
  store i32 1, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %18
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @MOD_CHECK_ID(i32, i32) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @platform_i2c_recv_byte(i32, i32) #1

declare dso_local i32 @luaL_addchar(i32*, i8 signext) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
