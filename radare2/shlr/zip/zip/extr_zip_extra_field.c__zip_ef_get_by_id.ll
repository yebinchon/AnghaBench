; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_extra_field.c__zip_ef_get_by_id.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_extra_field.c__zip_ef_get_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_extra_field = type { i64, i32, i64, i8*, %struct.zip_extra_field* }
%struct.zip_error = type { i32 }

@_zip_ef_get_by_id.empty = internal constant [1 x i8] zeroinitializer, align 1
@ZIP_EF_BOTH = common dso_local global i32 0, align 4
@ZIP_ER_NOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_zip_ef_get_by_id(%struct.zip_extra_field* %0, i64* %1, i64 %2, i64 %3, i32 %4, %struct.zip_error* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.zip_extra_field*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.zip_error*, align 8
  %14 = alloca i32, align 4
  store %struct.zip_extra_field* %0, %struct.zip_extra_field** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.zip_error* %5, %struct.zip_error** %13, align 8
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %60, %6
  %16 = load %struct.zip_extra_field*, %struct.zip_extra_field** %8, align 8
  %17 = icmp ne %struct.zip_extra_field* %16, null
  br i1 %17, label %18, label %64

18:                                               ; preds = %15
  %19 = load %struct.zip_extra_field*, %struct.zip_extra_field** %8, align 8
  %20 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %18
  %25 = load %struct.zip_extra_field*, %struct.zip_extra_field** %8, align 8
  %26 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %12, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @ZIP_EF_BOTH, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %24
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %11, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %14, align 4
  br label %60

41:                                               ; preds = %33
  %42 = load i64*, i64** %9, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.zip_extra_field*, %struct.zip_extra_field** %8, align 8
  %46 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %9, align 8
  store i64 %47, i64* %48, align 8
  br label %49

49:                                               ; preds = %44, %41
  %50 = load %struct.zip_extra_field*, %struct.zip_extra_field** %8, align 8
  %51 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.zip_extra_field*, %struct.zip_extra_field** %8, align 8
  %56 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %55, i32 0, i32 3
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %7, align 8
  br label %68

58:                                               ; preds = %49
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @_zip_ef_get_by_id.empty, i64 0, i64 0), i8** %7, align 8
  br label %68

59:                                               ; preds = %24, %18
  br label %60

60:                                               ; preds = %59, %38
  %61 = load %struct.zip_extra_field*, %struct.zip_extra_field** %8, align 8
  %62 = getelementptr inbounds %struct.zip_extra_field, %struct.zip_extra_field* %61, i32 0, i32 4
  %63 = load %struct.zip_extra_field*, %struct.zip_extra_field** %62, align 8
  store %struct.zip_extra_field* %63, %struct.zip_extra_field** %8, align 8
  br label %15

64:                                               ; preds = %15
  %65 = load %struct.zip_error*, %struct.zip_error** %13, align 8
  %66 = load i32, i32* @ZIP_ER_NOENT, align 4
  %67 = call i32 @_zip_error_set(%struct.zip_error* %65, i32 %66, i32 0)
  store i8* null, i8** %7, align 8
  br label %68

68:                                               ; preds = %64, %58, %54
  %69 = load i8*, i8** %7, align 8
  ret i8* %69
}

declare dso_local i32 @_zip_error_set(%struct.zip_error*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
