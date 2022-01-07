; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_open_recorder.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_open_recorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i32, %struct.track**, %struct.TYPE_2__*, i32, i32 }
%struct.track = type { %struct.sh_stream*, i64, i64, i64 }
%struct.sh_stream = type { i32 }
%struct.TYPE_2__ = type { i8* }
%struct.mp_recorder_sink = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @open_recorder(%struct.MPContext* %0, i32 %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sh_stream**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.track*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.track*, align 8
  %13 = alloca %struct.mp_recorder_sink*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %15 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %164

19:                                               ; preds = %2
  %20 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %21 = call i32 @close_recorder(%struct.MPContext* %20)
  %22 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %23 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %19
  br label %164

35:                                               ; preds = %29
  store %struct.sh_stream** null, %struct.sh_stream*** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %77, %35
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %39 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %80

42:                                               ; preds = %36
  %43 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %44 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %43, i32 0, i32 2
  %45 = load %struct.track**, %struct.track*** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.track*, %struct.track** %45, i64 %47
  %49 = load %struct.track*, %struct.track** %48, align 8
  store %struct.track* %49, %struct.track** %9, align 8
  %50 = load %struct.track*, %struct.track** %9, align 8
  %51 = getelementptr inbounds %struct.track, %struct.track* %50, i32 0, i32 0
  %52 = load %struct.sh_stream*, %struct.sh_stream** %51, align 8
  %53 = icmp ne %struct.sh_stream* %52, null
  br i1 %53, label %54, label %76

54:                                               ; preds = %42
  %55 = load %struct.track*, %struct.track** %9, align 8
  %56 = getelementptr inbounds %struct.track, %struct.track* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %54
  %60 = load %struct.track*, %struct.track** %9, align 8
  %61 = getelementptr inbounds %struct.track, %struct.track* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.track*, %struct.track** %9, align 8
  %66 = getelementptr inbounds %struct.track, %struct.track* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64, %59
  %70 = load %struct.sh_stream**, %struct.sh_stream*** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.track*, %struct.track** %9, align 8
  %73 = getelementptr inbounds %struct.track, %struct.track* %72, i32 0, i32 0
  %74 = load %struct.sh_stream*, %struct.sh_stream** %73, align 8
  %75 = call i32 @MP_TARRAY_APPEND(i32* null, %struct.sh_stream** %70, i32 %71, %struct.sh_stream* %74)
  br label %76

76:                                               ; preds = %69, %64, %54, %42
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %36

80:                                               ; preds = %36
  %81 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %82 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %85 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %84, i32 0, i32 3
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.sh_stream**, %struct.sh_stream*** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @mp_recorder_create(i32 %83, i8* %88, %struct.sh_stream** %89, i32 %90)
  %92 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %93 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %95 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %80
  %99 = load %struct.sh_stream**, %struct.sh_stream*** %6, align 8
  %100 = call i32 @talloc_free(%struct.sh_stream** %99)
  %101 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %102 = call i32 @close_recorder_and_error(%struct.MPContext* %101)
  br label %164

103:                                              ; preds = %80
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  %107 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %108 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @mp_recorder_mark_discontinuity(i32 %109)
  br label %111

111:                                              ; preds = %106, %103
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %112

112:                                              ; preds = %158, %111
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %115 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %161

118:                                              ; preds = %112
  %119 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %120 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %119, i32 0, i32 2
  %121 = load %struct.track**, %struct.track*** %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.track*, %struct.track** %121, i64 %123
  %125 = load %struct.track*, %struct.track** %124, align 8
  store %struct.track* %125, %struct.track** %12, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp sge i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %118
  br label %161

130:                                              ; preds = %118
  %131 = load %struct.track*, %struct.track** %12, align 8
  %132 = getelementptr inbounds %struct.track, %struct.track* %131, i32 0, i32 0
  %133 = load %struct.sh_stream*, %struct.sh_stream** %132, align 8
  %134 = load %struct.sh_stream**, %struct.sh_stream*** %6, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.sh_stream*, %struct.sh_stream** %134, i64 %136
  %138 = load %struct.sh_stream*, %struct.sh_stream** %137, align 8
  %139 = icmp eq %struct.sh_stream* %133, %138
  br i1 %139, label %140, label %157

140:                                              ; preds = %130
  %141 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %142 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.sh_stream**, %struct.sh_stream*** %6, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.sh_stream*, %struct.sh_stream** %144, i64 %146
  %148 = load %struct.sh_stream*, %struct.sh_stream** %147, align 8
  %149 = call %struct.mp_recorder_sink* @mp_recorder_get_sink(i32 %143, %struct.sh_stream* %148)
  store %struct.mp_recorder_sink* %149, %struct.mp_recorder_sink** %13, align 8
  %150 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %13, align 8
  %151 = call i32 @assert(%struct.mp_recorder_sink* %150)
  %152 = load %struct.track*, %struct.track** %12, align 8
  %153 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %13, align 8
  %154 = call i32 @set_track_recorder_sink(%struct.track* %152, %struct.mp_recorder_sink* %153)
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %10, align 4
  br label %157

157:                                              ; preds = %140, %130
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %112

161:                                              ; preds = %129, %112
  %162 = load %struct.sh_stream**, %struct.sh_stream*** %6, align 8
  %163 = call i32 @talloc_free(%struct.sh_stream** %162)
  br label %164

164:                                              ; preds = %161, %98, %34, %18
  ret void
}

declare dso_local i32 @close_recorder(%struct.MPContext*) #1

declare dso_local i32 @MP_TARRAY_APPEND(i32*, %struct.sh_stream**, i32, %struct.sh_stream*) #1

declare dso_local i32 @mp_recorder_create(i32, i8*, %struct.sh_stream**, i32) #1

declare dso_local i32 @talloc_free(%struct.sh_stream**) #1

declare dso_local i32 @close_recorder_and_error(%struct.MPContext*) #1

declare dso_local i32 @mp_recorder_mark_discontinuity(i32) #1

declare dso_local %struct.mp_recorder_sink* @mp_recorder_get_sink(i32, %struct.sh_stream*) #1

declare dso_local i32 @assert(%struct.mp_recorder_sink*) #1

declare dso_local i32 @set_track_recorder_sink(%struct.track*, %struct.mp_recorder_sink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
