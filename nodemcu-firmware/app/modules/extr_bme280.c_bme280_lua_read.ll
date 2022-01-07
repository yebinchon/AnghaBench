; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme280.c_bme280_lua_read.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme280.c_bme280_lua_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BME280_REGISTER_PRESS = common dso_local global i32 0, align 4
@bme280_isbme = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @bme280_lua_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme280_lua_read(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [8 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @lua_isnumber(i32* %12, i32 1)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @BME280_REGISTER_PRESS, align 4
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %16 = call i32 @r8u_n(i32 %14, i32 8, i32* %15)
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 16
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4
  %21 = load i32, i32* %20, align 16
  %22 = shl i32 %21, 8
  %23 = or i32 %19, %22
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %23, %25
  %27 = ashr i32 %26, 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 524288
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 1048575
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %1
  store i32 0, i32* %2, align 4
  br label %102

34:                                               ; preds = %30
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @bme280_compensate_T(i32 %36)
  %38 = call i32 @lua_pushinteger(i32* %35, i32 %37)
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %40 = load i32, i32* %39, align 16
  %41 = shl i32 %40, 16
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 8
  %45 = or i32 %41, %44
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %45, %47
  %49 = ashr i32 %48, 4
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 524288
  br i1 %51, label %55, label %52

52:                                               ; preds = %34
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 1048575
  br i1 %54, label %55, label %58

55:                                               ; preds = %52, %34
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @lua_pushnil(i32* %56)
  store i32 0, i32* %6, align 4
  br label %64

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @bme280_compensate_P(i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @lua_pushinteger(i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %58, %55
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6
  %66 = load i32, i32* %65, align 8
  %67 = shl i32 %66, 8
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %67, %69
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* @bme280_isbme, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = load i32, i32* %9, align 4
  %75 = icmp eq i32 %74, 32768
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 65535
  br i1 %78, label %79, label %82

79:                                               ; preds = %76, %73, %64
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @lua_pushnil(i32* %80)
  br label %87

82:                                               ; preds = %76
  %83 = load i32*, i32** %3, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @bme280_compensate_H(i32 %84)
  %86 = call i32 @lua_pushinteger(i32* %83, i32 %85)
  br label %87

87:                                               ; preds = %82, %79
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @luaL_checkinteger(i32* %91, i32 1)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call double @bme280_qfe2qnh(i32 %93, i32 %94)
  store double %95, double* %11, align 8
  %96 = load i32*, i32** %3, align 8
  %97 = load double, double* %11, align 8
  %98 = fadd double %97, 5.000000e-01
  %99 = fptosi double %98 to i32
  %100 = call i32 @lua_pushinteger(i32* %96, i32 %99)
  store i32 4, i32* %2, align 4
  br label %102

101:                                              ; preds = %87
  store i32 3, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %90, %33
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @lua_isnumber(i32*, i32) #1

declare dso_local i32 @r8u_n(i32, i32, i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @bme280_compensate_T(i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @bme280_compensate_P(i32) #1

declare dso_local i32 @bme280_compensate_H(i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local double @bme280_qfe2qnh(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
