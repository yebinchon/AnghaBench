; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_bluray.c_select_initial_title.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_bluray.c_select_initial_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.bluray_priv_s* }
%struct.bluray_priv_s = type { i64, i32, i32, i32 }

@BLURAY_PLAYLIST_TITLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Couldn't start playlist '%05d'.\0A\00", align 1
@BLURAY_DEFAULT_TITLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Couldn't start title '%d'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @select_initial_title to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_initial_title(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bluray_priv_s*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %8, align 8
  store %struct.bluray_priv_s* %9, %struct.bluray_priv_s** %5, align 8
  %10 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %5, align 8
  %11 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BLURAY_PLAYLIST_TITLE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %5, align 8
  %17 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %5, align 8
  %18 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @play_playlist(%struct.bluray_priv_s* %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %5, align 8
  %25 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @MP_WARN(%struct.TYPE_4__* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %22, %15
  %29 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %5, align 8
  %30 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @bd_get_current_title(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %5, align 8
  %35 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  br label %74

36:                                               ; preds = %2
  store i32 -1, i32* %6, align 4
  %37 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %5, align 8
  %38 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @BLURAY_DEFAULT_TITLE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %5, align 8
  %44 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %6, align 4
  br label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %47, %42
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %74

53:                                               ; preds = %49
  %54 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @play_title(%struct.bluray_priv_s* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %5, align 8
  %61 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  br label %73

62:                                               ; preds = %53
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @MP_WARN(%struct.TYPE_4__* %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %5, align 8
  %67 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i8* @bd_get_current_title(i32 %68)
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.bluray_priv_s*, %struct.bluray_priv_s** %5, align 8
  %72 = getelementptr inbounds %struct.bluray_priv_s, %struct.bluray_priv_s* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %62, %58
  br label %74

74:                                               ; preds = %52, %73, %28
  ret void
}

declare dso_local i32 @play_playlist(%struct.bluray_priv_s*, i32) #1

declare dso_local i32 @MP_WARN(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i8* @bd_get_current_title(i32) #1

declare dso_local i64 @play_title(%struct.bluray_priv_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
