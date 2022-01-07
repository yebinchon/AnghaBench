; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/luac_cross/extr_liolib.c_read_chars.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/luac_cross/extr_liolib.c_read_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUAL_BUFFERSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64)* @read_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_chars(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @luaL_buffinit(i32* %11, i32* %9)
  %13 = load i64, i64* @LUAL_BUFFERSIZE, align 8
  store i64 %13, i64* %7, align 8
  br label %14

14:                                               ; preds = %38, %3
  %15 = call i8* @luaL_prepbuffer(i32* %9)
  store i8* %15, i8** %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i64, i64* %6, align 8
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %19, %14
  %22 = load i8*, i8** %10, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @fread(i8* %22, i32 1, i64 %23, i32* %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @luaL_addsize(i32* %9, i64 %26)
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = sub i64 %29, %28
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %21
  %32 = load i64, i64* %6, align 8
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %35, %36
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i1 [ false, %31 ], [ %37, %34 ]
  br i1 %39, label %14, label %40

40:                                               ; preds = %38
  %41 = call i32 @luaL_pushresult(i32* %9)
  %42 = load i64, i64* %6, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32*, i32** %4, align 8
  %46 = call i64 @lua_objlen(i32* %45, i32 -1)
  %47 = icmp sgt i64 %46, 0
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i1 [ true, %40 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  ret i32 %50
}

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i8* @luaL_prepbuffer(i32*) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @luaL_addsize(i32*, i64) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

declare dso_local i64 @lua_objlen(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
