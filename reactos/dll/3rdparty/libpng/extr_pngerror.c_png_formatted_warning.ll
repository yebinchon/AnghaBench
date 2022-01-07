; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngerror.c_png_formatted_warning.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngerror.c_png_formatted_warning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@png_formatted_warning.valid_parameters = internal constant [10 x i8] c"123456789\00", align 1
@PNG_WARNING_PARAMETER_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_formatted_warning(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [192 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %103, %99, %3
  %14 = load i64, i64* %7, align 8
  %15 = icmp ult i64 %14, 191
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i1 [ false, %13 ], [ %20, %16 ]
  br i1 %22, label %23, label %110

23:                                               ; preds = %21
  %24 = load i8**, i8*** %5, align 8
  %25 = icmp ne i8** %24, null
  br i1 %25, label %26, label %103

26:                                               ; preds = %23
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 64
  br i1 %30, label %31, label %103

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %103

37:                                               ; preds = %31
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  store i32 %41, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %59, %37
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [10 x i8], [10 x i8]* @png_formatted_warning.valid_parameters, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [10 x i8], [10 x i8]* @png_formatted_warning.valid_parameters, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %50, %42
  %58 = phi i1 [ false, %42 ], [ %56, %50 ]
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %42

62:                                               ; preds = %57
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @PNG_WARNING_PARAMETER_COUNT, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %102

66:                                               ; preds = %62
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %11, align 8
  %72 = load i8**, i8*** %5, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 8
  store i8* %77, i8** %12, align 8
  br label %78

78:                                               ; preds = %92, %66
  %79 = load i64, i64* %7, align 8
  %80 = icmp ult i64 %79, 191
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load i8*, i8** %11, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i8*, i8** %11, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = icmp ult i8* %87, %88
  br label %90

90:                                               ; preds = %86, %81, %78
  %91 = phi i1 [ false, %81 ], [ false, %78 ], [ %89, %86 ]
  br i1 %91, label %92, label %99

92:                                               ; preds = %90
  %93 = load i8*, i8** %11, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %11, align 8
  %95 = load i8, i8* %93, align 1
  %96 = load i64, i64* %7, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %7, align 8
  %98 = getelementptr inbounds [192 x i8], [192 x i8]* %8, i64 0, i64 %96
  store i8 %95, i8* %98, align 1
  br label %78

99:                                               ; preds = %90
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %6, align 8
  br label %13

102:                                              ; preds = %62
  br label %103

103:                                              ; preds = %102, %31, %26, %23
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %6, align 8
  %106 = load i8, i8* %104, align 1
  %107 = load i64, i64* %7, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %7, align 8
  %109 = getelementptr inbounds [192 x i8], [192 x i8]* %8, i64 0, i64 %107
  store i8 %106, i8* %109, align 1
  br label %13

110:                                              ; preds = %21
  %111 = load i64, i64* %7, align 8
  %112 = getelementptr inbounds [192 x i8], [192 x i8]* %8, i64 0, i64 %111
  store i8 0, i8* %112, align 1
  %113 = load i32, i32* %4, align 4
  %114 = getelementptr inbounds [192 x i8], [192 x i8]* %8, i64 0, i64 0
  %115 = call i32 @png_warning(i32 %113, i8* %114)
  ret void
}

declare dso_local i32 @png_warning(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
