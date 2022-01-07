; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_HPDF_TTFontDef_SetTagName.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_HPDF_TTFontDef_SetTagName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i8*, i32*, i64 }

@HPDF_LIMIT_MAX_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c" HPDF_TTFontDef_SetTagName\0A\00", align 1
@HPDF_TTF_FONT_TAG_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HPDF_TTFontDef_SetTagName(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %5, align 8
  %15 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %23 = call i64 @HPDF_StrLen(i8* %21, i32 %22)
  %24 = load i64, i64* @HPDF_TTF_FONT_TAG_LEN, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %107

27:                                               ; preds = %2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load i8*, i8** %4, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load i64, i64* @HPDF_TTF_FONT_TAG_LEN, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @HPDF_MemCpy(i32* %31, i32* %33, i32 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i64, i64* @HPDF_TTF_FONT_TAG_LEN, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8 43, i8* %41, align 1
  store i64 0, i64* %8, align 8
  br label %42

42:                                               ; preds = %68, %27
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @HPDF_TTF_FONT_TAG_LEN, align 8
  %45 = add i64 %44, 1
  %46 = icmp ult i64 %43, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %42
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = mul i64 %51, 2
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 0, i32* %53, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = mul i64 %64, 2
  %66 = add i64 %65, 1
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32 %60, i32* %67, align 4
  br label %68

68:                                               ; preds = %47
  %69 = load i64, i64* %8, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %8, align 8
  br label %42

71:                                               ; preds = %42
  %72 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %73 = add nsw i32 %72, 1
  %74 = call i32 @HPDF_MemSet(i8* %19, i32 0, i32 %73)
  %75 = bitcast i8* %19 to i32*
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = bitcast i8* %78 to i32*
  %80 = load i64, i64* @HPDF_TTF_FONT_TAG_LEN, align 8
  %81 = add i64 %80, 1
  %82 = trunc i64 %81 to i32
  %83 = call i32 @HPDF_MemCpy(i32* %75, i32* %79, i32 %82)
  %84 = bitcast i8* %19 to i32*
  %85 = load i64, i64* @HPDF_TTF_FONT_TAG_LEN, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i32*
  %92 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* @HPDF_TTF_FONT_TAG_LEN, align 8
  %95 = sub i64 %93, %94
  %96 = sub i64 %95, 1
  %97 = trunc i64 %96 to i32
  %98 = call i32 @HPDF_MemCpy(i32* %87, i32* %91, i32 %97)
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i32*
  %103 = bitcast i8* %19 to i32*
  %104 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %105 = add nsw i32 %104, 1
  %106 = call i32 @HPDF_MemCpy(i32* %102, i32* %103, i32 %105)
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %71, %26
  %108 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i32, i32* %9, align 4
  switch i32 %109, label %111 [
    i32 0, label %110
    i32 1, label %110
  ]

110:                                              ; preds = %107, %107
  ret void

111:                                              ; preds = %107
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @HPDF_PTRACE(i8*) #2

declare dso_local i64 @HPDF_StrLen(i8*, i32) #2

declare dso_local i32 @HPDF_MemCpy(i32*, i32*, i32) #2

declare dso_local i32 @HPDF_MemSet(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
