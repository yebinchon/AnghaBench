; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-lua.c_append_key_value.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-lua.c_append_key_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coro = type { i32 }
%struct.lwan_key_value_array = type { i32 }
%struct.lwan_key_value = type { i8*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.coro*, %struct.lwan_key_value_array*, i8*, i32)* @append_key_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_key_value(i32* %0, %struct.coro* %1, %struct.lwan_key_value_array* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.coro*, align 8
  %9 = alloca %struct.lwan_key_value_array*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.lwan_key_value*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.coro* %1, %struct.coro** %8, align 8
  store %struct.lwan_key_value_array* %2, %struct.lwan_key_value_array** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.lwan_key_value_array*, %struct.lwan_key_value_array** %9, align 8
  %14 = call %struct.lwan_key_value* @lwan_key_value_array_append(%struct.lwan_key_value_array* %13)
  store %struct.lwan_key_value* %14, %struct.lwan_key_value** %12, align 8
  %15 = load %struct.lwan_key_value*, %struct.lwan_key_value** %12, align 8
  %16 = icmp ne %struct.lwan_key_value* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %34

18:                                               ; preds = %5
  %19 = load i8*, i8** %10, align 8
  %20 = load %struct.lwan_key_value*, %struct.lwan_key_value** %12, align 8
  %21 = getelementptr inbounds %struct.lwan_key_value, %struct.lwan_key_value* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load %struct.coro*, %struct.coro** %8, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @lua_tostring(i32* %23, i32 %24)
  %26 = call i32* @coro_strdup(%struct.coro* %22, i32 %25)
  %27 = load %struct.lwan_key_value*, %struct.lwan_key_value** %12, align 8
  %28 = getelementptr inbounds %struct.lwan_key_value, %struct.lwan_key_value* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.lwan_key_value*, %struct.lwan_key_value** %12, align 8
  %30 = getelementptr inbounds %struct.lwan_key_value, %struct.lwan_key_value* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %18, %17
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local %struct.lwan_key_value* @lwan_key_value_array_append(%struct.lwan_key_value_array*) #1

declare dso_local i32* @coro_strdup(%struct.coro*, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
