; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_track_next.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_track_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, %struct.track** }
%struct.track = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.track* (%struct.MPContext*, i32, i32, %struct.track*)* @track_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.track* @track_next(%struct.MPContext* %0, i32 %1, i32 %2, %struct.track* %3) #0 {
  %5 = alloca %struct.MPContext*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.track*, align 8
  %9 = alloca %struct.track*, align 8
  %10 = alloca %struct.track*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.track*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.track* %3, %struct.track** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 1
  br label %19

19:                                               ; preds = %16, %4
  %20 = phi i1 [ true, %4 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  store %struct.track* null, %struct.track** %9, align 8
  store %struct.track* null, %struct.track** %10, align 8
  %23 = load %struct.track*, %struct.track** %8, align 8
  %24 = icmp eq %struct.track* %23, null
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %75, %19
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %29 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %78

32:                                               ; preds = %26
  %33 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %34 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %33, i32 0, i32 1
  %35 = load %struct.track**, %struct.track*** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.track*, %struct.track** %35, i64 %37
  %39 = load %struct.track*, %struct.track** %38, align 8
  store %struct.track* %39, %struct.track** %13, align 8
  %40 = load %struct.track*, %struct.track** %13, align 8
  %41 = getelementptr inbounds %struct.track, %struct.track* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %32
  %46 = load %struct.track*, %struct.track** %13, align 8
  %47 = load %struct.track*, %struct.track** %8, align 8
  %48 = icmp eq %struct.track* %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 1, i32* %11, align 4
  br label %73

50:                                               ; preds = %45
  %51 = load %struct.track*, %struct.track** %13, align 8
  %52 = getelementptr inbounds %struct.track, %struct.track* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.track*, %struct.track** %10, align 8
  %60 = icmp ne %struct.track* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = load %struct.track*, %struct.track** %13, align 8
  store %struct.track* %62, %struct.track** %10, align 8
  br label %63

63:                                               ; preds = %61, %58, %55
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.track*, %struct.track** %8, align 8
  %68 = icmp ne %struct.track* %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.track*, %struct.track** %13, align 8
  store %struct.track* %70, %struct.track** %9, align 8
  br label %71

71:                                               ; preds = %69, %66
  br label %72

72:                                               ; preds = %71, %50
  br label %73

73:                                               ; preds = %72, %49
  br label %74

74:                                               ; preds = %73, %32
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %26

78:                                               ; preds = %26
  %79 = load i32, i32* %7, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load %struct.track*, %struct.track** %10, align 8
  br label %85

83:                                               ; preds = %78
  %84 = load %struct.track*, %struct.track** %9, align 8
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi %struct.track* [ %82, %81 ], [ %84, %83 ]
  ret %struct.track* %86
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
