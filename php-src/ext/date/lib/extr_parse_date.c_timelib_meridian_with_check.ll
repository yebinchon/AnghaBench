; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_date.c_timelib_meridian_with_check.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_date.c_timelib_meridian_with_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"AaPp\00", align 1
@TIMELIB_UNSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32)* @timelib_meridian_with_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timelib_meridian_with_check(i8** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %22, %2
  %8 = load i8**, i8*** %4, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = load i8**, i8*** %4, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i32 @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 signext %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %13, %7
  %21 = phi i1 [ false, %7 ], [ %19, %13 ]
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = load i8**, i8*** %4, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %23, align 8
  br label %7

26:                                               ; preds = %20
  %27 = load i8**, i8*** %4, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @TIMELIB_UNSET, align 4
  store i32 %32, i32* %3, align 4
  br label %117

33:                                               ; preds = %26
  %34 = load i8**, i8*** %4, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 97
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load i8**, i8*** %4, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 65
  br i1 %44, label %45, label %50

45:                                               ; preds = %39, %33
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 12
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 -12, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %45
  br label %55

50:                                               ; preds = %39
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 12
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 12, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %50
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i8**, i8*** %4, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %56, align 8
  %59 = load i8**, i8*** %4, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 46
  br i1 %63, label %64, label %96

64:                                               ; preds = %55
  %65 = load i8**, i8*** %4, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %65, align 8
  %68 = load i8**, i8*** %4, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 109
  br i1 %72, label %73, label %81

73:                                               ; preds = %64
  %74 = load i8**, i8*** %4, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @TIMELIB_UNSET, align 4
  store i32 %80, i32* %3, align 4
  br label %117

81:                                               ; preds = %73, %64
  %82 = load i8**, i8*** %4, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %82, align 8
  %85 = load i8**, i8*** %4, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 46
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = load i32, i32* @TIMELIB_UNSET, align 4
  store i32 %91, i32* %3, align 4
  br label %117

92:                                               ; preds = %81
  %93 = load i8**, i8*** %4, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %93, align 8
  br label %115

96:                                               ; preds = %55
  %97 = load i8**, i8*** %4, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 109
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  %103 = load i8**, i8*** %4, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 77
  br i1 %107, label %108, label %112

108:                                              ; preds = %102, %96
  %109 = load i8**, i8*** %4, align 8
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %109, align 8
  br label %114

112:                                              ; preds = %102
  %113 = load i32, i32* @TIMELIB_UNSET, align 4
  store i32 %113, i32* %3, align 4
  br label %117

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114, %92
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %115, %112, %90, %79, %31
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
