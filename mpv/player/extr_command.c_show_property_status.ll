; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_show_property_status.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_show_property_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { i32, i32, i64, %struct.MPContext* }
%struct.MPContext = type { %struct.MPOpts* }
%struct.MPOpts = type { i32 }

@OSD_LEVEL_INVISIBLE = common dso_local global i32 0, align 4
@M_PROPERTY_OK = common dso_local global i32 0, align 4
@M_PROPERTY_UNAVAILABLE = common dso_local global i32 0, align 4
@M_PROPERTY_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown property: '%s'\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to set property '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_cmd_ctx*, i8*, i32)* @show_property_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_property_status(%struct.mp_cmd_ctx* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.mp_cmd_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.MPContext*, align 8
  %8 = alloca %struct.MPOpts*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mp_cmd_ctx* %0, %struct.mp_cmd_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %11, i32 0, i32 3
  %13 = load %struct.MPContext*, %struct.MPContext** %12, align 8
  store %struct.MPContext* %13, %struct.MPContext** %7, align 8
  %14 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %15 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %14, i32 0, i32 0
  %16 = load %struct.MPOpts*, %struct.MPOpts** %15, align 8
  store %struct.MPOpts* %16, %struct.MPOpts** %8, align 8
  %17 = load %struct.MPOpts*, %struct.MPOpts** %8, align 8
  %18 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @OSD_LEVEL_INVISIBLE, align 4
  br label %27

27:                                               ; preds = %25, %24
  %28 = phi i32 [ 1, %24 ], [ %26, %25 ]
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @M_PROPERTY_OK, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %32, %27
  %37 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @show_property_osd(%struct.MPContext* %37, i8* %38, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %4, align 8
  %48 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %36
  br label %75

50:                                               ; preds = %32
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @M_PROPERTY_UNKNOWN, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @set_osd_msg(%struct.MPContext* %55, i32 %56, i32 %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %58)
  %60 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %4, align 8
  %61 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  br label %74

62:                                               ; preds = %50
  %63 = load i32, i32* %6, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @set_osd_msg(%struct.MPContext* %66, i32 %67, i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  %71 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %4, align 8
  %72 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  br label %73

73:                                               ; preds = %65, %62
  br label %74

74:                                               ; preds = %73, %54
  br label %75

75:                                               ; preds = %74, %49
  ret void
}

declare dso_local i32 @show_property_osd(%struct.MPContext*, i8*, i32) #1

declare dso_local i32 @set_osd_msg(%struct.MPContext*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
