; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_stop_capture.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_stop_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { i32, i32, i32, i64, i32*, i32*, i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32*, i32*, i32*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"capture stopped\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.game_capture*)* @stop_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_capture(%struct.game_capture* %0) #0 {
  %2 = alloca %struct.game_capture*, align 8
  store %struct.game_capture* %0, %struct.game_capture** %2, align 8
  %3 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %4 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %3, i32 0, i32 19
  %5 = call i32 @ipc_pipe_server_free(i32* %4)
  %6 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %7 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %6, i32 0, i32 14
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %12 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %11, i32 0, i32 14
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @SetEvent(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %17 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %16, i32 0, i32 18
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %22 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %21, i32 0, i32 18
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @UnmapViewOfFile(i32* %23)
  %25 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %26 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %25, i32 0, i32 18
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %20, %15
  %28 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %29 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %28, i32 0, i32 17
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %34 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %33, i32 0, i32 17
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @UnmapViewOfFile(i32* %35)
  %37 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %38 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %37, i32 0, i32 17
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %32, %27
  %40 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %41 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %40, i32 0, i32 16
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %46 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %45, i32 0, i32 16
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @LocalFree(i32* %47)
  %49 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %50 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %49, i32 0, i32 16
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %44, %39
  %52 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %53 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %52, i32 0, i32 15
  %54 = call i32 @close_handle(i64* %53)
  %55 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %56 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %55, i32 0, i32 14
  %57 = call i32 @close_handle(i64* %56)
  %58 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %59 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %58, i32 0, i32 13
  %60 = call i32 @close_handle(i64* %59)
  %61 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %62 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %61, i32 0, i32 12
  %63 = call i32 @close_handle(i64* %62)
  %64 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %65 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %64, i32 0, i32 11
  %66 = call i32 @close_handle(i64* %65)
  %67 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %68 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %67, i32 0, i32 10
  %69 = call i32 @close_handle(i64* %68)
  %70 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %71 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %70, i32 0, i32 9
  %72 = call i32 @close_handle(i64* %71)
  %73 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %74 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %73, i32 0, i32 8
  %75 = call i32 @close_handle(i64* %74)
  %76 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %77 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %76, i32 0, i32 7
  %78 = call i32 @close_handle(i64* %77)
  %79 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %80 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %79, i32 0, i32 6
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = call i32 @close_handle(i64* %82)
  %84 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %85 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %84, i32 0, i32 6
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 1
  %88 = call i32 @close_handle(i64* %87)
  %89 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %90 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %89, i32 0, i32 5
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %102

93:                                               ; preds = %51
  %94 = call i32 (...) @obs_enter_graphics()
  %95 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %96 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %95, i32 0, i32 5
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @gs_texture_destroy(i32* %97)
  %99 = call i32 (...) @obs_leave_graphics()
  %100 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %101 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %100, i32 0, i32 5
  store i32* null, i32** %101, align 8
  br label %102

102:                                              ; preds = %93, %51
  %103 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %104 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = call i32 @info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %102
  %110 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %111 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %110, i32 0, i32 4
  store i32* null, i32** %111, align 8
  %112 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %113 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %112, i32 0, i32 1
  store i32 0, i32* %113, align 4
  %114 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %115 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %114, i32 0, i32 0
  store i32 0, i32* %115, align 8
  %116 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %117 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %116, i32 0, i32 2
  store i32 0, i32* %117, align 8
  %118 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %119 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %109
  %123 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %124 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, -1
  store i64 %126, i64* %124, align 8
  br label %127

127:                                              ; preds = %122, %109
  ret void
}

declare dso_local i32 @ipc_pipe_server_free(i32*) #1

declare dso_local i32 @SetEvent(i64) #1

declare dso_local i32 @UnmapViewOfFile(i32*) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i32 @close_handle(i64*) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @gs_texture_destroy(i32*) #1

declare dso_local i32 @obs_leave_graphics(...) #1

declare dso_local i32 @info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
