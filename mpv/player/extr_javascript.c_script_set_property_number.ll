; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_javascript.c_script_set_property_number.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_javascript.c_script_set_property_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MPV_FORMAT_DOUBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @script_set_property_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @script_set_property_number(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca double, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call double @js_tonumber(i32* %6, i32 2)
  store double %7, double* %3, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32* @jclient(i32* %8)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @js_tostring(i32* %11, i32 1)
  %13 = load i32, i32* @MPV_FORMAT_DOUBLE, align 4
  %14 = call i32 @mpv_set_property(i32* %10, i32 %12, i32 %13, double* %3)
  store i32 %14, i32* %5, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @push_status(i32* %15, i32 %16)
  ret void
}

declare dso_local double @js_tonumber(i32*, i32) #1

declare dso_local i32* @jclient(i32*) #1

declare dso_local i32 @mpv_set_property(i32*, i32, i32, double*) #1

declare dso_local i32 @js_tostring(i32*, i32) #1

declare dso_local i32 @push_status(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
