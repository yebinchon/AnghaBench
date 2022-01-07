; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_x11.c_preinit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_x11.c_preinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_x11_state*, i32, i32, %struct.priv* }
%struct.vo_x11_state = type { i32, i32, i32, i32 }
%struct.priv = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_9__*, %struct.vo* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@TrueColor = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"selected visual: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"x11\00", align 1
@.str.2 = private unnamed_addr constant [112 x i8] c"Warning: this legacy VO has bad performance. Consider fixing your graphics drivers, or not forcing the x11 VO.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*)* @preinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preinit(%struct.vo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.vo_x11_state*, align 8
  %6 = alloca %struct.TYPE_7__, align 4
  store %struct.vo* %0, %struct.vo** %3, align 8
  %7 = load %struct.vo*, %struct.vo** %3, align 8
  %8 = getelementptr inbounds %struct.vo, %struct.vo* %7, i32 0, i32 3
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %4, align 8
  %10 = load %struct.vo*, %struct.vo** %3, align 8
  %11 = load %struct.priv*, %struct.priv** %4, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 4
  store %struct.vo* %10, %struct.vo** %12, align 8
  %13 = load %struct.vo*, %struct.vo** %3, align 8
  %14 = call %struct.TYPE_9__* @mp_sws_alloc(%struct.vo* %13)
  %15 = load %struct.priv*, %struct.priv** %4, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 3
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %16, align 8
  %17 = load %struct.vo*, %struct.vo** %3, align 8
  %18 = getelementptr inbounds %struct.vo, %struct.vo* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.priv*, %struct.priv** %4, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 3
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.priv*, %struct.priv** %4, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 3
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = load %struct.vo*, %struct.vo** %3, align 8
  %28 = getelementptr inbounds %struct.vo, %struct.vo* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @mp_sws_enable_cmdline_opts(%struct.TYPE_9__* %26, i32 %29)
  %31 = load %struct.vo*, %struct.vo** %3, align 8
  %32 = call i32 @vo_x11_init(%struct.vo* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %1
  br label %91

35:                                               ; preds = %1
  %36 = load %struct.vo*, %struct.vo** %3, align 8
  %37 = getelementptr inbounds %struct.vo, %struct.vo* %36, i32 0, i32 0
  %38 = load %struct.vo_x11_state*, %struct.vo_x11_state** %37, align 8
  store %struct.vo_x11_state* %38, %struct.vo_x11_state** %5, align 8
  %39 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %40 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %43 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @XGetWindowAttributes(i32 %41, i32 %44, %struct.TYPE_7__* %6)
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.priv*, %struct.priv** %4, align 8
  %49 = getelementptr inbounds %struct.priv, %struct.priv* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %51 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %54 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.priv*, %struct.priv** %4, align 8
  %57 = getelementptr inbounds %struct.priv, %struct.priv* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @TrueColor, align 4
  %60 = load %struct.priv*, %struct.priv** %4, align 8
  %61 = getelementptr inbounds %struct.priv, %struct.priv* %60, i32 0, i32 1
  %62 = call i32 @XMatchVisualInfo(i32 %52, i32 %55, i32 %58, i32 %59, %struct.TYPE_8__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %35
  br label %91

65:                                               ; preds = %35
  %66 = load %struct.vo*, %struct.vo** %3, align 8
  %67 = load %struct.priv*, %struct.priv** %4, align 8
  %68 = getelementptr inbounds %struct.priv, %struct.priv* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @MP_VERBOSE(%struct.vo* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load %struct.vo*, %struct.vo** %3, align 8
  %74 = load %struct.priv*, %struct.priv** %4, align 8
  %75 = getelementptr inbounds %struct.priv, %struct.priv* %74, i32 0, i32 1
  %76 = call i32 @vo_x11_create_vo_window(%struct.vo* %73, %struct.TYPE_8__* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %65
  br label %91

79:                                               ; preds = %65
  %80 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %81 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %84 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @XCreateGC(i32 %82, i32 %85, i32 0, i32* null)
  %87 = load %struct.priv*, %struct.priv** %4, align 8
  %88 = getelementptr inbounds %struct.priv, %struct.priv* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.vo*, %struct.vo** %3, align 8
  %90 = call i32 @MP_WARN(%struct.vo* %89, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %94

91:                                               ; preds = %78, %64, %34
  %92 = load %struct.vo*, %struct.vo** %3, align 8
  %93 = call i32 @uninit(%struct.vo* %92)
  store i32 -1, i32* %2, align 4
  br label %94

94:                                               ; preds = %91, %79
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.TYPE_9__* @mp_sws_alloc(%struct.vo*) #1

declare dso_local i32 @mp_sws_enable_cmdline_opts(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @vo_x11_init(%struct.vo*) #1

declare dso_local i32 @XGetWindowAttributes(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @XMatchVisualInfo(i32, i32, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @MP_VERBOSE(%struct.vo*, i8*, i32) #1

declare dso_local i32 @vo_x11_create_vo_window(%struct.vo*, %struct.TYPE_8__*, i8*) #1

declare dso_local i32 @XCreateGC(i32, i32, i32, i32*) #1

declare dso_local i32 @MP_WARN(%struct.vo*, i8*) #1

declare dso_local i32 @uninit(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
