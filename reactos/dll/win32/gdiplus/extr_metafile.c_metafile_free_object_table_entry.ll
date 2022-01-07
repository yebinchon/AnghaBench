; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_metafile.c_metafile_free_object_table_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_metafile.c_metafile_free_object_table_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.emfplus_object* }
%struct.emfplus_object = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"not implemented for object type %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64)* @metafile_free_object_table_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @metafile_free_object_table_entry(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.emfplus_object*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.emfplus_object*, %struct.emfplus_object** %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.emfplus_object, %struct.emfplus_object* %8, i64 %9
  store %struct.emfplus_object* %10, %struct.emfplus_object** %5, align 8
  %11 = load %struct.emfplus_object*, %struct.emfplus_object** %5, align 8
  %12 = getelementptr inbounds %struct.emfplus_object, %struct.emfplus_object* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %57 [
    i32 131, label %14
    i32 135, label %15
    i32 129, label %21
    i32 130, label %27
    i32 128, label %33
    i32 133, label %39
    i32 134, label %45
    i32 132, label %51
  ]

14:                                               ; preds = %2
  br label %62

15:                                               ; preds = %2
  %16 = load %struct.emfplus_object*, %struct.emfplus_object** %5, align 8
  %17 = getelementptr inbounds %struct.emfplus_object, %struct.emfplus_object* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @GdipDeleteBrush(i32 %19)
  br label %62

21:                                               ; preds = %2
  %22 = load %struct.emfplus_object*, %struct.emfplus_object** %5, align 8
  %23 = getelementptr inbounds %struct.emfplus_object, %struct.emfplus_object* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @GdipDeletePen(i32 %25)
  br label %62

27:                                               ; preds = %2
  %28 = load %struct.emfplus_object*, %struct.emfplus_object** %5, align 8
  %29 = getelementptr inbounds %struct.emfplus_object, %struct.emfplus_object* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @GdipDeletePath(i32 %31)
  br label %62

33:                                               ; preds = %2
  %34 = load %struct.emfplus_object*, %struct.emfplus_object** %5, align 8
  %35 = getelementptr inbounds %struct.emfplus_object, %struct.emfplus_object* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @GdipDeleteRegion(i32 %37)
  br label %62

39:                                               ; preds = %2
  %40 = load %struct.emfplus_object*, %struct.emfplus_object** %5, align 8
  %41 = getelementptr inbounds %struct.emfplus_object, %struct.emfplus_object* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @GdipDisposeImage(i32 %43)
  br label %62

45:                                               ; preds = %2
  %46 = load %struct.emfplus_object*, %struct.emfplus_object** %5, align 8
  %47 = getelementptr inbounds %struct.emfplus_object, %struct.emfplus_object* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @GdipDeleteFont(i32 %49)
  br label %62

51:                                               ; preds = %2
  %52 = load %struct.emfplus_object*, %struct.emfplus_object** %5, align 8
  %53 = getelementptr inbounds %struct.emfplus_object, %struct.emfplus_object* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @GdipDisposeImageAttributes(i32 %55)
  br label %62

57:                                               ; preds = %2
  %58 = load %struct.emfplus_object*, %struct.emfplus_object** %5, align 8
  %59 = getelementptr inbounds %struct.emfplus_object, %struct.emfplus_object* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @FIXME(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %68

62:                                               ; preds = %51, %45, %39, %33, %27, %21, %15, %14
  %63 = load %struct.emfplus_object*, %struct.emfplus_object** %5, align 8
  %64 = getelementptr inbounds %struct.emfplus_object, %struct.emfplus_object* %63, i32 0, i32 0
  store i32 131, i32* %64, align 8
  %65 = load %struct.emfplus_object*, %struct.emfplus_object** %5, align 8
  %66 = getelementptr inbounds %struct.emfplus_object, %struct.emfplus_object* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %62, %57
  ret void
}

declare dso_local i32 @GdipDeleteBrush(i32) #1

declare dso_local i32 @GdipDeletePen(i32) #1

declare dso_local i32 @GdipDeletePath(i32) #1

declare dso_local i32 @GdipDeleteRegion(i32) #1

declare dso_local i32 @GdipDisposeImage(i32) #1

declare dso_local i32 @GdipDeleteFont(i32) #1

declare dso_local i32 @GdipDisposeImageAttributes(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
