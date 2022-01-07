; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_shdepend.c_getOidListDiff.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_shdepend.c_getOidListDiff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32*, i64*, i32*)* @getOidListDiff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getOidListDiff(i64* %0, i32* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %79, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* %10, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %19, %21
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i1 [ false, %13 ], [ %22, %18 ]
  br i1 %24, label %25, label %80

25:                                               ; preds = %23
  %26 = load i64*, i64** %5, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %30, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %79

42:                                               ; preds = %25
  %43 = load i64*, i64** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %47, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %42
  %55 = load i64*, i64** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %5, align 8
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i64, i64* %61, i64 %64
  store i64 %60, i64* %65, align 8
  br label %78

66:                                               ; preds = %42
  %67 = load i64*, i64** %7, align 8
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i64, i64* %67, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** %7, align 8
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i64, i64* %73, i64 %76
  store i64 %72, i64* %77, align 8
  br label %78

78:                                               ; preds = %66, %54
  br label %79

79:                                               ; preds = %78, %37
  br label %13

80:                                               ; preds = %23
  br label %81

81:                                               ; preds = %86, %80
  %82 = load i32, i32* %9, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load i64*, i64** %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i64, i64* %87, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i64*, i64** %5, align 8
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i64, i64* %93, i64 %96
  store i64 %92, i64* %97, align 8
  br label %81

98:                                               ; preds = %81
  br label %99

99:                                               ; preds = %104, %98
  %100 = load i32, i32* %10, align 4
  %101 = load i32*, i32** %8, align 8
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %99
  %105 = load i64*, i64** %7, align 8
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i64, i64* %105, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load i64*, i64** %7, align 8
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i64, i64* %111, i64 %114
  store i64 %110, i64* %115, align 8
  br label %99

116:                                              ; preds = %99
  %117 = load i32, i32* %11, align 4
  %118 = load i32*, i32** %6, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32*, i32** %8, align 8
  store i32 %119, i32* %120, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
