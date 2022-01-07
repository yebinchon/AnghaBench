; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_inf.c_trim.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_inf.c_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @trim(i8* %0, i8** %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %9

9:                                                ; preds = %25, %3
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 9
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 32
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %28

24:                                               ; preds = %18, %13
  br label %25

25:                                               ; preds = %24
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %5, align 8
  br label %9

28:                                               ; preds = %23, %9
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load i8**, i8*** %6, align 8
  %34 = icmp ne i8** %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i8*, i8** %5, align 8
  %37 = load i8**, i8*** %6, align 8
  store i8* %36, i8** %37, align 8
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i8*, i8** %5, align 8
  store i8* %39, i8** %4, align 8
  br label %97

40:                                               ; preds = %28
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = getelementptr inbounds i8, i8* %45, i64 -1
  store i8* %46, i8** %8, align 8
  br label %47

47:                                               ; preds = %64, %40
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = icmp ugt i8* %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load i8*, i8** %8, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 9
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i8*, i8** %8, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 32
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %67

62:                                               ; preds = %56, %51
  %63 = load i8*, i8** %8, align 8
  store i8 0, i8* %63, align 1
  br label %64

64:                                               ; preds = %62
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 -1
  store i8* %66, i8** %8, align 8
  br label %47

67:                                               ; preds = %61, %47
  %68 = load i64, i64* %7, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %67
  %71 = load i8*, i8** %8, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = icmp ne i8* %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = load i8*, i8** %8, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 34
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load i8*, i8** %5, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 34
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %5, align 8
  %87 = load i8*, i8** %8, align 8
  store i8 0, i8* %87, align 1
  br label %88

88:                                               ; preds = %84, %79, %74
  br label %89

89:                                               ; preds = %88, %70, %67
  %90 = load i8**, i8*** %6, align 8
  %91 = icmp ne i8** %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i8*, i8** %8, align 8
  %94 = load i8**, i8*** %6, align 8
  store i8* %93, i8** %94, align 8
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i8*, i8** %5, align 8
  store i8* %96, i8** %4, align 8
  br label %97

97:                                               ; preds = %95, %38
  %98 = load i8*, i8** %4, align 8
  ret i8* %98
}

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
