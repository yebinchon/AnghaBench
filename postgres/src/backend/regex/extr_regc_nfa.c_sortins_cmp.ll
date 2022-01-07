; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_sortins_cmp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_sortins_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arc = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @sortins_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sortins_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.arc*, align 8
  %7 = alloca %struct.arc*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.arc**
  %10 = load %struct.arc*, %struct.arc** %9, align 8
  store %struct.arc* %10, %struct.arc** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.arc**
  %13 = load %struct.arc*, %struct.arc** %12, align 8
  store %struct.arc* %13, %struct.arc** %7, align 8
  %14 = load %struct.arc*, %struct.arc** %6, align 8
  %15 = getelementptr inbounds %struct.arc, %struct.arc* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.arc*, %struct.arc** %7, align 8
  %20 = getelementptr inbounds %struct.arc, %struct.arc* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %18, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %76

26:                                               ; preds = %2
  %27 = load %struct.arc*, %struct.arc** %6, align 8
  %28 = getelementptr inbounds %struct.arc, %struct.arc* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.arc*, %struct.arc** %7, align 8
  %33 = getelementptr inbounds %struct.arc, %struct.arc* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %31, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %76

39:                                               ; preds = %26
  %40 = load %struct.arc*, %struct.arc** %6, align 8
  %41 = getelementptr inbounds %struct.arc, %struct.arc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.arc*, %struct.arc** %7, align 8
  %44 = getelementptr inbounds %struct.arc, %struct.arc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %76

48:                                               ; preds = %39
  %49 = load %struct.arc*, %struct.arc** %6, align 8
  %50 = getelementptr inbounds %struct.arc, %struct.arc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.arc*, %struct.arc** %7, align 8
  %53 = getelementptr inbounds %struct.arc, %struct.arc* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %76

57:                                               ; preds = %48
  %58 = load %struct.arc*, %struct.arc** %6, align 8
  %59 = getelementptr inbounds %struct.arc, %struct.arc* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.arc*, %struct.arc** %7, align 8
  %62 = getelementptr inbounds %struct.arc, %struct.arc* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 -1, i32* %3, align 4
  br label %76

66:                                               ; preds = %57
  %67 = load %struct.arc*, %struct.arc** %6, align 8
  %68 = getelementptr inbounds %struct.arc, %struct.arc* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.arc*, %struct.arc** %7, align 8
  %71 = getelementptr inbounds %struct.arc, %struct.arc* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  store i32 1, i32* %3, align 4
  br label %76

75:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %74, %65, %56, %47, %38, %25
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
