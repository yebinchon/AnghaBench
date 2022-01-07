; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_png.c_ReadPngData_Interlaced.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_png.c_ReadPngData_Interlaced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@HPDF_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32, i32)* @ReadPngData_Interlaced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ReadPngData_Interlaced(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*****, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @png_get_rowbytes(i32 %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @png_get_image_height(i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 8
  %23 = trunc i64 %22 to i32
  %24 = call i8* @HPDF_GetMem(i32 %19, i32 %23)
  %25 = bitcast i8* %24 to i32*****
  store i32***** %25, i32****** %9, align 8
  %26 = load i32*****, i32****** %9, align 8
  %27 = icmp ne i32***** %26, null
  br i1 %27, label %28, label %131

28:                                               ; preds = %3
  %29 = load i32*****, i32****** %9, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @HPDF_MemSet(i32***** %29, i32 0, i32 %33)
  store i64 0, i64* %10, align 8
  br label %35

35:                                               ; preds = %59, %28
  %36 = load i64, i64* %10, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %36, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %35
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i8* @HPDF_GetMem(i32 %43, i32 %44)
  %46 = bitcast i8* %45 to i32****
  %47 = load i32*****, i32****** %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds i32****, i32***** %47, i64 %48
  store i32**** %46, i32***** %49, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @HPDF_OK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %40
  br label %62

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %10, align 8
  br label %35

62:                                               ; preds = %57, %35
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @HPDF_OK, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %106

70:                                               ; preds = %62
  %71 = load i32, i32* %5, align 4
  %72 = load i32*****, i32****** %9, align 8
  %73 = call i32 @png_read_image(i32 %71, i32***** %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @HPDF_OK, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %105

81:                                               ; preds = %70
  store i64 0, i64* %10, align 8
  br label %82

82:                                               ; preds = %101, %81
  %83 = load i64, i64* %10, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp ult i64 %83, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %82
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32*****, i32****** %9, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds i32****, i32***** %91, i64 %92
  %94 = load i32****, i32***** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i64 @HPDF_Stream_Write(i32 %90, i32**** %94, i32 %95)
  %97 = load i64, i64* @HPDF_OK, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %87
  br label %104

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %10, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %10, align 8
  br label %82

104:                                              ; preds = %99, %82
  br label %105

105:                                              ; preds = %104, %70
  br label %106

106:                                              ; preds = %105, %62
  store i64 0, i64* %10, align 8
  br label %107

107:                                              ; preds = %122, %106
  %108 = load i64, i64* %10, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = icmp ult i64 %108, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %107
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32*****, i32****** %9, align 8
  %117 = load i64, i64* %10, align 8
  %118 = getelementptr inbounds i32****, i32***** %116, i64 %117
  %119 = load i32****, i32***** %118, align 8
  %120 = bitcast i32**** %119 to i32*****
  %121 = call i32 @HPDF_FreeMem(i32 %115, i32***** %120)
  br label %122

122:                                              ; preds = %112
  %123 = load i64, i64* %10, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %10, align 8
  br label %107

125:                                              ; preds = %107
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32*****, i32****** %9, align 8
  %130 = call i32 @HPDF_FreeMem(i32 %128, i32***** %129)
  br label %131

131:                                              ; preds = %125, %3
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  ret i64 %136
}

declare dso_local i32 @png_get_rowbytes(i32, i32) #1

declare dso_local i32 @png_get_image_height(i32, i32) #1

declare dso_local i8* @HPDF_GetMem(i32, i32) #1

declare dso_local i32 @HPDF_MemSet(i32*****, i32, i32) #1

declare dso_local i32 @png_read_image(i32, i32*****) #1

declare dso_local i64 @HPDF_Stream_Write(i32, i32****, i32) #1

declare dso_local i32 @HPDF_FreeMem(i32, i32*****) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
