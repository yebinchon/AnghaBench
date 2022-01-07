; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_ccitt.c_HPDF_Stream_CcittToStream.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_ccitt.c_HPDF_Stream_CcittToStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._HPDF_CCITT_Data = type { i32, i64, i64, i64, i32 }

@HPDF_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HPDF_Stream_CcittToStream(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct._HPDF_CCITT_Data, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @HPDF_UNUSED(i32 %20)
  %22 = load i32, i32* %13, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %7
  store i32 1, i32* %8, align 4
  br label %101

25:                                               ; preds = %7
  %26 = load i64, i64* %15, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i32*, i32** %9, align 8
  store i32* %29, i32** %16, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %13, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  store i32* %35, i32** %17, align 8
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %18, align 4
  br label %52

37:                                               ; preds = %25
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %13, align 4
  %41 = sub nsw i32 %40, 1
  %42 = mul nsw i32 %39, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  store i32* %44, i32** %16, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = sub i64 0, %47
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  store i32* %49, i32** %17, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %18, align 4
  br label %52

52:                                               ; preds = %37, %28
  %53 = call i32 @memset(%struct._HPDF_CCITT_Data* %19, i32 0, i32 40)
  %54 = load i32, i32* %10, align 4
  %55 = getelementptr inbounds %struct._HPDF_CCITT_Data, %struct._HPDF_CCITT_Data* %19, i32 0, i32 4
  store i32 %54, i32* %55, align 8
  %56 = call i64 @malloc(i32 16384)
  %57 = getelementptr inbounds %struct._HPDF_CCITT_Data, %struct._HPDF_CCITT_Data* %19, i32 0, i32 1
  store i64 %56, i64* %57, align 8
  %58 = getelementptr inbounds %struct._HPDF_CCITT_Data, %struct._HPDF_CCITT_Data* %19, i32 0, i32 0
  store i32 16384, i32* %58, align 8
  %59 = getelementptr inbounds %struct._HPDF_CCITT_Data, %struct._HPDF_CCITT_Data* %19, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = getelementptr inbounds %struct._HPDF_CCITT_Data, %struct._HPDF_CCITT_Data* %19, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct._HPDF_CCITT_Data, %struct._HPDF_CCITT_Data* %19, i32 0, i32 2
  store i64 %61, i64* %62, align 8
  %63 = call i64 @HPDF_InitCCITTFax3(%struct._HPDF_CCITT_Data* %19)
  %64 = load i64, i64* @HPDF_OK, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  store i32 1, i32* %8, align 4
  br label %101

67:                                               ; preds = %52
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i64 @HPDF_Fax3SetupState(%struct._HPDF_CCITT_Data* %19, i32 %68, i32 %69, i32 %70)
  %72 = load i64, i64* @HPDF_OK, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = call i32 @HPDF_FreeCCITTFax3(%struct._HPDF_CCITT_Data* %19)
  store i32 1, i32* %8, align 4
  br label %101

76:                                               ; preds = %67
  %77 = call i64 @HPDF_Fax3PreEncode(%struct._HPDF_CCITT_Data* %19)
  %78 = load i64, i64* @HPDF_OK, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call i32 @HPDF_FreeCCITTFax3(%struct._HPDF_CCITT_Data* %19)
  store i32 1, i32* %8, align 4
  br label %101

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %87, %82
  %84 = load i32*, i32** %17, align 8
  %85 = load i32*, i32** %16, align 8
  %86 = icmp ne i32* %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load i32*, i32** %16, align 8
  %89 = ptrtoint i32* %88 to i64
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @HPDF_Fax4Encode(%struct._HPDF_CCITT_Data* %19, i64 %89, i32 %90)
  %92 = load i32, i32* %18, align 4
  %93 = load i32*, i32** %16, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32* %95, i32** %16, align 8
  br label %83

96:                                               ; preds = %83
  %97 = call i32 @HPDF_Fax4PostEncode(%struct._HPDF_CCITT_Data* %19)
  %98 = call i32 @HPDF_FreeCCITTFax3(%struct._HPDF_CCITT_Data* %19)
  %99 = load i64, i64* @HPDF_OK, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %96, %80, %74, %66, %24
  %102 = load i32, i32* %8, align 4
  ret i32 %102
}

declare dso_local i32 @HPDF_UNUSED(i32) #1

declare dso_local i32 @memset(%struct._HPDF_CCITT_Data*, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @HPDF_InitCCITTFax3(%struct._HPDF_CCITT_Data*) #1

declare dso_local i64 @HPDF_Fax3SetupState(%struct._HPDF_CCITT_Data*, i32, i32, i32) #1

declare dso_local i32 @HPDF_FreeCCITTFax3(%struct._HPDF_CCITT_Data*) #1

declare dso_local i64 @HPDF_Fax3PreEncode(%struct._HPDF_CCITT_Data*) #1

declare dso_local i32 @HPDF_Fax4Encode(%struct._HPDF_CCITT_Data*, i64, i32) #1

declare dso_local i32 @HPDF_Fax4PostEncode(%struct._HPDF_CCITT_Data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
