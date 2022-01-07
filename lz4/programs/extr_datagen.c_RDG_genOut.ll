; ModuleID = '/home/carl/AnghaBench/lz4/programs/extr_datagen.c_RDG_genOut.c'
source_filename = "/home/carl/AnghaBench/lz4/programs/extr_datagen.c_RDG_genOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RDG_DICTSIZE = common dso_local global i32 0, align 4
@RDG_BLOCKSIZE = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RDG_genOut(i64 %0, double %1, double %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @RDG_DICTSIZE, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* @RDG_BLOCKSIZE, align 8
  %17 = add i64 %15, %16
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %20 = load i64, i64* @RDG_BLOCKSIZE, align 8
  store i64 %20, i64* %12, align 8
  %21 = load double, double* %7, align 8
  %22 = fcmp oeq double %21, 0.000000e+00
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load double, double* %6, align 8
  %25 = fdiv double %24, 4.500000e+00
  store double %25, double* %7, align 8
  br label %26

26:                                               ; preds = %23, %4
  %27 = load i32, i32* %13, align 4
  %28 = load double, double* %7, align 8
  %29 = call i32 @RDG_fillLiteralDistrib(i32 %27, double %28)
  %30 = load i32, i32* @stdout, align 4
  %31 = call i32 @SET_BINARY_MODE(i32 %30)
  %32 = load i32, i32* @RDG_DICTSIZE, align 4
  %33 = load double, double* %6, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @RDG_genBlock(i32* %19, i32 %32, i32 0, double %33, i32 %34, i32* %8)
  br label %36

36:                                               ; preds = %59, %26
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %36
  %41 = load i32, i32* @RDG_DICTSIZE, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @RDG_BLOCKSIZE, align 8
  %44 = add i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* @RDG_DICTSIZE, align 4
  %47 = load double, double* %6, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @RDG_genBlock(i32* %19, i32 %45, i32 %46, double %47, i32 %48, i32* %8)
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %11, align 8
  %52 = sub i64 %50, %51
  %53 = load i64, i64* @RDG_BLOCKSIZE, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %40
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %11, align 8
  %58 = sub i64 %56, %57
  store i64 %58, i64* %12, align 8
  br label %59

59:                                               ; preds = %55, %40
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* %11, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %12, align 8
  %64 = load i32, i32* @stdout, align 4
  %65 = call i32 @fwrite(i32* %19, i32 1, i64 %63, i32 %64)
  %66 = load i64, i64* @RDG_BLOCKSIZE, align 8
  %67 = getelementptr inbounds i32, i32* %19, i64 %66
  %68 = load i32, i32* @RDG_DICTSIZE, align 4
  %69 = call i32 @memcpy(i32* %19, i32* %67, i32 %68)
  br label %36

70:                                               ; preds = %36
  %71 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %71)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RDG_fillLiteralDistrib(i32, double) #2

declare dso_local i32 @SET_BINARY_MODE(i32) #2

declare dso_local i32 @RDG_genBlock(i32*, i32, i32, double, i32, i32*) #2

declare dso_local i32 @fwrite(i32*, i32, i64, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
