; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3737.c_IS31FL3737_set_led_control_register.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3737.c_IS31FL3737_set_led_control_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@g_is31_leds = common dso_local global %struct.TYPE_3__* null, align 8
@g_led_control_registers = common dso_local global i32** null, align 8
@g_led_control_registers_update_required = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IS31FL3737_set_led_control_register(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %23 = sdiv i32 %22, 8
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 8
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = sdiv i32 %30, 8
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = srem i32 %34, 8
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = srem i32 %38, 8
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = srem i32 %42, 8
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %15, align 8
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %4
  %48 = load i64, i64* %13, align 8
  %49 = trunc i64 %48 to i32
  %50 = shl i32 1, %49
  %51 = load i32**, i32*** @g_led_control_registers, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %50
  store i32 %59, i32* %57, align 4
  br label %74

60:                                               ; preds = %4
  %61 = load i64, i64* %13, align 8
  %62 = trunc i64 %61 to i32
  %63 = shl i32 1, %62
  %64 = xor i32 %63, -1
  %65 = load i32**, i32*** @g_led_control_registers, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %64
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %60, %47
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %74
  %78 = load i64, i64* %14, align 8
  %79 = trunc i64 %78 to i32
  %80 = shl i32 1, %79
  %81 = load i32**, i32*** @g_led_control_registers, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %11, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %80
  store i32 %89, i32* %87, align 4
  br label %104

90:                                               ; preds = %74
  %91 = load i64, i64* %14, align 8
  %92 = trunc i64 %91 to i32
  %93 = shl i32 1, %92
  %94 = xor i32 %93, -1
  %95 = load i32**, i32*** @g_led_control_registers, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* %11, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, %94
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %90, %77
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %104
  %108 = load i64, i64* %15, align 8
  %109 = trunc i64 %108 to i32
  %110 = shl i32 1, %109
  %111 = load i32**, i32*** @g_led_control_registers, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %12, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %110
  store i32 %119, i32* %117, align 4
  br label %134

120:                                              ; preds = %104
  %121 = load i64, i64* %15, align 8
  %122 = trunc i64 %121 to i32
  %123 = shl i32 1, %122
  %124 = xor i32 %123, -1
  %125 = load i32**, i32*** @g_led_control_registers, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* %12, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, %124
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %120, %107
  store i32 1, i32* @g_led_control_registers_update_required, align 4
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
