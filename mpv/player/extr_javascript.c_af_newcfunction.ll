; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_javascript.c_af_newcfunction.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_javascript.c_af_newcfunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@script__autofree = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"af_fn\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"af_\00", align 1
@JS_READONLY = common dso_local global i32 0, align 4
@JS_DONTENUM = common dso_local global i32 0, align 4
@JS_DONTCONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i32)* @af_newcfunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @af_newcfunction(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* @script__autofree, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @js_newcfunction(i32* %9, i32 %10, i8* %11, i32 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @js_pushnull(i32* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @js_newuserdata(i32* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %17, i32* null)
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @JS_READONLY, align 4
  %21 = load i32, i32* @JS_DONTENUM, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @JS_DONTCONF, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @js_defproperty(i32* %19, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  ret void
}

declare dso_local i32 @js_newcfunction(i32*, i32, i8*, i32) #1

declare dso_local i32 @js_pushnull(i32*) #1

declare dso_local i32 @js_newuserdata(i32*, i8*, i32, i32*) #1

declare dso_local i32 @js_defproperty(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
