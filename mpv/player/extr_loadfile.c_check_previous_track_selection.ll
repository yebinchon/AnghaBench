; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_check_previous_track_selection.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_check_previous_track_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i8*, %struct.MPOpts* }
%struct.MPOpts = type { i32** }

@STREAM_TYPE_COUNT = common dso_local global i32 0, align 4
@NUM_PTRACKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*)* @check_previous_track_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_previous_track_selection(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.MPOpts*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %7 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %8 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %7, i32 0, i32 1
  %9 = load %struct.MPOpts*, %struct.MPOpts** %8, align 8
  store %struct.MPOpts* %9, %struct.MPOpts** %3, align 8
  %10 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %11 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %80

15:                                               ; preds = %1
  %16 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %17 = call i8* @track_layout_hash(%struct.MPContext* %16)
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %20 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strcmp(i8* %18, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %77

24:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %67, %24
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @STREAM_TYPE_COUNT, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %70

29:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %63, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @NUM_PTRACKS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %30
  %35 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %36 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %35, i32 0, i32 0
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %34
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 -1, i32 -2
  %52 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %53 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %52, i32 0, i32 0
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %51, i32* %61, align 4
  br label %62

62:                                               ; preds = %47, %34
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %30

66:                                               ; preds = %30
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %25

70:                                               ; preds = %25
  %71 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %72 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @talloc_free(i8* %73)
  %75 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %76 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %75, i32 0, i32 0
  store i8* null, i8** %76, align 8
  br label %77

77:                                               ; preds = %70, %15
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 @talloc_free(i8* %78)
  br label %80

80:                                               ; preds = %77, %14
  ret void
}

declare dso_local i8* @track_layout_hash(%struct.MPContext*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
