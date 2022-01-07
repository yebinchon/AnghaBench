; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdip_load_image_from_memory.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdip_load_image_from_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_image = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nk_gdip_load_image_from_memory(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.nk_image, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.TYPE_7__* @SHCreateMemStream(i32* %10, i32 %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %8, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = call i32 @nk_image_id(i32 0)
  %17 = getelementptr inbounds %struct.nk_image, %struct.nk_image* %3, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  br label %37

18:                                               ; preds = %2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = call i64 @GdipLoadImageFromStream(%struct.TYPE_7__* %19, i32** %6)
  store i64 %20, i64* %7, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %24, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = call i32 %25(%struct.TYPE_7__* %26)
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = call i32 @nk_image_id(i32 0)
  %32 = getelementptr inbounds %struct.nk_image, %struct.nk_image* %3, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  br label %37

33:                                               ; preds = %18
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @nk_gdip_image_to_nk(i32* %34)
  %36 = getelementptr inbounds %struct.nk_image, %struct.nk_image* %3, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %30, %15
  %38 = getelementptr inbounds %struct.nk_image, %struct.nk_image* %3, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_7__* @SHCreateMemStream(i32*, i32) #1

declare dso_local i32 @nk_image_id(i32) #1

declare dso_local i64 @GdipLoadImageFromStream(%struct.TYPE_7__*, i32**) #1

declare dso_local i32 @nk_gdip_image_to_nk(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
