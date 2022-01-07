; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_fopen_index_encrypted.c__zip_file_new.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_fopen_index_encrypted.c__zip_file_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_file = type { i32*, i64, i32, %struct.zip* }
%struct.zip = type { i64, i64, %struct.zip_file**, i32 }

@ZIP_ER_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zip_file* (%struct.zip*)* @_zip_file_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zip_file* @_zip_file_new(%struct.zip* %0) #0 {
  %2 = alloca %struct.zip_file*, align 8
  %3 = alloca %struct.zip*, align 8
  %4 = alloca %struct.zip_file*, align 8
  %5 = alloca %struct.zip_file**, align 8
  %6 = alloca i32, align 4
  store %struct.zip* %0, %struct.zip** %3, align 8
  %7 = call i64 @malloc(i32 32)
  %8 = inttoptr i64 %7 to %struct.zip_file*
  store %struct.zip_file* %8, %struct.zip_file** %4, align 8
  %9 = icmp eq %struct.zip_file* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.zip*, %struct.zip** %3, align 8
  %12 = getelementptr inbounds %struct.zip, %struct.zip* %11, i32 0, i32 3
  %13 = load i32, i32* @ZIP_ER_MEMORY, align 4
  %14 = call i32 @_zip_error_set(i32* %12, i32 %13, i32 0)
  store %struct.zip_file* null, %struct.zip_file** %2, align 8
  br label %77

15:                                               ; preds = %1
  %16 = load %struct.zip*, %struct.zip** %3, align 8
  %17 = getelementptr inbounds %struct.zip, %struct.zip* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  %20 = load %struct.zip*, %struct.zip** %3, align 8
  %21 = getelementptr inbounds %struct.zip, %struct.zip* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %15
  %25 = load %struct.zip*, %struct.zip** %3, align 8
  %26 = getelementptr inbounds %struct.zip, %struct.zip* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 10
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load %struct.zip*, %struct.zip** %3, align 8
  %31 = getelementptr inbounds %struct.zip, %struct.zip* %30, i32 0, i32 2
  %32 = load %struct.zip_file**, %struct.zip_file*** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = call i64 @realloc(%struct.zip_file** %32, i32 %36)
  %38 = inttoptr i64 %37 to %struct.zip_file**
  store %struct.zip_file** %38, %struct.zip_file*** %5, align 8
  %39 = load %struct.zip_file**, %struct.zip_file*** %5, align 8
  %40 = icmp eq %struct.zip_file** %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %24
  %42 = load %struct.zip*, %struct.zip** %3, align 8
  %43 = getelementptr inbounds %struct.zip, %struct.zip* %42, i32 0, i32 3
  %44 = load i32, i32* @ZIP_ER_MEMORY, align 4
  %45 = call i32 @_zip_error_set(i32* %43, i32 %44, i32 0)
  %46 = load %struct.zip_file*, %struct.zip_file** %4, align 8
  %47 = call i32 @free(%struct.zip_file* %46)
  store %struct.zip_file* null, %struct.zip_file** %2, align 8
  br label %77

48:                                               ; preds = %24
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = load %struct.zip*, %struct.zip** %3, align 8
  %52 = getelementptr inbounds %struct.zip, %struct.zip* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.zip_file**, %struct.zip_file*** %5, align 8
  %54 = load %struct.zip*, %struct.zip** %3, align 8
  %55 = getelementptr inbounds %struct.zip, %struct.zip* %54, i32 0, i32 2
  store %struct.zip_file** %53, %struct.zip_file*** %55, align 8
  br label %56

56:                                               ; preds = %48, %15
  %57 = load %struct.zip_file*, %struct.zip_file** %4, align 8
  %58 = load %struct.zip*, %struct.zip** %3, align 8
  %59 = getelementptr inbounds %struct.zip, %struct.zip* %58, i32 0, i32 2
  %60 = load %struct.zip_file**, %struct.zip_file*** %59, align 8
  %61 = load %struct.zip*, %struct.zip** %3, align 8
  %62 = getelementptr inbounds %struct.zip, %struct.zip* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = getelementptr inbounds %struct.zip_file*, %struct.zip_file** %60, i64 %63
  store %struct.zip_file* %57, %struct.zip_file** %65, align 8
  %66 = load %struct.zip*, %struct.zip** %3, align 8
  %67 = load %struct.zip_file*, %struct.zip_file** %4, align 8
  %68 = getelementptr inbounds %struct.zip_file, %struct.zip_file* %67, i32 0, i32 3
  store %struct.zip* %66, %struct.zip** %68, align 8
  %69 = load %struct.zip_file*, %struct.zip_file** %4, align 8
  %70 = getelementptr inbounds %struct.zip_file, %struct.zip_file* %69, i32 0, i32 2
  %71 = call i32 @_zip_error_init(i32* %70)
  %72 = load %struct.zip_file*, %struct.zip_file** %4, align 8
  %73 = getelementptr inbounds %struct.zip_file, %struct.zip_file* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load %struct.zip_file*, %struct.zip_file** %4, align 8
  %75 = getelementptr inbounds %struct.zip_file, %struct.zip_file* %74, i32 0, i32 0
  store i32* null, i32** %75, align 8
  %76 = load %struct.zip_file*, %struct.zip_file** %4, align 8
  store %struct.zip_file* %76, %struct.zip_file** %2, align 8
  br label %77

77:                                               ; preds = %56, %41, %10
  %78 = load %struct.zip_file*, %struct.zip_file** %2, align 8
  ret %struct.zip_file* %78
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @_zip_error_set(i32*, i32, i32) #1

declare dso_local i64 @realloc(%struct.zip_file**, i32) #1

declare dso_local i32 @free(%struct.zip_file*) #1

declare dso_local i32 @_zip_error_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
