; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_binary.c_HPDF_Binary_Write.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_binary.c_HPDF_Binary_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@HPDF_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HPDF_Binary_Write(%struct.TYPE_3__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @HPDF_Stream_WriteStr(i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %4, align 4
  br label %46

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @HPDF_Stream_WriteChar(i32 %17, i8 signext 60)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @HPDF_OK, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %46

23:                                               ; preds = %16
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @HPDF_Encrypt_Reset(i64 %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @HPDF_Stream_WriteBinary(i32 %30, i32 %33, i64 %36, i64 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* @HPDF_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %46

43:                                               ; preds = %29
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @HPDF_Stream_WriteChar(i32 %44, i8 signext 62)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %41, %21, %13
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @HPDF_Stream_WriteStr(i32, i8*) #1

declare dso_local i32 @HPDF_Stream_WriteChar(i32, i8 signext) #1

declare dso_local i32 @HPDF_Encrypt_Reset(i64) #1

declare dso_local i32 @HPDF_Stream_WriteBinary(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
