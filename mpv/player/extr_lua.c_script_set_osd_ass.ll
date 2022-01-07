; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_script_set_osd_ass.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_script_set_osd_ass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_ctx = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @script_set_osd_ass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @script_set_osd_ass(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.script_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call %struct.script_ctx* @get_ctx(i32* %7)
  store %struct.script_ctx* %8, %struct.script_ctx** %3, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @luaL_checkinteger(i32* %9, i32 1)
  store i32 %10, i32* %4, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @luaL_checkinteger(i32* %11, i32 2)
  store i32 %12, i32* %5, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i8* @luaL_checkstring(i32* %13, i32 3)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.script_ctx*, %struct.script_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.script_ctx, %struct.script_ctx* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.script_ctx*, %struct.script_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.script_ctx, %struct.script_ctx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @osd_set_external(i32 %25, i32 %28, i32 %29, i32 %30, i8* %31)
  %33 = load %struct.script_ctx*, %struct.script_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.script_ctx, %struct.script_ctx* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = call i32 @mp_wakeup_core(%struct.TYPE_2__* %35)
  ret i32 0
}

declare dso_local %struct.script_ctx* @get_ctx(i32*) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @osd_set_external(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @mp_wakeup_core(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
