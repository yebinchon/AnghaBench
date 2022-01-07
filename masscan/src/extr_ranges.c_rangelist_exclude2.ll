; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges.c_rangelist_exclude2.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges.c_rangelist_exclude2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RangeList = type { i32, %struct.Range* }
%struct.Range = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.RangeList*, %struct.RangeList*)* @rangelist_exclude2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rangelist_exclude2(%struct.RangeList* %0, %struct.RangeList* %1) #0 {
  %3 = alloca %struct.RangeList*, align 8
  %4 = alloca %struct.RangeList*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Range, align 4
  store %struct.RangeList* %0, %struct.RangeList** %3, align 8
  store %struct.RangeList* %1, %struct.RangeList** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %28, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %10 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %7
  %14 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %15 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %14, i32 0, i32 1
  %16 = load %struct.Range*, %struct.Range** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.Range, %struct.Range* %16, i64 %18
  %20 = bitcast %struct.Range* %6 to i8*
  %21 = bitcast %struct.Range* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 8, i1 false)
  %22 = load %struct.RangeList*, %struct.RangeList** %3, align 8
  %23 = getelementptr inbounds %struct.Range, %struct.Range* %6, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.Range, %struct.Range* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rangelist_remove_range(%struct.RangeList* %22, i32 %24, i32 %26)
  br label %28

28:                                               ; preds = %13
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %7

31:                                               ; preds = %7
  %32 = load %struct.RangeList*, %struct.RangeList** %3, align 8
  %33 = call i32 @rangelist_sort(%struct.RangeList* %32)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @rangelist_remove_range(%struct.RangeList*, i32, i32) #2

declare dso_local i32 @rangelist_sort(%struct.RangeList*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
