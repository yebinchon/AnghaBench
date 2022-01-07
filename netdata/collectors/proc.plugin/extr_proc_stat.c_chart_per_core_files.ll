; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_stat.c_chart_per_core_files.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_stat.c_chart_per_core_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_chart = type { i32, %struct.per_core_single_number_file* }
%struct.per_core_single_number_file = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_chart*, i64, i64, i32*, i32, i32, i32)* @chart_per_core_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chart_per_core_files(%struct.cpu_chart* %0, i64 %1, i64 %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.cpu_chart*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.per_core_single_number_file*, align 8
  store %struct.cpu_chart* %0, %struct.cpu_chart** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i64 0, i64* %15, align 8
  br label %17

17:                                               ; preds = %69, %7
  %18 = load i64, i64* %15, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %72

21:                                               ; preds = %17
  %22 = load %struct.cpu_chart*, %struct.cpu_chart** %8, align 8
  %23 = load i64, i64* %15, align 8
  %24 = getelementptr inbounds %struct.cpu_chart, %struct.cpu_chart* %22, i64 %23
  %25 = getelementptr inbounds %struct.cpu_chart, %struct.cpu_chart* %24, i32 0, i32 1
  %26 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %25, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %26, i64 %27
  store %struct.per_core_single_number_file* %28, %struct.per_core_single_number_file** %16, align 8
  %29 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %16, align 8
  %30 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  br label %69

38:                                               ; preds = %21
  %39 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %16, align 8
  %40 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %38
  %48 = load i32*, i32** %11, align 8
  %49 = load %struct.cpu_chart*, %struct.cpu_chart** %8, align 8
  %50 = load i64, i64* %15, align 8
  %51 = getelementptr inbounds %struct.cpu_chart, %struct.cpu_chart* %49, i64 %50
  %52 = getelementptr inbounds %struct.cpu_chart, %struct.cpu_chart* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i64 @rrddim_add(i32* %48, i32 %53, i32* null, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %16, align 8
  %59 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %47, %38
  %61 = load i32*, i32** %11, align 8
  %62 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %16, align 8
  %63 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.per_core_single_number_file*, %struct.per_core_single_number_file** %16, align 8
  %66 = getelementptr inbounds %struct.per_core_single_number_file, %struct.per_core_single_number_file* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @rrddim_set_by_pointer(i32* %61, i64 %64, i32 %67)
  br label %69

69:                                               ; preds = %60, %37
  %70 = load i64, i64* %15, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %15, align 8
  br label %17

72:                                               ; preds = %17
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @rrddim_add(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @rrddim_set_by_pointer(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
