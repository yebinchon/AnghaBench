; ModuleID = '/home/carl/AnghaBench/no-more-secrets/src/extr_input.c_input_get_str.c'
source_filename = "/home/carl/AnghaBench/no-more-secrets/src/extr_input.c_input_get_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"Could not get input.\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"No input provided.\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Memory allocation error.\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Input contains non-ascii characters.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_get_str(i8** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @input_get(i8** %9, i8* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @error_log(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %102

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %16
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %46

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 13
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %33, %28
  br label %46

46:                                               ; preds = %45, %19
  br label %47

47:                                               ; preds = %46, %16
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 @error_log(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %102

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i8* @malloc(i32 %55)
  %57 = load i8**, i8*** %4, align 8
  store i8* %56, i8** %57, align 8
  %58 = load i8**, i8*** %4, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = call i32 @error_log(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %102

63:                                               ; preds = %52
  %64 = load i8**, i8*** %4, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i32 @memset(i8* %65, i32 0, i32 %67)
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %95, %63
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %98

73:                                               ; preds = %69
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = call i64 @isascii(i8 zeroext %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %73
  %82 = load i8*, i8** %9, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = load i8**, i8*** %4, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  store i8 %86, i8* %91, align 1
  br label %94

92:                                               ; preds = %73
  %93 = call i32 @error_log(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %102

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %69

98:                                               ; preds = %69
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @free(i8* %99)
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %98, %92, %61, %50, %14
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @input_get(i8**, i8*) #1

declare dso_local i32 @error_log(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @isascii(i8 zeroext) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
