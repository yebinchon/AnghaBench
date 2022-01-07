; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encoder.c_HPDF_Encoder_CheckJWWLineHead.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encoder.c_HPDF_Encoder_CheckJWWLineHead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64* }

@.str = private unnamed_addr constant [32 x i8] c" HPDF_Encoder_CheckJWWLineHead\0A\00", align 1
@HPDF_FALSE = common dso_local global i32 0, align 4
@HPDF_ENCODER_TYPE_DOUBLE_BYTE = common dso_local global i64 0, align 8
@HPDF_MAX_JWW_NUM = common dso_local global i64 0, align 8
@HPDF_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HPDF_Encoder_CheckJWWLineHead(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = call i32 @HPDF_Encoder_Validate(%struct.TYPE_5__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @HPDF_FALSE, align 4
  store i32 %13, i32* %3, align 4
  br label %58

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HPDF_ENCODER_TYPE_DOUBLE_BYTE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @HPDF_FALSE, align 4
  store i32 %21, i32* %3, align 4
  br label %58

22:                                               ; preds = %14
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %6, align 8
  store i64 0, i64* %7, align 8
  br label %27

27:                                               ; preds = %53, %22
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @HPDF_MAX_JWW_NUM, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %27
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %32, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @HPDF_TRUE, align 4
  store i32 %41, i32* %3, align 4
  br label %58

42:                                               ; preds = %31
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @HPDF_FALSE, align 4
  store i32 %51, i32* %3, align 4
  br label %58

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %7, align 8
  br label %27

56:                                               ; preds = %27
  %57 = load i32, i32* @HPDF_FALSE, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %50, %40, %20, %12
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32 @HPDF_Encoder_Validate(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
