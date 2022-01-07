; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_game_capture_render_cursor.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_game_capture_render_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.game_capture*)* @game_capture_render_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @game_capture_render_cursor(%struct.game_capture* %0) #0 {
  %2 = alloca %struct.game_capture*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store %struct.game_capture* %0, %struct.game_capture** %2, align 8
  %7 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 12, i1 false)
  %8 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %9 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %16 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14, %1
  br label %91

22:                                               ; preds = %14
  %23 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %24 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %31 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  br label %40

36:                                               ; preds = %22
  %37 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %38 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  br label %40

40:                                               ; preds = %36, %29
  %41 = phi i32 [ %35, %29 ], [ %39, %36 ]
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @ClientToScreen(i32 %42, %struct.TYPE_5__* %3)
  %44 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %45 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = sitofp i64 %48 to float
  %50 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %51 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sitofp i64 %54 to float
  %56 = fdiv float %49, %55
  store float %56, float* %5, align 4
  %57 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %58 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = sitofp i64 %61 to float
  %63 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %64 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sitofp i64 %67 to float
  %69 = fdiv float %62, %68
  store float %69, float* %6, align 4
  %70 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %71 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 0, %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 0, %76
  %78 = load float, float* %5, align 4
  %79 = load float, float* %6, align 4
  %80 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %81 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %86 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @cursor_draw(i32* %71, i32 %74, i32 %77, float %78, float %79, i64 %84, i64 %89)
  br label %91

91:                                               ; preds = %40, %21
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ClientToScreen(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @cursor_draw(i32*, i32, i32, float, float, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
