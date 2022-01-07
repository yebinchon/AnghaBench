; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_init_shmem_capture.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_init_shmem_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { i32, i32, i32, i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__*, i64, i32** }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@GS_BGRA = common dso_local global i32 0, align 4
@GS_DYNAMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"init_shmem_capture: failed to create texture\00", align 1
@copy_shmem_tex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.game_capture*)* @init_shmem_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_shmem_capture(%struct.game_capture* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.game_capture*, align 8
  %4 = alloca i32, align 4
  store %struct.game_capture* %0, %struct.game_capture** %3, align 8
  %5 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %6 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %5, i32 0, i32 7
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i32*
  %9 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %10 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %9, i32 0, i32 6
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %8, i64 %14
  %16 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %17 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %16, i32 0, i32 8
  %18 = load i32**, i32*** %17, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  store i32* %15, i32** %19, align 8
  %20 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %21 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  %24 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %25 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %24, i32 0, i32 6
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %23, i64 %29
  %31 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %32 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %31, i32 0, i32 8
  %33 = load i32**, i32*** %32, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 1
  store i32* %30, i32** %34, align 8
  %35 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %36 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %35, i32 0, i32 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @is_16bit_format(i32 %39)
  %41 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %42 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %41, i32 0, i32 5
  store i64 %40, i64* %42, align 8
  %43 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %44 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %1
  %48 = load i32, i32* @GS_BGRA, align 4
  br label %56

49:                                               ; preds = %1
  %50 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %51 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %50, i32 0, i32 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @convert_format(i32 %54)
  br label %56

56:                                               ; preds = %49, %47
  %57 = phi i32 [ %48, %47 ], [ %55, %49 ]
  store i32 %57, i32* %4, align 4
  %58 = call i32 (...) @obs_enter_graphics()
  %59 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %60 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @gs_texture_destroy(i32 %61)
  %63 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %64 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %67 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @GS_DYNAMIC, align 4
  %71 = call i32 @gs_texture_create(i32 %65, i32 %68, i32 %69, i32 1, i32* null, i32 %70)
  %72 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %73 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = call i32 (...) @obs_leave_graphics()
  %75 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %76 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %56
  %80 = call i32 @warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %85

81:                                               ; preds = %56
  %82 = load i32, i32* @copy_shmem_tex, align 4
  %83 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %84 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  store i32 1, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %79
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i64 @is_16bit_format(i32) #1

declare dso_local i32 @convert_format(i32) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @gs_texture_destroy(i32) #1

declare dso_local i32 @gs_texture_create(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @obs_leave_graphics(...) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
