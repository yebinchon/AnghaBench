; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_copy_shmem_tex.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_copy_shmem_tex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { i32, i32, i32, i32**, i64, i32**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.game_capture*)* @copy_shmem_tex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_shmem_tex(%struct.game_capture* %0) #0 {
  %2 = alloca %struct.game_capture*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.game_capture* %0, %struct.game_capture** %2, align 8
  store i32* null, i32** %4, align 8
  %13 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %14 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %13, i32 0, i32 6
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %170

18:                                               ; preds = %1
  %19 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %20 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %19, i32 0, i32 6
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %3, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %18
  br label %170

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 1
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 0, i32 1
  store i32 %34, i32* %6, align 4
  %35 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %36 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %35, i32 0, i32 5
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = call i64 @object_signalled(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %30
  %45 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %46 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %45, i32 0, i32 5
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %4, align 8
  br label %73

52:                                               ; preds = %30
  %53 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %54 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %53, i32 0, i32 5
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = call i64 @object_signalled(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %52
  %63 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %64 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %63, i32 0, i32 5
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %4, align 8
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %52
  br label %170

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %44
  %74 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %75 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @gs_texture_map(i32 %76, i32** %7, i32* %5)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %167

79:                                               ; preds = %73
  %80 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %81 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %86 = load i32, i32* %3, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @copy_16bit_tex(%struct.game_capture* %85, i32 %86, i32* %87, i32 %88)
  br label %162

90:                                               ; preds = %79
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %93 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %90
  %97 = load i32*, i32** %7, align 8
  %98 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %99 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %98, i32 0, i32 3
  %100 = load i32**, i32*** %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %107 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %105, %108
  %110 = call i32 @memcpy(i32* %97, i32* %104, i32 %109)
  br label %161

111:                                              ; preds = %90
  %112 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %113 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %112, i32 0, i32 3
  %114 = load i32**, i32*** %113, align 8
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  %118 = load i32*, i32** %117, align 8
  store i32* %118, i32** %8, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %121 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %111
  %125 = load i32, i32* %5, align 4
  br label %130

126:                                              ; preds = %111
  %127 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %128 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  br label %130

130:                                              ; preds = %126, %124
  %131 = phi i32 [ %125, %124 ], [ %129, %126 ]
  store i32 %131, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %132

132:                                              ; preds = %157, %130
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %135 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %160

138:                                              ; preds = %132
  %139 = load i32*, i32** %8, align 8
  %140 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %141 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = mul nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %139, i64 %145
  store i32* %146, i32** %11, align 8
  %147 = load i32*, i32** %7, align 8
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %10, align 4
  %150 = mul nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %147, i64 %151
  store i32* %152, i32** %12, align 8
  %153 = load i32*, i32** %12, align 8
  %154 = load i32*, i32** %11, align 8
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @memcpy(i32* %153, i32* %154, i32 %155)
  br label %157

157:                                              ; preds = %138
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  br label %132

160:                                              ; preds = %132
  br label %161

161:                                              ; preds = %160, %96
  br label %162

162:                                              ; preds = %161, %84
  %163 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %164 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @gs_texture_unmap(i32 %165)
  br label %167

167:                                              ; preds = %162, %73
  %168 = load i32*, i32** %4, align 8
  %169 = call i32 @ReleaseMutex(i32* %168)
  br label %170

170:                                              ; preds = %167, %71, %29, %17
  ret void
}

declare dso_local i64 @object_signalled(i32*) #1

declare dso_local i64 @gs_texture_map(i32, i32**, i32*) #1

declare dso_local i32 @copy_16bit_tex(%struct.game_capture*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @gs_texture_unmap(i32) #1

declare dso_local i32 @ReleaseMutex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
