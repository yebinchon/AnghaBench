; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_javascript.c_script_get_property_osd.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_javascript.c_script_get_property_osd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MPV_FORMAT_OSD_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @script_get_property_osd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @script_get_property_osd(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i8* @js_tostring(i32* %9, i32 1)
  store i8* %10, i8** %5, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32* @jclient(i32* %11)
  store i32* %12, i32** %6, align 8
  store i8* null, i8** %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* @MPV_FORMAT_OSD_STRING, align 4
  %16 = call i32 @mpv_get_property(i32* %13, i8* %14, i32 %15, i8** %7)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @add_af_mpv_alloc(i8* %20, i8* %21)
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @pushed_error(i32* %24, i32 %25, i32 2)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32*, i32** %3, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @js_pushstring(i32* %29, i8* %30)
  br label %32

32:                                               ; preds = %28, %23
  ret void
}

declare dso_local i8* @js_tostring(i32*, i32) #1

declare dso_local i32* @jclient(i32*) #1

declare dso_local i32 @mpv_get_property(i32*, i8*, i32, i8**) #1

declare dso_local i32 @add_af_mpv_alloc(i8*, i8*) #1

declare dso_local i32 @pushed_error(i32*, i32, i32) #1

declare dso_local i32 @js_pushstring(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
