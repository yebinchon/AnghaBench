; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_strcmp.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_strcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_strcmp(i64 %0, i64* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mg_str, align 8
  %7 = alloca %struct.mg_str, align 8
  %8 = alloca i64, align 8
  %9 = bitcast %struct.mg_str* %6 to { i64, i64* }*
  %10 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %9, i32 0, i32 0
  store i64 %0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %9, i32 0, i32 1
  store i64* %1, i64** %11, align 8
  %12 = bitcast %struct.mg_str* %7 to { i64, i64* }*
  %13 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %12, i32 0, i32 0
  store i64 %2, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %12, i32 0, i32 1
  store i64* %3, i64** %14, align 8
  store i64 0, i64* %8, align 8
  br label %15

15:                                               ; preds = %53, %4
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %6, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %21, %23
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i1 [ false, %15 ], [ %24, %20 ]
  br i1 %26, label %27, label %56

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %6, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %32, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32 -1, i32* %5, align 4
  br label %69

40:                                               ; preds = %27
  %41 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %6, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %45, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %69

53:                                               ; preds = %40
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %8, align 8
  br label %15

56:                                               ; preds = %25
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %6, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 1, i32* %5, align 4
  br label %69

62:                                               ; preds = %56
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 -1, i32* %5, align 4
  br label %69

68:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %67, %61, %52, %39
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
