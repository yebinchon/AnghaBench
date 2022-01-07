; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_open.c_zip_source_open.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_open.c_zip_source_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_source = type { i32, i8*, %struct.zip_source*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (i32, i32*, i32, i32)*, i64 (%struct.zip_source.0*, i32, i32*, i32, i32)* }
%struct.zip_source.0 = type opaque

@ZIP_LES_INVAL = common dso_local global i8* null, align 8
@ZIP_SOURCE_OPEN = common dso_local global i32 0, align 4
@ZIP_LES_LOWER = common dso_local global i8* null, align 8
@ZIP_SOURCE_ERR_LOWER = common dso_local global i64 0, align 8
@ZIP_LES_UPPER = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zip_source_open(%struct.zip_source* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zip_source*, align 8
  %4 = alloca i64, align 8
  store %struct.zip_source* %0, %struct.zip_source** %3, align 8
  %5 = load %struct.zip_source*, %struct.zip_source** %3, align 8
  %6 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i8*, i8** @ZIP_LES_INVAL, align 8
  %11 = load %struct.zip_source*, %struct.zip_source** %3, align 8
  %12 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  store i32 -1, i32* %2, align 4
  br label %78

13:                                               ; preds = %1
  %14 = load %struct.zip_source*, %struct.zip_source** %3, align 8
  %15 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %14, i32 0, i32 2
  %16 = load %struct.zip_source*, %struct.zip_source** %15, align 8
  %17 = icmp eq %struct.zip_source* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load %struct.zip_source*, %struct.zip_source** %3, align 8
  %20 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64 (i32, i32*, i32, i32)*, i64 (i32, i32*, i32, i32)** %21, align 8
  %23 = load %struct.zip_source*, %struct.zip_source** %3, align 8
  %24 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ZIP_SOURCE_OPEN, align 4
  %27 = call i64 %22(i32 %25, i32* null, i32 0, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %78

30:                                               ; preds = %18
  br label %75

31:                                               ; preds = %13
  %32 = load %struct.zip_source*, %struct.zip_source** %3, align 8
  %33 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %32, i32 0, i32 2
  %34 = load %struct.zip_source*, %struct.zip_source** %33, align 8
  %35 = call i32 @zip_source_open(%struct.zip_source* %34)
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i8*, i8** @ZIP_LES_LOWER, align 8
  %39 = load %struct.zip_source*, %struct.zip_source** %3, align 8
  %40 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  store i32 -1, i32* %2, align 4
  br label %78

41:                                               ; preds = %31
  %42 = load %struct.zip_source*, %struct.zip_source** %3, align 8
  %43 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64 (%struct.zip_source.0*, i32, i32*, i32, i32)*, i64 (%struct.zip_source.0*, i32, i32*, i32, i32)** %44, align 8
  %46 = load %struct.zip_source*, %struct.zip_source** %3, align 8
  %47 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %46, i32 0, i32 2
  %48 = load %struct.zip_source*, %struct.zip_source** %47, align 8
  %49 = bitcast %struct.zip_source* %48 to %struct.zip_source.0*
  %50 = load %struct.zip_source*, %struct.zip_source** %3, align 8
  %51 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ZIP_SOURCE_OPEN, align 4
  %54 = call i64 %45(%struct.zip_source.0* %49, i32 %52, i32* null, i32 0, i32 %53)
  store i64 %54, i64* %4, align 8
  %55 = load i64, i64* %4, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %41
  %58 = load %struct.zip_source*, %struct.zip_source** %3, align 8
  %59 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %58, i32 0, i32 2
  %60 = load %struct.zip_source*, %struct.zip_source** %59, align 8
  %61 = call i32 @zip_source_close(%struct.zip_source* %60)
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* @ZIP_SOURCE_ERR_LOWER, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load i8*, i8** @ZIP_LES_LOWER, align 8
  %67 = load %struct.zip_source*, %struct.zip_source** %3, align 8
  %68 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  br label %73

69:                                               ; preds = %57
  %70 = load i8*, i8** @ZIP_LES_UPPER, align 8
  %71 = load %struct.zip_source*, %struct.zip_source** %3, align 8
  %72 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %69, %65
  store i32 -1, i32* %2, align 4
  br label %78

74:                                               ; preds = %41
  br label %75

75:                                               ; preds = %74, %30
  %76 = load %struct.zip_source*, %struct.zip_source** %3, align 8
  %77 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %75, %73, %37, %29, %9
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @zip_source_close(%struct.zip_source*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
