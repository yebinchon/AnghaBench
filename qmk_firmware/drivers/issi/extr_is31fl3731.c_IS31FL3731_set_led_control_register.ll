; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3731.c_IS31FL3731_set_led_control_register.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3731.c_IS31FL3731_set_led_control_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@g_is31_leds = common dso_local global %struct.TYPE_3__* null, align 8
@g_led_control_registers = common dso_local global i32** null, align 8
@g_led_control_registers_update_required = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IS31FL3731_set_led_control_register(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_is31_leds, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %17
  %19 = bitcast %struct.TYPE_3__* %9 to i8*
  %20 = bitcast %struct.TYPE_3__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 24, i1 false)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 36
  %24 = sdiv i32 %23, 8
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 36
  %29 = sdiv i32 %28, 8
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 36
  %34 = sdiv i32 %33, 8
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 36
  %39 = srem i32 %38, 8
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 36
  %44 = srem i32 %43, 8
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 36
  %49 = srem i32 %48, 8
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %15, align 8
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %4
  %54 = load i64, i64* %13, align 8
  %55 = trunc i64 %54 to i32
  %56 = shl i32 1, %55
  %57 = load i32**, i32*** @g_led_control_registers, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %56
  store i32 %65, i32* %63, align 4
  br label %80

66:                                               ; preds = %4
  %67 = load i64, i64* %13, align 8
  %68 = trunc i64 %67 to i32
  %69 = shl i32 1, %68
  %70 = xor i32 %69, -1
  %71 = load i32**, i32*** @g_led_control_registers, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %70
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %66, %53
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = load i64, i64* %14, align 8
  %85 = trunc i64 %84 to i32
  %86 = shl i32 1, %85
  %87 = load i32**, i32*** @g_led_control_registers, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* %11, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %86
  store i32 %95, i32* %93, align 4
  br label %110

96:                                               ; preds = %80
  %97 = load i64, i64* %14, align 8
  %98 = trunc i64 %97 to i32
  %99 = shl i32 1, %98
  %100 = xor i32 %99, -1
  %101 = load i32**, i32*** @g_led_control_registers, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i32*, i32** %101, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %11, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %100
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %96, %83
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = load i64, i64* %15, align 8
  %115 = trunc i64 %114 to i32
  %116 = shl i32 1, %115
  %117 = load i32**, i32*** @g_led_control_registers, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* %12, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %116
  store i32 %125, i32* %123, align 4
  br label %140

126:                                              ; preds = %110
  %127 = load i64, i64* %15, align 8
  %128 = trunc i64 %127 to i32
  %129 = shl i32 1, %128
  %130 = xor i32 %129, -1
  %131 = load i32**, i32*** @g_led_control_registers, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds i32*, i32** %131, i64 %133
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* %12, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, %130
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %126, %113
  %141 = load i32*, i32** @g_led_control_registers_update_required, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 1, i32* %144, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
