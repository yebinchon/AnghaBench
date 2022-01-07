; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_option.c_briopt_check.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_option.c_briopt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@curwin = common dso_local global %struct.TYPE_2__* null, align 8
@NUL = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [7 x i8] c"shift:\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"min:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"sbr\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @briopt_check() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i64 20, i64* %4, align 8
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curwin, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %2, align 8
  br label %10

10:                                               ; preds = %91, %0
  %11 = load i8*, i8** %2, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8, i8* @NUL, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %92

17:                                               ; preds = %10
  %18 = load i8*, i8** %2, align 8
  %19 = call i64 @STRNCMP(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = load i8*, i8** %2, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 6
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 45
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i8*, i8** %2, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 7
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @VIM_ISDIGIT(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27, %21
  %34 = load i8*, i8** %2, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 6
  %36 = load i8, i8* %35, align 1
  %37 = call i64 @VIM_ISDIGIT(i8 signext %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33, %27
  %40 = load i8*, i8** %2, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 6
  store i8* %41, i8** %2, align 8
  %42 = call i8* @getdigits(i8** %2)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %3, align 4
  br label %69

44:                                               ; preds = %33, %17
  %45 = load i8*, i8** %2, align 8
  %46 = call i64 @STRNCMP(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load i8*, i8** %2, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 4
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @VIM_ISDIGIT(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load i8*, i8** %2, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 4
  store i8* %56, i8** %2, align 8
  %57 = call i8* @getdigits(i8** %2)
  %58 = ptrtoint i8* %57 to i64
  store i64 %58, i64* %4, align 8
  br label %68

59:                                               ; preds = %48, %44
  %60 = load i8*, i8** %2, align 8
  %61 = call i64 @STRNCMP(i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i8*, i8** %2, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 3
  store i8* %65, i8** %2, align 8
  %66 = load i32, i32* @TRUE, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %63, %59
  br label %68

68:                                               ; preds = %67, %54
  br label %69

69:                                               ; preds = %68, %39
  %70 = load i8*, i8** %2, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 44
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load i8*, i8** %2, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = load i8, i8* @NUL, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @FAIL, align 4
  store i32 %82, i32* %1, align 4
  br label %103

83:                                               ; preds = %74, %69
  %84 = load i8*, i8** %2, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 44
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i8*, i8** %2, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %2, align 8
  br label %91

91:                                               ; preds = %88, %83
  br label %10

92:                                               ; preds = %10
  %93 = load i32, i32* %3, align 4
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curwin, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load i64, i64* %4, align 8
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curwin, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curwin, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* @OK, align 4
  store i32 %102, i32* %1, align 4
  br label %103

103:                                              ; preds = %92, %81
  %104 = load i32, i32* %1, align 4
  ret i32 %104
}

declare dso_local i64 @STRNCMP(i8*, i8*, i32) #1

declare dso_local i64 @VIM_ISDIGIT(i8 signext) #1

declare dso_local i8* @getdigits(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
