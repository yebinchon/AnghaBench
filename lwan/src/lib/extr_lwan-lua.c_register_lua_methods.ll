; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-lua.c_register_lua_methods.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-lua.c_register_lua_methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_lua_method_info = type { i32*, i32* }
%struct.TYPE_3__ = type { i32*, i32* }

@__start_lwan_lua_method = common dso_local global %struct.lwan_lua_method_info* null, align 8
@__stop_lwan_lua_method = common dso_local global %struct.lwan_lua_method_info* null, align 8
@lua_methods = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Could not register Lua method `%s`\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Could not add Lua method sentinel\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @register_lua_methods, i8* null }]
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @register_lua_methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_lua_methods() #0 {
  %1 = alloca %struct.lwan_lua_method_info*, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = load %struct.lwan_lua_method_info*, %struct.lwan_lua_method_info** @__start_lwan_lua_method, align 8
  store %struct.lwan_lua_method_info* %3, %struct.lwan_lua_method_info** %1, align 8
  br label %4

4:                                                ; preds = %28, %0
  %5 = load %struct.lwan_lua_method_info*, %struct.lwan_lua_method_info** %1, align 8
  %6 = load %struct.lwan_lua_method_info*, %struct.lwan_lua_method_info** @__stop_lwan_lua_method, align 8
  %7 = icmp ult %struct.lwan_lua_method_info* %5, %6
  br i1 %7, label %8, label %31

8:                                                ; preds = %4
  %9 = call %struct.TYPE_3__* @lwan_lua_method_array_append(i32* @lua_methods)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %2, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = load %struct.lwan_lua_method_info*, %struct.lwan_lua_method_info** %1, align 8
  %14 = getelementptr inbounds %struct.lwan_lua_method_info, %struct.lwan_lua_method_info* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 (i8*, ...) @lwan_status_critical(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32* %15)
  br label %17

17:                                               ; preds = %12, %8
  %18 = load %struct.lwan_lua_method_info*, %struct.lwan_lua_method_info** %1, align 8
  %19 = getelementptr inbounds %struct.lwan_lua_method_info, %struct.lwan_lua_method_info* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.lwan_lua_method_info*, %struct.lwan_lua_method_info** %1, align 8
  %24 = getelementptr inbounds %struct.lwan_lua_method_info, %struct.lwan_lua_method_info* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  br label %28

28:                                               ; preds = %17
  %29 = load %struct.lwan_lua_method_info*, %struct.lwan_lua_method_info** %1, align 8
  %30 = getelementptr inbounds %struct.lwan_lua_method_info, %struct.lwan_lua_method_info* %29, i32 1
  store %struct.lwan_lua_method_info* %30, %struct.lwan_lua_method_info** %1, align 8
  br label %4

31:                                               ; preds = %4
  %32 = call %struct.TYPE_3__* @lwan_lua_method_array_append(i32* @lua_methods)
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %2, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = icmp ne %struct.TYPE_3__* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = call i32 (i8*, ...) @lwan_status_critical(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %31
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  ret void
}

declare dso_local %struct.TYPE_3__* @lwan_lua_method_array_append(i32*) #1

declare dso_local i32 @lwan_status_critical(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
