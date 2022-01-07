; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_javascript.c_script__autofree.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_javascript.c_script__autofree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"af_\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"af_fn\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @script__autofree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @script__autofree(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @js_currentfunction(i32* %6)
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @js_getproperty(i32* %8, i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @js_touserdata(i32* %10, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %11, i32* %3, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @js_pop(i32* %12, i32 2)
  %14 = call i8* @talloc_new(i32* null)
  store i8* %14, i8** %4, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @s_run_af_jsc(i32* %15, i32 %16, i8* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @talloc_free(i8* %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @js_throw(i32* %24)
  br label %26

26:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @js_currentfunction(i32*) #1

declare dso_local i32 @js_getproperty(i32*, i32, i8*) #1

declare dso_local i32 @js_touserdata(i32*, i32, i8*) #1

declare dso_local i32 @js_pop(i32*, i32) #1

declare dso_local i8* @talloc_new(i32*) #1

declare dso_local i32 @s_run_af_jsc(i32*, i32, i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i32 @js_throw(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
