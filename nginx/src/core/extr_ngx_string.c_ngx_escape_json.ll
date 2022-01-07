; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_string.c_ngx_escape_json.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_string.c_ngx_escape_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_escape_json(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %50

12:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %13

13:                                               ; preds = %45, %12
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %13
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %6, align 8
  %19 = load i8, i8* %17, align 1
  store i8 %19, i8* %8, align 1
  %20 = load i8, i8* %8, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 92
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = load i8, i8* %8, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 34
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %16
  %28 = load i64, i64* %9, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %9, align 8
  br label %45

30:                                               ; preds = %23
  %31 = load i8, i8* %8, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sle i32 %32, 31
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load i8, i8* %8, align 1
  %36 = sext i8 %35 to i32
  switch i32 %36, label %40 [
    i32 10, label %37
    i32 13, label %37
    i32 9, label %37
    i32 8, label %37
    i32 12, label %37
  ]

37:                                               ; preds = %34, %34, %34, %34, %34
  %38 = load i64, i64* %9, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %9, align 8
  br label %43

40:                                               ; preds = %34
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, 5
  store i64 %42, i64* %9, align 8
  br label %43

43:                                               ; preds = %40, %37
  br label %44

44:                                               ; preds = %43, %30
  br label %45

45:                                               ; preds = %44, %27
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, -1
  store i64 %47, i64* %7, align 8
  br label %13

48:                                               ; preds = %13
  %49 = load i64, i64* %9, align 8
  store i64 %49, i64* %4, align 8
  br label %138

50:                                               ; preds = %3
  br label %51

51:                                               ; preds = %132, %50
  %52 = load i64, i64* %7, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %135

54:                                               ; preds = %51
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  %57 = load i8, i8* %55, align 1
  store i8 %57, i8* %8, align 1
  %58 = load i8, i8* %8, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp sgt i32 %59, 31
  br i1 %60, label %61, label %76

61:                                               ; preds = %54
  %62 = load i8, i8* %8, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 92
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i8, i8* %8, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 34
  br i1 %68, label %69, label %72

69:                                               ; preds = %65, %61
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %5, align 8
  store i8 92, i8* %70, align 1
  br label %72

72:                                               ; preds = %69, %65
  %73 = load i8, i8* %8, align 1
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %5, align 8
  store i8 %73, i8* %74, align 1
  br label %132

76:                                               ; preds = %54
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %5, align 8
  store i8 92, i8* %77, align 1
  %79 = load i8, i8* %8, align 1
  %80 = sext i8 %79 to i32
  switch i32 %80, label %96 [
    i32 10, label %81
    i32 13, label %84
    i32 9, label %87
    i32 8, label %90
    i32 12, label %93
  ]

81:                                               ; preds = %76
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %5, align 8
  store i8 110, i8* %82, align 1
  br label %131

84:                                               ; preds = %76
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %5, align 8
  store i8 114, i8* %85, align 1
  br label %131

87:                                               ; preds = %76
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %5, align 8
  store i8 116, i8* %88, align 1
  br label %131

90:                                               ; preds = %76
  %91 = load i8*, i8** %5, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %5, align 8
  store i8 98, i8* %91, align 1
  br label %131

93:                                               ; preds = %76
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %5, align 8
  store i8 102, i8* %94, align 1
  br label %131

96:                                               ; preds = %76
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %5, align 8
  store i8 117, i8* %97, align 1
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %5, align 8
  store i8 48, i8* %99, align 1
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %5, align 8
  store i8 48, i8* %101, align 1
  %103 = load i8, i8* %8, align 1
  %104 = sext i8 %103 to i32
  %105 = ashr i32 %104, 4
  %106 = add nsw i32 48, %105
  %107 = trunc i32 %106 to i8
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %5, align 8
  store i8 %107, i8* %108, align 1
  %110 = load i8, i8* %8, align 1
  %111 = sext i8 %110 to i32
  %112 = and i32 %111, 15
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %8, align 1
  %114 = load i8, i8* %8, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp slt i32 %115, 10
  br i1 %116, label %117, label %121

117:                                              ; preds = %96
  %118 = load i8, i8* %8, align 1
  %119 = sext i8 %118 to i32
  %120 = add nsw i32 48, %119
  br label %126

121:                                              ; preds = %96
  %122 = load i8, i8* %8, align 1
  %123 = sext i8 %122 to i32
  %124 = add nsw i32 65, %123
  %125 = sub nsw i32 %124, 10
  br label %126

126:                                              ; preds = %121, %117
  %127 = phi i32 [ %120, %117 ], [ %125, %121 ]
  %128 = trunc i32 %127 to i8
  %129 = load i8*, i8** %5, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %5, align 8
  store i8 %128, i8* %129, align 1
  br label %131

131:                                              ; preds = %126, %93, %90, %87, %84, %81
  br label %132

132:                                              ; preds = %131, %72
  %133 = load i64, i64* %7, align 8
  %134 = add i64 %133, -1
  store i64 %134, i64* %7, align 8
  br label %51

135:                                              ; preds = %51
  %136 = load i8*, i8** %5, align 8
  %137 = ptrtoint i8* %136 to i64
  store i64 %137, i64* %4, align 8
  br label %138

138:                                              ; preds = %135, %48
  %139 = load i64, i64* %4, align 8
  ret i64 %139
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
