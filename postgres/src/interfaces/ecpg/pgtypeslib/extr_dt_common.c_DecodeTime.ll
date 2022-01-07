; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_DecodeTime.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_DecodeTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i8* }

@DTK_TIME_M = common dso_local global i32 0, align 4
@USECS_PER_SEC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DecodeTime(i8* %0, i32* %1, %struct.tm* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tm*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [7 x i8], align 1
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.tm* %2, %struct.tm** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i32, i32* @DTK_TIME_M, align 4
  %14 = load i32*, i32** %7, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i8* @strtoint(i8* %15, i8** %10, i32 10)
  %17 = load %struct.tm*, %struct.tm** %8, align 8
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 58
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %141

24:                                               ; preds = %4
  %25 = load i8*, i8** %10, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i8* @strtoint(i8* %27, i8** %10, i32 10)
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.tm*, %struct.tm** %8, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %24
  %37 = load %struct.tm*, %struct.tm** %8, align 8
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  %39 = load i64*, i64** %9, align 8
  store i64 0, i64* %39, align 8
  br label %109

40:                                               ; preds = %24
  %41 = load i8*, i8** %10, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 58
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 -1, i32* %5, align 4
  br label %141

46:                                               ; preds = %40
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %48, i8** %6, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i8* @strtoint(i8* %49, i8** %10, i32 10)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.tm*, %struct.tm** %8, align 8
  %53 = getelementptr inbounds %struct.tm, %struct.tm* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = load i64*, i64** %9, align 8
  store i64 0, i64* %59, align 8
  br label %107

60:                                               ; preds = %46
  %61 = load i8*, i8** %10, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 46
  br i1 %64, label %65, label %105

65:                                               ; preds = %60
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %10, align 8
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %88, %65
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %69, 6
  br i1 %70, label %71, label %91

71:                                               ; preds = %68
  %72 = load i8*, i8** %10, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i8*, i8** %10, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %10, align 8
  %79 = load i8, i8* %77, align 1
  %80 = sext i8 %79 to i32
  br label %82

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81, %76
  %83 = phi i32 [ %80, %76 ], [ 48, %81 ]
  %84 = trunc i32 %83 to i8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 %86
  store i8 %84, i8* %87, align 1
  br label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %68

91:                                               ; preds = %68
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 %93
  store i8 0, i8* %94, align 1
  %95 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 0
  %96 = call i8* @strtoint(i8* %95, i8** %10, i32 10)
  %97 = ptrtoint i8* %96 to i64
  %98 = load i64*, i64** %9, align 8
  store i64 %97, i64* %98, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  store i32 -1, i32* %5, align 4
  br label %141

104:                                              ; preds = %91
  br label %106

105:                                              ; preds = %60
  store i32 -1, i32* %5, align 4
  br label %141

106:                                              ; preds = %104
  br label %107

107:                                              ; preds = %106, %58
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108, %36
  %110 = load %struct.tm*, %struct.tm** %8, align 8
  %111 = getelementptr inbounds %struct.tm, %struct.tm* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ult i8* %112, null
  br i1 %113, label %139, label %114

114:                                              ; preds = %109
  %115 = load %struct.tm*, %struct.tm** %8, align 8
  %116 = getelementptr inbounds %struct.tm, %struct.tm* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %139, label %119

119:                                              ; preds = %114
  %120 = load %struct.tm*, %struct.tm** %8, align 8
  %121 = getelementptr inbounds %struct.tm, %struct.tm* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp sgt i32 %122, 59
  br i1 %123, label %139, label %124

124:                                              ; preds = %119
  %125 = load %struct.tm*, %struct.tm** %8, align 8
  %126 = getelementptr inbounds %struct.tm, %struct.tm* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %139, label %129

129:                                              ; preds = %124
  %130 = load %struct.tm*, %struct.tm** %8, align 8
  %131 = getelementptr inbounds %struct.tm, %struct.tm* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp sgt i32 %132, 59
  br i1 %133, label %139, label %134

134:                                              ; preds = %129
  %135 = load i64*, i64** %9, align 8
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @USECS_PER_SEC, align 8
  %138 = icmp sge i64 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %134, %129, %124, %119, %114, %109
  store i32 -1, i32* %5, align 4
  br label %141

140:                                              ; preds = %134
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %140, %139, %105, %103, %45, %23
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i8* @strtoint(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
