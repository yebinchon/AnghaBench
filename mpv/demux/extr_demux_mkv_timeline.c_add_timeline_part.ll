; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mkv_timeline.c_add_timeline_part.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mkv_timeline.c_add_timeline_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_ctx = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.demuxer* }
%struct.TYPE_3__ = type { i32 }
%struct.demuxer = type { i32 }
%struct.timeline_part = type { i32, i32, %struct.demuxer* }

@.str = private unnamed_addr constant [45 x i8] c"Merging timeline part %d with offset %g ms.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tl_ctx*, %struct.demuxer*, i32)* @add_timeline_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_timeline_part(%struct.tl_ctx* %0, %struct.demuxer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tl_ctx*, align 8
  %6 = alloca %struct.demuxer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeline_part, align 8
  store %struct.tl_ctx* %0, %struct.tl_ctx** %5, align 8
  store %struct.demuxer* %1, %struct.demuxer** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %10, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %45, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @FFABS(i32 %20)
  %22 = sitofp i32 %21 to double
  %23 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %23, i32 0, i32 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sitofp i32 %27 to double
  %29 = fmul double %28, 1.000000e+06
  %30 = fcmp ogt double %22, %29
  br i1 %30, label %45, label %31

31:                                               ; preds = %19
  %32 = load %struct.demuxer*, %struct.demuxer** %6, align 8
  %33 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.demuxer*, %struct.demuxer** %42, align 8
  %44 = icmp ne %struct.demuxer* %32, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %31, %19, %3
  %46 = getelementptr inbounds %struct.timeline_part, %struct.timeline_part* %9, i32 0, i32 0
  %47 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %48 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = sitofp i32 %49 to double
  %51 = fdiv double %50, 1.000000e+09
  %52 = fptosi double %51 to i32
  store i32 %52, i32* %46, align 8
  %53 = getelementptr inbounds %struct.timeline_part, %struct.timeline_part* %9, i32 0, i32 1
  %54 = load i32, i32* %7, align 4
  %55 = sitofp i32 %54 to double
  %56 = fdiv double %55, 1.000000e+09
  %57 = fptosi double %56 to i32
  store i32 %57, i32* %53, align 4
  %58 = getelementptr inbounds %struct.timeline_part, %struct.timeline_part* %9, i32 0, i32 2
  %59 = load %struct.demuxer*, %struct.demuxer** %6, align 8
  store %struct.demuxer* %59, %struct.demuxer** %58, align 8
  %60 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %61 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %64 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = bitcast %struct.timeline_part* %9 to { i64, %struct.demuxer* }*
  %67 = getelementptr inbounds { i64, %struct.demuxer* }, { i64, %struct.demuxer* }* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds { i64, %struct.demuxer* }, { i64, %struct.demuxer* }* %66, i32 0, i32 1
  %70 = load %struct.demuxer*, %struct.demuxer** %69, align 8
  %71 = call i32 @MP_TARRAY_APPEND(i32* null, %struct.TYPE_4__* %62, i32 %65, i64 %68, %struct.demuxer* %70)
  br label %97

72:                                               ; preds = %31
  %73 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %74 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %77
  %81 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %82 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %83 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = sitofp i32 %85 to double
  %87 = fdiv double %86, 1.000000e+06
  %88 = fptosi double %87 to i32
  %89 = call i32 @MP_VERBOSE(%struct.tl_ctx* %81, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.tl_ctx*, %struct.tl_ctx** %5, align 8
  %92 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %4, align 4
  br label %98

96:                                               ; preds = %77, %72
  br label %97

97:                                               ; preds = %96, %45
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %80
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @MP_TARRAY_APPEND(i32*, %struct.TYPE_4__*, i32, i64, %struct.demuxer*) #1

declare dso_local i32 @MP_VERBOSE(%struct.tl_ctx*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
