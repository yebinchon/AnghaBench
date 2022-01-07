; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_LoadUnicodeName.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_LoadUnicodeName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HPDF_LIMIT_MAX_NAME_LEN = common dso_local global i32 0, align 4
@HPDF_SEEK_SET = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i8*)* @LoadUnicodeName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoadUnicodeName(i32 %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %17 = mul nsw i32 %16, 2
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* @HPDF_LIMIT_MAX_NAME_LEN, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i32 @HPDF_MemSet(i8* %22, i32 0, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* @HPDF_SEEK_SET, align 4
  %29 = call i32 @HPDF_Stream_Seek(i32 %26, i64 %27, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* @HPDF_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %61

34:                                               ; preds = %4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @HPDF_Stream_Read(i32 %35, i8* %21, i64* %8)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* @HPDF_OK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %61

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %46, %41
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load i64, i64* %12, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %12, align 8
  %50 = getelementptr inbounds i8, i8* %21, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %13, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8 %51, i8* %54, align 1
  %55 = load i64, i64* %13, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %13, align 8
  %57 = load i64, i64* %12, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %12, align 8
  br label %42

59:                                               ; preds = %42
  %60 = load i32, i32* @HPDF_OK, align 4
  store i32 %60, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %61

61:                                               ; preds = %59, %39, %32
  %62 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @HPDF_MemSet(i8*, i32, i32) #2

declare dso_local i32 @HPDF_Stream_Seek(i32, i64, i32) #2

declare dso_local i32 @HPDF_Stream_Read(i32, i8*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
