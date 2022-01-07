; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_lua_newuserdata.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_lua_newuserdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_8__*, i64)* @lua_newuserdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lua_newuserdata(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = call i32 @luaC_checkGC(%struct.TYPE_8__* %6)
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = call i32 @getcurrenv(%struct.TYPE_8__* %10)
  %12 = call i8* @luaS_newudata(%struct.TYPE_8__* %8, i64 %9, i32 %11)
  store i8* %12, i8** %5, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @setuvalue(%struct.TYPE_8__* %13, i32 %16, i8* %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = call i32 @api_incr_top(%struct.TYPE_8__* %19)
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr i8, i8* %21, i64 1
  ret i8* %22
}

declare dso_local i32 @luaC_checkGC(%struct.TYPE_8__*) #1

declare dso_local i8* @luaS_newudata(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @getcurrenv(%struct.TYPE_8__*) #1

declare dso_local i32 @setuvalue(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @api_incr_top(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
