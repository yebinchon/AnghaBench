; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_strnatcmp.c_compare_left.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_strnatcmp.c_compare_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i8**, i8*)* @compare_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_left(i8** %0, i8* %1, i8** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8* %3, i8** %9, align 8
  br label %10

10:                                               ; preds = %88, %4
  %11 = load i8**, i8*** %6, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp eq i8* %12, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = load i8**, i8*** %6, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = call i32 @isdigit(i32 %19) #2
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %15, %10
  %23 = load i8**, i8*** %8, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load i8**, i8*** %8, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = call i32 @isdigit(i32 %31) #2
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27, %22
  store i32 0, i32* %5, align 4
  br label %95

35:                                               ; preds = %27, %15
  %36 = load i8**, i8*** %6, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = icmp eq i8* %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  %41 = load i8**, i8*** %6, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = call i32 @isdigit(i32 %44) #2
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40, %35
  store i32 -1, i32* %5, align 4
  br label %95

48:                                               ; preds = %40
  %49 = load i8**, i8*** %8, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = icmp eq i8* %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = load i8**, i8*** %8, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = call i32 @isdigit(i32 %57) #2
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53, %48
  store i32 1, i32* %5, align 4
  br label %95

61:                                               ; preds = %53
  %62 = load i8**, i8*** %6, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = load i8**, i8*** %8, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp slt i32 %65, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  store i32 -1, i32* %5, align 4
  br label %95

72:                                               ; preds = %61
  %73 = load i8**, i8*** %6, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = load i8**, i8*** %8, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp sgt i32 %76, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  store i32 1, i32* %5, align 4
  br label %95

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87
  %89 = load i8**, i8*** %6, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %89, align 8
  %92 = load i8**, i8*** %8, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %92, align 8
  br label %10

95:                                               ; preds = %82, %71, %60, %47, %34
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
