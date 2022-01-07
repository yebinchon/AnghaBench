; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_update_final_metadata.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_update_final_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.demux_internal* }
%struct.demux_internal = type { i32, %struct.sh_stream*, %struct.sh_stream**, %struct.TYPE_3__* }
%struct.sh_stream = type { i64, %struct.mp_tags*, i32 }
%struct.mp_tags = type { i32 }
%struct.timed_metadata = type { %struct.mp_tags*, i64 }

@STREAM_VIDEO = common dso_local global i64 0, align 8
@STREAM_AUDIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.timed_metadata*)* @update_final_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_final_metadata(%struct.TYPE_3__* %0, %struct.timed_metadata* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.timed_metadata*, align 8
  %5 = alloca %struct.demux_internal*, align 8
  %6 = alloca %struct.mp_tags*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sh_stream*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.timed_metadata* %1, %struct.timed_metadata** %4, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.demux_internal*, %struct.demux_internal** %14, align 8
  %16 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp eq %struct.TYPE_3__* %12, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.demux_internal*, %struct.demux_internal** %22, align 8
  store %struct.demux_internal* %23, %struct.demux_internal** %5, align 8
  store %struct.mp_tags* null, %struct.mp_tags** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %62, %2
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %27 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %24
  %31 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %32 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %31, i32 0, i32 2
  %33 = load %struct.sh_stream**, %struct.sh_stream*** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.sh_stream*, %struct.sh_stream** %33, i64 %35
  %37 = load %struct.sh_stream*, %struct.sh_stream** %36, align 8
  store %struct.sh_stream* %37, %struct.sh_stream** %11, align 8
  %38 = load %struct.sh_stream*, %struct.sh_stream** %11, align 8
  %39 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @STREAM_VIDEO, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %30
  %44 = load %struct.sh_stream*, %struct.sh_stream** %11, align 8
  %45 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %48, %43, %30
  %52 = load %struct.sh_stream*, %struct.sh_stream** %11, align 8
  %53 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @STREAM_AUDIO, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %57, %51
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %24

65:                                               ; preds = %24
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %101

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %101

71:                                               ; preds = %68
  %72 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %73 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %72, i32 0, i32 2
  %74 = load %struct.sh_stream**, %struct.sh_stream*** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.sh_stream*, %struct.sh_stream** %74, i64 %76
  %78 = load %struct.sh_stream*, %struct.sh_stream** %77, align 8
  %79 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %80 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %79, i32 0, i32 1
  %81 = load %struct.sh_stream*, %struct.sh_stream** %80, align 8
  %82 = icmp eq %struct.sh_stream* %78, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %71
  %84 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %85 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %84, i32 0, i32 1
  %86 = load %struct.sh_stream*, %struct.sh_stream** %85, align 8
  %87 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %86, i32 0, i32 1
  %88 = load %struct.mp_tags*, %struct.mp_tags** %87, align 8
  store %struct.mp_tags* %88, %struct.mp_tags** %6, align 8
  %89 = load %struct.timed_metadata*, %struct.timed_metadata** %4, align 8
  %90 = icmp ne %struct.timed_metadata* %89, null
  br i1 %90, label %91, label %100

91:                                               ; preds = %83
  %92 = load %struct.timed_metadata*, %struct.timed_metadata** %4, align 8
  %93 = getelementptr inbounds %struct.timed_metadata, %struct.timed_metadata* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.timed_metadata*, %struct.timed_metadata** %4, align 8
  %98 = getelementptr inbounds %struct.timed_metadata, %struct.timed_metadata* %97, i32 0, i32 0
  %99 = load %struct.mp_tags*, %struct.mp_tags** %98, align 8
  store %struct.mp_tags* %99, %struct.mp_tags** %6, align 8
  br label %100

100:                                              ; preds = %96, %91, %83
  br label %101

101:                                              ; preds = %100, %71, %68, %65
  %102 = load %struct.timed_metadata*, %struct.timed_metadata** %4, align 8
  %103 = icmp ne %struct.timed_metadata* %102, null
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load %struct.timed_metadata*, %struct.timed_metadata** %4, align 8
  %106 = getelementptr inbounds %struct.timed_metadata, %struct.timed_metadata* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = load %struct.timed_metadata*, %struct.timed_metadata** %4, align 8
  %111 = getelementptr inbounds %struct.timed_metadata, %struct.timed_metadata* %110, i32 0, i32 0
  %112 = load %struct.mp_tags*, %struct.mp_tags** %111, align 8
  store %struct.mp_tags* %112, %struct.mp_tags** %6, align 8
  br label %113

113:                                              ; preds = %109, %104, %101
  %114 = load %struct.mp_tags*, %struct.mp_tags** %6, align 8
  %115 = icmp ne %struct.mp_tags* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.mp_tags*, %struct.mp_tags** %6, align 8
  %121 = call i32 @mp_tags_merge(i32 %119, %struct.mp_tags* %120)
  br label %122

122:                                              ; preds = %116, %113
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mp_tags_merge(i32, %struct.mp_tags*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
