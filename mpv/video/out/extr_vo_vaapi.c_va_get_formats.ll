; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_va_get_formats.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_va_get_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.va_image_formats = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.priv = type { %struct.va_image_formats*, i32 }

@VAImageFormat = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"vaQueryImageFormats()\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%d image formats available:\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@formats = common dso_local global %struct.va_image_formats* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.priv*)* @va_get_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @va_get_formats(%struct.priv* %0) #0 {
  %2 = alloca %struct.priv*, align 8
  %3 = alloca %struct.va_image_formats*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.priv* %0, %struct.priv** %2, align 8
  %6 = load %struct.priv*, %struct.priv** %2, align 8
  %7 = load %struct.va_image_formats*, %struct.va_image_formats** %3, align 8
  %8 = ptrtoint %struct.va_image_formats* %7 to i32
  %9 = call %struct.va_image_formats* @talloc_ptrtype(%struct.priv* %6, i32 %8)
  store %struct.va_image_formats* %9, %struct.va_image_formats** %3, align 8
  %10 = load %struct.priv*, %struct.priv** %2, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @vaMaxNumImageFormats(i32 %12)
  %14 = load %struct.va_image_formats*, %struct.va_image_formats** %3, align 8
  %15 = getelementptr inbounds %struct.va_image_formats, %struct.va_image_formats* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.va_image_formats*, %struct.va_image_formats** %3, align 8
  %17 = load i32, i32* @VAImageFormat, align 4
  %18 = load %struct.va_image_formats*, %struct.va_image_formats** %3, align 8
  %19 = getelementptr inbounds %struct.va_image_formats, %struct.va_image_formats* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_3__* @talloc_array(%struct.va_image_formats* %16, i32 %17, i32 %20)
  %22 = load %struct.va_image_formats*, %struct.va_image_formats** %3, align 8
  %23 = getelementptr inbounds %struct.va_image_formats, %struct.va_image_formats* %22, i32 0, i32 1
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %23, align 8
  %24 = load %struct.priv*, %struct.priv** %2, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.va_image_formats*, %struct.va_image_formats** %3, align 8
  %28 = getelementptr inbounds %struct.va_image_formats, %struct.va_image_formats* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load %struct.va_image_formats*, %struct.va_image_formats** %3, align 8
  %31 = getelementptr inbounds %struct.va_image_formats, %struct.va_image_formats* %30, i32 0, i32 0
  %32 = call i32 @vaQueryImageFormats(i32 %26, %struct.TYPE_3__* %29, i32* %31)
  store i32 %32, i32* %4, align 4
  %33 = load %struct.priv*, %struct.priv** %2, align 8
  %34 = call i32 @CHECK_VA_STATUS(%struct.priv* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %1
  br label %68

37:                                               ; preds = %1
  %38 = load %struct.priv*, %struct.priv** %2, align 8
  %39 = load %struct.va_image_formats*, %struct.va_image_formats** %3, align 8
  %40 = getelementptr inbounds %struct.va_image_formats, %struct.va_image_formats* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @MP_VERBOSE(%struct.priv* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %61, %37
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.va_image_formats*, %struct.va_image_formats** %3, align 8
  %46 = getelementptr inbounds %struct.va_image_formats, %struct.va_image_formats* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load %struct.priv*, %struct.priv** %2, align 8
  %51 = load %struct.va_image_formats*, %struct.va_image_formats** %3, align 8
  %52 = getelementptr inbounds %struct.va_image_formats, %struct.va_image_formats* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @mp_tag_str(i32 %58)
  %60 = call i32 @MP_VERBOSE(%struct.priv* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %43

64:                                               ; preds = %43
  %65 = load %struct.va_image_formats*, %struct.va_image_formats** %3, align 8
  %66 = load %struct.priv*, %struct.priv** %2, align 8
  %67 = getelementptr inbounds %struct.priv, %struct.priv* %66, i32 0, i32 0
  store %struct.va_image_formats* %65, %struct.va_image_formats** %67, align 8
  br label %68

68:                                               ; preds = %64, %36
  ret void
}

declare dso_local %struct.va_image_formats* @talloc_ptrtype(%struct.priv*, i32) #1

declare dso_local i32 @vaMaxNumImageFormats(i32) #1

declare dso_local %struct.TYPE_3__* @talloc_array(%struct.va_image_formats*, i32, i32) #1

declare dso_local i32 @vaQueryImageFormats(i32, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @CHECK_VA_STATUS(%struct.priv*, i8*) #1

declare dso_local i32 @MP_VERBOSE(%struct.priv*, i8*, i32) #1

declare dso_local i32 @mp_tag_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
