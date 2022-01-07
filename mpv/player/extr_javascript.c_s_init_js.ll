; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_javascript.c_s_init_js.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_javascript.c_s_init_js.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_ctx = type { i32 }

@report_handler = common dso_local global i32 0, align 4
@script__run_script = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"run_script\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.script_ctx*)* @s_init_js to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_init_js(i32* %0, %struct.script_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.script_ctx*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.script_ctx* %1, %struct.script_ctx** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i64 @js_try(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %24

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.script_ctx*, %struct.script_ctx** %5, align 8
  %13 = call i32 @js_setcontext(i32* %11, %struct.script_ctx* %12)
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @report_handler, align 4
  %16 = call i32 @js_setreport(i32* %14, i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @script__run_script, align 4
  %19 = call i32 @js_newcfunction(i32* %17, i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @js_pushglobal(i32* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @js_endtry(i32* %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %10, %9
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @js_try(i32*) #1

declare dso_local i32 @js_setcontext(i32*, %struct.script_ctx*) #1

declare dso_local i32 @js_setreport(i32*, i32) #1

declare dso_local i32 @js_newcfunction(i32*, i32, i8*, i32) #1

declare dso_local i32 @js_pushglobal(i32*) #1

declare dso_local i32 @js_endtry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
