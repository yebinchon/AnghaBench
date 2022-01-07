; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_array.c_HPDF_Box_Array_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_array.c_HPDF_Box_Array_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@HPDF_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c" HPDF_Box_Array_New\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @HPDF_Box_Array_New(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = bitcast %struct.TYPE_3__* %5 to { i64, i64 }*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  store i64 %1, i64* %10, align 4
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  store i64 %2, i64* %11, align 4
  store i32 %0, i32* %6, align 4
  %12 = load i64, i64* @HPDF_OK, align 8
  store i64 %12, i64* %8, align 8
  %13 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %6, align 4
  %15 = call i32* @HPDF_Array_New(i32 %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %60

19:                                               ; preds = %3
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @HPDF_Real_New(i32 %21, i32 %23)
  %25 = call i64 @HPDF_Array_Add(i32* %20, i32 %24)
  %26 = load i64, i64* %8, align 8
  %27 = add nsw i64 %26, %25
  store i64 %27, i64* %8, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @HPDF_Real_New(i32 %29, i32 %31)
  %33 = call i64 @HPDF_Array_Add(i32* %28, i32 %32)
  %34 = load i64, i64* %8, align 8
  %35 = add nsw i64 %34, %33
  store i64 %35, i64* %8, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @HPDF_Real_New(i32 %37, i32 %39)
  %41 = call i64 @HPDF_Array_Add(i32* %36, i32 %40)
  %42 = load i64, i64* %8, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* %8, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %6, align 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @HPDF_Real_New(i32 %45, i32 %47)
  %49 = call i64 @HPDF_Array_Add(i32* %44, i32 %48)
  %50 = load i64, i64* %8, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @HPDF_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %19
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @HPDF_Array_Free(i32* %56)
  store i32* null, i32** %4, align 8
  br label %60

58:                                               ; preds = %19
  %59 = load i32*, i32** %7, align 8
  store i32* %59, i32** %4, align 8
  br label %60

60:                                               ; preds = %58, %55, %18
  %61 = load i32*, i32** %4, align 8
  ret i32* %61
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32* @HPDF_Array_New(i32) #1

declare dso_local i64 @HPDF_Array_Add(i32*, i32) #1

declare dso_local i32 @HPDF_Real_New(i32, i32) #1

declare dso_local i32 @HPDF_Array_Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
