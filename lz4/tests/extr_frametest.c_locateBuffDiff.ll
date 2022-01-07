; ModuleID = '/home/carl/AnghaBench/lz4/tests/extr_frametest.c_locateBuffDiff.c'
source_filename = "/home/carl/AnghaBench/lz4/tests/extr_frametest.c_locateBuffDiff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@displayLevel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"locateBuffDiff: looking for error position \0A\00", align 1
@o_contiguous = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"mode %i: non-contiguous output (%u bytes), cannot search \0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Error at pos %i/%i : %02X != %02X \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i64)* @locateBuffDiff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @locateBuffDiff(i8* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* @displayLevel, align 4
  %13 = icmp sge i32 %12, 5
  br i1 %13, label %14, label %68

14:                                               ; preds = %4
  store i64 0, i64* %9, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to i64*
  store i64* %16, i64** %10, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to i64*
  store i64* %18, i64** %11, align 8
  %19 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @o_contiguous, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load i64, i64* %8, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i64, i64* %7, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %27)
  br label %68

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load i64*, i64** %10, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %11, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %38, %42
  br label %44

44:                                               ; preds = %34, %30
  %45 = phi i1 [ false, %30 ], [ %43, %34 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %9, align 8
  br label %30

49:                                               ; preds = %44
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load i64, i64* %9, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i64, i64* %7, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i64*, i64** %10, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %11, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %57, i64 %61, i64 %65)
  br label %67

67:                                               ; preds = %53, %49
  br label %68

68:                                               ; preds = %23, %67, %4
  ret void
}

declare dso_local i32 @DISPLAY(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
