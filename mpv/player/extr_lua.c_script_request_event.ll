; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_script_request_event.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_script_request_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @script_request_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @script_request_event(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.script_ctx*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call %struct.script_ctx* @get_ctx(i32* %9)
  store %struct.script_ctx* %10, %struct.script_ctx** %3, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i8* @luaL_checkstring(i32* %11, i32 1)
  store i8* %12, i8** %4, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @lua_toboolean(i32* %13, i32 2)
  store i32 %14, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %31, %1
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 256
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = call i8* @mpv_event_name(i32 %19)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @strcmp(i8* %24, i8* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %6, align 4
  br label %34

30:                                               ; preds = %23, %18
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %15

34:                                               ; preds = %28, %15
  %35 = load i32*, i32** %2, align 8
  %36 = load %struct.script_ctx*, %struct.script_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.script_ctx, %struct.script_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @mpv_request_event(i32 %38, i32 %39, i32 %40)
  %42 = icmp sge i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @lua_pushboolean(i32* %35, i32 %43)
  ret i32 1
}

declare dso_local %struct.script_ctx* @get_ctx(i32*) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i8* @mpv_event_name(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i64 @mpv_request_event(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
