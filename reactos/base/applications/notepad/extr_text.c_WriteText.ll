; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/notepad/extr_text.c_WriteText.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/notepad/extr_text.c_WriteText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@ENCODING_ANSI = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WriteText(i32 %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* bitcast ([2 x i32]* @.str to i8*), i8** %13, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @ENCODING_ANSI, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %5
  store i8 -1, i8* %12, align 1
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @WriteEncodedText(i32 %20, i8* %12, i64 1, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %6, align 4
  br label %137

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %5
  store i64 0, i64* %14, align 8
  br label %28

28:                                               ; preds = %131, %27
  %29 = load i64, i64* %14, align 8
  store i64 %29, i64* %15, align 8
  br label %30

30:                                               ; preds = %50, %28
  %31 = load i64, i64* %15, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %15, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 13
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* %15, align 8
  %44 = add i64 %43, 1
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 10
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %53

50:                                               ; preds = %41, %34
  %51 = load i64, i64* %15, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %15, align 8
  br label %30

53:                                               ; preds = %49, %30
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %114

57:                                               ; preds = %53
  %58 = load i32, i32* %11, align 4
  switch i32 %58, label %111 [
    i32 128, label %59
    i32 130, label %81
    i32 129, label %96
  ]

59:                                               ; preds = %57
  %60 = load i32, i32* %7, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %14, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* %14, align 8
  %66 = sub i64 %64, %65
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @WriteEncodedText(i32 %60, i8* %63, i64 %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %59
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %6, align 4
  br label %137

72:                                               ; preds = %59
  %73 = load i32, i32* %7, align 4
  %74 = load i8*, i8** %13, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @WriteEncodedText(i32 %73, i8* %74, i64 1, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %6, align 4
  br label %137

80:                                               ; preds = %72
  br label %113

81:                                               ; preds = %57
  %82 = load i32, i32* %7, align 4
  %83 = load i8*, i8** %8, align 8
  %84 = load i64, i64* %14, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i64, i64* %15, align 8
  %87 = load i64, i64* %14, align 8
  %88 = sub i64 %86, %87
  %89 = add i64 %88, 1
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @WriteEncodedText(i32 %82, i8* %85, i64 %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %81
  %94 = load i32, i32* @FALSE, align 4
  store i32 %94, i32* %6, align 4
  br label %137

95:                                               ; preds = %81
  br label %113

96:                                               ; preds = %57
  %97 = load i32, i32* %7, align 4
  %98 = load i8*, i8** %8, align 8
  %99 = load i64, i64* %14, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  %101 = load i64, i64* %15, align 8
  %102 = load i64, i64* %14, align 8
  %103 = sub i64 %101, %102
  %104 = add i64 %103, 2
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @WriteEncodedText(i32 %97, i8* %100, i64 %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %96
  %109 = load i32, i32* @FALSE, align 4
  store i32 %109, i32* %6, align 4
  br label %137

110:                                              ; preds = %96
  br label %113

111:                                              ; preds = %57
  %112 = load i32, i32* @FALSE, align 4
  store i32 %112, i32* %6, align 4
  br label %137

113:                                              ; preds = %110, %95, %80
  br label %128

114:                                              ; preds = %53
  %115 = load i32, i32* %7, align 4
  %116 = load i8*, i8** %8, align 8
  %117 = load i64, i64* %14, align 8
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  %119 = load i64, i64* %15, align 8
  %120 = load i64, i64* %14, align 8
  %121 = sub i64 %119, %120
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @WriteEncodedText(i32 %115, i8* %118, i64 %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %114
  %126 = load i32, i32* @FALSE, align 4
  store i32 %126, i32* %6, align 4
  br label %137

127:                                              ; preds = %114
  br label %128

128:                                              ; preds = %127, %113
  %129 = load i64, i64* %15, align 8
  %130 = add i64 %129, 2
  store i64 %130, i64* %14, align 8
  br label %131

131:                                              ; preds = %128
  %132 = load i64, i64* %14, align 8
  %133 = load i64, i64* %9, align 8
  %134 = icmp ult i64 %132, %133
  br i1 %134, label %28, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* @TRUE, align 4
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %135, %125, %111, %108, %93, %78, %70, %24
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @WriteEncodedText(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
