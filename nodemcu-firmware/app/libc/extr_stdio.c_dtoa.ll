; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/libc/extr_stdio.c_dtoa.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/libc/extr_stdio.c_dtoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_FCONVERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"-Infinity\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@MAX_FRACT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtoa(i8* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* @MAX_FCONVERSION, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @_finite(i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %5
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @_isNan(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strcpy(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %42

32:                                               ; preds = %25
  %33 = load i64, i64* %7, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @strcpy(i8* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %41

38:                                               ; preds = %32
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @strcpy(i8* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41, %29
  store i32 1, i32* %16, align 4
  br label %89

43:                                               ; preds = %5
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 6, i32* %10, align 4
  br label %54

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @MAX_FRACT, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @MAX_FRACT, align 4
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %51, %47
  br label %54

54:                                               ; preds = %53, %46
  %55 = getelementptr inbounds i8, i8* %21, i64 1
  store i8* %55, i8** %13, align 8
  %56 = load i8*, i8** %13, align 8
  store i8 0, i8* %56, align 1
  %57 = load i64, i64* %7, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i8*, i8** %13, align 8
  %61 = getelementptr inbounds i8, i8* %21, i64 %19
  %62 = call i32 @cvt(i64 %57, i32 %58, i8* %14, i32 %59, i8* %60, i8* %61)
  store i32 %62, i32* %15, align 4
  %63 = load i8*, i8** %13, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %54
  %68 = load i8*, i8** %13, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %13, align 8
  br label %70

70:                                               ; preds = %67, %54
  %71 = load i8, i8* %14, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i8, i8* %14, align 1
  %75 = load i8*, i8** %13, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 -1
  store i8* %76, i8** %13, align 8
  store i8 %74, i8* %76, align 1
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %73, %70
  %80 = load i8*, i8** %13, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  store i8 0, i8* %83, align 1
  %84 = load i8*, i8** %6, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, 1
  %88 = call i32 @memcpy(i8* %84, i8* %85, i32 %87)
  store i32 0, i32* %16, align 4
  br label %89

89:                                               ; preds = %79, %42
  %90 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %16, align 4
  switch i32 %91, label %93 [
    i32 0, label %92
    i32 1, label %92
  ]

92:                                               ; preds = %89, %89
  ret void

93:                                               ; preds = %89
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_finite(i64) #2

declare dso_local i64 @_isNan(i64) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @cvt(i64, i32, i8*, i32, i8*, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
