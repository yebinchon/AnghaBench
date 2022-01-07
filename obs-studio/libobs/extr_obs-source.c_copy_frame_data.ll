; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_copy_frame_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_copy_frame_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source_frame = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_source_frame*, %struct.obs_source_frame*)* @copy_frame_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_frame_data(%struct.obs_source_frame* %0, %struct.obs_source_frame* %1) #0 {
  %3 = alloca %struct.obs_source_frame*, align 8
  %4 = alloca %struct.obs_source_frame*, align 8
  %5 = alloca i64, align 8
  store %struct.obs_source_frame* %0, %struct.obs_source_frame** %3, align 8
  store %struct.obs_source_frame* %1, %struct.obs_source_frame** %4, align 8
  %6 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %7 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %10 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 4
  %11 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %12 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %15 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %17 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %20 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %22 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %25 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memcpy(i32 %23, i32 %26, i64 64)
  %28 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %29 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %2
  store i64 12, i64* %5, align 8
  %33 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %34 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %37 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memcpy(i32 %35, i32 %38, i64 12)
  %40 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %41 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %44 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @memcpy(i32 %42, i32 %45, i64 12)
  br label %47

47:                                               ; preds = %32, %2
  %48 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %49 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %164 [
    i32 139, label %51
    i32 134, label %72
    i32 136, label %86
    i32 138, label %86
    i32 128, label %105
    i32 129, label %105
    i32 132, label %105
    i32 135, label %105
    i32 133, label %105
    i32 142, label %105
    i32 141, label %105
    i32 131, label %105
    i32 143, label %105
    i32 144, label %105
    i32 140, label %112
    i32 137, label %139
    i32 130, label %139
  ]

51:                                               ; preds = %47
  %52 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %53 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %54 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %55 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @copy_frame_data_plane(%struct.obs_source_frame* %52, %struct.obs_source_frame* %53, i32 0, i32 %56)
  %58 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %59 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %60 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %61 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %62, 2
  %64 = call i32 @copy_frame_data_plane(%struct.obs_source_frame* %58, %struct.obs_source_frame* %59, i32 1, i32 %63)
  %65 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %66 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %67 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %68 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sdiv i32 %69, 2
  %71 = call i32 @copy_frame_data_plane(%struct.obs_source_frame* %65, %struct.obs_source_frame* %66, i32 2, i32 %70)
  br label %164

72:                                               ; preds = %47
  %73 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %74 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %75 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %76 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @copy_frame_data_plane(%struct.obs_source_frame* %73, %struct.obs_source_frame* %74, i32 0, i32 %77)
  %79 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %80 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %81 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %82 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %83, 2
  %85 = call i32 @copy_frame_data_plane(%struct.obs_source_frame* %79, %struct.obs_source_frame* %80, i32 1, i32 %84)
  br label %164

86:                                               ; preds = %47, %47
  %87 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %88 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %89 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %90 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @copy_frame_data_plane(%struct.obs_source_frame* %87, %struct.obs_source_frame* %88, i32 0, i32 %91)
  %93 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %94 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %95 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %96 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @copy_frame_data_plane(%struct.obs_source_frame* %93, %struct.obs_source_frame* %94, i32 1, i32 %97)
  %99 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %100 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %101 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %102 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @copy_frame_data_plane(%struct.obs_source_frame* %99, %struct.obs_source_frame* %100, i32 2, i32 %103)
  br label %164

105:                                              ; preds = %47, %47, %47, %47, %47, %47, %47, %47, %47, %47
  %106 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %107 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %108 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %109 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @copy_frame_data_plane(%struct.obs_source_frame* %106, %struct.obs_source_frame* %107, i32 0, i32 %110)
  br label %164

112:                                              ; preds = %47
  %113 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %114 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %115 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %116 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @copy_frame_data_plane(%struct.obs_source_frame* %113, %struct.obs_source_frame* %114, i32 0, i32 %117)
  %119 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %120 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %121 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %122 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sdiv i32 %123, 2
  %125 = call i32 @copy_frame_data_plane(%struct.obs_source_frame* %119, %struct.obs_source_frame* %120, i32 1, i32 %124)
  %126 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %127 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %128 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %129 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sdiv i32 %130, 2
  %132 = call i32 @copy_frame_data_plane(%struct.obs_source_frame* %126, %struct.obs_source_frame* %127, i32 2, i32 %131)
  %133 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %134 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %135 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %136 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @copy_frame_data_plane(%struct.obs_source_frame* %133, %struct.obs_source_frame* %134, i32 3, i32 %137)
  br label %164

139:                                              ; preds = %47, %47
  %140 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %141 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %142 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %143 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @copy_frame_data_plane(%struct.obs_source_frame* %140, %struct.obs_source_frame* %141, i32 0, i32 %144)
  %146 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %147 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %148 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %149 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @copy_frame_data_plane(%struct.obs_source_frame* %146, %struct.obs_source_frame* %147, i32 1, i32 %150)
  %152 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %153 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %154 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %155 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @copy_frame_data_plane(%struct.obs_source_frame* %152, %struct.obs_source_frame* %153, i32 2, i32 %156)
  %158 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %159 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %160 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %161 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @copy_frame_data_plane(%struct.obs_source_frame* %158, %struct.obs_source_frame* %159, i32 3, i32 %162)
  br label %164

164:                                              ; preds = %47, %139, %112, %105, %86, %72, %51
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @copy_frame_data_plane(%struct.obs_source_frame*, %struct.obs_source_frame*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
