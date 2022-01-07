; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_bmp.c_compress_row.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_bmp.c_compress_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BMP_RLE_TYPE_RAW = common dso_local global i32 0, align 4
@BMP_RLE_TYPE_RLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @compress_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compress_row(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @gdMalloc(i32 %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %140

20:                                               ; preds = %2
  %21 = load i8*, i8** %11, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @memcpy(i8* %21, i8* %22, i32 %23)
  %25 = load i8*, i8** %11, align 8
  store i8* %25, i8** %12, align 8
  store i8* %25, i8** %13, align 8
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %117, %20
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %120

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i8*, i8** %12, align 8
  store i8* %34, i8** %11, align 8
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  %37 = load i8*, i8** %12, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %12, align 8
  %39 = load i32, i32* @BMP_RLE_TYPE_RAW, align 4
  store i32 %39, i32* %6, align 4
  br label %117

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load i8*, i8** %12, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 -1
  %47 = call i64 @memcmp(i8* %44, i8* %46, i32 1)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @BMP_RLE_TYPE_RLE, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %43
  br label %52

52:                                               ; preds = %51, %40
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @BMP_RLE_TYPE_RLE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %86

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = icmp sge i32 %57, 128
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load i8*, i8** %12, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 -1
  %63 = call i64 @memcmp(i8* %60, i8* %62, i32 1)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %59, %56
  %66 = load i8*, i8** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @build_rle_packet(i8* %66, i32 %67, i32 %68, i8* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i8*, i8** %4, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %4, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %8, align 4
  br label %85

80:                                               ; preds = %59
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  %83 = load i8*, i8** %12, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %12, align 8
  br label %85

85:                                               ; preds = %80, %65
  br label %116

86:                                               ; preds = %52
  %87 = load i32, i32* %9, align 4
  %88 = icmp sge i32 %87, 128
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load i8*, i8** %12, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 -1
  %93 = call i64 @memcmp(i8* %90, i8* %92, i32 1)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %89, %86
  %96 = load i8*, i8** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 @build_rle_packet(i8* %96, i32 %97, i32 %98, i8* %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i8*, i8** %4, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %4, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %8, align 4
  br label %115

110:                                              ; preds = %89
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  %113 = load i8*, i8** %12, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %12, align 8
  br label %115

115:                                              ; preds = %110, %95
  br label %116

116:                                              ; preds = %115, %85
  br label %117

117:                                              ; preds = %116, %33
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %26

120:                                              ; preds = %26
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %120
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @BMP_RLE_TYPE_RLE, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %123
  %128 = load i8*, i8** %4, align 8
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i8*, i8** %11, align 8
  %132 = call i32 @build_rle_packet(i8* %128, i32 %129, i32 %130, i8* %131)
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %127, %123
  br label %136

136:                                              ; preds = %135, %120
  %137 = load i8*, i8** %13, align 8
  %138 = call i32 @gdFree(i8* %137)
  %139 = load i32, i32* %7, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %136, %19
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i64 @gdMalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @build_rle_packet(i8*, i32, i32, i8*) #1

declare dso_local i32 @gdFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
