; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_ra_find_float_format.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_ra_find_float_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_format = type { i64, i32, i32, i32*, i64 }
%struct.ra = type { i32, %struct.ra_format** }

@RA_CTYPE_FLOAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ra_format* (%struct.ra*, i32, i32)* @ra_find_float_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ra_format* @ra_find_float_format(%struct.ra* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ra_format*, align 8
  %5 = alloca %struct.ra*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ra_format*, align 8
  store %struct.ra* %0, %struct.ra** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %62, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.ra*, %struct.ra** %5, align 8
  %13 = getelementptr inbounds %struct.ra, %struct.ra* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %10
  %17 = load %struct.ra*, %struct.ra** %5, align 8
  %18 = getelementptr inbounds %struct.ra, %struct.ra* %17, i32 0, i32 1
  %19 = load %struct.ra_format**, %struct.ra_format*** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ra_format*, %struct.ra_format** %19, i64 %21
  %23 = load %struct.ra_format*, %struct.ra_format** %22, align 8
  store %struct.ra_format* %23, %struct.ra_format** %9, align 8
  %24 = load %struct.ra_format*, %struct.ra_format** %9, align 8
  %25 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RA_CTYPE_FLOAT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %16
  %30 = load %struct.ra_format*, %struct.ra_format** %9, align 8
  %31 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %29
  %36 = load %struct.ra_format*, %struct.ra_format** %9, align 8
  %37 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = mul nsw i32 %39, %40
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %35
  %44 = load %struct.ra_format*, %struct.ra_format** %9, align 8
  %45 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %48, 16
  br i1 %49, label %50, label %61

50:                                               ; preds = %43
  %51 = load %struct.ra_format*, %struct.ra_format** %9, align 8
  %52 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.ra_format*, %struct.ra_format** %9, align 8
  %57 = call i64 @ra_format_is_regular(%struct.ra_format* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load %struct.ra_format*, %struct.ra_format** %9, align 8
  store %struct.ra_format* %60, %struct.ra_format** %4, align 8
  br label %66

61:                                               ; preds = %55, %50, %43, %35, %29, %16
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %10

65:                                               ; preds = %10
  store %struct.ra_format* null, %struct.ra_format** %4, align 8
  br label %66

66:                                               ; preds = %65, %59
  %67 = load %struct.ra_format*, %struct.ra_format** %4, align 8
  ret %struct.ra_format* %67
}

declare dso_local i64 @ra_format_is_regular(%struct.ra_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
