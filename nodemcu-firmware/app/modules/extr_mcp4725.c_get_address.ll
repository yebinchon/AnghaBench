; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mcp4725.c_get_address.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mcp4725.c_get_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"A2\00", align 1
@MCP4725_I2C_ADDR_A2_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"A2: Must be 0 or 1\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"A2: Must be number\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"A1\00", align 1
@MCP4725_I2C_ADDR_A1_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"A1: Must be 0 or 1\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"A1: Must be number\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"A0\00", align 1
@MCP4725_I2C_ADDR_A0_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"A0: Must be 0 or 1\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"A0: Must be number\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @get_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_address(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  store i32 %8, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @lua_getfield(i32* %9, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @lua_isnil(i32* %11, i32 -1)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %39, label %14

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @lua_isnumber(i32* %15, i32 -1)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @lua_tonumber(i32* %19, i32 -1)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i32, i32* @MCP4725_I2C_ADDR_A2_MASK, align 4
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 %25, 2
  %27 = and i32 %24, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %34

31:                                               ; preds = %18
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @luaL_argerror(i32* %32, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 %33, i32* %3, align 4
  br label %108

34:                                               ; preds = %23
  br label %38

35:                                               ; preds = %14
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @luaL_argerror(i32* %36, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 %37, i32* %3, align 4
  br label %108

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38, %2
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @lua_pop(i32* %40, i32 1)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @lua_getfield(i32* %42, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @lua_isnil(i32* %44, i32 -1)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %72, label %47

47:                                               ; preds = %39
  %48 = load i32*, i32** %4, align 8
  %49 = call i64 @lua_isnumber(i32* %48, i32 -1)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %47
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @lua_tonumber(i32* %52, i32 -1)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load i32, i32* @MCP4725_I2C_ADDR_A1_MASK, align 4
  %58 = load i32, i32* %7, align 4
  %59 = shl i32 %58, 1
  %60 = and i32 %57, %59
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %67

64:                                               ; preds = %51
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @luaL_argerror(i32* %65, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32 %66, i32* %3, align 4
  br label %108

67:                                               ; preds = %56
  br label %71

68:                                               ; preds = %47
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @luaL_argerror(i32* %69, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32 %70, i32* %3, align 4
  br label %108

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71, %39
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @lua_pop(i32* %73, i32 1)
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @lua_getfield(i32* %75, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @lua_isnil(i32* %77, i32 -1)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %104, label %80

80:                                               ; preds = %72
  %81 = load i32*, i32** %4, align 8
  %82 = call i64 @lua_isnumber(i32* %81, i32 -1)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %80
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @lua_tonumber(i32* %85, i32 -1)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 2
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load i32, i32* @MCP4725_I2C_ADDR_A0_MASK, align 4
  %91 = load i32, i32* %7, align 4
  %92 = and i32 %90, %91
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %6, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %6, align 4
  br label %99

96:                                               ; preds = %84
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @luaL_argerror(i32* %97, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  store i32 %98, i32* %3, align 4
  br label %108

99:                                               ; preds = %89
  br label %103

100:                                              ; preds = %80
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @luaL_argerror(i32* %101, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  store i32 %102, i32* %3, align 4
  br label %108

103:                                              ; preds = %99
  br label %104

104:                                              ; preds = %103, %72
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @lua_pop(i32* %105, i32 1)
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %104, %100, %96, %68, %64, %35, %31
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_isnil(i32*, i32) #1

declare dso_local i64 @lua_isnumber(i32*, i32) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
