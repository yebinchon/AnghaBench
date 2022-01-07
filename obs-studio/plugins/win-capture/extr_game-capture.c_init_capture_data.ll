; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_init_capture_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_init_capture_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { i32*, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@SHMEM_TEXTURE = common dso_local global i32 0, align 4
@CAPTURE_RETRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"init_capture_data: failed to open file mapping: %lu\00", align 1
@CAPTURE_FAIL = common dso_local global i32 0, align 4
@FILE_MAP_ALL_ACCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"init_capture_data: failed to map data view: %lu\00", align 1
@CAPTURE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.game_capture*)* @init_capture_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_capture_data(%struct.game_capture* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.game_capture*, align 8
  %4 = alloca i32, align 4
  store %struct.game_capture* %0, %struct.game_capture** %3, align 8
  %5 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %6 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %11 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 4
  %12 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %13 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %18 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %20 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %25 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %27 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %1
  %31 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %32 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @UnmapViewOfFile(i32* %33)
  %35 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %36 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %30, %1
  %38 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %39 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @CloseHandle(i32 %40)
  %42 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %43 = load i32, i32* @SHMEM_TEXTURE, align 4
  %44 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %45 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @open_map_plus_id(%struct.game_capture* %42, i32 %43, i32 %48)
  %50 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %51 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %53 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %37
  %57 = call i32 (...) @GetLastError()
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @CAPTURE_RETRY, align 4
  store i32 %61, i32* %2, align 4
  br label %90

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %62
  %66 = load i32, i32* @CAPTURE_FAIL, align 4
  store i32 %66, i32* %2, align 4
  br label %90

67:                                               ; preds = %37
  %68 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %69 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @FILE_MAP_ALL_ACCESS, align 4
  %72 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %73 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32* @MapViewOfFile(i32 %70, i32 %71, i32 0, i32 0, i32 %76)
  %78 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %79 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %78, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  %80 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %81 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %67
  %85 = call i32 (...) @GetLastError()
  %86 = call i32 @warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @CAPTURE_FAIL, align 4
  store i32 %87, i32* %2, align 4
  br label %90

88:                                               ; preds = %67
  %89 = load i32, i32* @CAPTURE_SUCCESS, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %84, %65, %60
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @UnmapViewOfFile(i32*) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @open_map_plus_id(%struct.game_capture*, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32* @MapViewOfFile(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
