; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_rtcfifo.c_rtcfifo_prepare.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_rtcfifo.c_rtcfifo_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_DEFAULT_TAGCOUNT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"sensor_count\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"storage_begin\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"storage_end\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"expected table as arg #1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @rtcfifo_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtcfifo_prepare(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i8*, i8** @RTC_DEFAULT_TAGCOUNT, align 8
  store i8* %8, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @lua_istable(i32* %9, i32 1)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_getfield(i32* %13, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @lua_isnumber(i32* %15, i32 -1)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32*, i32** %3, align 8
  %20 = call i8* @lua_tonumber(i32* %19, i32 -1)
  store i8* %20, i8** %4, align 8
  br label %21

21:                                               ; preds = %18, %12
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @lua_pop(i32* %22, i32 1)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @lua_getfield(i32* %24, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @lua_isnumber(i32* %26, i32 -1)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i32*, i32** %3, align 8
  %31 = call i8* @lua_tonumber(i32* %30, i32 -1)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %29, %21
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @lua_pop(i32* %34, i32 1)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @lua_getfield(i32* %36, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32*, i32** %3, align 8
  %39 = call i64 @lua_isnumber(i32* %38, i32 -1)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32*, i32** %3, align 8
  %43 = call i8* @lua_tonumber(i32* %42, i32 -1)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %41, %33
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @lua_pop(i32* %46, i32 1)
  br label %56

48:                                               ; preds = %1
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @lua_isnone(i32* %49, i32 1)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @luaL_error(i32* %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 %54, i32* %2, align 4
  br label %71

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %45
  %57 = load i8*, i8** %5, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @rtc_fifo_prepare(i32 0, i8* %57, i8* %58)
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, -1
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, -1
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @rtc_fifo_put_loc(i32 %66, i32 %67, i8* %68)
  br label %70

70:                                               ; preds = %65, %62, %56
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %52
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i64 @lua_isnumber(i32*, i32) #1

declare dso_local i8* @lua_tonumber(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_isnone(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @rtc_fifo_prepare(i32, i8*, i8*) #1

declare dso_local i32 @rtc_fifo_put_loc(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
