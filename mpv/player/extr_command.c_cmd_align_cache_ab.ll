; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_align_cache_ab.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_align_cache_ab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { i32, %struct.MPContext* }
%struct.MPContext = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [10 x i8] c"ab-loop-a\00", align 1
@M_PROPERTY_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"ab-loop-b\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmd_align_cache_ab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_align_cache_ab(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cmd_ctx*, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.mp_cmd_ctx*
  store %struct.mp_cmd_ctx* %8, %struct.mp_cmd_ctx** %3, align 8
  %9 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %9, i32 0, i32 1
  %11 = load %struct.MPContext*, %struct.MPContext** %10, align 8
  store %struct.MPContext* %11, %struct.MPContext** %4, align 8
  %12 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %13 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %51

17:                                               ; preds = %1
  %18 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %19 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %22 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call double @demux_probe_cache_dump_target(i32 %20, i32 %27, i32 0)
  store double %28, double* %5, align 8
  %29 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %30 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %33 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call double @demux_probe_cache_dump_target(i32 %31, i32 %38, i32 1)
  store double %39, double* %6, align 8
  %40 = load i32, i32* @M_PROPERTY_SET, align 4
  %41 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %42 = call i32 @mp_property_do(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %40, double* %5, %struct.MPContext* %41)
  %43 = load i32, i32* @M_PROPERTY_SET, align 4
  %44 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %45 = call i32 @mp_property_do(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %43, double* %6, %struct.MPContext* %44)
  %46 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %47 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @show_property_osd(%struct.MPContext* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %17, %16
  ret void
}

declare dso_local double @demux_probe_cache_dump_target(i32, i32, i32) #1

declare dso_local i32 @mp_property_do(i8*, i32, double*, %struct.MPContext*) #1

declare dso_local i32 @show_property_osd(%struct.MPContext*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
