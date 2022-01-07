; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/60/keymaps/default/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/60/keymaps/default/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@song_basketcase = common dso_local global i32 0, align 4
@song_ode_to_joy = common dso_local global i32 0, align 4
@song_rock_a_bye_baby = common dso_local global i32 0, align 4
@song_doe_a_deer = common dso_local global i32 0, align 4
@song_scale = common dso_local global i32 0, align 4
@song_one_up = common dso_local global i32 0, align 4
@song_coin = common dso_local global i32 0, align 4
@song_sonic_ring = common dso_local global i32 0, align 4
@song_zelda_puzzle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %106 [
    i32 136, label %7
    i32 133, label %18
    i32 131, label %29
    i32 134, label %40
    i32 130, label %51
    i32 132, label %62
    i32 135, label %73
    i32 129, label %84
    i32 128, label %95
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = call i32 (...) @stop_all_notes()
  %15 = load i32, i32* @song_basketcase, align 4
  %16 = call i32 @PLAY_SONG(i32 %15)
  br label %17

17:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %107

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = call i32 (...) @stop_all_notes()
  %26 = load i32, i32* @song_ode_to_joy, align 4
  %27 = call i32 @PLAY_SONG(i32 %26)
  br label %28

28:                                               ; preds = %24, %18
  store i32 0, i32* %3, align 4
  br label %107

29:                                               ; preds = %2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = call i32 (...) @stop_all_notes()
  %37 = load i32, i32* @song_rock_a_bye_baby, align 4
  %38 = call i32 @PLAY_SONG(i32 %37)
  br label %39

39:                                               ; preds = %35, %29
  store i32 0, i32* %3, align 4
  br label %107

40:                                               ; preds = %2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = call i32 (...) @stop_all_notes()
  %48 = load i32, i32* @song_doe_a_deer, align 4
  %49 = call i32 @PLAY_SONG(i32 %48)
  br label %50

50:                                               ; preds = %46, %40
  store i32 0, i32* %3, align 4
  br label %107

51:                                               ; preds = %2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = call i32 (...) @stop_all_notes()
  %59 = load i32, i32* @song_scale, align 4
  %60 = call i32 @PLAY_SONG(i32 %59)
  br label %61

61:                                               ; preds = %57, %51
  store i32 0, i32* %3, align 4
  br label %107

62:                                               ; preds = %2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = call i32 (...) @stop_all_notes()
  %70 = load i32, i32* @song_one_up, align 4
  %71 = call i32 @PLAY_SONG(i32 %70)
  br label %72

72:                                               ; preds = %68, %62
  store i32 0, i32* %3, align 4
  br label %107

73:                                               ; preds = %2
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = call i32 (...) @stop_all_notes()
  %81 = load i32, i32* @song_coin, align 4
  %82 = call i32 @PLAY_SONG(i32 %81)
  br label %83

83:                                               ; preds = %79, %73
  store i32 0, i32* %3, align 4
  br label %107

84:                                               ; preds = %2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = call i32 (...) @stop_all_notes()
  %92 = load i32, i32* @song_sonic_ring, align 4
  %93 = call i32 @PLAY_SONG(i32 %92)
  br label %94

94:                                               ; preds = %90, %84
  store i32 0, i32* %3, align 4
  br label %107

95:                                               ; preds = %2
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = call i32 (...) @stop_all_notes()
  %103 = load i32, i32* @song_zelda_puzzle, align 4
  %104 = call i32 @PLAY_SONG(i32 %103)
  br label %105

105:                                              ; preds = %101, %95
  store i32 0, i32* %3, align 4
  br label %107

106:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %105, %94, %83, %72, %61, %50, %39, %28, %17
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @stop_all_notes(...) #1

declare dso_local i32 @PLAY_SONG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
