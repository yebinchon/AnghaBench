; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_error.c_zip_source_error.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_error.c_zip_source_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_source = type { i32, i32, %struct.zip_source*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (i32, i32*, i32, i32)*, i32 (%struct.zip_source.0*, i32, i32*, i32, i32)* }
%struct.zip_source.0 = type opaque

@ZIP_SOURCE_ERROR = common dso_local global i32 0, align 4
@ZIP_ER_INTERNAL = common dso_local global i32 0, align 4
@ZIP_ER_INVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zip_source_error(%struct.zip_source* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.zip_source*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [2 x i32], align 4
  store %struct.zip_source* %0, %struct.zip_source** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %9 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %8, i32 0, i32 2
  %10 = load %struct.zip_source*, %struct.zip_source** %9, align 8
  %11 = icmp eq %struct.zip_source* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %14 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64 (i32, i32*, i32, i32)*, i64 (i32, i32*, i32, i32)** %15, align 8
  %17 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %18 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %21 = load i32, i32* @ZIP_SOURCE_ERROR, align 4
  %22 = call i64 %16(i32 %19, i32* %20, i32 8, i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %12
  %25 = load i32, i32* @ZIP_ER_INTERNAL, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %12
  br label %72

29:                                               ; preds = %3
  %30 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %31 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %67 [
    i32 129, label %33
    i32 131, label %36
    i32 130, label %40
    i32 128, label %46
  ]

33:                                               ; preds = %29
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %35, align 4
  br label %71

36:                                               ; preds = %29
  %37 = load i32, i32* @ZIP_ER_INVAL, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %39, align 4
  br label %71

40:                                               ; preds = %29
  %41 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %42 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %41, i32 0, i32 2
  %43 = load %struct.zip_source*, %struct.zip_source** %42, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i32*, i32** %6, align 8
  call void @zip_source_error(%struct.zip_source* %43, i32* %44, i32* %45)
  br label %86

46:                                               ; preds = %29
  %47 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %48 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32 (%struct.zip_source.0*, i32, i32*, i32, i32)*, i32 (%struct.zip_source.0*, i32, i32*, i32, i32)** %49, align 8
  %51 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %52 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %51, i32 0, i32 2
  %53 = load %struct.zip_source*, %struct.zip_source** %52, align 8
  %54 = bitcast %struct.zip_source* %53 to %struct.zip_source.0*
  %55 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %56 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %59 = load i32, i32* @ZIP_SOURCE_ERROR, align 4
  %60 = call i32 %50(%struct.zip_source.0* %54, i32 %57, i32* %58, i32 8, i32 %59)
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %46
  %63 = load i32, i32* @ZIP_ER_INTERNAL, align 4
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %46
  br label %71

67:                                               ; preds = %29
  %68 = load i32, i32* @ZIP_ER_INTERNAL, align 4
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %66, %36, %33
  br label %72

72:                                               ; preds = %71, %28
  %73 = load i32*, i32** %5, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %5, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %72
  %80 = load i32*, i32** %6, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %6, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %40, %82, %79
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
