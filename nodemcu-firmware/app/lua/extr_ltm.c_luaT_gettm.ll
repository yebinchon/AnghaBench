; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ltm.c_luaT_gettm.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ltm.c_luaT_gettm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@TM_EQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @luaT_gettm(%struct.TYPE_6__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @TM_EQ, align 4
  %11 = icmp ule i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @lua_assert(i32 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = call i64 @luaR_isrotable(%struct.TYPE_6__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32* @luaH_getstr_ro(%struct.TYPE_6__* %18, i32* %19)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i64 @ttisnil(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32* null, i32** %4, align 8
  br label %44

25:                                               ; preds = %17
  br label %42

26:                                               ; preds = %3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32* @luaH_getstr(%struct.TYPE_6__* %27, i32* %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i64 @ttisnil(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 1, %34
  %36 = call i32 @cast_byte(i32 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  store i32* null, i32** %4, align 8
  br label %44

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41, %25
  %43 = load i32*, i32** %8, align 8
  store i32* %43, i32** %4, align 8
  br label %44

44:                                               ; preds = %42, %33, %24
  %45 = load i32*, i32** %4, align 8
  ret i32* %45
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @luaR_isrotable(%struct.TYPE_6__*) #1

declare dso_local i32* @luaH_getstr_ro(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @ttisnil(i32*) #1

declare dso_local i32* @luaH_getstr(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @cast_byte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
