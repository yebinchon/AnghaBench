; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_node.c_node_task_post.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_node.c_node_task_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TASK_PRIORITY_MEDIUM = common dso_local global i32 0, align 4
@LUA_TNUMBER = common dso_local global i32 0, align 4
@TASK_PRIORITY_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid  priority\00", align 1
@LUA_TFUNCTION = common dso_local global i32 0, align 4
@LUA_TLIGHTFUNCTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid function\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@do_node_task_handle = common dso_local global i64 0, align 8
@do_node_task = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Task queue overflow. Task not posted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @node_task_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node_task_post(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %3, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @lua_type(i32* %7, i32 1)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @TASK_PRIORITY_MEDIUM, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @LUA_TNUMBER, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @luaL_checkint(i32* %14, i32 1)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @TASK_PRIORITY_HIGH, align 4
  %20 = icmp ule i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @luaL_argcheck(i32* %17, i32 %21, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  %26 = call i32 @lua_type(i32* %23, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %13, %1
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @LUA_TFUNCTION, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @LUA_TLIGHTFUNCTION, align 4
  %35 = icmp eq i32 %33, %34
  br label %36

36:                                               ; preds = %32, %27
  %37 = phi i1 [ true, %27 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @luaL_argcheck(i32* %28, i32 %38, i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @lua_pushvalue(i32* %41, i32 %42)
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %46 = call i32 @luaL_ref(i32* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i64, i64* @do_node_task_handle, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %36
  %50 = load i32, i32* @do_node_task, align 4
  %51 = call i64 @task_get_id(i32 %50)
  store i64 %51, i64* @do_node_task_handle, align 8
  br label %52

52:                                               ; preds = %49, %36
  %53 = load i32, i32* %5, align 4
  %54 = load i64, i64* @do_node_task_handle, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @task_post(i32 %53, i64 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %52
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @luaL_unref(i32* %59, i32 %60, i32 %61)
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @luaL_error(i32* %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %58, %52
  ret i32 0
}

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i64 @luaL_checkint(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @luaL_ref(i32*, i32) #1

declare dso_local i64 @task_get_id(i32) #1

declare dso_local i32 @task_post(i32, i64, i32) #1

declare dso_local i32 @luaL_unref(i32*, i32, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
