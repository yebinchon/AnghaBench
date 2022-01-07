; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_inet_pton.c_inet_pton4.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_inet_pton.c_inet_pton4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inet_pton4.digits = internal constant [11 x i8] c"0123456789\00", align 1
@INADDRSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @inet_pton4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_pton4(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i32, i32* @INADDRSZ, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  store i8 0, i8* %19, align 1
  br label %20

20:                                               ; preds = %80, %2
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  %23 = load i8, i8* %21, align 1
  %24 = sext i8 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %81

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = call i8* @strchr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @inet_pton4.digits, i64 0, i64 0), i32 %27)
  store i8* %28, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %65

30:                                               ; preds = %26
  %31 = load i8*, i8** %11, align 8
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = mul nsw i32 %33, 10
  %35 = load i8*, i8** %12, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = sub i64 %36, ptrtoint ([11 x i8]* @inet_pton4.digits to i64)
  %38 = trunc i64 %37 to i32
  %39 = add i32 %34, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load i8*, i8** %11, align 8
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %89

48:                                               ; preds = %42, %30
  %49 = load i32, i32* %13, align 4
  %50 = icmp ugt i32 %49, 255
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %89

52:                                               ; preds = %48
  %53 = load i32, i32* %13, align 4
  %54 = trunc i32 %53 to i8
  %55 = load i8*, i8** %11, align 8
  store i8 %54, i8* %55, align 1
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  %61 = icmp sgt i32 %60, 4
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %89

63:                                               ; preds = %58
  store i32 1, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %52
  br label %80

65:                                               ; preds = %26
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 46
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 4
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %89

75:                                               ; preds = %71
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %11, align 8
  store i8 0, i8* %77, align 1
  store i32 0, i32* %6, align 4
  br label %79

78:                                               ; preds = %68, %65
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %89

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %79, %64
  br label %20

81:                                               ; preds = %20
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 4
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %89

85:                                               ; preds = %81
  %86 = load i8*, i8** %5, align 8
  %87 = load i32, i32* @INADDRSZ, align 4
  %88 = call i32 @memcpy(i8* %86, i8* %18, i32 %87)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %89

89:                                               ; preds = %85, %84, %78, %74, %62, %51, %47
  %90 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strchr(i8*, i32) #2

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
