; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_capture_needs_reset.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_capture_needs_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture_config = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32 }

@CAPTURE_MODE_WINDOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.game_capture_config*, %struct.game_capture_config*)* @capture_needs_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @capture_needs_reset(%struct.game_capture_config* %0, %struct.game_capture_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.game_capture_config*, align 8
  %5 = alloca %struct.game_capture_config*, align 8
  store %struct.game_capture_config* %0, %struct.game_capture_config** %4, align 8
  store %struct.game_capture_config* %1, %struct.game_capture_config** %5, align 8
  %6 = load %struct.game_capture_config*, %struct.game_capture_config** %4, align 8
  %7 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.game_capture_config*, %struct.game_capture_config** %5, align 8
  %10 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %121

14:                                               ; preds = %2
  %15 = load %struct.game_capture_config*, %struct.game_capture_config** %4, align 8
  %16 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CAPTURE_MODE_WINDOW, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %14
  %21 = load %struct.game_capture_config*, %struct.game_capture_config** %4, align 8
  %22 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.game_capture_config*, %struct.game_capture_config** %5, align 8
  %25 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %24, i32 0, i32 10
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @s_cmp(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %55, label %29

29:                                               ; preds = %20
  %30 = load %struct.game_capture_config*, %struct.game_capture_config** %4, align 8
  %31 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.game_capture_config*, %struct.game_capture_config** %5, align 8
  %34 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @s_cmp(i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %29
  %39 = load %struct.game_capture_config*, %struct.game_capture_config** %4, align 8
  %40 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.game_capture_config*, %struct.game_capture_config** %5, align 8
  %43 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @s_cmp(i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %38
  %48 = load %struct.game_capture_config*, %struct.game_capture_config** %4, align 8
  %49 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.game_capture_config*, %struct.game_capture_config** %5, align 8
  %52 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47, %38, %29, %20
  store i32 1, i32* %3, align 4
  br label %121

56:                                               ; preds = %47, %14
  %57 = load %struct.game_capture_config*, %struct.game_capture_config** %4, align 8
  %58 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.game_capture_config*, %struct.game_capture_config** %5, align 8
  %61 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %121

65:                                               ; preds = %56
  %66 = load %struct.game_capture_config*, %struct.game_capture_config** %4, align 8
  %67 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %65
  %71 = load %struct.game_capture_config*, %struct.game_capture_config** %4, align 8
  %72 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.game_capture_config*, %struct.game_capture_config** %5, align 8
  %75 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %86, label %78

78:                                               ; preds = %70
  %79 = load %struct.game_capture_config*, %struct.game_capture_config** %4, align 8
  %80 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.game_capture_config*, %struct.game_capture_config** %5, align 8
  %83 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78, %70
  store i32 1, i32* %3, align 4
  br label %121

87:                                               ; preds = %78, %65
  %88 = load %struct.game_capture_config*, %struct.game_capture_config** %4, align 8
  %89 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.game_capture_config*, %struct.game_capture_config** %5, align 8
  %92 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  store i32 1, i32* %3, align 4
  br label %121

96:                                               ; preds = %87
  %97 = load %struct.game_capture_config*, %struct.game_capture_config** %4, align 8
  %98 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.game_capture_config*, %struct.game_capture_config** %5, align 8
  %101 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %100, i32 0, i32 6
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  store i32 1, i32* %3, align 4
  br label %121

105:                                              ; preds = %96
  %106 = load %struct.game_capture_config*, %struct.game_capture_config** %4, align 8
  %107 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %106, i32 0, i32 7
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.game_capture_config*, %struct.game_capture_config** %5, align 8
  %110 = getelementptr inbounds %struct.game_capture_config, %struct.game_capture_config* %109, i32 0, i32 7
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  store i32 1, i32* %3, align 4
  br label %121

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118
  br label %120

120:                                              ; preds = %119
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %113, %104, %95, %86, %64, %55, %13
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i64 @s_cmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
