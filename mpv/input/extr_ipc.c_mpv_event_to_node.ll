; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_ipc.c_mpv_event_to_node.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_ipc.c_mpv_event_to_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64, %struct.TYPE_19__*, i64 }
%struct.TYPE_19__ = type { i8*, i8*, i8*, i32, i8*, %struct.TYPE_18__*, i32, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32* }

@.str = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@MPV_FORMAT_NODE_ARRAY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_20__*, %struct.TYPE_18__*)* @mpv_event_to_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpv_event_to_node(i8* %0, %struct.TYPE_20__* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_18__, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i8* @mpv_event_name(i32 %16)
  %18 = call i32 @mpv_node_map_add_string(i8* %12, %struct.TYPE_18__* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @mpv_node_map_add_int64(i8* %24, %struct.TYPE_18__* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  br label %30

30:                                               ; preds = %23, %3
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i8* @mpv_error_string(i64 %40)
  %42 = call i32 @mpv_node_map_add_string(i8* %36, %struct.TYPE_18__* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %35, %30
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %152 [
    i32 133, label %47
    i32 134, label %69
    i32 132, label %100
  ]

47:                                               ; preds = %43
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %49, align 8
  store %struct.TYPE_19__* %50, %struct.TYPE_19__** %7, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @mpv_node_map_add_string(i8* %51, %struct.TYPE_18__* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  %57 = load i8*, i8** %4, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @mpv_node_map_add_string(i8* %57, %struct.TYPE_18__* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %61)
  %63 = load i8*, i8** %4, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @mpv_node_map_add_string(i8* %63, %struct.TYPE_18__* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %67)
  br label %152

69:                                               ; preds = %43
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %71, align 8
  store %struct.TYPE_19__* %72, %struct.TYPE_19__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %76 = load i32, i32* @MPV_FORMAT_NODE_ARRAY, align 4
  store i32 %76, i32* %75, align 8
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %93, %69
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %77
  %84 = load i8*, i8** %4, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 7
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @mpv_node_array_add_string(i8* %84, %struct.TYPE_18__* %9, i32 %91)
  br label %93

93:                                               ; preds = %83
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %77

96:                                               ; preds = %77
  %97 = load i8*, i8** %4, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %99 = call i32 @mpv_node_map_add(i8* %97, %struct.TYPE_18__* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_18__* %9)
  br label %152

100:                                              ; preds = %43
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %102, align 8
  store %struct.TYPE_19__* %103, %struct.TYPE_19__** %11, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 4
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @mpv_node_map_add_string(i8* %104, %struct.TYPE_18__* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %108)
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  switch i32 %112, label %147 [
    i32 129, label %113
    i32 131, label %120
    i32 130, label %129
    i32 128, label %138
  ]

113:                                              ; preds = %100
  %114 = load i8*, i8** %4, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 5
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = call i32 @mpv_node_map_add(i8* %114, %struct.TYPE_18__* %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_18__* %118)
  br label %151

120:                                              ; preds = %100
  %121 = load i8*, i8** %4, align 8
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 5
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %124, align 8
  %126 = bitcast %struct.TYPE_18__* %125 to double*
  %127 = load double, double* %126, align 8
  %128 = call i32 @mpv_node_map_add_double(i8* %121, %struct.TYPE_18__* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), double %127)
  br label %151

129:                                              ; preds = %100
  %130 = load i8*, i8** %4, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 5
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %133, align 8
  %135 = bitcast %struct.TYPE_18__* %134 to i32*
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @mpv_node_map_add_flag(i8* %130, %struct.TYPE_18__* %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %136)
  br label %151

138:                                              ; preds = %100
  %139 = load i8*, i8** %4, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 5
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %142, align 8
  %144 = bitcast %struct.TYPE_18__* %143 to i8**
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @mpv_node_map_add_string(i8* %139, %struct.TYPE_18__* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %145)
  br label %151

147:                                              ; preds = %100
  %148 = load i8*, i8** %4, align 8
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %150 = call i32 @mpv_node_map_add_null(i8* %148, %struct.TYPE_18__* %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %151

151:                                              ; preds = %147, %138, %129, %120, %113
  br label %152

152:                                              ; preds = %43, %151, %96, %47
  ret void
}

declare dso_local i32 @mpv_node_map_add_string(i8*, %struct.TYPE_18__*, i8*, i8*) #1

declare dso_local i8* @mpv_event_name(i32) #1

declare dso_local i32 @mpv_node_map_add_int64(i8*, %struct.TYPE_18__*, i8*, i64) #1

declare dso_local i8* @mpv_error_string(i64) #1

declare dso_local i32 @mpv_node_array_add_string(i8*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @mpv_node_map_add(i8*, %struct.TYPE_18__*, i8*, %struct.TYPE_18__*) #1

declare dso_local i32 @mpv_node_map_add_double(i8*, %struct.TYPE_18__*, i8*, double) #1

declare dso_local i32 @mpv_node_map_add_flag(i8*, %struct.TYPE_18__*, i8*, i32) #1

declare dso_local i32 @mpv_node_map_add_null(i8*, %struct.TYPE_18__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
