; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_ra_fmt_glsl_format.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_ra_fmt_glsl_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glsl_fmt = type { i64, i64, i64*, i8* }
%struct.ra_format = type { i64, i64, i64* }

@ra_glsl_fmts = common dso_local global %struct.glsl_fmt* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ra_fmt_glsl_format(%struct.ra_format* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ra_format*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.glsl_fmt*, align 8
  %6 = alloca i32, align 4
  store %struct.ra_format* %0, %struct.ra_format** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %68, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.glsl_fmt*, %struct.glsl_fmt** @ra_glsl_fmts, align 8
  %10 = call i32 @MP_ARRAY_SIZE(%struct.glsl_fmt* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %71

12:                                               ; preds = %7
  %13 = load %struct.glsl_fmt*, %struct.glsl_fmt** @ra_glsl_fmts, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.glsl_fmt, %struct.glsl_fmt* %13, i64 %15
  store %struct.glsl_fmt* %16, %struct.glsl_fmt** %5, align 8
  %17 = load %struct.ra_format*, %struct.ra_format** %3, align 8
  %18 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.glsl_fmt*, %struct.glsl_fmt** %5, align 8
  %21 = getelementptr inbounds %struct.glsl_fmt, %struct.glsl_fmt* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  br label %68

25:                                               ; preds = %12
  %26 = load %struct.ra_format*, %struct.ra_format** %3, align 8
  %27 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.glsl_fmt*, %struct.glsl_fmt** %5, align 8
  %30 = getelementptr inbounds %struct.glsl_fmt, %struct.glsl_fmt* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %68

34:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %60, %34
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.ra_format*, %struct.ra_format** %3, align 8
  %39 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %35
  %43 = load %struct.ra_format*, %struct.ra_format** %3, align 8
  %44 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.glsl_fmt*, %struct.glsl_fmt** %5, align 8
  %51 = getelementptr inbounds %struct.glsl_fmt, %struct.glsl_fmt* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %49, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %42
  br label %67

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %35

63:                                               ; preds = %35
  %64 = load %struct.glsl_fmt*, %struct.glsl_fmt** %5, align 8
  %65 = getelementptr inbounds %struct.glsl_fmt, %struct.glsl_fmt* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %2, align 8
  br label %72

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %33, %24
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %7

71:                                               ; preds = %7
  store i8* null, i8** %2, align 8
  br label %72

72:                                               ; preds = %71, %63
  %73 = load i8*, i8** %2, align 8
  ret i8* %73
}

declare dso_local i32 @MP_ARRAY_SIZE(%struct.glsl_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
