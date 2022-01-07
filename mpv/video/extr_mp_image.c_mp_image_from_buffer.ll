; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_from_buffer.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_from_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_image* @mp_image_from_buffer(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i8* %6, void (i8*, i32*)* %7) #0 {
  %9 = alloca %struct.mp_image*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca void (i8*, i32*)*, align 8
  %18 = alloca %struct.mp_image*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store void (i8*, i32*)* %7, void (i8*, i32*)** %17, align 8
  %19 = call %struct.mp_image* @mp_image_new_dummy_ref(i32* null)
  store %struct.mp_image* %19, %struct.mp_image** %18, align 8
  %20 = load %struct.mp_image*, %struct.mp_image** %18, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @mp_image_setfmt(%struct.mp_image* %20, i32 %21)
  %23 = load %struct.mp_image*, %struct.mp_image** %18, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @mp_image_set_size(%struct.mp_image* %23, i32 %24, i32 %25)
  %27 = load %struct.mp_image*, %struct.mp_image** %18, align 8
  %28 = load i32, i32* %13, align 4
  %29 = load i32*, i32** %14, align 8
  %30 = load i32, i32* %15, align 4
  %31 = call i32 @mp_image_fill_alloc(%struct.mp_image* %27, i32 %28, i32* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %8
  br label %53

34:                                               ; preds = %8
  %35 = load i32*, i32** %14, align 8
  %36 = load i32, i32* %15, align 4
  %37 = load void (i8*, i32*)*, void (i8*, i32*)** %17, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = call i32 @av_buffer_create(i32* %35, i32 %36, void (i8*, i32*)* %37, i8* %38, i32 0)
  %40 = load %struct.mp_image*, %struct.mp_image** %18, align 8
  %41 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %39, i32* %43, align 4
  %44 = load %struct.mp_image*, %struct.mp_image** %18, align 8
  %45 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %34
  br label %53

51:                                               ; preds = %34
  %52 = load %struct.mp_image*, %struct.mp_image** %18, align 8
  store %struct.mp_image* %52, %struct.mp_image** %9, align 8
  br label %56

53:                                               ; preds = %50, %33
  %54 = load %struct.mp_image*, %struct.mp_image** %18, align 8
  %55 = call i32 @talloc_free(%struct.mp_image* %54)
  store %struct.mp_image* null, %struct.mp_image** %9, align 8
  br label %56

56:                                               ; preds = %53, %51
  %57 = load %struct.mp_image*, %struct.mp_image** %9, align 8
  ret %struct.mp_image* %57
}

declare dso_local %struct.mp_image* @mp_image_new_dummy_ref(i32*) #1

declare dso_local i32 @mp_image_setfmt(%struct.mp_image*, i32) #1

declare dso_local i32 @mp_image_set_size(%struct.mp_image*, i32, i32) #1

declare dso_local i32 @mp_image_fill_alloc(%struct.mp_image*, i32, i32*, i32) #1

declare dso_local i32 @av_buffer_create(i32*, i32, void (i8*, i32*)*, i8*, i32) #1

declare dso_local i32 @talloc_free(%struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
