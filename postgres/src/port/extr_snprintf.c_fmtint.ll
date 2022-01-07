; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_snprintf.c_fmtint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_snprintf.c_fmtint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8, i32, i32, i32, i32, i32, i32, i32*)* @fmtint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmtint(i64 %0, i8 signext %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca [64 x i8], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i64 %0, i64* %10, align 8
  store i8 %1, i8* %11, align 1
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %25, align 4
  %28 = load i8, i8* %11, align 1
  %29 = sext i8 %28 to i32
  switch i32 %29, label %35 [
    i32 100, label %30
    i32 105, label %30
    i32 111, label %31
    i32 117, label %32
    i32 120, label %33
    i32 88, label %34
  ]

30:                                               ; preds = %9, %9
  store i64 10, i64* %19, align 8
  store i32 1, i32* %21, align 4
  br label %36

31:                                               ; preds = %9
  store i64 8, i64* %19, align 8
  store i32 0, i32* %21, align 4
  br label %36

32:                                               ; preds = %9
  store i64 10, i64* %19, align 8
  store i32 0, i32* %21, align 4
  br label %36

33:                                               ; preds = %9
  store i64 16, i64* %19, align 8
  store i32 0, i32* %21, align 4
  br label %36

34:                                               ; preds = %9
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %22, align 8
  store i64 16, i64* %19, align 8
  store i32 0, i32* %21, align 4
  br label %36

35:                                               ; preds = %9
  br label %115

36:                                               ; preds = %34, %33, %32, %31, %30
  %37 = load i32, i32* %21, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load i64, i64* %10, align 8
  %41 = icmp slt i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %12, align 4
  %44 = call i64 @adjust_sign(i32 %42, i32 %43, i32* %23)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i64, i64* %10, align 8
  %48 = sub i64 0, %47
  store i64 %48, i64* %20, align 8
  br label %51

49:                                               ; preds = %39, %36
  %50 = load i64, i64* %10, align 8
  store i64 %50, i64* %20, align 8
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i64, i64* %10, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %16, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 0, i32* %25, align 4
  br label %81

61:                                               ; preds = %57, %54, %51
  br label %62

62:                                               ; preds = %77, %61
  %63 = load i8*, i8** %22, align 8
  %64 = load i64, i64* %20, align 8
  %65 = load i64, i64* %19, align 8
  %66 = urem i64 %64, %65
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = load i32, i32* %25, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %25, align 4
  %71 = sext i32 %70 to i64
  %72 = sub i64 64, %71
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 %72
  store i8 %68, i8* %73, align 1
  %74 = load i64, i64* %20, align 8
  %75 = load i64, i64* %19, align 8
  %76 = udiv i64 %74, %75
  store i64 %76, i64* %20, align 8
  br label %77

77:                                               ; preds = %62
  %78 = load i64, i64* %20, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %62, label %80

80:                                               ; preds = %77
  br label %81

81:                                               ; preds = %80, %60
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %25, align 4
  %84 = sub nsw i32 %82, %83
  %85 = call i32 @Max(i32 0, i32 %84)
  store i32 %85, i32* %27, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %25, align 4
  %88 = load i32, i32* %27, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @compute_padlen(i32 %86, i32 %89, i32 %90)
  store i32 %91, i32* %26, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %23, align 4
  %94 = load i32*, i32** %18, align 8
  %95 = call i32 @leading_pad(i32 %92, i32 %93, i32* %26, i32* %94)
  %96 = load i32, i32* %27, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %81
  %99 = load i32, i32* %27, align 4
  %100 = load i32*, i32** %18, align 8
  %101 = call i32 @dopr_outchmulti(i32 48, i32 %99, i32* %100)
  br label %102

102:                                              ; preds = %98, %81
  %103 = getelementptr inbounds [64 x i8], [64 x i8]* %24, i64 0, i64 0
  %104 = getelementptr inbounds i8, i8* %103, i64 64
  %105 = load i32, i32* %25, align 4
  %106 = sext i32 %105 to i64
  %107 = sub i64 0, %106
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  %109 = load i32, i32* %25, align 4
  %110 = load i32*, i32** %18, align 8
  %111 = call i32 @dostr(i8* %108, i32 %109, i32* %110)
  %112 = load i32, i32* %26, align 4
  %113 = load i32*, i32** %18, align 8
  %114 = call i32 @trailing_pad(i32 %112, i32* %113)
  br label %115

115:                                              ; preds = %102, %35
  ret void
}

declare dso_local i64 @adjust_sign(i32, i32, i32*) #1

declare dso_local i32 @Max(i32, i32) #1

declare dso_local i32 @compute_padlen(i32, i32, i32) #1

declare dso_local i32 @leading_pad(i32, i32, i32*, i32*) #1

declare dso_local i32 @dopr_outchmulti(i32, i32, i32*) #1

declare dso_local i32 @dostr(i8*, i32, i32*) #1

declare dso_local i32 @trailing_pad(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
