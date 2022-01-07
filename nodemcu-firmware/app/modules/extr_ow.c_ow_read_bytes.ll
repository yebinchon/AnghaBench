; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ow.c_ow_read_bytes.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ow.c_ow_read_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ow = common dso_local global i32 0, align 4
@LUAL_BUFFERSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Attempt to read too many characters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ow_read_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ow_read_bytes(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @luaL_checkinteger(i32* %8, i32 1)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @ow, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @MOD_CHECK_ID(i32 %10, i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @luaL_checkinteger(i32* %13, i32 2)
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @LUAL_BUFFERSIZE, align 8
  %23 = icmp sle i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @luaL_argcheck(i32* %20, i32 %24, i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @luaL_buffinit(i32* %26, i32* %6)
  %28 = call i8* @luaL_prepbuffer(i32* %6)
  store i8* %28, i8** %7, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @onewire_read_bytes(i32 %29, i32* %31, i64 %32)
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @luaL_addsize(i32* %6, i64 %34)
  %36 = call i32 @luaL_pushresult(i32* %6)
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %19, %18
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @MOD_CHECK_ID(i32, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i8* @luaL_prepbuffer(i32*) #1

declare dso_local i32 @onewire_read_bytes(i32, i32*, i64) #1

declare dso_local i32 @luaL_addsize(i32*, i64) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
