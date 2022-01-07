; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_cdda.c_control.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_cdda.c_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { double }

@STREAM_ERROR = common dso_local global i32 0, align 4
@STREAM_OK = common dso_local global i32 0, align 4
@CDIO_CD_FRAMESIZE_RAW = common dso_local global double 0.000000e+00, align 8
@STREAM_UNSUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i8*)* @control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control(%struct.TYPE_9__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %8, align 8
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %88 [
    i32 128, label %20
    i32 129, label %46
  ]

20:                                               ; preds = %3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @get_track_by_sector(%struct.TYPE_10__* %21, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @get_track_by_sector(%struct.TYPE_10__* %26, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %36, label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %20
  %37 = load i32, i32* @STREAM_ERROR, align 4
  store i32 %37, i32* %4, align 4
  br label %90

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load i8*, i8** %7, align 8
  %44 = bitcast i8* %43 to i32*
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @STREAM_OK, align 4
  store i32 %45, i32* %4, align 4
  br label %90

46:                                               ; preds = %3
  %47 = load i8*, i8** %7, align 8
  %48 = bitcast i8* %47 to double*
  %49 = load double, double* %48, align 8
  %50 = fptosi double %49 to i32
  store i32 %50, i32* %11, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @get_track_by_sector(%struct.TYPE_10__* %51, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @get_track_by_sector(%struct.TYPE_10__* %56, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %46
  %68 = load i32, i32* @STREAM_ERROR, align 4
  store i32 %68, i32* %4, align 4
  br label %90

69:                                               ; preds = %46
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load double, double* %78, align 8
  store double %79, double* %14, align 8
  %80 = load double, double* %14, align 8
  %81 = load double, double* @CDIO_CD_FRAMESIZE_RAW, align 8
  %82 = fmul double %80, %81
  store double %82, double* %15, align 8
  %83 = load double, double* %15, align 8
  %84 = fdiv double %83, 1.764000e+05
  %85 = load i8*, i8** %7, align 8
  %86 = bitcast i8* %85 to double*
  store double %84, double* %86, align 8
  %87 = load i32, i32* @STREAM_OK, align 4
  store i32 %87, i32* %4, align 4
  br label %90

88:                                               ; preds = %3
  %89 = load i32, i32* @STREAM_UNSUPPORTED, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %69, %67, %38, %36
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @get_track_by_sector(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
