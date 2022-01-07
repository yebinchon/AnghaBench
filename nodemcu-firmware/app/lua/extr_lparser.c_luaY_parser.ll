; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lparser.c_luaY_parser.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lparser.c_luaY_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.LexState = type { i32*, i32* }
%struct.FuncState = type { %struct.TYPE_12__*, i32* }

@VARARG_ISVARARG = common dso_local global i32 0, align 4
@TK_EOS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @luaY_parser(%struct.TYPE_11__* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.LexState, align 8
  %10 = alloca %struct.FuncState, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32* @luaS_new(%struct.TYPE_11__* %12, i8* %13)
  store i32* %14, i32** %11, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %11, align 8
  %20 = call i32 @setsvalue2s(%struct.TYPE_11__* %15, i32 %18, i32* %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = call i32 @incr_top(%struct.TYPE_11__* %21)
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 1
  store i32* %23, i32** %24, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 @luaX_setinput(%struct.TYPE_11__* %25, %struct.LexState* %9, i32* %26, i32* %27)
  %29 = call i32 @open_func(%struct.LexState* %9, %struct.FuncState* %10)
  %30 = load i32, i32* @VARARG_ISVARARG, align 4
  %31 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i32 0, i32 0
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 8
  %34 = call i32 @luaX_next(%struct.LexState* %9)
  %35 = call i32 @chunk(%struct.LexState* %9)
  %36 = load i32, i32* @TK_EOS, align 4
  %37 = call i32 @check(%struct.LexState* %9, i32 %36)
  %38 = call i32 @close_func(%struct.LexState* %9)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 4
  %43 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @lua_assert(i32 %46)
  %48 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i32 0, i32 0
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @lua_assert(i32 %53)
  %55 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @lua_assert(i32 %58)
  %60 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i32 0, i32 0
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  ret %struct.TYPE_12__* %61
}

declare dso_local i32* @luaS_new(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @setsvalue2s(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @incr_top(%struct.TYPE_11__*) #1

declare dso_local i32 @luaX_setinput(%struct.TYPE_11__*, %struct.LexState*, i32*, i32*) #1

declare dso_local i32 @open_func(%struct.LexState*, %struct.FuncState*) #1

declare dso_local i32 @luaX_next(%struct.LexState*) #1

declare dso_local i32 @chunk(%struct.LexState*) #1

declare dso_local i32 @check(%struct.LexState*, i32) #1

declare dso_local i32 @close_func(%struct.LexState*) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
