; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_streams.c_HPDF_Stream_WriteEscapeText2.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_streams.c_HPDF_Stream_WriteEscapeText2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HPDF_TEXT_DEFAULT_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c" HPDF_Stream_WriteEscapeText2\0A\00", align 1
@HPDF_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HPDF_Stream_WriteEscapeText2(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i32, i32* @HPDF_TEXT_DEFAULT_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %12, align 8
  %21 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = load i64, i64* %10, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %10, align 8
  %24 = getelementptr inbounds i8, i8* %19, i64 %22
  store i8 40, i8* %24, align 1
  store i64 0, i64* %11, align 8
  br label %25

25:                                               ; preds = %105, %3
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %108

29:                                               ; preds = %25
  %30 = load i8*, i8** %12, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %12, align 8
  %32 = load i8, i8* %30, align 1
  %33 = sext i8 %32 to i32
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = call i64 @HPDF_NEEDS_ESCAPE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %81

37:                                               ; preds = %29
  %38 = load i64, i64* %10, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %10, align 8
  %40 = getelementptr inbounds i8, i8* %19, i64 %38
  store i8 92, i8* %40, align 1
  %41 = load i32, i32* %14, align 4
  %42 = ashr i32 %41, 6
  %43 = trunc i32 %42 to i8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds i8, i8* %19, i64 %44
  store i8 %43, i8* %45, align 1
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds i8, i8* %19, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = add nsw i32 %49, 48
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %47, align 1
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %10, align 8
  %54 = load i32, i32* %14, align 4
  %55 = and i32 %54, 56
  %56 = ashr i32 %55, 3
  %57 = trunc i32 %56 to i8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds i8, i8* %19, i64 %58
  store i8 %57, i8* %59, align 1
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds i8, i8* %19, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = add nsw i32 %63, 48
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %61, align 1
  %66 = load i64, i64* %10, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %10, align 8
  %68 = load i32, i32* %14, align 4
  %69 = and i32 %68, 7
  %70 = trunc i32 %69 to i8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i8, i8* %19, i64 %71
  store i8 %70, i8* %72, align 1
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds i8, i8* %19, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = add nsw i32 %76, 48
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %74, align 1
  %79 = load i64, i64* %10, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %10, align 8
  br label %87

81:                                               ; preds = %29
  %82 = load i32, i32* %14, align 4
  %83 = trunc i32 %82 to i8
  %84 = load i64, i64* %10, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %10, align 8
  %86 = getelementptr inbounds i8, i8* %19, i64 %84
  store i8 %83, i8* %86, align 1
  br label %87

87:                                               ; preds = %81, %37
  %88 = load i64, i64* %10, align 8
  %89 = load i32, i32* @HPDF_TEXT_DEFAULT_LEN, align 4
  %90 = sub nsw i32 %89, 4
  %91 = sext i32 %90 to i64
  %92 = icmp ugt i64 %88, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %87
  %94 = load i32, i32* %5, align 4
  %95 = bitcast i8* %19 to i32*
  %96 = load i64, i64* %10, align 8
  %97 = call i64 @HPDF_Stream_Write(i32 %94, i32* %95, i64 %96)
  store i64 %97, i64* %13, align 8
  %98 = load i64, i64* %13, align 8
  %99 = load i64, i64* @HPDF_OK, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i64, i64* %13, align 8
  store i64 %102, i64* %4, align 8
  store i32 1, i32* %15, align 4
  br label %117

103:                                              ; preds = %93
  store i64 0, i64* %10, align 8
  br label %104

104:                                              ; preds = %103, %87
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %11, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %11, align 8
  br label %25

108:                                              ; preds = %25
  %109 = load i64, i64* %10, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %10, align 8
  %111 = getelementptr inbounds i8, i8* %19, i64 %109
  store i8 41, i8* %111, align 1
  %112 = load i32, i32* %5, align 4
  %113 = bitcast i8* %19 to i32*
  %114 = load i64, i64* %10, align 8
  %115 = call i64 @HPDF_Stream_Write(i32 %112, i32* %113, i64 %114)
  store i64 %115, i64* %13, align 8
  %116 = load i64, i64* %13, align 8
  store i64 %116, i64* %4, align 8
  store i32 1, i32* %15, align 4
  br label %117

117:                                              ; preds = %108, %101
  %118 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i64, i64* %4, align 8
  ret i64 %119
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @HPDF_PTRACE(i8*) #2

declare dso_local i64 @HPDF_NEEDS_ESCAPE(i32) #2

declare dso_local i64 @HPDF_Stream_Write(i32, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
