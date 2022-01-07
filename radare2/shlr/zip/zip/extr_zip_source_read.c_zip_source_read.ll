; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_read.c_zip_source_read.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_read.c_zip_source_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_source = type { i32, i32, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (i32, i8*, i64, i32)*, i32 (i32*, i32, i8*, i64, i32)* }

@ZIP_INT64_MAX = common dso_local global i64 0, align 8
@ZIP_LES_INVAL = common dso_local global i32 0, align 4
@ZIP_SOURCE_READ = common dso_local global i32 0, align 4
@ZIP_SOURCE_ERR_LOWER = common dso_local global i32 0, align 4
@ZIP_LES_LOWER = common dso_local global i32 0, align 4
@ZIP_LES_UPPER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zip_source_read(%struct.zip_source* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zip_source*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.zip_source* %0, %struct.zip_source** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.zip_source*, %struct.zip_source** %5, align 8
  %10 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @ZIP_INT64_MAX, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %7, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i8*, i8** %6, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20, %13, %3
  %24 = load i32, i32* @ZIP_LES_INVAL, align 4
  %25 = load %struct.zip_source*, %struct.zip_source** %5, align 8
  %26 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  store i32 -1, i32* %4, align 4
  br label %76

27:                                               ; preds = %20, %17
  %28 = load %struct.zip_source*, %struct.zip_source** %5, align 8
  %29 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load %struct.zip_source*, %struct.zip_source** %5, align 8
  %34 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (i32, i8*, i64, i32)*, i32 (i32, i8*, i64, i32)** %35, align 8
  %37 = load %struct.zip_source*, %struct.zip_source** %5, align 8
  %38 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i32, i32* @ZIP_SOURCE_READ, align 4
  %43 = call i32 %36(i32 %39, i8* %40, i64 %41, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %76

44:                                               ; preds = %27
  %45 = load %struct.zip_source*, %struct.zip_source** %5, align 8
  %46 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32 (i32*, i32, i8*, i64, i32)*, i32 (i32*, i32, i8*, i64, i32)** %47, align 8
  %49 = load %struct.zip_source*, %struct.zip_source** %5, align 8
  %50 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.zip_source*, %struct.zip_source** %5, align 8
  %53 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i32, i32* @ZIP_SOURCE_READ, align 4
  %58 = call i32 %48(i32* %51, i32 %54, i8* %55, i64 %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %44
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @ZIP_SOURCE_ERR_LOWER, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* @ZIP_LES_LOWER, align 4
  %67 = load %struct.zip_source*, %struct.zip_source** %5, align 8
  %68 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %73

69:                                               ; preds = %61
  %70 = load i32, i32* @ZIP_LES_UPPER, align 4
  %71 = load %struct.zip_source*, %struct.zip_source** %5, align 8
  %72 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %69, %65
  store i32 -1, i32* %4, align 4
  br label %76

74:                                               ; preds = %44
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %73, %32, %23
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
