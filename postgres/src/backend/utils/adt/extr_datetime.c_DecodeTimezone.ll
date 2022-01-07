; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_DecodeTimezone.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_DecodeTimezone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DTERR_BAD_FORMAT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@DTERR_TZDISP_OVERFLOW = common dso_local global i32 0, align 4
@MAX_TZDISP_HOUR = common dso_local global i32 0, align 4
@MINS_PER_HOUR = common dso_local global i32 0, align 4
@SECS_PER_MINUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DecodeTimezone(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 43
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 45
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %21, i32* %3, align 4
  br label %132

22:                                               ; preds = %15, %2
  store i64 0, i64* @errno, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = call i32 @strtoint(i8* %24, i8** %10, i32 10)
  store i32 %25, i32* %7, align 4
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @ERANGE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @DTERR_TZDISP_OVERFLOW, align 4
  store i32 %30, i32* %3, align 4
  br label %132

31:                                               ; preds = %22
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 58
  br i1 %35, label %36, label %61

36:                                               ; preds = %31
  store i64 0, i64* @errno, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = call i32 @strtoint(i8* %38, i8** %10, i32 10)
  store i32 %39, i32* %8, align 4
  %40 = load i64, i64* @errno, align 8
  %41 = load i64, i64* @ERANGE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @DTERR_TZDISP_OVERFLOW, align 4
  store i32 %44, i32* %3, align 4
  br label %132

45:                                               ; preds = %36
  %46 = load i8*, i8** %10, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 58
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  store i64 0, i64* @errno, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = call i32 @strtoint(i8* %52, i8** %10, i32 10)
  store i32 %53, i32* %9, align 4
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @ERANGE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @DTERR_TZDISP_OVERFLOW, align 4
  store i32 %58, i32* %3, align 4
  br label %132

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %45
  br label %77

61:                                               ; preds = %31
  %62 = load i8*, i8** %10, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = icmp sgt i32 %68, 3
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = srem i32 %71, 100
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %7, align 4
  %74 = sdiv i32 %73, 100
  store i32 %74, i32* %7, align 4
  br label %76

75:                                               ; preds = %66, %61
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %75, %70
  br label %77

77:                                               ; preds = %76, %60
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @MAX_TZDISP_HOUR, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80, %77
  %85 = load i32, i32* @DTERR_TZDISP_OVERFLOW, align 4
  store i32 %85, i32* %3, align 4
  br label %132

86:                                               ; preds = %80
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @MINS_PER_HOUR, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89, %86
  %94 = load i32, i32* @DTERR_TZDISP_OVERFLOW, align 4
  store i32 %94, i32* %3, align 4
  br label %132

95:                                               ; preds = %89
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @SECS_PER_MINUTE, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98, %95
  %103 = load i32, i32* @DTERR_TZDISP_OVERFLOW, align 4
  store i32 %103, i32* %3, align 4
  br label %132

104:                                              ; preds = %98
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @MINS_PER_HOUR, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* @SECS_PER_MINUTE, align 4
  %111 = mul nsw i32 %109, %110
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %111, %112
  store i32 %113, i32* %6, align 4
  %114 = load i8*, i8** %4, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 45
  br i1 %117, label %118, label %121

118:                                              ; preds = %104
  %119 = load i32, i32* %6, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %118, %104
  %122 = load i32, i32* %6, align 4
  %123 = sub nsw i32 0, %122
  %124 = load i32*, i32** %5, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i8*, i8** %10, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %121
  %130 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %130, i32* %3, align 4
  br label %132

131:                                              ; preds = %121
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %131, %129, %102, %93, %84, %57, %43, %29, %20
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @strtoint(i8*, i8**, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
