; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_chmap.c_mp_chmap_get_reorder.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_chmap.c_mp_chmap_get_reorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_chmap = type { i32, i64* }

@MP_NUM_CHANNELS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_chmap_get_reorder(i32* %0, %struct.mp_chmap* %1, %struct.mp_chmap* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mp_chmap*, align 8
  %6 = alloca %struct.mp_chmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.mp_chmap* %1, %struct.mp_chmap** %5, align 8
  store %struct.mp_chmap* %2, %struct.mp_chmap** %6, align 8
  %12 = load i32, i32* @MP_NUM_CHANNELS, align 4
  %13 = zext i32 %12 to i64
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %23, %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @MP_NUM_CHANNELS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 -1, i32* %22, align 4
  br label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %14

26:                                               ; preds = %14
  %27 = load %struct.mp_chmap*, %struct.mp_chmap** %5, align 8
  %28 = call i64 @mp_chmap_is_unknown(%struct.mp_chmap* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load %struct.mp_chmap*, %struct.mp_chmap** %6, align 8
  %32 = call i64 @mp_chmap_is_unknown(%struct.mp_chmap* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %30, %26
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %56, %34
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.mp_chmap*, %struct.mp_chmap** %6, align 8
  %38 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.mp_chmap*, %struct.mp_chmap** %5, align 8
  %44 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  br label %50

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ -1, %49 ]
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %35

59:                                               ; preds = %35
  br label %145

60:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %101, %60
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.mp_chmap*, %struct.mp_chmap** %6, align 8
  %64 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %104

67:                                               ; preds = %61
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %97, %67
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.mp_chmap*, %struct.mp_chmap** %5, align 8
  %71 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %68
  %75 = load %struct.mp_chmap*, %struct.mp_chmap** %6, align 8
  %76 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.mp_chmap*, %struct.mp_chmap** %5, align 8
  %83 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %81, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %74
  %91 = load i32, i32* %10, align 4
  %92 = load i32*, i32** %4, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %91, i32* %95, align 4
  br label %100

96:                                               ; preds = %74
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %68

100:                                              ; preds = %90, %68
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %61

104:                                              ; preds = %61
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %142, %104
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.mp_chmap*, %struct.mp_chmap** %6, align 8
  %108 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %145

111:                                              ; preds = %105
  %112 = load i32*, i32** %4, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %138, label %118

118:                                              ; preds = %111
  %119 = load %struct.mp_chmap*, %struct.mp_chmap** %6, align 8
  %120 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %119, i32 0, i32 1
  %121 = load i64*, i64** %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.mp_chmap*, %struct.mp_chmap** %5, align 8
  %127 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = load i32*, i32** %4, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %128, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %125, %136
  br label %138

138:                                              ; preds = %118, %111
  %139 = phi i1 [ true, %111 ], [ %137, %118 ]
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  br label %142

142:                                              ; preds = %138
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %11, align 4
  br label %105

145:                                              ; preds = %59, %105
  ret void
}

declare dso_local i64 @mp_chmap_is_unknown(%struct.mp_chmap*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
