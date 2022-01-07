; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_cmd.c_cmd_node_array.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_cmd.c_cmd_node_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.mp_cmd = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@MPV_FORMAT_NODE_ARRAY = common dso_local global i64 0, align 8
@MPV_FORMAT_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, %struct.mp_cmd*, %struct.TYPE_14__*)* @cmd_node_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_node_array(%struct.mp_log* %0, %struct.mp_cmd* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mp_log*, align 8
  %6 = alloca %struct.mp_cmd*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__, align 4
  %11 = alloca %struct.TYPE_15__, align 4
  %12 = alloca %struct.TYPE_15__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mp_log* %0, %struct.mp_log** %5, align 8
  store %struct.mp_cmd* %1, %struct.mp_cmd** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MPV_FORMAT_NODE_ARRAY, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %62, %3
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %26
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MPV_FORMAT_STRING, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %65

44:                                               ; preds = %32
  %45 = load %struct.mp_cmd*, %struct.mp_cmd** %6, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @bstr0(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @apply_flag(%struct.mp_cmd* %45, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %44
  br label %65

62:                                               ; preds = %44
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %26

65:                                               ; preds = %61, %43, %26
  %66 = bitcast %struct.TYPE_15__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %66, i8 0, i64 4, i1 false)
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %98

72:                                               ; preds = %65
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MPV_FORMAT_STRING, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %72
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @bstr0(i32 %93)
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  store i32 %94, i32* %95, align 4
  %96 = bitcast %struct.TYPE_15__* %11 to i8*
  %97 = bitcast %struct.TYPE_15__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 %97, i64 4, i1 false)
  br label %98

98:                                               ; preds = %83, %72, %65
  %99 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %100 = load %struct.mp_cmd*, %struct.mp_cmd** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @find_cmd(%struct.mp_log* %99, %struct.mp_cmd* %100, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  br label %137

106:                                              ; preds = %98
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %108

108:                                              ; preds = %133, %106
  %109 = load i32, i32* %14, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sub nsw i32 %112, %113
  %115 = icmp slt i32 %109, %114
  br i1 %115, label %116, label %136

116:                                              ; preds = %108
  %117 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %118 = load %struct.mp_cmd*, %struct.mp_cmd** %6, align 8
  %119 = load %struct.mp_cmd*, %struct.mp_cmd** %6, align 8
  %120 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i64 %127
  %129 = call i32 @set_node_arg(%struct.mp_log* %117, %struct.mp_cmd* %118, i32 %121, %struct.TYPE_16__* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %116
  store i32 0, i32* %4, align 4
  br label %137

132:                                              ; preds = %116
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  br label %108

136:                                              ; preds = %108
  store i32 1, i32* %4, align 4
  br label %137

137:                                              ; preds = %136, %131, %105
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @apply_flag(%struct.mp_cmd*, i32) #1

declare dso_local i32 @bstr0(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @find_cmd(%struct.mp_log*, %struct.mp_cmd*, i32) #1

declare dso_local i32 @set_node_arg(%struct.mp_log*, %struct.mp_cmd*, i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
