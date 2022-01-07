; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mcp4725.c_mcp4725_read.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_mcp4725.c_mcp4725_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCP4725_I2C_ADDR_BASE = common dso_local global i32 0, align 4
@mcp4725_i2c_id = common dso_local global i32 0, align 4
@PLATFORM_I2C_DIRECTION_RECEIVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mcp4725_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp4725_read(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [5 x i32], align 16
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @MCP4725_I2C_ADDR_BASE, align 4
  store i32 %6, i32* %3, align 4
  %7 = bitcast [5 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 20, i1 false)
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @lua_istable(i32* %8, i32 1)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @get_address(i32* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %11, %1
  %16 = load i32, i32* @mcp4725_i2c_id, align 4
  %17 = call i32 @platform_i2c_send_start(i32 %16)
  %18 = load i32, i32* @mcp4725_i2c_id, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @PLATFORM_I2C_DIRECTION_RECEIVER, align 4
  %21 = call i32 @platform_i2c_send_address(i32 %18, i32 %19, i32 %20)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %31, %15
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 5
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i32, i32* @mcp4725_i2c_id, align 4
  %27 = call i32 @platform_i2c_recv_byte(i32 %26, i32 1)
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 %29
  store i32 %27, i32* %30, align 4
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %22

34:                                               ; preds = %22
  %35 = load i32, i32* @mcp4725_i2c_id, align 4
  %36 = call i32 @platform_i2c_send_stop(i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %39 = load i32, i32* %38, align 16
  %40 = and i32 %39, 6
  %41 = ashr i32 %40, 1
  %42 = call i32 @lua_pushnumber(i32* %37, i32 %41)
  %43 = load i32*, i32** %2, align 8
  %44 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 4
  %47 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 2
  %48 = load i32, i32* %47, align 8
  %49 = ashr i32 %48, 4
  %50 = or i32 %46, %49
  %51 = call i32 @lua_pushnumber(i32* %43, i32 %50)
  %52 = load i32*, i32** %2, align 8
  %53 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 96
  %56 = ashr i32 %55, 5
  %57 = call i32 @lua_pushnumber(i32* %52, i32 %56)
  %58 = load i32*, i32** %2, align 8
  %59 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 15
  %62 = shl i32 %61, 8
  %63 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 4
  %64 = load i32, i32* %63, align 16
  %65 = or i32 %62, %64
  %66 = call i32 @lua_pushnumber(i32* %58, i32 %65)
  %67 = load i32*, i32** %2, align 8
  %68 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %69 = load i32, i32* %68, align 16
  %70 = and i32 %69, 128
  %71 = ashr i32 %70, 7
  %72 = call i32 @lua_pushnumber(i32* %67, i32 %71)
  %73 = load i32*, i32** %2, align 8
  %74 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %75 = load i32, i32* %74, align 16
  %76 = and i32 %75, 64
  %77 = ashr i32 %76, 6
  %78 = call i32 @lua_pushnumber(i32* %73, i32 %77)
  ret i32 6
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @lua_istable(i32*, i32) #2

declare dso_local i32 @get_address(i32*, i32) #2

declare dso_local i32 @platform_i2c_send_start(i32) #2

declare dso_local i32 @platform_i2c_send_address(i32, i32, i32) #2

declare dso_local i32 @platform_i2c_recv_byte(i32, i32) #2

declare dso_local i32 @platform_i2c_send_stop(i32) #2

declare dso_local i32 @lua_pushnumber(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
