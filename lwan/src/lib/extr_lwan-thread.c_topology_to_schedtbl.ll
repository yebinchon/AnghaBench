; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-thread.c_topology_to_schedtbl.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-thread.c_topology_to_schedtbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lwan*, i64*, i64)* @topology_to_schedtbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @topology_to_schedtbl(%struct.lwan* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.lwan*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.lwan* %0, %struct.lwan** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.lwan*, %struct.lwan** %4, align 8
  %12 = getelementptr inbounds %struct.lwan, %struct.lwan* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = trunc i64 %15 to i32
  %17 = call i64* @alloca(i32 %16)
  store i64* %17, i64** %7, align 8
  %18 = load %struct.lwan*, %struct.lwan** %4, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = call i32 @read_cpu_topology(%struct.lwan* %18, i64* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %23

23:                                               ; preds = %38, %22
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load i64, i64* %8, align 8
  %29 = udiv i64 %28, 2
  %30 = load %struct.lwan*, %struct.lwan** %4, align 8
  %31 = getelementptr inbounds %struct.lwan, %struct.lwan* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = urem i64 %29, %33
  %35 = load i64*, i64** %5, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  store i64 %34, i64* %37, align 8
  br label %38

38:                                               ; preds = %27
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %8, align 8
  br label %23

41:                                               ; preds = %23
  br label %75

42:                                               ; preds = %3
  %43 = load %struct.lwan*, %struct.lwan** %4, align 8
  %44 = getelementptr inbounds %struct.lwan, %struct.lwan* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 8
  %48 = trunc i64 %47 to i32
  %49 = call i64* @alloca(i32 %48)
  store i64* %49, i64** %9, align 8
  %50 = load %struct.lwan*, %struct.lwan** %4, align 8
  %51 = load i64*, i64** %7, align 8
  %52 = load i64*, i64** %9, align 8
  %53 = call i32 @siblings_to_schedtbl(%struct.lwan* %50, i64* %51, i64* %52)
  store i64 0, i64* %10, align 8
  br label %54

54:                                               ; preds = %71, %42
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %6, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = load i64*, i64** %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.lwan*, %struct.lwan** %4, align 8
  %62 = getelementptr inbounds %struct.lwan, %struct.lwan* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = urem i64 %60, %64
  %66 = getelementptr inbounds i64, i64* %59, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %5, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  store i64 %67, i64* %70, align 8
  br label %71

71:                                               ; preds = %58
  %72 = load i64, i64* %10, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %10, align 8
  br label %54

74:                                               ; preds = %54
  br label %75

75:                                               ; preds = %74, %41
  ret void
}

declare dso_local i64* @alloca(i32) #1

declare dso_local i32 @read_cpu_topology(%struct.lwan*, i64*) #1

declare dso_local i32 @siblings_to_schedtbl(%struct.lwan*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
