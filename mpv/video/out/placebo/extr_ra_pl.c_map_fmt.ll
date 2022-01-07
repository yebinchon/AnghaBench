; ModuleID = '/home/carl/AnghaBench/mpv/video/out/placebo/extr_ra_pl.c_map_fmt.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/placebo/extr_ra_pl.c_map_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_format = type { %struct.pl_fmt* }
%struct.ra = type { i32, %struct.ra_format** }
%struct.pl_fmt = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Failed mapping pl_fmt '%s' to ra_fmt?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ra_format* (%struct.ra*, %struct.pl_fmt*)* @map_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ra_format* @map_fmt(%struct.ra* %0, %struct.pl_fmt* %1) #0 {
  %3 = alloca %struct.ra_format*, align 8
  %4 = alloca %struct.ra*, align 8
  %5 = alloca %struct.pl_fmt*, align 8
  %6 = alloca i32, align 4
  store %struct.ra* %0, %struct.ra** %4, align 8
  store %struct.pl_fmt* %1, %struct.pl_fmt** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %34, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.ra*, %struct.ra** %4, align 8
  %10 = getelementptr inbounds %struct.ra, %struct.ra* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %7
  %14 = load %struct.ra*, %struct.ra** %4, align 8
  %15 = getelementptr inbounds %struct.ra, %struct.ra* %14, i32 0, i32 1
  %16 = load %struct.ra_format**, %struct.ra_format*** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ra_format*, %struct.ra_format** %16, i64 %18
  %20 = load %struct.ra_format*, %struct.ra_format** %19, align 8
  %21 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %20, i32 0, i32 0
  %22 = load %struct.pl_fmt*, %struct.pl_fmt** %21, align 8
  %23 = load %struct.pl_fmt*, %struct.pl_fmt** %5, align 8
  %24 = icmp eq %struct.pl_fmt* %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %13
  %26 = load %struct.ra*, %struct.ra** %4, align 8
  %27 = getelementptr inbounds %struct.ra, %struct.ra* %26, i32 0, i32 1
  %28 = load %struct.ra_format**, %struct.ra_format*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ra_format*, %struct.ra_format** %28, i64 %30
  %32 = load %struct.ra_format*, %struct.ra_format** %31, align 8
  store %struct.ra_format* %32, %struct.ra_format** %3, align 8
  br label %43

33:                                               ; preds = %13
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %7

37:                                               ; preds = %7
  %38 = load %struct.ra*, %struct.ra** %4, align 8
  %39 = load %struct.pl_fmt*, %struct.pl_fmt** %5, align 8
  %40 = getelementptr inbounds %struct.pl_fmt, %struct.pl_fmt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @MP_ERR(%struct.ra* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %41)
  store %struct.ra_format* null, %struct.ra_format** %3, align 8
  br label %43

43:                                               ; preds = %37, %25
  %44 = load %struct.ra_format*, %struct.ra_format** %3, align 8
  ret %struct.ra_format* %44
}

declare dso_local i32 @MP_ERR(%struct.ra*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
