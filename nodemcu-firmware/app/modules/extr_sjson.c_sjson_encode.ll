; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sjson.c_sjson_encode.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sjson.c_sjson_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"sjson.encoder\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @sjson_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sjson_encode(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @sjson_encoder(i32* %5)
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @luaL_checkudata(i32* %7, i32 -1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @sjson_encoder_read_int(i32* %10, i32* %11, i32 1000000)
  store i32 %12, i32* %4, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  %16 = sub nsw i32 0, %15
  %17 = call i32 @lua_remove(i32* %13, i32 %16)
  %18 = load i32, i32* %4, align 4
  ret i32 %18
}

declare dso_local i32 @sjson_encoder(i32*) #1

declare dso_local i64 @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i32 @sjson_encoder_read_int(i32*, i32*, i32) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
