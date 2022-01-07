; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_init_hook_info.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_init_hook_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { %struct.TYPE_4__*, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_4__ = type { i32, i64, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"init_hook_info: get_hook_info failed: %lu\00", align 1
@FILE_MAP_ALL_ACCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"init_hook_info: failed to map data view: %lu\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"init_hook_info: user is forcing shared memory (multi-adapter compatibility mode)\00", align 1
@offsets64 = common dso_local global i32 0, align 4
@offsets32 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"init_hook_info: shared texture capture unavailable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.game_capture*)* @init_hook_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_hook_info(%struct.game_capture* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.game_capture*, align 8
  store %struct.game_capture* %0, %struct.game_capture** %3, align 8
  %4 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %5 = call i32 @open_hook_info(%struct.game_capture* %4)
  %6 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %7 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 8
  %8 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %9 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = call i32 (...) @GetLastError()
  %14 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 0, i32* %2, align 4
  br label %120

15:                                               ; preds = %1
  %16 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %17 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FILE_MAP_ALL_ACCESS, align 4
  %20 = call %struct.TYPE_4__* @MapViewOfFile(i32 %18, i32 %19, i32 0, i32 0, i32 40)
  %21 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %22 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %21, i32 0, i32 0
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %22, align 8
  %23 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %24 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %15
  %28 = call i32 (...) @GetLastError()
  %29 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i32 0, i32* %2, align 4
  br label %120

30:                                               ; preds = %15
  %31 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %32 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %30
  %39 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %40 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @offsets64, align 4
  br label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @offsets32, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %50 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 5
  store i32 %48, i32* %52, align 8
  %53 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %54 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %58 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 4
  store i32 %56, i32* %60, align 4
  %61 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %62 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %66 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 8
  %69 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %70 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %74 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  store i32 %72, i32* %76, align 8
  %77 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %78 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %47
  %83 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %84 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %88 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  store i64 %86, i64* %90, align 8
  br label %91

91:                                               ; preds = %82, %47
  %92 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %93 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %91
  %98 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %99 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %103 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i64 %101, i64* %105, align 8
  br label %106

106:                                              ; preds = %97, %91
  %107 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %108 = call i32 @reset_frame_interval(%struct.game_capture* %107)
  %109 = call i32 (...) @obs_enter_graphics()
  %110 = call i32 (...) @gs_shared_texture_available()
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %106
  %113 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %114 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %115 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  br label %118

118:                                              ; preds = %112, %106
  %119 = call i32 (...) @obs_leave_graphics()
  store i32 1, i32* %2, align 4
  br label %120

120:                                              ; preds = %118, %27, %12
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @open_hook_info(%struct.game_capture*) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local %struct.TYPE_4__* @MapViewOfFile(i32, i32, i32, i32, i32) #1

declare dso_local i32 @reset_frame_interval(%struct.game_capture*) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @gs_shared_texture_available(...) #1

declare dso_local i32 @obs_leave_graphics(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
