; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-lua.c_request_param_getter.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-lua.c_request_param_getter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_request = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8* (%struct.lwan_request*, i8*)*)* @request_param_getter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_param_getter(i32* %0, i8* (%struct.lwan_request*, i8*)* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8* (%struct.lwan_request*, i8*)*, align 8
  %5 = alloca %struct.lwan_request*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* (%struct.lwan_request*, i8*)* %1, i8* (%struct.lwan_request*, i8*)** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.lwan_request* @lwan_lua_get_request_from_userdata(i32* %8)
  store %struct.lwan_request* %9, %struct.lwan_request** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i8* @lua_tostring(i32* %10, i32 -1)
  store i8* %11, i8** %6, align 8
  %12 = load i8* (%struct.lwan_request*, i8*)*, i8* (%struct.lwan_request*, i8*)** %4, align 8
  %13 = load %struct.lwan_request*, %struct.lwan_request** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* %12(%struct.lwan_request* %13, i8* %14)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @lua_pushnil(i32* %19)
  br label %25

21:                                               ; preds = %2
  %22 = load i32*, i32** %3, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @lua_pushstring(i32* %22, i8* %23)
  br label %25

25:                                               ; preds = %21, %18
  ret i32 1
}

declare dso_local %struct.lwan_request* @lwan_lua_get_request_from_userdata(i32*) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
