; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_javascript.c_script__run_script.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_javascript.c_script__run_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_ctx = type { i8* }

@.str = private unnamed_addr constant [14 x i8] c"@/norm_err.js\00", align 1
@norm_err_proto_js = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"@/defaults.js\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"mp_event_loop\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"no event loop function\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @script__run_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @script__run_script(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.script_ctx*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @norm_err_proto_js, align 4
  %6 = call i32 @js_loadstring(i32* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @js_copy(i32* %7, i32 0)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @js_pcall(i32* %9, i32 0)
  %11 = load i32*, i32** %2, align 8
  %12 = call %struct.script_ctx* @jctx(i32* %11)
  store %struct.script_ctx* %12, %struct.script_ctx** %3, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = load %struct.script_ctx*, %struct.script_ctx** %3, align 8
  %15 = call i32 @add_functions(i32* %13, %struct.script_ctx* %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @run_file(i32* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32*, i32** %2, align 8
  %19 = load %struct.script_ctx*, %struct.script_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.script_ctx, %struct.script_ctx* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @run_file(i32* %18, i8* %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @js_hasproperty(i32* %23, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @js_iscallable(i32* %27, i32 -1)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26, %1
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @js_error(i32* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @js_copy(i32* %34, i32 0)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @js_call(i32* %36, i32 0)
  ret void
}

declare dso_local i32 @js_loadstring(i32*, i8*, i32) #1

declare dso_local i32 @js_copy(i32*, i32) #1

declare dso_local i32 @js_pcall(i32*, i32) #1

declare dso_local %struct.script_ctx* @jctx(i32*) #1

declare dso_local i32 @add_functions(i32*, %struct.script_ctx*) #1

declare dso_local i32 @run_file(i32*, i8*) #1

declare dso_local i32 @js_hasproperty(i32*, i32, i8*) #1

declare dso_local i32 @js_iscallable(i32*, i32) #1

declare dso_local i32 @js_error(i32*, i8*) #1

declare dso_local i32 @js_call(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
