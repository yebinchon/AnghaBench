; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges.c_range_apply_exclude.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges.c_range_apply_exclude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Range = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"possible\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.Range*, %struct.Range*)* @range_apply_exclude to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @range_apply_exclude(i64 %0, %struct.Range* %1, %struct.Range* %2) #0 {
  %4 = alloca %struct.Range, align 4
  %5 = alloca %struct.Range*, align 8
  %6 = alloca %struct.Range*, align 8
  %7 = bitcast %struct.Range* %4 to i64*
  store i64 %0, i64* %7, align 4
  store %struct.Range* %1, %struct.Range** %5, align 8
  store %struct.Range* %2, %struct.Range** %6, align 8
  %8 = load %struct.Range*, %struct.Range** %6, align 8
  %9 = getelementptr inbounds %struct.Range, %struct.Range* %8, i32 0, i32 0
  store i32 2, i32* %9, align 4
  %10 = load %struct.Range*, %struct.Range** %6, align 8
  %11 = getelementptr inbounds %struct.Range, %struct.Range* %10, i32 0, i32 1
  store i32 1, i32* %11, align 4
  %12 = load %struct.Range*, %struct.Range** %5, align 8
  %13 = getelementptr inbounds %struct.Range, %struct.Range* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load %struct.Range*, %struct.Range** %5, align 8
  %20 = getelementptr inbounds %struct.Range, %struct.Range* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %3
  br label %117

26:                                               ; preds = %18
  %27 = load %struct.Range*, %struct.Range** %5, align 8
  %28 = getelementptr inbounds %struct.Range, %struct.Range* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sge i32 %29, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %26
  %34 = load %struct.Range*, %struct.Range** %5, align 8
  %35 = getelementptr inbounds %struct.Range, %struct.Range* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sle i32 %36, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.Range*, %struct.Range** %5, align 8
  %42 = getelementptr inbounds %struct.Range, %struct.Range* %41, i32 0, i32 0
  store i32 2, i32* %42, align 4
  %43 = load %struct.Range*, %struct.Range** %5, align 8
  %44 = getelementptr inbounds %struct.Range, %struct.Range* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  br label %117

45:                                               ; preds = %33, %26
  %46 = load %struct.Range*, %struct.Range** %5, align 8
  %47 = getelementptr inbounds %struct.Range, %struct.Range* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %48, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %45
  %53 = load %struct.Range*, %struct.Range** %5, align 8
  %54 = getelementptr inbounds %struct.Range, %struct.Range* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %55, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  %63 = load %struct.Range*, %struct.Range** %5, align 8
  %64 = getelementptr inbounds %struct.Range, %struct.Range* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %117

65:                                               ; preds = %52, %45
  %66 = load %struct.Range*, %struct.Range** %5, align 8
  %67 = getelementptr inbounds %struct.Range, %struct.Range* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %65
  %73 = load %struct.Range*, %struct.Range** %5, align 8
  %74 = getelementptr inbounds %struct.Range, %struct.Range* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp sle i32 %75, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 1
  %83 = load %struct.Range*, %struct.Range** %5, align 8
  %84 = getelementptr inbounds %struct.Range, %struct.Range* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %117

85:                                               ; preds = %72, %65
  %86 = load %struct.Range*, %struct.Range** %5, align 8
  %87 = getelementptr inbounds %struct.Range, %struct.Range* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %115

92:                                               ; preds = %85
  %93 = load %struct.Range*, %struct.Range** %5, align 8
  %94 = getelementptr inbounds %struct.Range, %struct.Range* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp sgt i32 %95, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %92
  %100 = load %struct.Range*, %struct.Range** %5, align 8
  %101 = getelementptr inbounds %struct.Range, %struct.Range* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.Range*, %struct.Range** %6, align 8
  %104 = getelementptr inbounds %struct.Range, %struct.Range* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  %108 = load %struct.Range*, %struct.Range** %6, align 8
  %109 = getelementptr inbounds %struct.Range, %struct.Range* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %111, 1
  %113 = load %struct.Range*, %struct.Range** %5, align 8
  %114 = getelementptr inbounds %struct.Range, %struct.Range* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  br label %117

115:                                              ; preds = %92, %85
  %116 = call i32 @assert(i32 0)
  br label %117

117:                                              ; preds = %115, %99, %79, %59, %40, %25
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
