; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_deflate.c_decompress_read.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_deflate.c_decompress_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_source = type { i32 }
%struct.deflate = type { i64*, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i8*, i32*, i32* }

@Z_SYNC_FLUSH = common dso_local global i32 0, align 4
@ZIP_ER_ZLIB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zip_source*, %struct.deflate*, i8*, i64)* @decompress_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decompress_read(%struct.zip_source* %0, %struct.deflate* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.zip_source*, align 8
  %7 = alloca %struct.deflate*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.zip_source* %0, %struct.zip_source** %6, align 8
  store %struct.deflate* %1, %struct.deflate** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.deflate*, %struct.deflate** %7, align 8
  %14 = getelementptr inbounds %struct.deflate, %struct.deflate* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %146

20:                                               ; preds = %4
  %21 = load i64, i64* %9, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %146

24:                                               ; preds = %20
  %25 = load i8*, i8** %8, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.deflate*, %struct.deflate** %7, align 8
  %28 = getelementptr inbounds %struct.deflate, %struct.deflate* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store i32* %26, i32** %29, align 8
  %30 = load i64, i64* %9, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = ptrtoint i8* %31 to i64
  %33 = load %struct.deflate*, %struct.deflate** %7, align 8
  %34 = getelementptr inbounds %struct.deflate, %struct.deflate* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %121, %107, %24
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load %struct.deflate*, %struct.deflate** %7, align 8
  %41 = getelementptr inbounds %struct.deflate, %struct.deflate* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %39, %36
  %46 = phi i1 [ false, %36 ], [ %44, %39 ]
  br i1 %46, label %47, label %122

47:                                               ; preds = %45
  %48 = load %struct.deflate*, %struct.deflate** %7, align 8
  %49 = getelementptr inbounds %struct.deflate, %struct.deflate* %48, i32 0, i32 2
  %50 = load i32, i32* @Z_SYNC_FLUSH, align 4
  %51 = call i32 @inflate(%struct.TYPE_2__* %49, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  switch i32 %52, label %121 [
    i32 130, label %53
    i32 129, label %54
    i32 134, label %57
    i32 131, label %109
    i32 133, label %109
    i32 128, label %109
    i32 132, label %109
  ]

53:                                               ; preds = %47
  br label %121

54:                                               ; preds = %47
  %55 = load %struct.deflate*, %struct.deflate** %7, align 8
  %56 = getelementptr inbounds %struct.deflate, %struct.deflate* %55, i32 0, i32 1
  store i32 1, i32* %56, align 8
  store i32 1, i32* %10, align 4
  br label %121

57:                                               ; preds = %47
  %58 = load %struct.deflate*, %struct.deflate** %7, align 8
  %59 = getelementptr inbounds %struct.deflate, %struct.deflate* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %108

63:                                               ; preds = %57
  %64 = load %struct.deflate*, %struct.deflate** %7, align 8
  %65 = getelementptr inbounds %struct.deflate, %struct.deflate* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 1, i32* %10, align 4
  br label %121

69:                                               ; preds = %63
  %70 = load %struct.zip_source*, %struct.zip_source** %6, align 8
  %71 = load %struct.deflate*, %struct.deflate** %7, align 8
  %72 = getelementptr inbounds %struct.deflate, %struct.deflate* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @zip_source_read(%struct.zip_source* %70, i64 %73, i32 8)
  store i32 %74, i32* %12, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %69
  %77 = load %struct.zip_source*, %struct.zip_source** %6, align 8
  %78 = load %struct.deflate*, %struct.deflate** %7, align 8
  %79 = getelementptr inbounds %struct.deflate, %struct.deflate* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load %struct.deflate*, %struct.deflate** %7, align 8
  %82 = getelementptr inbounds %struct.deflate, %struct.deflate* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 1
  %85 = call i32 @zip_source_error(%struct.zip_source* %77, i64* %80, i64* %84)
  store i32 1, i32* %10, align 4
  br label %121

86:                                               ; preds = %69
  %87 = load i32, i32* %12, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load %struct.deflate*, %struct.deflate** %7, align 8
  %91 = getelementptr inbounds %struct.deflate, %struct.deflate* %90, i32 0, i32 1
  store i32 1, i32* %91, align 8
  br label %106

92:                                               ; preds = %86
  %93 = load %struct.deflate*, %struct.deflate** %7, align 8
  %94 = getelementptr inbounds %struct.deflate, %struct.deflate* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i32*
  %97 = load %struct.deflate*, %struct.deflate** %7, align 8
  %98 = getelementptr inbounds %struct.deflate, %struct.deflate* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  store i32* %96, i32** %99, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8*
  %103 = load %struct.deflate*, %struct.deflate** %7, align 8
  %104 = getelementptr inbounds %struct.deflate, %struct.deflate* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i8* %102, i8** %105, align 8
  br label %106

106:                                              ; preds = %92, %89
  br label %107

107:                                              ; preds = %106
  br label %36

108:                                              ; preds = %57
  br label %109

109:                                              ; preds = %47, %47, %47, %47, %108
  %110 = load i64, i64* @ZIP_ER_ZLIB, align 8
  %111 = load %struct.deflate*, %struct.deflate** %7, align 8
  %112 = getelementptr inbounds %struct.deflate, %struct.deflate* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 0
  store i64 %110, i64* %114, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = load %struct.deflate*, %struct.deflate** %7, align 8
  %118 = getelementptr inbounds %struct.deflate, %struct.deflate* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 1
  store i64 %116, i64* %120, align 8
  store i32 1, i32* %10, align 4
  br label %121

121:                                              ; preds = %47, %109, %76, %68, %54, %53
  br label %36

122:                                              ; preds = %45
  %123 = load %struct.deflate*, %struct.deflate** %7, align 8
  %124 = getelementptr inbounds %struct.deflate, %struct.deflate* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %9, align 8
  %128 = icmp slt i64 %126, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %122
  %130 = load i64, i64* %9, align 8
  %131 = load %struct.deflate*, %struct.deflate** %7, align 8
  %132 = getelementptr inbounds %struct.deflate, %struct.deflate* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = sub nsw i64 %130, %134
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %5, align 4
  br label %146

137:                                              ; preds = %122
  %138 = load %struct.deflate*, %struct.deflate** %7, align 8
  %139 = getelementptr inbounds %struct.deflate, %struct.deflate* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 0, i32 -1
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %137, %129, %23, %19
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @inflate(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @zip_source_read(%struct.zip_source*, i64, i32) #1

declare dso_local i32 @zip_source_error(%struct.zip_source*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
