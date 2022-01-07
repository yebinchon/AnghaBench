; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_deflate.c_deflate_decompress.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_deflate.c_deflate_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_source = type { i32 }
%struct.deflate = type { i32*, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32*, i32*, i8*, i8* }
%struct.zip_stat = type { i32, i32, i32 }

@ZIP_SOURCE_ERR_LOWER = common dso_local global i32 0, align 4
@Z_NULL = common dso_local global i8* null, align 8
@MAX_WBITS = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@ZIP_ER_ZLIB = common dso_local global i32 0, align 4
@ZIP_CM_STORE = common dso_local global i32 0, align 4
@ZIP_ER_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zip_source*, i8*, i8*, i32, i32)* @deflate_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deflate_decompress(%struct.zip_source* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.zip_source*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.deflate*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.zip_stat*, align 8
  store %struct.zip_source* %0, %struct.zip_source** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.deflate*
  store %struct.deflate* %17, %struct.deflate** %12, align 8
  %18 = load i32, i32* %11, align 4
  switch i32 %18, label %116 [
    i32 130, label %19
    i32 129, label %70
    i32 133, label %76
    i32 128, label %80
    i32 132, label %102
    i32 131, label %113
  ]

19:                                               ; preds = %5
  %20 = load %struct.zip_source*, %struct.zip_source** %7, align 8
  %21 = load %struct.deflate*, %struct.deflate** %12, align 8
  %22 = getelementptr inbounds %struct.deflate, %struct.deflate* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @zip_source_read(%struct.zip_source* %20, i64 %23, i32 8)
  store i32 %24, i32* %13, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @ZIP_SOURCE_ERR_LOWER, align 4
  store i32 %27, i32* %6, align 4
  br label %126

28:                                               ; preds = %19
  %29 = load i8*, i8** @Z_NULL, align 8
  %30 = load %struct.deflate*, %struct.deflate** %12, align 8
  %31 = getelementptr inbounds %struct.deflate, %struct.deflate* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  store i8* %29, i8** %32, align 8
  %33 = load i8*, i8** @Z_NULL, align 8
  %34 = load %struct.deflate*, %struct.deflate** %12, align 8
  %35 = getelementptr inbounds %struct.deflate, %struct.deflate* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  store i8* %33, i8** %36, align 8
  %37 = load %struct.deflate*, %struct.deflate** %12, align 8
  %38 = getelementptr inbounds %struct.deflate, %struct.deflate* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  %40 = load %struct.deflate*, %struct.deflate** %12, align 8
  %41 = getelementptr inbounds %struct.deflate, %struct.deflate* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load %struct.deflate*, %struct.deflate** %12, align 8
  %45 = getelementptr inbounds %struct.deflate, %struct.deflate* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32* %43, i32** %46, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.deflate*, %struct.deflate** %12, align 8
  %49 = getelementptr inbounds %struct.deflate, %struct.deflate* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.deflate*, %struct.deflate** %12, align 8
  %52 = getelementptr inbounds %struct.deflate, %struct.deflate* %51, i32 0, i32 1
  %53 = load i32, i32* @MAX_WBITS, align 4
  %54 = sub nsw i32 0, %53
  %55 = call i32 @inflateInit2(%struct.TYPE_3__* %52, i32 %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* @Z_OK, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %28
  %59 = load i32, i32* @ZIP_ER_ZLIB, align 4
  %60 = load %struct.deflate*, %struct.deflate** %12, align 8
  %61 = getelementptr inbounds %struct.deflate, %struct.deflate* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load %struct.deflate*, %struct.deflate** %12, align 8
  %66 = getelementptr inbounds %struct.deflate, %struct.deflate* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %64, i32* %68, align 4
  store i32 -1, i32* %6, align 4
  br label %126

69:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %126

70:                                               ; preds = %5
  %71 = load %struct.zip_source*, %struct.zip_source** %7, align 8
  %72 = load %struct.deflate*, %struct.deflate** %12, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @decompress_read(%struct.zip_source* %71, %struct.deflate* %72, i8* %73, i32 %74)
  store i32 %75, i32* %6, align 4
  br label %126

76:                                               ; preds = %5
  %77 = load %struct.deflate*, %struct.deflate** %12, align 8
  %78 = getelementptr inbounds %struct.deflate, %struct.deflate* %77, i32 0, i32 1
  %79 = call i32 @inflateEnd(%struct.TYPE_3__* %78)
  store i32 0, i32* %6, align 4
  br label %126

80:                                               ; preds = %5
  %81 = load i8*, i8** %9, align 8
  %82 = bitcast i8* %81 to %struct.zip_stat*
  store %struct.zip_stat* %82, %struct.zip_stat** %15, align 8
  %83 = load i32, i32* @ZIP_CM_STORE, align 4
  %84 = load %struct.zip_stat*, %struct.zip_stat** %15, align 8
  %85 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.zip_stat*, %struct.zip_stat** %15, align 8
  %87 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %80
  %91 = load %struct.zip_stat*, %struct.zip_stat** %15, align 8
  %92 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load %struct.zip_stat*, %struct.zip_stat** %15, align 8
  %97 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.zip_stat*, %struct.zip_stat** %15, align 8
  %100 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %95, %90, %80
  store i32 0, i32* %6, align 4
  br label %126

102:                                              ; preds = %5
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = icmp ult i64 %104, 8
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 -1, i32* %6, align 4
  br label %126

107:                                              ; preds = %102
  %108 = load i8*, i8** %9, align 8
  %109 = load %struct.deflate*, %struct.deflate** %12, align 8
  %110 = getelementptr inbounds %struct.deflate, %struct.deflate* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @memcpy(i8* %108, i32* %111, i32 8)
  store i32 8, i32* %6, align 4
  br label %126

113:                                              ; preds = %5
  %114 = load %struct.deflate*, %struct.deflate** %12, align 8
  %115 = call i32 @free(%struct.deflate* %114)
  store i32 0, i32* %6, align 4
  br label %126

116:                                              ; preds = %5
  %117 = load i32, i32* @ZIP_ER_INVAL, align 4
  %118 = load %struct.deflate*, %struct.deflate** %12, align 8
  %119 = getelementptr inbounds %struct.deflate, %struct.deflate* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  store i32 %117, i32* %121, align 4
  %122 = load %struct.deflate*, %struct.deflate** %12, align 8
  %123 = getelementptr inbounds %struct.deflate, %struct.deflate* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  store i32 0, i32* %125, align 4
  store i32 -1, i32* %6, align 4
  br label %126

126:                                              ; preds = %116, %113, %107, %106, %101, %76, %70, %69, %58, %26
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i32 @zip_source_read(%struct.zip_source*, i64, i32) #1

declare dso_local i32 @inflateInit2(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @decompress_read(%struct.zip_source*, %struct.deflate*, i8*, i32) #1

declare dso_local i32 @inflateEnd(%struct.TYPE_3__*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @free(%struct.deflate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
