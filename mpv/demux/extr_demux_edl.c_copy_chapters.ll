; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_edl.c_copy_chapters.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_edl.c_copy_chapters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_chapter = type { double, i32 }
%struct.demuxer = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demux_chapter**, i32*, %struct.demuxer*, double, double, double)* @copy_chapters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_chapters(%struct.demux_chapter** %0, i32* %1, %struct.demuxer* %2, double %3, double %4, double %5) #0 {
  %7 = alloca %struct.demux_chapter**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.demuxer*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca %struct.demux_chapter, align 8
  store %struct.demux_chapter** %0, %struct.demux_chapter*** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.demuxer* %2, %struct.demuxer** %9, align 8
  store double %3, double* %10, align 8
  store double %4, double* %11, align 8
  store double %5, double* %12, align 8
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %65, %6
  %17 = load i32, i32* %13, align 4
  %18 = load %struct.demuxer*, %struct.demuxer** %9, align 8
  %19 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %68

22:                                               ; preds = %16
  %23 = load %struct.demuxer*, %struct.demuxer** %9, align 8
  %24 = load i32, i32* %13, align 4
  %25 = call double @demuxer_chapter_time(%struct.demuxer* %23, i32 %24)
  store double %25, double* %14, align 8
  %26 = load double, double* %14, align 8
  %27 = load double, double* %10, align 8
  %28 = fcmp oge double %26, %27
  br i1 %28, label %29, label %64

29:                                               ; preds = %22
  %30 = load double, double* %14, align 8
  %31 = load double, double* %10, align 8
  %32 = load double, double* %11, align 8
  %33 = fadd double %31, %32
  %34 = fcmp ole double %30, %33
  br i1 %34, label %35, label %64

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.demux_chapter, %struct.demux_chapter* %15, i32 0, i32 0
  %37 = load double, double* %12, align 8
  %38 = load double, double* %14, align 8
  %39 = fadd double %37, %38
  %40 = load double, double* %10, align 8
  %41 = fsub double %39, %40
  store double %41, double* %36, align 8
  %42 = getelementptr inbounds %struct.demux_chapter, %struct.demux_chapter* %15, i32 0, i32 1
  %43 = load %struct.demux_chapter**, %struct.demux_chapter*** %7, align 8
  %44 = load %struct.demux_chapter*, %struct.demux_chapter** %43, align 8
  %45 = load %struct.demuxer*, %struct.demuxer** %9, align 8
  %46 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @mp_tags_dup(%struct.demux_chapter* %44, i32 %52)
  store i32 %53, i32* %42, align 8
  %54 = load %struct.demux_chapter**, %struct.demux_chapter*** %7, align 8
  %55 = load %struct.demux_chapter*, %struct.demux_chapter** %54, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %56, align 4
  %58 = bitcast %struct.demux_chapter* %15 to { double, i32 }*
  %59 = getelementptr inbounds { double, i32 }, { double, i32 }* %58, i32 0, i32 0
  %60 = load double, double* %59, align 8
  %61 = getelementptr inbounds { double, i32 }, { double, i32 }* %58, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @MP_TARRAY_APPEND(i32* null, %struct.demux_chapter* %55, i32 %57, double %60, i32 %62)
  br label %64

64:                                               ; preds = %35, %29, %22
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %16

68:                                               ; preds = %16
  ret void
}

declare dso_local double @demuxer_chapter_time(%struct.demuxer*, i32) #1

declare dso_local i32 @mp_tags_dup(%struct.demux_chapter*, i32) #1

declare dso_local i32 @MP_TARRAY_APPEND(i32*, %struct.demux_chapter*, i32, double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
