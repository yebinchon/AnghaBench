; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_deflate.c_compress_read.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_deflate.c_compress_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_source = type { i32 }
%struct.deflate = type { i64*, i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i64, i8*, i32*, i32, i32* }

@Z_FINISH = common dso_local global i32 0, align 4
@ZIP_ER_ZLIB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zip_source*, %struct.deflate*, i8*, i64)* @compress_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compress_read(%struct.zip_source* %0, %struct.deflate* %1, i8* %2, i64 %3) #0 {
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
  br label %168

20:                                               ; preds = %4
  %21 = load i64, i64* %9, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %168

24:                                               ; preds = %20
  %25 = load i8*, i8** %8, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.deflate*, %struct.deflate** %7, align 8
  %28 = getelementptr inbounds %struct.deflate, %struct.deflate* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
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

36:                                               ; preds = %143, %129, %24
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %144

40:                                               ; preds = %36
  %41 = load %struct.deflate*, %struct.deflate** %7, align 8
  %42 = getelementptr inbounds %struct.deflate, %struct.deflate* %41, i32 0, i32 2
  %43 = load %struct.deflate*, %struct.deflate** %7, align 8
  %44 = getelementptr inbounds %struct.deflate, %struct.deflate* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @Z_FINISH, align 4
  br label %50

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = call i32 @deflate(%struct.TYPE_2__* %42, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  switch i32 %53, label %143 [
    i32 130, label %54
    i32 129, label %54
    i32 134, label %73
    i32 131, label %131
    i32 133, label %131
    i32 128, label %131
    i32 132, label %131
  ]

54:                                               ; preds = %50, %50
  %55 = load %struct.deflate*, %struct.deflate** %7, align 8
  %56 = getelementptr inbounds %struct.deflate, %struct.deflate* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %54
  %61 = load %struct.deflate*, %struct.deflate** %7, align 8
  %62 = getelementptr inbounds %struct.deflate, %struct.deflate* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.deflate*, %struct.deflate** %7, align 8
  %67 = getelementptr inbounds %struct.deflate, %struct.deflate* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %65, %54
  store i32 1, i32* %10, align 4
  br label %72

72:                                               ; preds = %71, %65, %60
  br label %143

73:                                               ; preds = %50
  %74 = load %struct.deflate*, %struct.deflate** %7, align 8
  %75 = getelementptr inbounds %struct.deflate, %struct.deflate* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %130

79:                                               ; preds = %73
  %80 = load %struct.deflate*, %struct.deflate** %7, align 8
  %81 = getelementptr inbounds %struct.deflate, %struct.deflate* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 1, i32* %10, align 4
  br label %143

85:                                               ; preds = %79
  %86 = load %struct.zip_source*, %struct.zip_source** %6, align 8
  %87 = load %struct.deflate*, %struct.deflate** %7, align 8
  %88 = getelementptr inbounds %struct.deflate, %struct.deflate* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @zip_source_read(%struct.zip_source* %86, i64 %89, i32 8)
  store i32 %90, i32* %12, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %85
  %93 = load %struct.zip_source*, %struct.zip_source** %6, align 8
  %94 = load %struct.deflate*, %struct.deflate** %7, align 8
  %95 = getelementptr inbounds %struct.deflate, %struct.deflate* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load %struct.deflate*, %struct.deflate** %7, align 8
  %98 = getelementptr inbounds %struct.deflate, %struct.deflate* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 1
  %101 = call i32 @zip_source_error(%struct.zip_source* %93, i64* %96, i64* %100)
  store i32 1, i32* %10, align 4
  br label %143

102:                                              ; preds = %85
  %103 = load i32, i32* %12, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load %struct.deflate*, %struct.deflate** %7, align 8
  %107 = getelementptr inbounds %struct.deflate, %struct.deflate* %106, i32 0, i32 1
  store i32 1, i32* %107, align 8
  %108 = load %struct.deflate*, %struct.deflate** %7, align 8
  %109 = getelementptr inbounds %struct.deflate, %struct.deflate* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.deflate*, %struct.deflate** %7, align 8
  %113 = getelementptr inbounds %struct.deflate, %struct.deflate* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 8
  br label %128

114:                                              ; preds = %102
  %115 = load %struct.deflate*, %struct.deflate** %7, align 8
  %116 = getelementptr inbounds %struct.deflate, %struct.deflate* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to i32*
  %119 = load %struct.deflate*, %struct.deflate** %7, align 8
  %120 = getelementptr inbounds %struct.deflate, %struct.deflate* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  store i32* %118, i32** %121, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = load %struct.deflate*, %struct.deflate** %7, align 8
  %126 = getelementptr inbounds %struct.deflate, %struct.deflate* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  store i8* %124, i8** %127, align 8
  br label %128

128:                                              ; preds = %114, %105
  br label %129

129:                                              ; preds = %128
  br label %36

130:                                              ; preds = %73
  br label %131

131:                                              ; preds = %50, %50, %50, %50, %130
  %132 = load i64, i64* @ZIP_ER_ZLIB, align 8
  %133 = load %struct.deflate*, %struct.deflate** %7, align 8
  %134 = getelementptr inbounds %struct.deflate, %struct.deflate* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 0
  store i64 %132, i64* %136, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = load %struct.deflate*, %struct.deflate** %7, align 8
  %140 = getelementptr inbounds %struct.deflate, %struct.deflate* %139, i32 0, i32 0
  %141 = load i64*, i64** %140, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 1
  store i64 %138, i64* %142, align 8
  store i32 1, i32* %10, align 4
  br label %143

143:                                              ; preds = %50, %131, %92, %84, %72
  br label %36

144:                                              ; preds = %36
  %145 = load %struct.deflate*, %struct.deflate** %7, align 8
  %146 = getelementptr inbounds %struct.deflate, %struct.deflate* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %9, align 8
  %150 = icmp slt i64 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %144
  %152 = load i64, i64* %9, align 8
  %153 = load %struct.deflate*, %struct.deflate** %7, align 8
  %154 = getelementptr inbounds %struct.deflate, %struct.deflate* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = sub nsw i64 %152, %156
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %5, align 4
  br label %168

159:                                              ; preds = %144
  %160 = load %struct.deflate*, %struct.deflate** %7, align 8
  %161 = getelementptr inbounds %struct.deflate, %struct.deflate* %160, i32 0, i32 0
  %162 = load i64*, i64** %161, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i32 0, i32 -1
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %159, %151, %23, %19
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local i32 @deflate(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @zip_source_read(%struct.zip_source*, i64, i32) #1

declare dso_local i32 @zip_source_error(%struct.zip_source*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
