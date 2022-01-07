; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_file_get_offset.c__zip_file_get_offset.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_file_get_offset.c__zip_file_get_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.zip_error = type { i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@ZIP_ER_SEEK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ZIP_EF_LOCAL = common dso_local global i32 0, align 4
@ZIP_OFF_MAX = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_zip_file_get_offset(%struct.zip* %0, i64 %1, %struct.zip_error* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.zip*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.zip_error*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.zip* %0, %struct.zip** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.zip_error* %2, %struct.zip_error** %7, align 8
  %10 = load %struct.zip*, %struct.zip** %5, align 8
  %11 = getelementptr inbounds %struct.zip, %struct.zip* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct.zip*, %struct.zip** %5, align 8
  %20 = getelementptr inbounds %struct.zip, %struct.zip* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @SEEK_SET, align 4
  %25 = call i64 @fseeko(i32 %21, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.zip_error*, %struct.zip_error** %7, align 8
  %29 = load i32, i32* @ZIP_ER_SEEK, align 4
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @_zip_error_set(%struct.zip_error* %28, i32 %29, i32 %30)
  store i64 0, i64* %4, align 8
  br label %56

32:                                               ; preds = %3
  %33 = load %struct.zip*, %struct.zip** %5, align 8
  %34 = getelementptr inbounds %struct.zip, %struct.zip* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ZIP_EF_LOCAL, align 4
  %37 = load %struct.zip_error*, %struct.zip_error** %7, align 8
  %38 = call i64 @_zip_dirent_size(i32 %35, i32 %36, %struct.zip_error* %37)
  store i64 %38, i64* %9, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i64 0, i64* %4, align 8
  br label %56

41:                                               ; preds = %32
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %42, %43
  %45 = load i64, i64* @ZIP_OFF_MAX, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.zip_error*, %struct.zip_error** %7, align 8
  %49 = load i32, i32* @ZIP_ER_SEEK, align 4
  %50 = load i32, i32* @EFBIG, align 4
  %51 = call i32 @_zip_error_set(%struct.zip_error* %48, i32 %49, i32 %50)
  store i64 0, i64* %4, align 8
  br label %56

52:                                               ; preds = %41
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %53, %54
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %52, %47, %40, %27
  %57 = load i64, i64* %4, align 8
  ret i64 %57
}

declare dso_local i64 @fseeko(i32, i32, i32) #1

declare dso_local i32 @_zip_error_set(%struct.zip_error*, i32, i32) #1

declare dso_local i64 @_zip_dirent_size(i32, i32, %struct.zip_error*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
