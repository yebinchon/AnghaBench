; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_utils.c_HPDF_IToA.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_utils.c_HPDF_IToA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HPDF_INT_LEN = common dso_local global i32 0, align 4
@HPDF_LIMIT_MIN_INT = common dso_local global i32 0, align 4
@HPDF_LIMIT_MAX_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @HPDF_IToA(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @HPDF_INT_LEN, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @HPDF_LIMIT_MIN_INT, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @HPDF_LIMIT_MIN_INT, align 4
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %4, align 8
  store i8 45, i8* %24, align 1
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %42

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @HPDF_LIMIT_MAX_INT, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @HPDF_LIMIT_MAX_INT, align 4
  store i32 %33, i32* %5, align 4
  br label %41

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %4, align 8
  store i8 48, i8* %38, align 1
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %32
  br label %42

42:                                               ; preds = %41, %23
  %43 = load i32, i32* @HPDF_INT_LEN, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %14, i64 %44
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %47, i8** %7, align 8
  store i8 0, i8* %46, align 1
  br label %48

48:                                               ; preds = %51, %42
  %49 = load i32, i32* %5, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = srem i32 %52, 10
  %54 = trunc i32 %53 to i8
  %55 = sext i8 %54 to i32
  %56 = add nsw i32 %55, 48
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %7, align 8
  store i8 %57, i8* %58, align 1
  %59 = load i32, i32* %5, align 4
  %60 = sdiv i32 %59, 10
  store i32 %60, i32* %5, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 -1
  store i8* %62, i8** %7, align 8
  br label %48

63:                                               ; preds = %48
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %7, align 8
  br label %66

66:                                               ; preds = %77, %63
  %67 = load i8*, i8** %4, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = icmp ult i8* %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i8*, i8** %7, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br label %75

75:                                               ; preds = %70, %66
  %76 = phi i1 [ false, %66 ], [ %74, %70 ]
  br i1 %76, label %77, label %83

77:                                               ; preds = %75
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %7, align 8
  %80 = load i8, i8* %78, align 1
  %81 = load i8*, i8** %4, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %4, align 8
  store i8 %80, i8* %81, align 1
  br label %66

83:                                               ; preds = %75
  %84 = load i8*, i8** %4, align 8
  store i8 0, i8* %84, align 1
  %85 = load i8*, i8** %4, align 8
  %86 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %86)
  ret i8* %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
