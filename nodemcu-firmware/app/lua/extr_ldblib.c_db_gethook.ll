; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ldblib.c_db_gethook.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ldblib.c_db_gethook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hookf = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"external hook\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @db_gethook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_gethook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca [5 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32* @getthread(i32* %8, i32* %3)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @lua_gethookmask(i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32* @lua_gethook(i32* %12)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** @hookf, align 8
  %19 = icmp ne i32* %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @lua_pushliteral(i32* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %33

23:                                               ; preds = %16, %1
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @gethooktable(i32* %24)
  %26 = load i32*, i32** %2, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @lua_pushlightuserdata(i32* %26, i32* %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @lua_rawget(i32* %29, i32 -2)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @lua_remove(i32* %31, i32 -2)
  br label %33

33:                                               ; preds = %23, %20
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* %6, align 4
  %36 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %37 = call i32 @unmakemask(i32 %35, i8* %36)
  %38 = call i32 @lua_pushstring(i32* %34, i32 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @lua_gethookcount(i32* %40)
  %42 = call i32 @lua_pushinteger(i32* %39, i32 %41)
  ret i32 3
}

declare dso_local i32* @getthread(i32*, i32*) #1

declare dso_local i32 @lua_gethookmask(i32*) #1

declare dso_local i32* @lua_gethook(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @gethooktable(i32*) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32*) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @unmakemask(i32, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_gethookcount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
