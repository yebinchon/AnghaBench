; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/image-source/extr_image-source.c_image_source_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/image-source/extr_image-source.c_image_source_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_source = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"unload\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @image_source_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @image_source_update(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.image_source*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.image_source*
  store %struct.image_source* %9, %struct.image_source** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i8* @obs_data_get_string(i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @obs_data_get_bool(i32* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %13, i32* %7, align 4
  %14 = load %struct.image_source*, %struct.image_source** %5, align 8
  %15 = getelementptr inbounds %struct.image_source, %struct.image_source* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.image_source*, %struct.image_source** %5, align 8
  %20 = getelementptr inbounds %struct.image_source, %struct.image_source* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bfree(i32 %21)
  br label %23

23:                                               ; preds = %18, %2
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @bstrdup(i8* %24)
  %26 = load %struct.image_source*, %struct.image_source** %5, align 8
  %27 = getelementptr inbounds %struct.image_source, %struct.image_source* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = load %struct.image_source*, %struct.image_source** %5, align 8
  %33 = getelementptr inbounds %struct.image_source, %struct.image_source* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.image_source*, %struct.image_source** %5, align 8
  %35 = getelementptr inbounds %struct.image_source, %struct.image_source* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %23
  %39 = load %struct.image_source*, %struct.image_source** %5, align 8
  %40 = getelementptr inbounds %struct.image_source, %struct.image_source* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @obs_source_showing(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %23
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @image_source_load(i8* %45)
  br label %50

47:                                               ; preds = %38
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @image_source_unload(i8* %48)
  br label %50

50:                                               ; preds = %47, %44
  ret void
}

declare dso_local i8* @obs_data_get_string(i32*, i8*) #1

declare dso_local i32 @obs_data_get_bool(i32*, i8*) #1

declare dso_local i32 @bfree(i32) #1

declare dso_local i32 @bstrdup(i8*) #1

declare dso_local i64 @obs_source_showing(i32) #1

declare dso_local i32 @image_source_load(i8*) #1

declare dso_local i32 @image_source_unload(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
