; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_javascript.c_script_set_osd_ass.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_javascript.c_script_set_osd_ass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_ctx = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @script_set_osd_ass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @script_set_osd_ass(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.script_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call %struct.script_ctx* @jctx(i32* %7)
  store %struct.script_ctx* %8, %struct.script_ctx** %3, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @jsL_checkint(i32* %9, i32 1)
  store i32 %10, i32* %4, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @jsL_checkint(i32* %11, i32 2)
  store i32 %12, i32* %5, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i8* @js_tostring(i32* %13, i32 3)
  store i8* %14, i8** %6, align 8
  %15 = load %struct.script_ctx*, %struct.script_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.script_ctx, %struct.script_ctx* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.script_ctx*, %struct.script_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.script_ctx, %struct.script_ctx* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @osd_set_external(i32 %19, i32 %22, i32 %23, i32 %24, i8* %25)
  %27 = load %struct.script_ctx*, %struct.script_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.script_ctx, %struct.script_ctx* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call i32 @mp_wakeup_core(%struct.TYPE_2__* %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @push_success(i32* %31)
  ret void
}

declare dso_local %struct.script_ctx* @jctx(i32*) #1

declare dso_local i32 @jsL_checkint(i32*, i32) #1

declare dso_local i8* @js_tostring(i32*, i32) #1

declare dso_local i32 @osd_set_external(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @mp_wakeup_core(%struct.TYPE_2__*) #1

declare dso_local i32 @push_success(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
