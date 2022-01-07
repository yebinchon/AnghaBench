; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_edit_filters_osd.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_edit_filters_osd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@filter_opt = common dso_local global i8** null, align 8
@MP_ON_OSD_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Changing filters failed!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPContext*, i32, i8*, i8*, i32)* @edit_filters_osd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edit_filters_osd(%struct.MPContext* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.MPContext*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %14 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %15 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @edit_filters(%struct.MPContext* %13, i32 %16, i32 %17, i8* %18, i8* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %5
  %24 = load i32, i32* %11, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i8**, i8*** @filter_opt, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %12, align 8
  %32 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load i32, i32* @MP_ON_OSD_MSG, align 4
  %35 = call i32 @show_property_osd(%struct.MPContext* %32, i8* %33, i32 %34)
  br label %44

36:                                               ; preds = %23
  %37 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %38 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %39 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @set_osd_msg(%struct.MPContext* %37, i32 1, i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %36, %26
  br label %45

45:                                               ; preds = %44, %5
  %46 = load i32, i32* %11, align 4
  ret i32 %46
}

declare dso_local i32 @edit_filters(%struct.MPContext*, i32, i32, i8*, i8*) #1

declare dso_local i32 @show_property_osd(%struct.MPContext*, i8*, i32) #1

declare dso_local i32 @set_osd_msg(%struct.MPContext*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
