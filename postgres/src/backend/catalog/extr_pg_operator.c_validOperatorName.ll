; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_operator.c_validOperatorName.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_operator.c_validOperatorName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAMEDATALEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"~!@#^&|`?+-*/%<>=\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"/*\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"~!@#^&|`?%\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @validOperatorName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validOperatorName(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strlen(i8* %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @NAMEDATALEN, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %80

15:                                               ; preds = %10
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strspn(i8* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %80

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @strstr(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %3, align 8
  %27 = call i64 @strstr(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21
  store i32 0, i32* %2, align 4
  br label %80

30:                                               ; preds = %25
  %31 = load i64, i64* %4, align 8
  %32 = icmp ugt i64 %31, 1
  br i1 %32, label %33, label %74

33:                                               ; preds = %30
  %34 = load i8*, i8** %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = sub i64 %35, 1
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 43
  br i1 %40, label %49, label %41

41:                                               ; preds = %33
  %42 = load i8*, i8** %3, align 8
  %43 = load i64, i64* %4, align 8
  %44 = sub i64 %43, 1
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 45
  br i1 %48, label %49, label %74

49:                                               ; preds = %41, %33
  %50 = load i64, i64* %4, align 8
  %51 = sub i64 %50, 2
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %66, %49
  %54 = load i32, i32* %5, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load i8*, i8** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = call i64 @strchr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8 signext %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %69

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %5, align 4
  br label %53

69:                                               ; preds = %64, %53
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %80

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %73, %41, %30
  %75 = load i8*, i8** %3, align 8
  %76 = call i64 @strcmp(i8* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %80

79:                                               ; preds = %74
  store i32 1, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %78, %72, %29, %20, %14
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
