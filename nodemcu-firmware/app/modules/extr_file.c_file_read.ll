; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_file.c_file_read.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_file.c_file_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILE_READ_CHUNK = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@GET_FILE_OBJ = common dso_local global i32 0, align 4
@argpos = common dso_local global i32 0, align 4
@LUA_TNUMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"wrong arg range\00", align 1
@fd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @file_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_read(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32, i32* @FILE_READ_CHUNK, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i64, i64* @EOF, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* @GET_FILE_OBJ, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @argpos, align 4
  %13 = call i64 @lua_type(i32* %11, i32 %12)
  %14 = load i64, i64* @LUA_TNUMBER, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @argpos, align 4
  %19 = call i64 @luaL_checkinteger(i32* %17, i32 %18)
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %4, align 4
  br label %41

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @argpos, align 4
  %24 = call i64 @lua_isstring(i32* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @argpos, align 4
  %29 = call i8* @luaL_checklstring(i32* %27, i32 %28, i64* %6)
  store i8* %29, i8** %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @luaL_error(i32* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %34, i32* %2, align 4
  br label %47

35:                                               ; preds = %26
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i64
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %35, %21
  br label %41

41:                                               ; preds = %40, %16
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i64, i64* %5, align 8
  %45 = load i32, i32* @fd, align 4
  %46 = call i32 @file_g_read(i32* %42, i32 %43, i64 %44, i32 %45)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %41, %32
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i64 @luaL_checkinteger(i32*, i32) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @file_g_read(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
