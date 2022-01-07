; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_dec_sub.c_update_segment.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_dec_sub.c_update_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dec_sub = type { i64, i64, %struct.sd*, %struct.sd*, i32, i32 }
%struct.sd = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.sd*, %struct.sd*)*, i32 (%struct.sd*)* }

@MP_NOPTS_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Switch segment: %f at %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Can't change to new codec.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dec_sub*)* @update_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_segment(%struct.dec_sub* %0) #0 {
  %2 = alloca %struct.dec_sub*, align 8
  %3 = alloca %struct.sd*, align 8
  store %struct.dec_sub* %0, %struct.dec_sub** %2, align 8
  %4 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %5 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %4, i32 0, i32 2
  %6 = load %struct.sd*, %struct.sd** %5, align 8
  %7 = icmp ne %struct.sd* %6, null
  br i1 %7, label %8, label %105

8:                                                ; preds = %1
  %9 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %10 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %105

14:                                               ; preds = %8
  %15 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %16 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %19 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %18, i32 0, i32 2
  %20 = load %struct.sd*, %struct.sd** %19, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %17, %22
  br i1 %23, label %24, label %105

24:                                               ; preds = %14
  %25 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %26 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %27 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %26, i32 0, i32 2
  %28 = load %struct.sd*, %struct.sd** %27, align 8
  %29 = getelementptr inbounds %struct.sd, %struct.sd* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %32 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @MP_VERBOSE(%struct.dec_sub* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %33)
  %35 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %36 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %35, i32 0, i32 2
  %37 = load %struct.sd*, %struct.sd** %36, align 8
  %38 = getelementptr inbounds %struct.sd, %struct.sd* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %41 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %43 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %42, i32 0, i32 2
  %44 = load %struct.sd*, %struct.sd** %43, align 8
  %45 = getelementptr inbounds %struct.sd, %struct.sd* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %48 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %50 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %49, i32 0, i32 2
  %51 = load %struct.sd*, %struct.sd** %50, align 8
  %52 = getelementptr inbounds %struct.sd, %struct.sd* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %55 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %57 = call %struct.sd* @init_decoder(%struct.dec_sub* %56)
  store %struct.sd* %57, %struct.sd** %3, align 8
  %58 = load %struct.sd*, %struct.sd** %3, align 8
  %59 = icmp ne %struct.sd* %58, null
  br i1 %59, label %60, label %81

60:                                               ; preds = %24
  %61 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %62 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %61, i32 0, i32 3
  %63 = load %struct.sd*, %struct.sd** %62, align 8
  %64 = getelementptr inbounds %struct.sd, %struct.sd* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32 (%struct.sd*)*, i32 (%struct.sd*)** %66, align 8
  %68 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %69 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %68, i32 0, i32 3
  %70 = load %struct.sd*, %struct.sd** %69, align 8
  %71 = call i32 %67(%struct.sd* %70)
  %72 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %73 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %72, i32 0, i32 3
  %74 = load %struct.sd*, %struct.sd** %73, align 8
  %75 = call i32 @talloc_free(%struct.sd* %74)
  %76 = load %struct.sd*, %struct.sd** %3, align 8
  %77 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %78 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %77, i32 0, i32 3
  store %struct.sd* %76, %struct.sd** %78, align 8
  %79 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %80 = call i32 @update_subtitle_speed(%struct.dec_sub* %79)
  br label %84

81:                                               ; preds = %24
  %82 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %83 = call i32 @MP_ERR(%struct.dec_sub* %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %60
  %85 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %86 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %85, i32 0, i32 3
  %87 = load %struct.sd*, %struct.sd** %86, align 8
  %88 = getelementptr inbounds %struct.sd, %struct.sd* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32 (%struct.sd*, %struct.sd*)*, i32 (%struct.sd*, %struct.sd*)** %90, align 8
  %92 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %93 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %92, i32 0, i32 3
  %94 = load %struct.sd*, %struct.sd** %93, align 8
  %95 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %96 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %95, i32 0, i32 2
  %97 = load %struct.sd*, %struct.sd** %96, align 8
  %98 = call i32 %91(%struct.sd* %94, %struct.sd* %97)
  %99 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %100 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %99, i32 0, i32 2
  %101 = load %struct.sd*, %struct.sd** %100, align 8
  %102 = call i32 @talloc_free(%struct.sd* %101)
  %103 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %104 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %103, i32 0, i32 2
  store %struct.sd* null, %struct.sd** %104, align 8
  br label %105

105:                                              ; preds = %84, %14, %8, %1
  ret void
}

declare dso_local i32 @MP_VERBOSE(%struct.dec_sub*, i8*, i64, i64) #1

declare dso_local %struct.sd* @init_decoder(%struct.dec_sub*) #1

declare dso_local i32 @talloc_free(%struct.sd*) #1

declare dso_local i32 @update_subtitle_speed(%struct.dec_sub*) #1

declare dso_local i32 @MP_ERR(%struct.dec_sub*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
