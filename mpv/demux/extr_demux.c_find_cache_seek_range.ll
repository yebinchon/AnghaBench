; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_find_cache_seek_range.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_find_cache_seek_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_cached_range = type { double, double, i64, i64 }
%struct.demux_internal = type { i32, %struct.demux_cached_range**, i32 }

@SEEK_FACTOR = common dso_local global i32 0, align 4
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [45 x i8] c"cached range %d: %f <-> %f (bof=%d, eof=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"...using this range for in-cache seek.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demux_cached_range* (%struct.demux_internal*, double, i32)* @find_cache_seek_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demux_cached_range* @find_cache_seek_range(%struct.demux_internal* %0, double %1, i32 %2) #0 {
  %4 = alloca %struct.demux_cached_range*, align 8
  %5 = alloca %struct.demux_internal*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.demux_cached_range*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.demux_cached_range*, align 8
  store %struct.demux_internal* %0, %struct.demux_internal** %5, align 8
  store double %1, double* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @SEEK_FACTOR, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %17 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %3
  store %struct.demux_cached_range* null, %struct.demux_cached_range** %4, align 8
  br label %89

21:                                               ; preds = %15
  store %struct.demux_cached_range* null, %struct.demux_cached_range** %8, align 8
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %84, %21
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %25 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %87

28:                                               ; preds = %22
  %29 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %30 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %29, i32 0, i32 1
  %31 = load %struct.demux_cached_range**, %struct.demux_cached_range*** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.demux_cached_range*, %struct.demux_cached_range** %31, i64 %33
  %35 = load %struct.demux_cached_range*, %struct.demux_cached_range** %34, align 8
  store %struct.demux_cached_range* %35, %struct.demux_cached_range** %10, align 8
  %36 = load %struct.demux_cached_range*, %struct.demux_cached_range** %10, align 8
  %37 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %36, i32 0, i32 0
  %38 = load double, double* %37, align 8
  %39 = load double, double* @MP_NOPTS_VALUE, align 8
  %40 = fcmp une double %38, %39
  br i1 %40, label %41, label %83

41:                                               ; preds = %28
  %42 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.demux_cached_range*, %struct.demux_cached_range** %10, align 8
  %45 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %44, i32 0, i32 0
  %46 = load double, double* %45, align 8
  %47 = load %struct.demux_cached_range*, %struct.demux_cached_range** %10, align 8
  %48 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %47, i32 0, i32 1
  %49 = load double, double* %48, align 8
  %50 = load %struct.demux_cached_range*, %struct.demux_cached_range** %10, align 8
  %51 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.demux_cached_range*, %struct.demux_cached_range** %10, align 8
  %54 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (%struct.demux_internal*, i8*, ...) @MP_VERBOSE(%struct.demux_internal* %42, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %43, double %46, double %49, i64 %52, i64 %55)
  %57 = load double, double* %6, align 8
  %58 = load %struct.demux_cached_range*, %struct.demux_cached_range** %10, align 8
  %59 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %58, i32 0, i32 0
  %60 = load double, double* %59, align 8
  %61 = fcmp oge double %57, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %41
  %63 = load %struct.demux_cached_range*, %struct.demux_cached_range** %10, align 8
  %64 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %62, %41
  %68 = load double, double* %6, align 8
  %69 = load %struct.demux_cached_range*, %struct.demux_cached_range** %10, align 8
  %70 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %69, i32 0, i32 1
  %71 = load double, double* %70, align 8
  %72 = fcmp ole double %68, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %67
  %74 = load %struct.demux_cached_range*, %struct.demux_cached_range** %10, align 8
  %75 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73, %67
  %79 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %80 = call i32 (%struct.demux_internal*, i8*, ...) @MP_VERBOSE(%struct.demux_internal* %79, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %81 = load %struct.demux_cached_range*, %struct.demux_cached_range** %10, align 8
  store %struct.demux_cached_range* %81, %struct.demux_cached_range** %8, align 8
  br label %87

82:                                               ; preds = %73, %62
  br label %83

83:                                               ; preds = %82, %28
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %22

87:                                               ; preds = %78, %22
  %88 = load %struct.demux_cached_range*, %struct.demux_cached_range** %8, align 8
  store %struct.demux_cached_range* %88, %struct.demux_cached_range** %4, align 8
  br label %89

89:                                               ; preds = %87, %20
  %90 = load %struct.demux_cached_range*, %struct.demux_cached_range** %4, align 8
  ret %struct.demux_cached_range* %90
}

declare dso_local i32 @MP_VERBOSE(%struct.demux_internal*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
