; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mcp4725.c_mcp4725_write.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mcp4725.c_mcp4725_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCP4725_I2C_ADDR_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"value: Valid range 0-4095\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"value: Must be number\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"value: value is required\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@MCP4725_COMMAND_WRITE_DAC_EEPROM = common dso_local global i32 0, align 4
@MCP4725_COMMAND_WRITE_DAC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"save: must be boolean\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"pwrdn\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"pwrdn: Valid range 0-3\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"pwrdn: Must be number\00", align 1
@mcp4725_i2c_id = common dso_local global i32 0, align 4
@PLATFORM_I2C_DIRECTION_TRANSMITTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mcp4725_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp4725_write(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32, i32* @MCP4725_I2C_ADDR_BASE, align 4
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @lua_istable(i32* %10, i32 1)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %117

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @get_address(i32* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @lua_getfield(i32* %17, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @lua_isnil(i32* %19, i32 -1)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %45, label %22

22:                                               ; preds = %13
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @lua_isnumber(i32* %23, i32 -1)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @lua_tonumber(i32* %27, i32 -1)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = icmp sle i32 %32, 4095
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = shl i32 %35, 4
  store i32 %36, i32* %5, align 4
  br label %40

37:                                               ; preds = %31, %26
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @luaL_argerror(i32* %38, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 %39, i32* %2, align 4
  br label %139

40:                                               ; preds = %34
  br label %44

41:                                               ; preds = %22
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @luaL_argerror(i32* %42, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 %43, i32* %2, align 4
  br label %139

44:                                               ; preds = %40
  br label %48

45:                                               ; preds = %13
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @luaL_argerror(i32* %46, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 %47, i32* %2, align 4
  br label %139

48:                                               ; preds = %44
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @lua_pop(i32* %49, i32 1)
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @lua_getfield(i32* %51, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @lua_isnil(i32* %53, i32 -1)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %77, label %56

56:                                               ; preds = %48
  %57 = load i32*, i32** %3, align 8
  %58 = call i64 @lua_isboolean(i32* %57, i32 -1)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load i32*, i32** %3, align 8
  %62 = call i64 @lua_toboolean(i32* %61, i32 -1)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* @MCP4725_COMMAND_WRITE_DAC_EEPROM, align 4
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %72

68:                                               ; preds = %60
  %69 = load i32, i32* @MCP4725_COMMAND_WRITE_DAC, align 4
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %68, %64
  br label %76

73:                                               ; preds = %56
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @luaL_argerror(i32* %74, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i32 %75, i32* %2, align 4
  br label %139

76:                                               ; preds = %72
  br label %81

77:                                               ; preds = %48
  %78 = load i32, i32* @MCP4725_COMMAND_WRITE_DAC, align 4
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %77, %76
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @lua_pop(i32* %82, i32 1)
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @lua_getfield(i32* %84, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @lua_isnil(i32* %86, i32 -1)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %114, label %89

89:                                               ; preds = %81
  %90 = load i32*, i32** %3, align 8
  %91 = call i64 @lua_isnumber(i32* %90, i32 -1)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %89
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @lua_tonumber(i32* %94, i32 -1)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = load i32, i32* %7, align 4
  %100 = icmp sle i32 %99, 3
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i32, i32* %7, align 4
  %103 = shl i32 %102, 1
  %104 = load i32, i32* %6, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %6, align 4
  br label %109

106:                                              ; preds = %98, %93
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @luaL_argerror(i32* %107, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  store i32 %108, i32* %2, align 4
  br label %139

109:                                              ; preds = %101
  br label %113

110:                                              ; preds = %89
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @luaL_argerror(i32* %111, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  store i32 %112, i32* %2, align 4
  br label %139

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %113, %81
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 @lua_pop(i32* %115, i32 1)
  br label %117

117:                                              ; preds = %114, %1
  store i32* %5, i32** %8, align 8
  %118 = load i32, i32* @mcp4725_i2c_id, align 4
  %119 = call i32 @platform_i2c_send_start(i32 %118)
  %120 = load i32, i32* @mcp4725_i2c_id, align 4
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @PLATFORM_I2C_DIRECTION_TRANSMITTER, align 4
  %123 = call i32 @platform_i2c_send_address(i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* @mcp4725_i2c_id, align 4
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @platform_i2c_send_byte(i32 %124, i32 %125)
  %127 = load i32, i32* @mcp4725_i2c_id, align 4
  %128 = load i32*, i32** %8, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @platform_i2c_send_byte(i32 %127, i32 %130)
  %132 = load i32, i32* @mcp4725_i2c_id, align 4
  %133 = load i32*, i32** %8, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @platform_i2c_send_byte(i32 %132, i32 %135)
  %137 = load i32, i32* @mcp4725_i2c_id, align 4
  %138 = call i32 @platform_i2c_send_stop(i32 %137)
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %117, %110, %106, %73, %45, %41, %37
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i64 @lua_istable(i32*, i32) #1

declare dso_local i32 @get_address(i32*, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_isnil(i32*, i32) #1

declare dso_local i64 @lua_isnumber(i32*, i32) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @lua_isboolean(i32*, i32) #1

declare dso_local i64 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @platform_i2c_send_start(i32) #1

declare dso_local i32 @platform_i2c_send_address(i32, i32, i32) #1

declare dso_local i32 @platform_i2c_send_byte(i32, i32) #1

declare dso_local i32 @platform_i2c_send_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
