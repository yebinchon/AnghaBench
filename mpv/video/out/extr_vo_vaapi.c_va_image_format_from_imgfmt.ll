; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_va_image_format_from_imgfmt.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_va_image_format_from_imgfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.priv = type { %struct.va_image_formats* }
%struct.va_image_formats = type { i32, %struct.TYPE_3__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* (%struct.priv*, i32)* @va_image_format_from_imgfmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @va_image_format_from_imgfmt(%struct.priv* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.va_image_formats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.priv* %0, %struct.priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.priv*, %struct.priv** %4, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 0
  %11 = load %struct.va_image_formats*, %struct.va_image_formats** %10, align 8
  store %struct.va_image_formats* %11, %struct.va_image_formats** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @va_fourcc_from_imgfmt(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.va_image_formats*, %struct.va_image_formats** %6, align 8
  %15 = icmp ne %struct.va_image_formats* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.va_image_formats*, %struct.va_image_formats** %6, align 8
  %18 = getelementptr inbounds %struct.va_image_formats, %struct.va_image_formats* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %16, %2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %3, align 8
  br label %55

25:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %51, %25
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.va_image_formats*, %struct.va_image_formats** %6, align 8
  %29 = getelementptr inbounds %struct.va_image_formats, %struct.va_image_formats* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %26
  %33 = load %struct.va_image_formats*, %struct.va_image_formats** %6, align 8
  %34 = getelementptr inbounds %struct.va_image_formats, %struct.va_image_formats* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %32
  %44 = load %struct.va_image_formats*, %struct.va_image_formats** %6, align 8
  %45 = getelementptr inbounds %struct.va_image_formats, %struct.va_image_formats* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  store %struct.TYPE_3__* %49, %struct.TYPE_3__** %3, align 8
  br label %55

50:                                               ; preds = %32
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %26

54:                                               ; preds = %26
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %3, align 8
  br label %55

55:                                               ; preds = %54, %43, %24
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  ret %struct.TYPE_3__* %56
}

declare dso_local i32 @va_fourcc_from_imgfmt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
