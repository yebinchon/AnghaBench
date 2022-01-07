; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_metafile.c_METAFILE_Free.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_metafile.c_METAFILE_Free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32* }

@.str = private unnamed_addr constant [33 x i8] c"metafile closed while recording\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @METAFILE_Free(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @heap_free(i32 %6)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @CloseEnhMetaFile(i32 %10)
  %12 = call i32 @DeleteEnhMetaFile(i32 %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @DeleteEnhMetaFile(i32 %20)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* @TRUE, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 8
  br label %38

38:                                               ; preds = %27, %22
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @IStream_Release(i64 %46)
  br label %48

48:                                               ; preds = %43, %38
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %60, %48
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ARRAY_SIZE(i32 %53)
  %55 = icmp ult i32 %50, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @metafile_free_object_table_entry(%struct.TYPE_6__* %57, i32 %58)
  br label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %3, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %49

63:                                               ; preds = %49
  ret void
}

declare dso_local i32 @heap_free(i32) #1

declare dso_local i32 @DeleteEnhMetaFile(i32) #1

declare dso_local i32 @CloseEnhMetaFile(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @IStream_Release(i64) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @metafile_free_object_table_entry(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
