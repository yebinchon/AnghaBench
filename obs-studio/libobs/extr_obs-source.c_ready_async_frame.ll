; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_ready_async_frame.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_ready_async_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, %struct.obs_source_frame** }
%struct.obs_source_frame = type { i64 }

@MAX_TS_VAR = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64)* @ready_async_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ready_async_frame(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.obs_source_frame*, align 8
  %7 = alloca %struct.obs_source_frame*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load %struct.obs_source_frame**, %struct.obs_source_frame*** %13, align 8
  %15 = getelementptr inbounds %struct.obs_source_frame*, %struct.obs_source_frame** %14, i64 0
  %16 = load %struct.obs_source_frame*, %struct.obs_source_frame** %15, align 8
  store %struct.obs_source_frame* %16, %struct.obs_source_frame** %6, align 8
  store %struct.obs_source_frame* null, %struct.obs_source_frame** %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  store i64 %21, i64* %8, align 8
  %22 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %23 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %36, %29
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %54

36:                                               ; preds = %30
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = bitcast %struct.TYPE_7__* %38 to { i32, %struct.obs_source_frame** }*
  %40 = getelementptr inbounds { i32, %struct.obs_source_frame** }, { i32, %struct.obs_source_frame** }* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds { i32, %struct.obs_source_frame** }, { i32, %struct.obs_source_frame** }* %39, i32 0, i32 1
  %43 = load %struct.obs_source_frame**, %struct.obs_source_frame*** %42, align 8
  %44 = call i32 @da_erase(i32 %41, %struct.obs_source_frame** %43, i32 0)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %47 = call i32 @remove_async_frame(%struct.TYPE_6__* %45, %struct.obs_source_frame* %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load %struct.obs_source_frame**, %struct.obs_source_frame*** %50, align 8
  %52 = getelementptr inbounds %struct.obs_source_frame*, %struct.obs_source_frame** %51, i64 0
  %53 = load %struct.obs_source_frame*, %struct.obs_source_frame** %52, align 8
  store %struct.obs_source_frame* %53, %struct.obs_source_frame** %6, align 8
  br label %30

54:                                               ; preds = %30
  %55 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %56 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  store i32 1, i32* %3, align 4
  br label %159

60:                                               ; preds = %2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i64 @frame_out_of_bounds(%struct.TYPE_6__* %61, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %67 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  store i32 1, i32* %3, align 4
  br label %159

71:                                               ; preds = %60
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %72, %75
  store i64 %76, i64* %10, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, %77
  store i64 %81, i64* %79, align 8
  br label %82

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %146, %82
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %88 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %86, %89
  br i1 %90, label %91, label %155

91:                                               ; preds = %83
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %96 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %94, %97
  %99 = icmp slt i64 %98, 2000000
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %155

101:                                              ; preds = %91
  %102 = load %struct.obs_source_frame*, %struct.obs_source_frame** %7, align 8
  %103 = icmp ne %struct.obs_source_frame* %102, null
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = bitcast %struct.TYPE_7__* %106 to { i32, %struct.obs_source_frame** }*
  %108 = getelementptr inbounds { i32, %struct.obs_source_frame** }, { i32, %struct.obs_source_frame** }* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds { i32, %struct.obs_source_frame** }, { i32, %struct.obs_source_frame** }* %107, i32 0, i32 1
  %111 = load %struct.obs_source_frame**, %struct.obs_source_frame*** %110, align 8
  %112 = call i32 @da_erase(i32 %109, %struct.obs_source_frame** %111, i32 0)
  br label %113

113:                                              ; preds = %104, %101
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %115 = load %struct.obs_source_frame*, %struct.obs_source_frame** %7, align 8
  %116 = call i32 @remove_async_frame(%struct.TYPE_6__* %114, %struct.obs_source_frame* %115)
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %123

122:                                              ; preds = %113
  store i32 1, i32* %3, align 4
  br label %159

123:                                              ; preds = %113
  %124 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  store %struct.obs_source_frame* %124, %struct.obs_source_frame** %7, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load %struct.obs_source_frame**, %struct.obs_source_frame*** %127, align 8
  %129 = getelementptr inbounds %struct.obs_source_frame*, %struct.obs_source_frame** %128, i64 1
  %130 = load %struct.obs_source_frame*, %struct.obs_source_frame** %129, align 8
  store %struct.obs_source_frame* %130, %struct.obs_source_frame** %6, align 8
  %131 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %132 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %9, align 8
  %135 = sub nsw i64 %133, %134
  %136 = load i64, i64* @MAX_TS_VAR, align 8
  %137 = icmp sgt i64 %135, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %123
  %139 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %140 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %10, align 8
  %143 = sub nsw i64 %141, %142
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  br label %146

146:                                              ; preds = %138, %123
  %147 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %148 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %9, align 8
  %150 = load i64, i64* %9, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = sub nsw i64 %150, %153
  store i64 %154, i64* %10, align 8
  br label %83

155:                                              ; preds = %100, %83
  %156 = load %struct.obs_source_frame*, %struct.obs_source_frame** %7, align 8
  %157 = icmp ne %struct.obs_source_frame* %156, null
  %158 = zext i1 %157 to i32
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %155, %122, %65, %54
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @da_erase(i32, %struct.obs_source_frame**, i32) #1

declare dso_local i32 @remove_async_frame(%struct.TYPE_6__*, %struct.obs_source_frame*) #1

declare dso_local i64 @frame_out_of_bounds(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
