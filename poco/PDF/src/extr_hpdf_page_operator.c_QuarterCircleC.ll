; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_page_operator.c_QuarterCircleC.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_page_operator.c_QuarterCircleC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KAPPA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32, i32, i32)* @QuarterCircleC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @QuarterCircleC(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %10, align 4
  %14 = add nsw i32 %12, %13
  %15 = load i8*, i8** %7, align 8
  %16 = call i8* @HPDF_FToA(i8* %11, i32 %14, i8* %15)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %6, align 8
  store i8 32, i8* %17, align 1
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @KAPPA, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sub nsw i32 %20, %23
  %25 = load i8*, i8** %7, align 8
  %26 = call i8* @HPDF_FToA(i8* %19, i32 %24, i8* %25)
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %6, align 8
  store i8 32, i8* %27, align 1
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @KAPPA, align 4
  %33 = mul nsw i32 %31, %32
  %34 = add nsw i32 %30, %33
  %35 = load i8*, i8** %7, align 8
  %36 = call i8* @HPDF_FToA(i8* %29, i32 %34, i8* %35)
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %6, align 8
  store i8 32, i8* %37, align 1
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load i8*, i8** %7, align 8
  %44 = call i8* @HPDF_FToA(i8* %39, i32 %42, i8* %43)
  store i8* %44, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %6, align 8
  store i8 32, i8* %45, align 1
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = call i8* @HPDF_FToA(i8* %47, i32 %48, i8* %49)
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %6, align 8
  store i8 32, i8* %51, align 1
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 %54, %55
  %57 = load i8*, i8** %7, align 8
  %58 = call i8* @HPDF_FToA(i8* %53, i32 %56, i8* %57)
  store i8* %58, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i64 @HPDF_StrCpy(i8* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %60)
  %62 = inttoptr i64 %61 to i8*
  ret i8* %62
}

declare dso_local i8* @HPDF_FToA(i8*, i32, i8*) #1

declare dso_local i64 @HPDF_StrCpy(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
