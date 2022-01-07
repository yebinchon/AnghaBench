; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges.c_parse_ipv4.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges.c_parse_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i32*)* @parse_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ipv4(i8* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %116, %4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ult i32 %18, 4
  br i1 %19, label %20, label %119

20:                                               ; preds = %17
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp uge i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -4, i32* %5, align 4
  br label %124

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = and i32 %31, 255
  %33 = trunc i32 %32 to i8
  %34 = call i64 @isdigit(i8 signext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %124

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %52, %37
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 48
  br label %50

50:                                               ; preds = %42, %38
  %51 = phi i1 [ false, %38 ], [ %49, %42 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load i32, i32* %10, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %38

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %90, %55
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = and i32 %66, 255
  %68 = trunc i32 %67 to i8
  %69 = call i64 @isdigit(i8 signext %68)
  %70 = icmp ne i64 %69, 0
  br label %71

71:                                               ; preds = %60, %56
  %72 = phi i1 [ false, %56 ], [ %70, %60 ]
  br i1 %72, label %73, label %91

73:                                               ; preds = %71
  %74 = load i32, i32* %13, align 4
  %75 = mul i32 %74, 10
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = sub nsw i32 %81, 48
  %83 = add i32 %75, %82
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %10, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %14, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %14, align 4
  %88 = icmp ugt i32 %87, 3
  br i1 %88, label %89, label %90

89:                                               ; preds = %73
  store i32 -2, i32* %5, align 4
  br label %124

90:                                               ; preds = %73
  br label %56

91:                                               ; preds = %71
  %92 = load i32, i32* %13, align 4
  %93 = icmp ugt i32 %92, 255
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 -5, i32* %5, align 4
  br label %124

95:                                               ; preds = %91
  %96 = load i32, i32* %11, align 4
  %97 = mul i32 %96, 256
  %98 = load i32, i32* %13, align 4
  %99 = and i32 %98, 255
  %100 = add i32 %97, %99
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp eq i32 %101, 3
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %119

104:                                              ; preds = %95
  %105 = load i8*, i8** %6, align 8
  %106 = load i32, i32* %10, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 46
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  store i32 -3, i32* %5, align 4
  br label %124

113:                                              ; preds = %104
  %114 = load i32, i32* %10, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %12, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %17

119:                                              ; preds = %103, %17
  %120 = load i32, i32* %10, align 4
  %121 = load i32*, i32** %7, align 8
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32*, i32** %9, align 8
  store i32 %122, i32* %123, align 4
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %119, %112, %94, %89, %36, %24
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i64 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
