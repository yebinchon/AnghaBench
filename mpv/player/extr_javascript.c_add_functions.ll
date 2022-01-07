; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_javascript.c_add_functions.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_javascript.c_add_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_ctx = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"mp\00", align 1
@main_fns = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"utils\00", align 1
@utils_fns = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"script_name\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"script_file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.script_ctx*)* @add_functions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_functions(i32* %0, %struct.script_ctx* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.script_ctx*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.script_ctx* %1, %struct.script_ctx** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @js_copy(i32* %5, i32 0)
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @main_fns, align 4
  %9 = call i32 @add_package_fns(i32* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @js_getproperty(i32* %10, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @utils_fns, align 4
  %14 = call i32 @add_package_fns(i32* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.script_ctx*, %struct.script_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.script_ctx, %struct.script_ctx* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mpv_client_name(i32 %18)
  %20 = call i32 @js_pushstring(i32* %15, i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @js_setproperty(i32* %21, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.script_ctx*, %struct.script_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.script_ctx, %struct.script_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @js_pushstring(i32* %23, i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @js_setproperty(i32* %28, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @js_pop(i32* %30, i32 2)
  ret void
}

declare dso_local i32 @js_copy(i32*, i32) #1

declare dso_local i32 @add_package_fns(i32*, i8*, i32) #1

declare dso_local i32 @js_getproperty(i32*, i32, i8*) #1

declare dso_local i32 @js_pushstring(i32*, i32) #1

declare dso_local i32 @mpv_client_name(i32) #1

declare dso_local i32 @js_setproperty(i32*, i32, i8*) #1

declare dso_local i32 @js_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
