; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lcode.c_luaK_storevar.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lcode.c_luaK_storevar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@OP_SETUPVAL = common dso_local global i32 0, align 4
@OP_SETGLOBAL = common dso_local global i32 0, align 4
@OP_SETTABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaK_storevar(i32* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %69 [
    i32 129, label %13
    i32 128, label %25
    i32 131, label %38
    i32 130, label %51
  ]

13:                                               ; preds = %3
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = call i32 @freeexp(i32* %14, %struct.TYPE_12__* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @exp2reg(i32* %17, %struct.TYPE_12__* %18, i32 %23)
  br label %75

25:                                               ; preds = %3
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = call i32 @luaK_exp2anyreg(i32* %26, %struct.TYPE_12__* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @OP_SETUPVAL, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @luaK_codeABC(i32* %29, i32 %30, i32 %31, i32 %36, i32 0)
  br label %71

38:                                               ; preds = %3
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = call i32 @luaK_exp2anyreg(i32* %39, %struct.TYPE_12__* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @OP_SETGLOBAL, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @luaK_codeABx(i32* %42, i32 %43, i32 %44, i32 %49)
  br label %71

51:                                               ; preds = %3
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = call i32 @luaK_exp2RK(i32* %52, %struct.TYPE_12__* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* @OP_SETTABLE, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @luaK_codeABC(i32* %55, i32 %56, i32 %61, i32 %66, i32 %67)
  br label %71

69:                                               ; preds = %3
  %70 = call i32 @lua_assert(i32 0)
  br label %71

71:                                               ; preds = %69, %51, %38, %25
  %72 = load i32*, i32** %4, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = call i32 @freeexp(i32* %72, %struct.TYPE_12__* %73)
  br label %75

75:                                               ; preds = %71, %13
  ret void
}

declare dso_local i32 @freeexp(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @exp2reg(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @luaK_exp2anyreg(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @luaK_codeABC(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @luaK_codeABx(i32*, i32, i32, i32) #1

declare dso_local i32 @luaK_exp2RK(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
