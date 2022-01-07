; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_script_format_time.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_script_format_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Invalid time format string '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @script_format_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @script_format_time(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca double, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call double @luaL_checknumber(i32* %6, i32 1)
  store double %7, double* %3, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i8* @luaL_optstring(i32* %8, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load double, double* %3, align 8
  %12 = call i8* @mp_format_time_fmt(i8* %10, double %11)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @luaL_error(i32* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load i32*, i32** %2, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @lua_pushstring(i32* %20, i8* %21)
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @talloc_free(i8* %23)
  ret i32 1
}

declare dso_local double @luaL_checknumber(i32*, i32) #1

declare dso_local i8* @luaL_optstring(i32*, i32, i8*) #1

declare dso_local i8* @mp_format_time_fmt(i8*, double) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
