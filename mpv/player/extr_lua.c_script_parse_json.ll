; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_script_parse_json.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_script_parse_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_node = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @script_parse_json to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @script_parse_json(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mpv_node, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @mp_lua_optarg(i32* %8, i32 2)
  %10 = load i32*, i32** %2, align 8
  %11 = call i8* @mp_lua_PITA(i32* %10)
  store i8* %11, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @luaL_checkstring(i32* %13, i32 1)
  %15 = call i8* @talloc_strdup(i8* %12, i32 %14)
  store i8* %15, i8** %4, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @lua_toboolean(i32* %16, i32 2)
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @json_parse(i8* %18, %struct.mpv_node* %7, i8** %4, i32 32)
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = call i32 @json_skip_whitespace(i8** %4)
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %27, %21
  %31 = phi i1 [ true, %21 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %1
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @pushnode(i32* %37, %struct.mpv_node* %7)
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @lua_pushnil(i32* %39)
  br label %46

41:                                               ; preds = %33
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @lua_pushnil(i32* %42)
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @lua_pushstring(i32* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i32*, i32** %2, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @lua_pushstring(i32* %47, i8* %48)
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @talloc_free_children(i8* %50)
  ret i32 3
}

declare dso_local i32 @mp_lua_optarg(i32*, i32) #1

declare dso_local i8* @mp_lua_PITA(i32*) #1

declare dso_local i8* @talloc_strdup(i8*, i32) #1

declare dso_local i32 @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i64 @json_parse(i8*, %struct.mpv_node*, i8**, i32) #1

declare dso_local i32 @json_skip_whitespace(i8**) #1

declare dso_local i32 @pushnode(i32*, %struct.mpv_node*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @talloc_free_children(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
