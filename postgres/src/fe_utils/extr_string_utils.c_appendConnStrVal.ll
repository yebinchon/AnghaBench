; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_string_utils.c_appendConnStrVal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_string_utils.c_appendConnStrVal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @appendConnStrVal(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 1, i32* %6, align 4
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** %5, align 8
  br label %8

8:                                                ; preds = %54, %2
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %57

12:                                               ; preds = %8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp sge i32 %15, 97
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp sle i32 %20, 122
  br i1 %21, label %53, label %22

22:                                               ; preds = %17, %12
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp sge i32 %25, 65
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp sle i32 %30, 90
  br i1 %31, label %53, label %32

32:                                               ; preds = %27, %22
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sge i32 %35, 48
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp sle i32 %40, 57
  br i1 %41, label %53, label %42

42:                                               ; preds = %37, %32
  %43 = load i8*, i8** %5, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 95
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %5, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 46
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32 1, i32* %6, align 4
  br label %57

53:                                               ; preds = %47, %42, %37, %27, %17
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %53
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  br label %8

57:                                               ; preds = %52, %8
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %90

60:                                               ; preds = %57
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @appendPQExpBufferChar(i32 %61, i8 signext 39)
  br label %63

63:                                               ; preds = %80, %60
  %64 = load i8*, i8** %4, align 8
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %63
  %68 = load i8*, i8** %4, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 39
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load i8*, i8** %4, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 92
  br i1 %76, label %77, label %80

77:                                               ; preds = %72, %67
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @appendPQExpBufferChar(i32 %78, i8 signext 92)
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i32, i32* %3, align 4
  %82 = load i8*, i8** %4, align 8
  %83 = load i8, i8* %82, align 1
  %84 = call i32 @appendPQExpBufferChar(i32 %81, i8 signext %83)
  %85 = load i8*, i8** %4, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %4, align 8
  br label %63

87:                                               ; preds = %63
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @appendPQExpBufferChar(i32 %88, i8 signext 39)
  br label %94

90:                                               ; preds = %57
  %91 = load i32, i32* %3, align 4
  %92 = load i8*, i8** %4, align 8
  %93 = call i32 @appendPQExpBufferStr(i32 %91, i8* %92)
  br label %94

94:                                               ; preds = %90, %87
  ret void
}

declare dso_local i32 @appendPQExpBufferChar(i32, i8 signext) #1

declare dso_local i32 @appendPQExpBufferStr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
