; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bmp085.c_bmp085_lua_pressure.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bmp085.c_bmp085_lua_pressure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64 }

@bmp085_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @bmp085_lua_pressure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp085_lua_pressure(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i64 @lua_isnumber(i32* %13, i32 1)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @luaL_checkinteger(i32* %17, i32 1)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp sgt i32 %19, 3
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 3, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %16
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @bmp085_pressure_raw(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = call i32 (...) @bmp085_temperature_raw_b5()
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %27, 4000
  store i32 %28, i32* %11, align 4
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmp085_data, i32 0, i32 5), align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = mul nsw i32 %31, %32
  %34 = ashr i32 %33, 12
  %35 = mul nsw i32 %30, %34
  %36 = ashr i32 %35, 11
  store i32 %36, i32* %5, align 4
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmp085_data, i32 0, i32 4), align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* %11, align 4
  %40 = mul nsw i32 %38, %39
  %41 = ashr i32 %40, 11
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %7, align 4
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmp085_data, i32 0, i32 3), align 8
  %46 = trunc i64 %45 to i32
  %47 = shl i32 %46, 2
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* %3, align 4
  %51 = shl i32 1, %50
  %52 = mul nsw i32 %49, %51
  %53 = add nsw i32 %52, 2
  %54 = ashr i32 %53, 2
  store i32 %54, i32* %8, align 4
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmp085_data, i32 0, i32 2), align 8
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* %11, align 4
  %58 = mul nsw i32 %56, %57
  %59 = ashr i32 %58, 13
  store i32 %59, i32* %5, align 4
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmp085_data, i32 0, i32 1), align 8
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = mul nsw i32 %62, %63
  %65 = ashr i32 %64, 12
  %66 = mul nsw i32 %61, %65
  %67 = ashr i32 %66, 16
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %68, %69
  %71 = add nsw i32 %70, 2
  %72 = ashr i32 %71, 2
  store i32 %72, i32* %7, align 4
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmp085_data, i32 0, i32 0), align 8
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 32768
  %77 = mul nsw i32 %74, %76
  %78 = ashr i32 %77, 15
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %8, align 4
  %81 = sub nsw i32 %79, %80
  %82 = load i32, i32* %3, align 4
  %83 = shl i32 1, %82
  %84 = sdiv i32 50000, %83
  %85 = mul nsw i32 %81, %84
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %9, align 4
  %88 = sdiv i32 %86, %87
  %89 = shl i32 %88, 1
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = ashr i32 %90, 8
  %92 = load i32, i32* %4, align 4
  %93 = ashr i32 %92, 8
  %94 = mul nsw i32 %91, %93
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = mul nsw i32 %95, 3038
  %97 = ashr i32 %96, 16
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %4, align 4
  %99 = mul nsw i32 -7357, %98
  %100 = ashr i32 %99, 16
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %102, %103
  %105 = add nsw i32 %104, 3791
  %106 = ashr i32 %105, 4
  %107 = add nsw i32 %101, %106
  store i32 %107, i32* %4, align 4
  %108 = load i32*, i32** %2, align 8
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @lua_pushinteger(i32* %108, i32 %109)
  ret i32 1
}

declare dso_local i64 @lua_isnumber(i32*, i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @bmp085_pressure_raw(i32) #1

declare dso_local i32 @bmp085_temperature_raw_b5(...) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
