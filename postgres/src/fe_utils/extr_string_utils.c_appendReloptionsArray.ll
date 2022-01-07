; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_string_utils.c_appendReloptionsArray.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_string_utils.c_appendReloptionsArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s%s=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @appendReloptionsArray(i32 %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @parsePGArray(i8* %19, i8*** %12, i32* %13)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %5
  %23 = load i8**, i8*** %12, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i8**, i8*** %12, align 8
  %27 = call i32 @free(i8** %26)
  br label %28

28:                                               ; preds = %25, %22
  store i32 0, i32* %6, align 4
  br label %88

29:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %30

30:                                               ; preds = %78, %29
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %81

34:                                               ; preds = %30
  %35 = load i8**, i8*** %12, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %15, align 8
  %40 = load i8*, i8** %15, align 8
  store i8* %40, i8** %16, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = call i8* @strchr(i8* %41, i8 signext 61)
  store i8* %42, i8** %17, align 8
  %43 = load i8*, i8** %17, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load i8*, i8** %17, align 8
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %17, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %48, i8** %18, align 8
  br label %50

49:                                               ; preds = %34
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  br label %50

50:                                               ; preds = %49, %45
  %51 = load i32, i32* %14, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @appendPQExpBufferStr(i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %7, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = load i8*, i8** %16, align 8
  %60 = call i32 @fmtId(i8* %59)
  %61 = call i32 @appendPQExpBuffer(i32 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %58, i32 %60)
  %62 = load i8*, i8** %18, align 8
  %63 = call i32 @fmtId(i8* %62)
  %64 = load i8*, i8** %18, align 8
  %65 = call i64 @strcmp(i32 %63, i8* %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %56
  %68 = load i32, i32* %7, align 4
  %69 = load i8*, i8** %18, align 8
  %70 = call i32 @appendPQExpBufferStr(i32 %68, i8* %69)
  br label %77

71:                                               ; preds = %56
  %72 = load i32, i32* %7, align 4
  %73 = load i8*, i8** %18, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @appendStringLiteral(i32 %72, i8* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %71, %67
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %30

81:                                               ; preds = %30
  %82 = load i8**, i8*** %12, align 8
  %83 = icmp ne i8** %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i8**, i8*** %12, align 8
  %86 = call i32 @free(i8** %85)
  br label %87

87:                                               ; preds = %84, %81
  store i32 1, i32* %6, align 4
  br label %88

88:                                               ; preds = %87, %28
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @parsePGArray(i8*, i8***, i32*) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @appendPQExpBufferStr(i32, i8*) #1

declare dso_local i32 @appendPQExpBuffer(i32, i8*, i8*, i32) #1

declare dso_local i32 @fmtId(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @appendStringLiteral(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
