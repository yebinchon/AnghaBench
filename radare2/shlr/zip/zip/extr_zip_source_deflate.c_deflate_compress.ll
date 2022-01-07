; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_deflate.c_deflate_compress.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_deflate.c_deflate_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_source = type { i32 }
%struct.deflate = type { i32*, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32*, i32, i32*, i32, i32*, i8*, i8* }
%struct.zip_stat = type { i32, i32, i32 }

@Z_NULL = common dso_local global i8* null, align 8
@Z_BEST_COMPRESSION = common dso_local global i32 0, align 4
@Z_DEFLATED = common dso_local global i32 0, align 4
@MAX_WBITS = common dso_local global i32 0, align 4
@Z_DEFAULT_STRATEGY = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@ZIP_ER_ZLIB = common dso_local global i32 0, align 4
@ZIP_CM_DEFLATE = common dso_local global i32 0, align 4
@ZIP_STAT_COMP_METHOD = common dso_local global i32 0, align 4
@ZIP_STAT_COMP_SIZE = common dso_local global i32 0, align 4
@ZIP_ER_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zip_source*, i8*, i8*, i32, i32)* @deflate_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deflate_compress(%struct.zip_source* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.zip_source*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.deflate*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.zip_stat*, align 8
  store %struct.zip_source* %0, %struct.zip_source** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.deflate*
  store %struct.deflate* %16, %struct.deflate** %12, align 8
  %17 = load i32, i32* %11, align 4
  switch i32 %17, label %120 [
    i32 130, label %18
    i32 129, label %67
    i32 133, label %73
    i32 128, label %77
    i32 132, label %111
    i32 131, label %117
  ]

18:                                               ; preds = %5
  %19 = load i8*, i8** @Z_NULL, align 8
  %20 = load %struct.deflate*, %struct.deflate** %12, align 8
  %21 = getelementptr inbounds %struct.deflate, %struct.deflate* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 6
  store i8* %19, i8** %22, align 8
  %23 = load i8*, i8** @Z_NULL, align 8
  %24 = load %struct.deflate*, %struct.deflate** %12, align 8
  %25 = getelementptr inbounds %struct.deflate, %struct.deflate* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 5
  store i8* %23, i8** %26, align 8
  %27 = load %struct.deflate*, %struct.deflate** %12, align 8
  %28 = getelementptr inbounds %struct.deflate, %struct.deflate* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  store i32* null, i32** %29, align 8
  %30 = load %struct.deflate*, %struct.deflate** %12, align 8
  %31 = getelementptr inbounds %struct.deflate, %struct.deflate* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  store i32 0, i32* %32, align 8
  %33 = load %struct.deflate*, %struct.deflate** %12, align 8
  %34 = getelementptr inbounds %struct.deflate, %struct.deflate* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = load %struct.deflate*, %struct.deflate** %12, align 8
  %37 = getelementptr inbounds %struct.deflate, %struct.deflate* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 0, i32* %38, align 8
  %39 = load %struct.deflate*, %struct.deflate** %12, align 8
  %40 = getelementptr inbounds %struct.deflate, %struct.deflate* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  %42 = load %struct.deflate*, %struct.deflate** %12, align 8
  %43 = getelementptr inbounds %struct.deflate, %struct.deflate* %42, i32 0, i32 3
  %44 = load i32, i32* @Z_BEST_COMPRESSION, align 4
  %45 = load i32, i32* @Z_DEFLATED, align 4
  %46 = load i32, i32* @MAX_WBITS, align 4
  %47 = sub nsw i32 0, %46
  %48 = load %struct.deflate*, %struct.deflate** %12, align 8
  %49 = getelementptr inbounds %struct.deflate, %struct.deflate* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @Z_DEFAULT_STRATEGY, align 4
  %52 = call i32 @deflateInit2(%struct.TYPE_3__* %43, i32 %44, i32 %45, i32 %47, i32 %50, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* @Z_OK, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %18
  %56 = load i32, i32* @ZIP_ER_ZLIB, align 4
  %57 = load %struct.deflate*, %struct.deflate** %12, align 8
  %58 = getelementptr inbounds %struct.deflate, %struct.deflate* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.deflate*, %struct.deflate** %12, align 8
  %63 = getelementptr inbounds %struct.deflate, %struct.deflate* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 %61, i32* %65, align 4
  store i32 -1, i32* %6, align 4
  br label %130

66:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %130

67:                                               ; preds = %5
  %68 = load %struct.zip_source*, %struct.zip_source** %7, align 8
  %69 = load %struct.deflate*, %struct.deflate** %12, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @compress_read(%struct.zip_source* %68, %struct.deflate* %69, i8* %70, i32 %71)
  store i32 %72, i32* %6, align 4
  br label %130

73:                                               ; preds = %5
  %74 = load %struct.deflate*, %struct.deflate** %12, align 8
  %75 = getelementptr inbounds %struct.deflate, %struct.deflate* %74, i32 0, i32 3
  %76 = call i32 @deflateEnd(%struct.TYPE_3__* %75)
  store i32 0, i32* %6, align 4
  br label %130

77:                                               ; preds = %5
  %78 = load i8*, i8** %9, align 8
  %79 = bitcast i8* %78 to %struct.zip_stat*
  store %struct.zip_stat* %79, %struct.zip_stat** %14, align 8
  %80 = load i32, i32* @ZIP_CM_DEFLATE, align 4
  %81 = load %struct.zip_stat*, %struct.zip_stat** %14, align 8
  %82 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @ZIP_STAT_COMP_METHOD, align 4
  %84 = load %struct.zip_stat*, %struct.zip_stat** %14, align 8
  %85 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.deflate*, %struct.deflate** %12, align 8
  %89 = getelementptr inbounds %struct.deflate, %struct.deflate* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %77
  %93 = load %struct.deflate*, %struct.deflate** %12, align 8
  %94 = getelementptr inbounds %struct.deflate, %struct.deflate* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.zip_stat*, %struct.zip_stat** %14, align 8
  %97 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @ZIP_STAT_COMP_SIZE, align 4
  %99 = load %struct.zip_stat*, %struct.zip_stat** %14, align 8
  %100 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %110

103:                                              ; preds = %77
  %104 = load i32, i32* @ZIP_STAT_COMP_SIZE, align 4
  %105 = xor i32 %104, -1
  %106 = load %struct.zip_stat*, %struct.zip_stat** %14, align 8
  %107 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %103, %92
  store i32 0, i32* %6, align 4
  br label %130

111:                                              ; preds = %5
  %112 = load i8*, i8** %9, align 8
  %113 = load %struct.deflate*, %struct.deflate** %12, align 8
  %114 = getelementptr inbounds %struct.deflate, %struct.deflate* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @memcpy(i8* %112, i32* %115, i32 8)
  store i32 8, i32* %6, align 4
  br label %130

117:                                              ; preds = %5
  %118 = load %struct.deflate*, %struct.deflate** %12, align 8
  %119 = call i32 @deflate_free(%struct.deflate* %118)
  store i32 0, i32* %6, align 4
  br label %130

120:                                              ; preds = %5
  %121 = load i32, i32* @ZIP_ER_INVAL, align 4
  %122 = load %struct.deflate*, %struct.deflate** %12, align 8
  %123 = getelementptr inbounds %struct.deflate, %struct.deflate* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  store i32 %121, i32* %125, align 4
  %126 = load %struct.deflate*, %struct.deflate** %12, align 8
  %127 = getelementptr inbounds %struct.deflate, %struct.deflate* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  store i32 0, i32* %129, align 4
  store i32 -1, i32* %6, align 4
  br label %130

130:                                              ; preds = %120, %117, %111, %110, %73, %67, %66, %55
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local i32 @deflateInit2(%struct.TYPE_3__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @compress_read(%struct.zip_source*, %struct.deflate*, i8*, i32) #1

declare dso_local i32 @deflateEnd(%struct.TYPE_3__*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @deflate_free(%struct.deflate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
