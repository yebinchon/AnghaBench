; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_recorder.c_mux_packets.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_recorder.c_mux_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_recorder_sink = type { i32, %struct.TYPE_5__**, %struct.mp_recorder* }
%struct.TYPE_5__ = type { i64 }
%struct.mp_recorder = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_recorder_sink*, i32)* @mux_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mux_packets(%struct.mp_recorder_sink* %0, i32 %1) #0 {
  %3 = alloca %struct.mp_recorder_sink*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mp_recorder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mp_recorder_sink* %0, %struct.mp_recorder_sink** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %10 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %9, i32 0, i32 2
  %11 = load %struct.mp_recorder*, %struct.mp_recorder** %10, align 8
  store %struct.mp_recorder* %11, %struct.mp_recorder** %5, align 8
  %12 = load %struct.mp_recorder*, %struct.mp_recorder** %5, align 8
  %13 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %18 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %2
  br label %104

22:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %43, %22
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %26 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %31 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %32, i64 %34
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %40, %29
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %23

46:                                               ; preds = %23
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %51 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %46
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %76, %53
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %54
  %59 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %60 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %61 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %62, i64 %64
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = call i32 @mux_packet(%struct.mp_recorder_sink* %59, %struct.TYPE_5__* %66)
  %68 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %69 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %70, i64 %72
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = call i32 @talloc_free(%struct.TYPE_5__* %74)
  br label %76

76:                                               ; preds = %58
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %54

79:                                               ; preds = %54
  %80 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %81 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %80, i32 0, i32 1
  %82 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %82, i64 0
  %84 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %85 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %84, i32 0, i32 1
  %86 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %86, i64 %88
  %90 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %91 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @memmove(%struct.TYPE_5__** %83, %struct.TYPE_5__** %89, i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %101 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %79, %21
  ret void
}

declare dso_local i32 @mux_packet(%struct.mp_recorder_sink*, %struct.TYPE_5__*) #1

declare dso_local i32 @talloc_free(%struct.TYPE_5__*) #1

declare dso_local i32 @memmove(%struct.TYPE_5__**, %struct.TYPE_5__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
