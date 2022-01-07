; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_pipe.c_pipe__len.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_pipe.c_pipe__len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@LUA_TTABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pipe__len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe__len(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i64 @lua_type(i32* %4, i32 1)
  %6 = load i64, i64* @LUA_TTABLE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @lua_objlen(i32* %10, i32 1)
  %12 = call i32 @lua_pushinteger(i32* %9, i64 %11)
  br label %25

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = call %struct.TYPE_3__* @checkPipeUD(i32* %14, i32 1)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %3, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  %24 = call i32 @lua_pushinteger(i32* %16, i64 %23)
  br label %25

25:                                               ; preds = %13, %8
  ret i32 1
}

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i64) #1

declare dso_local i64 @lua_objlen(i32*, i32) #1

declare dso_local %struct.TYPE_3__* @checkPipeUD(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
