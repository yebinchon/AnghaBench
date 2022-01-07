; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_si7021.c_si7021_lua_setting.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_si7021.c_si7021_lua_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"wrong arg range\00", align 1
@si7021_res = common dso_local global i32 0, align 4
@SI7021_RH12_TEMP14 = common dso_local global i32 0, align 4
@SI7021_RH08_TEMP12 = common dso_local global i32 0, align 4
@SI7021_RH10_TEMP13 = common dso_local global i32 0, align 4
@SI7021_RH11_TEMP11 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid argument: resolution\00", align 1
@si7021_config = common dso_local global i32 0, align 4
@SI7021_CMD_WRITE_RHT_REG = common dso_local global i32 0, align 4
@si7021_heater = common dso_local global i32 0, align 4
@SI7021_HEATER_ENABLE = common dso_local global i32 0, align 4
@SI7021_HEATER_DISABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Invalid argument: heater\00", align 1
@si7021_heater_setting = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Invalid argument: heater_setting\00", align 1
@SI7021_CMD_WRITE_HEATER_REG = common dso_local global i32 0, align 4
@SI7021_CMD_READ_RHT_REG = common dso_local global i32 0, align 4
@SI7021_CMD_READ_HEATER_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @si7021_lua_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si7021_lua_setting(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [1 x i32], align 4
  %5 = alloca [1 x i32], align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @lua_isnumber(i32* %6, i32 1)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @luaL_error(i32* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %2, align 4
  br label %122

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @luaL_checkinteger(i32* %13, i32 1)
  store i32 %14, i32* @si7021_res, align 4
  %15 = load i32, i32* @si7021_res, align 4
  %16 = load i32, i32* @SI7021_RH12_TEMP14, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %33, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @si7021_res, align 4
  %20 = load i32, i32* @SI7021_RH08_TEMP12, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @si7021_res, align 4
  %24 = load i32, i32* @SI7021_RH10_TEMP13, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @si7021_res, align 4
  %28 = load i32, i32* @SI7021_RH11_TEMP11, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @luaL_error(i32* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 %32, i32* %2, align 4
  br label %122

33:                                               ; preds = %26, %22, %18, %12
  %34 = load i32, i32* @si7021_res, align 4
  %35 = or i32 %34, 58
  store i32 %35, i32* @si7021_config, align 4
  %36 = load i32, i32* @SI7021_CMD_WRITE_RHT_REG, align 4
  %37 = load i32, i32* @si7021_config, align 4
  %38 = call i32 @write_reg(i32 %36, i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = call i64 @lua_isnumber(i32* %39, i32 2)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %89

42:                                               ; preds = %33
  %43 = load i32*, i32** %3, align 8
  %44 = call i64 @lua_isnumber(i32* %43, i32 2)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32*, i32** %3, align 8
  %48 = call i64 @lua_isnumber(i32* %47, i32 3)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46, %42
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @luaL_error(i32* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %52, i32* %2, align 4
  br label %122

53:                                               ; preds = %46
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @luaL_checkinteger(i32* %54, i32 2)
  store i32 %55, i32* @si7021_heater, align 4
  %56 = load i32, i32* @si7021_heater, align 4
  %57 = load i32, i32* @SI7021_HEATER_ENABLE, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %66, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @si7021_heater, align 4
  %61 = load i32, i32* @SI7021_HEATER_DISABLE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @luaL_error(i32* %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 %65, i32* %2, align 4
  br label %122

66:                                               ; preds = %59, %53
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @luaL_checkinteger(i32* %67, i32 3)
  store i32 %68, i32* @si7021_heater_setting, align 4
  %69 = load i32, i32* @si7021_heater_setting, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @si7021_heater_setting, align 4
  %73 = icmp sgt i32 %72, 15
  br i1 %73, label %74, label %77

74:                                               ; preds = %71, %66
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @luaL_error(i32* %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 %76, i32* %2, align 4
  br label %122

77:                                               ; preds = %71
  %78 = load i32, i32* @si7021_res, align 4
  %79 = load i32, i32* @si7021_heater, align 4
  %80 = or i32 %78, %79
  %81 = or i32 %80, 58
  store i32 %81, i32* @si7021_config, align 4
  %82 = load i32, i32* @SI7021_CMD_WRITE_RHT_REG, align 4
  %83 = load i32, i32* @si7021_config, align 4
  %84 = call i32 @write_reg(i32 %82, i32 %83)
  %85 = load i32, i32* @SI7021_CMD_WRITE_HEATER_REG, align 4
  %86 = load i32, i32* @si7021_heater_setting, align 4
  %87 = and i32 %86, 15
  %88 = call i32 @write_reg(i32 %85, i32 %87)
  br label %89

89:                                               ; preds = %77, %33
  %90 = load i32, i32* @SI7021_CMD_READ_RHT_REG, align 4
  %91 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %92 = call i32 @read_reg(i32 %90, i32* %91, i32 1)
  %93 = load i32, i32* @SI7021_CMD_READ_HEATER_REG, align 4
  %94 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %95 = call i32 @read_reg(i32 %93, i32* %94, i32 1)
  %96 = load i32*, i32** %3, align 8
  %97 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 6
  %100 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 1
  %103 = add nsw i32 %99, %102
  %104 = call i32 @lua_pushinteger(i32* %96, i32 %103)
  %105 = load i32*, i32** %3, align 8
  %106 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = ashr i32 %107, 6
  %109 = and i32 %108, 1
  %110 = call i32 @lua_pushinteger(i32* %105, i32 %109)
  %111 = load i32*, i32** %3, align 8
  %112 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = ashr i32 %113, 2
  %115 = and i32 %114, 1
  %116 = call i32 @lua_pushinteger(i32* %111, i32 %115)
  %117 = load i32*, i32** %3, align 8
  %118 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 15
  %121 = call i32 @lua_pushinteger(i32* %117, i32 %120)
  store i32 4, i32* %2, align 4
  br label %122

122:                                              ; preds = %89, %74, %63, %50, %30, %9
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i64 @lua_isnumber(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @write_reg(i32, i32) #1

declare dso_local i32 @read_reg(i32, i32*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
