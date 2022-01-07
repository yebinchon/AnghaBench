; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_orderedsetaggs.c_pct_info_cmp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_orderedsetaggs.c_pct_info_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pct_info = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @pct_info_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pct_info_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pct_info*, align 8
  %7 = alloca %struct.pct_info*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.pct_info*
  store %struct.pct_info* %9, %struct.pct_info** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.pct_info*
  store %struct.pct_info* %11, %struct.pct_info** %7, align 8
  %12 = load %struct.pct_info*, %struct.pct_info** %6, align 8
  %13 = getelementptr inbounds %struct.pct_info, %struct.pct_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.pct_info*, %struct.pct_info** %7, align 8
  %16 = getelementptr inbounds %struct.pct_info, %struct.pct_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.pct_info*, %struct.pct_info** %6, align 8
  %21 = getelementptr inbounds %struct.pct_info, %struct.pct_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.pct_info*, %struct.pct_info** %7, align 8
  %24 = getelementptr inbounds %struct.pct_info, %struct.pct_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 -1, i32 1
  store i32 %28, i32* %3, align 4
  br label %48

29:                                               ; preds = %2
  %30 = load %struct.pct_info*, %struct.pct_info** %6, align 8
  %31 = getelementptr inbounds %struct.pct_info, %struct.pct_info* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.pct_info*, %struct.pct_info** %7, align 8
  %34 = getelementptr inbounds %struct.pct_info, %struct.pct_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %29
  %38 = load %struct.pct_info*, %struct.pct_info** %6, align 8
  %39 = getelementptr inbounds %struct.pct_info, %struct.pct_info* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.pct_info*, %struct.pct_info** %7, align 8
  %42 = getelementptr inbounds %struct.pct_info, %struct.pct_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 -1, i32 1
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %37, %19
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
