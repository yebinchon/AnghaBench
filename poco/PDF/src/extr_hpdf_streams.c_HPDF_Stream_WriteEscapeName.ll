; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_streams.c_HPDF_Stream_WriteEscapeName.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_streams.c_HPDF_Stream_WriteEscapeName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HPDF_LIMIT_MAX_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c" HPDF_Stream_WriteEscapeName\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HPDF_Stream_WriteEscapeName(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %13 = mul nsw i32 %12, 3
  %14 = add nsw i32 %13, 2
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %21 = call i64 @HPDF_StrLen(i8* %19, i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %9, align 8
  store i8* %17, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %10, align 8
  store i8 47, i8* %24, align 1
  store i64 0, i64* %8, align 8
  br label %26

26:                                               ; preds = %92, %2
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %95

30:                                               ; preds = %26
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %9, align 8
  %33 = load i32, i32* %31, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i64 @HPDF_NEEDS_ESCAPE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %86

37:                                               ; preds = %30
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %10, align 8
  store i8 35, i8* %38, align 1
  %40 = load i32, i32* %11, align 4
  %41 = ashr i32 %40, 4
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %10, align 8
  store i8 %42, i8* %43, align 1
  %44 = load i8*, i8** %10, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp sle i32 %46, 9
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load i8*, i8** %10, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, 48
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %49, align 1
  br label %60

54:                                               ; preds = %37
  %55 = load i8*, i8** %10, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = add nsw i32 %57, 55
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %55, align 1
  br label %60

60:                                               ; preds = %54, %48
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = and i32 %63, 15
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %10, align 8
  store i8 %65, i8* %66, align 1
  %67 = load i8*, i8** %10, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp sle i32 %69, 9
  br i1 %70, label %71, label %77

71:                                               ; preds = %60
  %72 = load i8*, i8** %10, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = add nsw i32 %74, 48
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %72, align 1
  br label %83

77:                                               ; preds = %60
  %78 = load i8*, i8** %10, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = add nsw i32 %80, 55
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %78, align 1
  br label %83

83:                                               ; preds = %77, %71
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %10, align 8
  br label %91

86:                                               ; preds = %30
  %87 = load i32, i32* %11, align 4
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %10, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %10, align 8
  store i8 %88, i8* %89, align 1
  br label %91

91:                                               ; preds = %86, %83
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %8, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %8, align 8
  br label %26

95:                                               ; preds = %26
  %96 = load i8*, i8** %10, align 8
  store i8 0, i8* %96, align 1
  %97 = load i32, i32* %3, align 4
  %98 = bitcast i8* %17 to i32*
  %99 = call i64 @HPDF_StrLen(i8* %17, i32 -1)
  %100 = call i32 @HPDF_Stream_Write(i32 %97, i32* %98, i64 %99)
  %101 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %101)
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @HPDF_PTRACE(i8*) #2

declare dso_local i64 @HPDF_StrLen(i8*, i32) #2

declare dso_local i64 @HPDF_NEEDS_ESCAPE(i32) #2

declare dso_local i32 @HPDF_Stream_Write(i32, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
