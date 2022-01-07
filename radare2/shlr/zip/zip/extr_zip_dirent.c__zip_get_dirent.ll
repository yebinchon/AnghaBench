; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_get_dirent.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_get_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_dirent = type { i32 }
%struct.zip = type { i64, %struct.TYPE_2__*, %struct.zip_error }
%struct.TYPE_2__ = type { %struct.zip_dirent*, %struct.zip_dirent*, i64 }
%struct.zip_error = type { i32 }

@ZIP_ER_INVAL = common dso_local global i32 0, align 4
@ZIP_FL_UNCHANGED = common dso_local global i32 0, align 4
@ZIP_ER_DELETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zip_dirent* @_zip_get_dirent(%struct.zip* %0, i64 %1, i32 %2, %struct.zip_error* %3) #0 {
  %5 = alloca %struct.zip_dirent*, align 8
  %6 = alloca %struct.zip*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.zip_error*, align 8
  store %struct.zip* %0, %struct.zip** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.zip_error* %3, %struct.zip_error** %9, align 8
  %10 = load %struct.zip_error*, %struct.zip_error** %9, align 8
  %11 = icmp eq %struct.zip_error* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load %struct.zip*, %struct.zip** %6, align 8
  %14 = getelementptr inbounds %struct.zip, %struct.zip* %13, i32 0, i32 2
  store %struct.zip_error* %14, %struct.zip_error** %9, align 8
  br label %15

15:                                               ; preds = %12, %4
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.zip*, %struct.zip** %6, align 8
  %18 = getelementptr inbounds %struct.zip, %struct.zip* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp uge i64 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.zip_error*, %struct.zip_error** %9, align 8
  %23 = load i32, i32* @ZIP_ER_INVAL, align 4
  %24 = call i32 @_zip_error_set(%struct.zip_error* %22, i32 %23, i32 0)
  store %struct.zip_dirent* null, %struct.zip_dirent** %5, align 8
  br label %86

25:                                               ; preds = %15
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @ZIP_FL_UNCHANGED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %25
  %31 = load %struct.zip*, %struct.zip** %6, align 8
  %32 = getelementptr inbounds %struct.zip, %struct.zip* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.zip_dirent*, %struct.zip_dirent** %36, align 8
  %38 = icmp eq %struct.zip_dirent* %37, null
  br i1 %38, label %39, label %78

39:                                               ; preds = %30, %25
  %40 = load %struct.zip*, %struct.zip** %6, align 8
  %41 = getelementptr inbounds %struct.zip, %struct.zip* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load %struct.zip_dirent*, %struct.zip_dirent** %45, align 8
  %47 = icmp eq %struct.zip_dirent* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load %struct.zip_error*, %struct.zip_error** %9, align 8
  %50 = load i32, i32* @ZIP_ER_INVAL, align 4
  %51 = call i32 @_zip_error_set(%struct.zip_error* %49, i32 %50, i32 0)
  store %struct.zip_dirent* null, %struct.zip_dirent** %5, align 8
  br label %86

52:                                               ; preds = %39
  %53 = load %struct.zip*, %struct.zip** %6, align 8
  %54 = getelementptr inbounds %struct.zip, %struct.zip* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %52
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @ZIP_FL_UNCHANGED, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.zip_error*, %struct.zip_error** %9, align 8
  %68 = load i32, i32* @ZIP_ER_DELETED, align 4
  %69 = call i32 @_zip_error_set(%struct.zip_error* %67, i32 %68, i32 0)
  store %struct.zip_dirent* null, %struct.zip_dirent** %5, align 8
  br label %86

70:                                               ; preds = %61, %52
  %71 = load %struct.zip*, %struct.zip** %6, align 8
  %72 = getelementptr inbounds %struct.zip, %struct.zip* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load %struct.zip_dirent*, %struct.zip_dirent** %76, align 8
  store %struct.zip_dirent* %77, %struct.zip_dirent** %5, align 8
  br label %86

78:                                               ; preds = %30
  %79 = load %struct.zip*, %struct.zip** %6, align 8
  %80 = getelementptr inbounds %struct.zip, %struct.zip* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load %struct.zip_dirent*, %struct.zip_dirent** %84, align 8
  store %struct.zip_dirent* %85, %struct.zip_dirent** %5, align 8
  br label %86

86:                                               ; preds = %78, %70, %66, %48, %21
  %87 = load %struct.zip_dirent*, %struct.zip_dirent** %5, align 8
  ret %struct.zip_dirent* %87
}

declare dso_local i32 @_zip_error_set(%struct.zip_error*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
