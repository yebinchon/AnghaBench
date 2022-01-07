; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_javascript.c_script_format_time.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_javascript.c_script_format_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Invalid time format string '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @script_format_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @script_format_time(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca double, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call double @js_tonumber(i32* %8, i32 1)
  store double %9, double* %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @js_isundefined(i32* %10, i32 2)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %17

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @js_tostring(i32* %15, i32 2)
  br label %17

17:                                               ; preds = %14, %13
  %18 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %13 ], [ %16, %14 ]
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load double, double* %5, align 8
  %22 = call i32 @mp_format_time_fmt(i8* %20, double %21)
  %23 = call i8* @talloc_steal(i8* %19, i32 %22)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = load i32*, i32** %3, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @js_error(i32* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %26, %17
  %31 = load i32*, i32** %3, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @js_pushstring(i32* %31, i8* %32)
  ret void
}

declare dso_local double @js_tonumber(i32*, i32) #1

declare dso_local i64 @js_isundefined(i32*, i32) #1

declare dso_local i8* @js_tostring(i32*, i32) #1

declare dso_local i8* @talloc_steal(i8*, i32) #1

declare dso_local i32 @mp_format_time_fmt(i8*, double) #1

declare dso_local i32 @js_error(i32*, i8*, i8*) #1

declare dso_local i32 @js_pushstring(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
