; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_int_to_roman.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_int_to_roman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@rm100 = common dso_local global i8** null, align 8
@rm10 = common dso_local global i8** null, align 8
@rm1 = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @int_to_roman to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @int_to_roman(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [12 x i8], align 1
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %9 = call i64 @palloc(i32 16)
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  store i8 0, i8* %11, align 1
  %12 = load i32, i32* %3, align 4
  %13 = icmp sgt i32 %12, 3999
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %14, %1
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @fill_str(i8* %18, i8 signext 35, i32 15)
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %2, align 8
  br label %95

21:                                               ; preds = %14
  %22 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @snprintf(i8* %22, i32 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  store i8* %25, i8** %6, align 8
  br label %26

26:                                               ; preds = %88, %21
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %93

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = sub nsw i32 %34, 49
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %88

39:                                               ; preds = %31
  %40 = load i32, i32* %4, align 4
  %41 = icmp sgt i32 %40, 3
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %47, %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %5, align 4
  %46 = icmp ne i32 %44, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @strcat(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %43

50:                                               ; preds = %43
  br label %87

51:                                               ; preds = %39
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i8*, i8** %7, align 8
  %56 = load i8**, i8*** @rm100, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @strcat(i8* %55, i8* %60)
  br label %86

62:                                               ; preds = %51
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i8*, i8** %7, align 8
  %67 = load i8**, i8*** @rm10, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strcat(i8* %66, i8* %71)
  br label %85

73:                                               ; preds = %62
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i8*, i8** %7, align 8
  %78 = load i8**, i8*** @rm1, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @strcat(i8* %77, i8* %82)
  br label %84

84:                                               ; preds = %76, %73
  br label %85

85:                                               ; preds = %84, %65
  br label %86

86:                                               ; preds = %85, %54
  br label %87

87:                                               ; preds = %86, %50
  br label %88

88:                                               ; preds = %87, %38
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %6, align 8
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %4, align 4
  br label %26

93:                                               ; preds = %26
  %94 = load i8*, i8** %7, align 8
  store i8* %94, i8** %2, align 8
  br label %95

95:                                               ; preds = %93, %17
  %96 = load i8*, i8** %2, align 8
  ret i8* %96
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @fill_str(i8*, i8 signext, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
