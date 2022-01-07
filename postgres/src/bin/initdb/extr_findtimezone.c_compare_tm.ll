; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/initdb/extr_findtimezone.c_compare_tm.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/initdb/extr_findtimezone.c_compare_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.pg_tm = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm*, %struct.pg_tm*)* @compare_tm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_tm(%struct.tm* %0, %struct.pg_tm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tm*, align 8
  %5 = alloca %struct.pg_tm*, align 8
  store %struct.tm* %0, %struct.tm** %4, align 8
  store %struct.pg_tm* %1, %struct.pg_tm** %5, align 8
  %6 = load %struct.tm*, %struct.tm** %4, align 8
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %10 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %77, label %13

13:                                               ; preds = %2
  %14 = load %struct.tm*, %struct.tm** %4, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %18 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %77, label %21

21:                                               ; preds = %13
  %22 = load %struct.tm*, %struct.tm** %4, align 8
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %26 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %77, label %29

29:                                               ; preds = %21
  %30 = load %struct.tm*, %struct.tm** %4, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %34 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %77, label %37

37:                                               ; preds = %29
  %38 = load %struct.tm*, %struct.tm** %4, align 8
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %42 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %77, label %45

45:                                               ; preds = %37
  %46 = load %struct.tm*, %struct.tm** %4, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %50 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %77, label %53

53:                                               ; preds = %45
  %54 = load %struct.tm*, %struct.tm** %4, align 8
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %58 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %77, label %61

61:                                               ; preds = %53
  %62 = load %struct.tm*, %struct.tm** %4, align 8
  %63 = getelementptr inbounds %struct.tm, %struct.tm* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %66 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %65, i32 0, i32 7
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %61
  %70 = load %struct.tm*, %struct.tm** %4, align 8
  %71 = getelementptr inbounds %struct.tm, %struct.tm* %70, i32 0, i32 8
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.pg_tm*, %struct.pg_tm** %5, align 8
  %74 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %73, i32 0, i32 8
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %69, %61, %53, %45, %37, %29, %21, %13, %2
  store i32 0, i32* %3, align 4
  br label %79

78:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %77
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
