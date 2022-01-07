; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_kwlookup.c_ScanKeywordLookup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_kwlookup.c_ScanKeywordLookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 (i8*, i64)*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ScanKeywordLookup(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ugt i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %77

18:                                               ; preds = %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32 (i8*, i64)*, i32 (i8*, i64)** %20, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 %21(i8* %22, i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %18
  store i32 -1, i32* %3, align 4
  br label %77

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = call i8* @GetScanKeyword(i32 %35, %struct.TYPE_4__* %36)
  store i8* %37, i8** %8, align 8
  br label %38

38:                                               ; preds = %68, %34
  %39 = load i8*, i8** %4, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %38
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %4, align 8
  %46 = load i8, i8* %44, align 1
  store i8 %46, i8* %9, align 1
  %47 = load i8, i8* %9, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sge i32 %48, 65
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load i8, i8* %9, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sle i32 %52, 90
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i8, i8* %9, align 1
  %56 = sext i8 %55 to i32
  %57 = add nsw i32 %56, 32
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %9, align 1
  br label %59

59:                                               ; preds = %54, %50, %43
  %60 = load i8, i8* %9, align 1
  %61 = sext i8 %60 to i32
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %8, align 8
  %64 = load i8, i8* %62, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %61, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 -1, i32* %3, align 4
  br label %77

68:                                               ; preds = %59
  br label %38

69:                                               ; preds = %38
  %70 = load i8*, i8** %8, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 -1, i32* %3, align 4
  br label %77

75:                                               ; preds = %69
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %74, %67, %33, %17
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @GetScanKeyword(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
