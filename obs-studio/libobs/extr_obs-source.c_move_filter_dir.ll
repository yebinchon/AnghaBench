; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_move_filter_dir.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_move_filter_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_11__*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__** }

@DARRAY_INVALID = common dso_local global i64 0, align 8
@OBS_ORDER_MOVE_UP = common dso_local global i32 0, align 4
@OBS_ORDER_MOVE_DOWN = common dso_local global i32 0, align 4
@OBS_ORDER_MOVE_TOP = common dso_local global i32 0, align 4
@OBS_ORDER_MOVE_BOTTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_11__*, i32)* @move_filter_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_filter_dir(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = bitcast %struct.TYPE_12__* %14 to { i32, %struct.TYPE_11__** }*
  %16 = getelementptr inbounds { i32, %struct.TYPE_11__** }, { i32, %struct.TYPE_11__** }* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds { i32, %struct.TYPE_11__** }, { i32, %struct.TYPE_11__** }* %15, i32 0, i32 1
  %19 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %18, align 8
  %20 = call i64 @da_find(i32 %17, %struct.TYPE_11__** %19, %struct.TYPE_11__** %6, i32 0)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @DARRAY_INVALID, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %169

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @OBS_ORDER_MOVE_UP, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @find_next_filter(%struct.TYPE_11__* %30, %struct.TYPE_11__* %31, i64 %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @DARRAY_INVALID, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %169

38:                                               ; preds = %29
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = trunc i64 %42 to i32
  %44 = bitcast %struct.TYPE_12__* %40 to { i32, %struct.TYPE_11__** }*
  %45 = getelementptr inbounds { i32, %struct.TYPE_11__** }, { i32, %struct.TYPE_11__** }* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds { i32, %struct.TYPE_11__** }, { i32, %struct.TYPE_11__** }* %44, i32 0, i32 1
  %48 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %47, align 8
  %49 = call i32 @da_move_item(i32 %46, %struct.TYPE_11__** %48, i64 %41, i32 %43)
  br label %125

50:                                               ; preds = %25
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @OBS_ORDER_MOVE_DOWN, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @find_prev_filter(%struct.TYPE_11__* %55, %struct.TYPE_11__* %56, i64 %57)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @DARRAY_INVALID, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %169

63:                                               ; preds = %54
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %10, align 8
  %68 = trunc i64 %67 to i32
  %69 = bitcast %struct.TYPE_12__* %65 to { i32, %struct.TYPE_11__** }*
  %70 = getelementptr inbounds { i32, %struct.TYPE_11__** }, { i32, %struct.TYPE_11__** }* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds { i32, %struct.TYPE_11__** }, { i32, %struct.TYPE_11__** }* %69, i32 0, i32 1
  %73 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %72, align 8
  %74 = call i32 @da_move_item(i32 %71, %struct.TYPE_11__** %73, i64 %66, i32 %68)
  br label %124

75:                                               ; preds = %50
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @OBS_ORDER_MOVE_TOP, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %75
  %80 = load i64, i64* %8, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = icmp eq i64 %80, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %169

89:                                               ; preds = %79
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load i64, i64* %8, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %96, 1
  %98 = bitcast %struct.TYPE_12__* %91 to { i32, %struct.TYPE_11__** }*
  %99 = getelementptr inbounds { i32, %struct.TYPE_11__** }, { i32, %struct.TYPE_11__** }* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds { i32, %struct.TYPE_11__** }, { i32, %struct.TYPE_11__** }* %98, i32 0, i32 1
  %102 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %101, align 8
  %103 = call i32 @da_move_item(i32 %100, %struct.TYPE_11__** %102, i64 %92, i32 %97)
  br label %123

104:                                              ; preds = %75
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @OBS_ORDER_MOVE_BOTTOM, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %104
  %109 = load i64, i64* %8, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %169

112:                                              ; preds = %108
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i64, i64* %8, align 8
  %116 = bitcast %struct.TYPE_12__* %114 to { i32, %struct.TYPE_11__** }*
  %117 = getelementptr inbounds { i32, %struct.TYPE_11__** }, { i32, %struct.TYPE_11__** }* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds { i32, %struct.TYPE_11__** }, { i32, %struct.TYPE_11__** }* %116, i32 0, i32 1
  %120 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %119, align 8
  %121 = call i32 @da_move_item(i32 %118, %struct.TYPE_11__** %120, i64 %115, i32 0)
  br label %122

122:                                              ; preds = %112, %104
  br label %123

123:                                              ; preds = %122, %89
  br label %124

124:                                              ; preds = %123, %63
  br label %125

125:                                              ; preds = %124, %38
  store i64 0, i64* %11, align 8
  br label %126

126:                                              ; preds = %165, %125
  %127 = load i64, i64* %11, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = icmp ult i64 %127, %132
  br i1 %133, label %134, label %168

134:                                              ; preds = %126
  %135 = load i64, i64* %11, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = icmp eq i64 %135, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %134
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  br label %154

145:                                              ; preds = %134
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %148, align 8
  %150 = load i64, i64* %11, align 8
  %151 = add i64 %150, 1
  %152 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %149, i64 %151
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  br label %154

154:                                              ; preds = %145, %143
  %155 = phi %struct.TYPE_11__* [ %144, %143 ], [ %153, %145 ]
  store %struct.TYPE_11__* %155, %struct.TYPE_11__** %12, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %159, align 8
  %161 = load i64, i64* %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %160, i64 %161
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  store %struct.TYPE_11__* %156, %struct.TYPE_11__** %164, align 8
  br label %165

165:                                              ; preds = %154
  %166 = load i64, i64* %11, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %11, align 8
  br label %126

168:                                              ; preds = %126
  store i32 1, i32* %4, align 4
  br label %169

169:                                              ; preds = %168, %111, %88, %62, %37, %24
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i64 @da_find(i32, %struct.TYPE_11__**, %struct.TYPE_11__**, i32) #1

declare dso_local i64 @find_next_filter(%struct.TYPE_11__*, %struct.TYPE_11__*, i64) #1

declare dso_local i32 @da_move_item(i32, %struct.TYPE_11__**, i64, i32) #1

declare dso_local i64 @find_prev_filter(%struct.TYPE_11__*, %struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
