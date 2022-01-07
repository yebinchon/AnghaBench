; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/luac_cross/extr_lflashimg.c_resolveTString.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/luac_cross/extr_lflashimg.c_resolveTString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_9__*, i32*)* @resolveTString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @resolveTString(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i8* null, i8** %3, align 8
  br label %34

10:                                               ; preds = %2
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = call i32 @lua_pushnil(%struct.TYPE_9__* %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %16, 1
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @setsvalue(%struct.TYPE_9__* %13, i64 %17, i32* %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = call i32 @lua_rawget(%struct.TYPE_9__* %20, i32 -2)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = call i32 @lua_isnil(%struct.TYPE_9__* %22, i32 -1)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @lua_assert(i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = call i32 @lua_tointeger(%struct.TYPE_9__* %28, i32 -1)
  %30 = call i8* @fromFashAddr(i32 %29)
  store i8* %30, i8** %6, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = call i32 @lua_pop(%struct.TYPE_9__* %31, i32 1)
  %33 = load i8*, i8** %6, align 8
  store i8* %33, i8** %3, align 8
  br label %34

34:                                               ; preds = %10, %9
  %35 = load i8*, i8** %3, align 8
  ret i8* %35
}

declare dso_local i32 @lua_pushnil(%struct.TYPE_9__*) #1

declare dso_local i32 @setsvalue(%struct.TYPE_9__*, i64, i32*) #1

declare dso_local i32 @lua_rawget(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @lua_isnil(%struct.TYPE_9__*, i32) #1

declare dso_local i8* @fromFashAddr(i32) #1

declare dso_local i32 @lua_tointeger(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @lua_pop(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
