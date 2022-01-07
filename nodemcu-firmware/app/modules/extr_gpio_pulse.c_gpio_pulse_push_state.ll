; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_gpio_pulse.c_gpio_pulse_push_state.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_gpio_pulse.c_gpio_pulse_push_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @gpio_pulse_push_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_pulse_push_state(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  br label %10

10:                                               ; preds = %41, %2
  %11 = call i32 (...) @system_get_time()
  %12 = and i32 2147483647, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %5, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  br label %23

23:                                               ; preds = %10
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br label %41

41:                                               ; preds = %35, %29, %23
  %42 = phi i1 [ true, %29 ], [ true, %23 ], [ %40, %35 ]
  br i1 %42, label %10, label %43

43:                                               ; preds = %41
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @lua_pushnil(i32* %50)
  br label %57

52:                                               ; preds = %43
  %53 = load i32*, i32** %3, align 8
  %54 = load i64, i64* %7, align 8
  %55 = add nsw i64 %54, 1
  %56 = call i32 @lua_pushinteger(i32* %53, i64 %55)
  br label %57

57:                                               ; preds = %52, %49
  %58 = load i32*, i32** %3, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @lua_pushinteger(i32* %58, i64 %59)
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %5, align 8
  %63 = sub nsw i64 %61, %62
  %64 = and i64 %63, 2147483647
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %9, align 4
  %66 = load i32*, i32** %3, align 8
  %67 = load i32, i32* %9, align 4
  %68 = shl i32 %67, 1
  %69 = ashr i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = call i32 @lua_pushinteger(i32* %66, i64 %70)
  %72 = load i32*, i32** %3, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @lua_pushinteger(i32* %72, i64 %73)
  ret i32 4
}

declare dso_local i32 @system_get_time(...) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
