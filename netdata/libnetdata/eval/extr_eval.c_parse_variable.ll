; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/eval/extr_eval.c_parse_variable.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/eval/extr_eval.c_parse_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i64)* @parse_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_variable(i8** %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 36
  br i1 %15, label %16, label %97

16:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 123
  br i1 %22, label %23, label %59

23:                                               ; preds = %16
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %8, align 8
  br label %26

26:                                               ; preds = %42, %23
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i8*, i8** %8, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 125
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ult i64 %37, %38
  br label %40

40:                                               ; preds = %36, %31, %26
  %41 = phi i1 [ false, %31 ], [ false, %26 ], [ %39, %36 ]
  br i1 %41, label %42, label %50

42:                                               ; preds = %40
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %8, align 8
  %45 = load i8, i8* %43, align 1
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %9, align 8
  %49 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8 %45, i8* %49, align 1
  br label %26

50:                                               ; preds = %40
  %51 = load i8*, i8** %8, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 125
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %8, align 8
  br label %58

58:                                               ; preds = %55, %50
  br label %85

59:                                               ; preds = %16
  br label %60

60:                                               ; preds = %76, %59
  %61 = load i8*, i8** %8, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load i8*, i8** %8, align 8
  %67 = load i8, i8* %66, align 1
  %68 = call i32 @isvariableterm(i8 signext %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp ult i64 %71, %72
  br label %74

74:                                               ; preds = %70, %65, %60
  %75 = phi i1 [ false, %65 ], [ false, %60 ], [ %73, %70 ]
  br i1 %75, label %76, label %84

76:                                               ; preds = %74
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %8, align 8
  %79 = load i8, i8* %77, align 1
  %80 = load i8*, i8** %6, align 8
  %81 = load i64, i64* %9, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %9, align 8
  %83 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8 %79, i8* %83, align 1
  br label %60

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %58
  %86 = load i8*, i8** %6, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8 0, i8* %88, align 1
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load i8*, i8** %8, align 8
  %95 = load i8**, i8*** %5, align 8
  store i8* %94, i8** %95, align 8
  store i32 1, i32* %4, align 4
  br label %98

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %3
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %93
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @isvariableterm(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
