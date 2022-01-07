; ModuleID = '/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_lobject.c_luaO_arith.c'
source_filename = "/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_lobject.c_luaO_arith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TMS = common dso_local global i32 0, align 4
@LUA_OPADD = common dso_local global i32 0, align 4
@TM_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaO_arith(i32* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %52 [
    i32 135, label %18
    i32 133, label %18
    i32 132, label %18
    i32 129, label %18
    i32 128, label %18
    i32 134, label %18
    i32 131, label %35
    i32 130, label %35
  ]

18:                                               ; preds = %5, %5, %5, %5, %5, %5
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @tointeger(i32* %19, i32* %11)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @tointeger(i32* %23, i32* %12)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i32*, i32** %10, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @intarith(i32* %28, i32 %29, i32 %30, i32 %31)
  %33 = call i32 @setivalue(i32* %27, i32 %32)
  br label %104

34:                                               ; preds = %22, %18
  br label %87

35:                                               ; preds = %5, %5
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @tonumber(i32* %36, i32* %13)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @tonumber(i32* %40, i32* %14)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32*, i32** %10, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @numarith(i32* %45, i32 %46, i32 %47, i32 %48)
  %50 = call i32 @setfltvalue(i32* %44, i32 %49)
  br label %104

51:                                               ; preds = %39, %35
  br label %87

52:                                               ; preds = %5
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @ttisinteger(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @ttisinteger(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i32*, i32** %10, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @ivalue(i32* %64)
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @ivalue(i32* %66)
  %68 = call i32 @intarith(i32* %62, i32 %63, i32 %65, i32 %67)
  %69 = call i32 @setivalue(i32* %61, i32 %68)
  br label %104

70:                                               ; preds = %56, %52
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @tonumber(i32* %71, i32* %15)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %70
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @tonumber(i32* %75, i32* %16)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i32*, i32** %10, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @numarith(i32* %80, i32 %81, i32 %82, i32 %83)
  %85 = call i32 @setfltvalue(i32* %79, i32 %84)
  br label %104

86:                                               ; preds = %74, %70
  br label %87

87:                                               ; preds = %86, %51, %34
  %88 = load i32*, i32** %6, align 8
  %89 = icmp ne i32* %88, null
  %90 = zext i1 %89 to i32
  %91 = call i32 @lua_assert(i32 %90)
  %92 = load i32*, i32** %6, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* @TMS, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @LUA_OPADD, align 4
  %99 = sub nsw i32 %97, %98
  %100 = load i32, i32* @TM_ADD, align 4
  %101 = add nsw i32 %99, %100
  %102 = call i32 @cast(i32 %96, i32 %101)
  %103 = call i32 @luaT_trybinTM(i32* %92, i32* %93, i32* %94, i32* %95, i32 %102)
  br label %104

104:                                              ; preds = %87, %78, %60, %43, %26
  ret void
}

declare dso_local i32 @tointeger(i32*, i32*) #1

declare dso_local i32 @setivalue(i32*, i32) #1

declare dso_local i32 @intarith(i32*, i32, i32, i32) #1

declare dso_local i32 @tonumber(i32*, i32*) #1

declare dso_local i32 @setfltvalue(i32*, i32) #1

declare dso_local i32 @numarith(i32*, i32, i32, i32) #1

declare dso_local i32 @ttisinteger(i32*) #1

declare dso_local i32 @ivalue(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @luaT_trybinTM(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @cast(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
