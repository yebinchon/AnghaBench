; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_lua_rawgeti.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_lua_rawgeti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32)* @lua_rawgeti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lua_rawgeti(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @index2adr(%struct.TYPE_7__* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @ttistable(i32 %12)
  %14 = call i32 @luai_apicheck(%struct.TYPE_7__* %11, i32 %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @hvalue(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @luaH_getnum(i32 %20, i32 %21)
  %23 = call i32 @setobj(%struct.TYPE_7__* %15, i32 %18, i32 %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = call i32 @api_incr_top(%struct.TYPE_7__* %24)
  ret void
}

declare dso_local i32 @index2adr(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @luai_apicheck(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ttistable(i32) #1

declare dso_local i32 @setobj(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @luaH_getnum(i32, i32) #1

declare dso_local i32 @hvalue(i32) #1

declare dso_local i32 @api_incr_top(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
