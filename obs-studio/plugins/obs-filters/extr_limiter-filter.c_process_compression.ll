; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_limiter-filter.c_process_compression.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_limiter-filter.c_process_compression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.limiter_data = type { float, float, i64, float, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.limiter_data*, float**, i64)* @process_compression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_compression(%struct.limiter_data* %0, float** %1, i64 %2) #0 {
  %4 = alloca %struct.limiter_data*, align 8
  %5 = alloca float**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i64, align 8
  store %struct.limiter_data* %0, %struct.limiter_data** %4, align 8
  store float** %1, float*** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %66, %3
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %69

15:                                               ; preds = %11
  %16 = load %struct.limiter_data*, %struct.limiter_data** %4, align 8
  %17 = getelementptr inbounds %struct.limiter_data, %struct.limiter_data* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call float @mul_to_db(i32 %21)
  store float %22, float* %8, align 4
  %23 = load %struct.limiter_data*, %struct.limiter_data** %4, align 8
  %24 = getelementptr inbounds %struct.limiter_data, %struct.limiter_data* %23, i32 0, i32 0
  %25 = load float, float* %24, align 8
  %26 = load %struct.limiter_data*, %struct.limiter_data** %4, align 8
  %27 = getelementptr inbounds %struct.limiter_data, %struct.limiter_data* %26, i32 0, i32 1
  %28 = load float, float* %27, align 4
  %29 = load float, float* %8, align 4
  %30 = fsub float %28, %29
  %31 = fmul float %25, %30
  store float %31, float* %9, align 4
  %32 = load float, float* %9, align 4
  %33 = call i32 @fminf(i32 0, float %32)
  %34 = call float @db_to_mul(i32 %33)
  store float %34, float* %9, align 4
  store i64 0, i64* %10, align 8
  br label %35

35:                                               ; preds = %62, %15
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.limiter_data*, %struct.limiter_data** %4, align 8
  %38 = getelementptr inbounds %struct.limiter_data, %struct.limiter_data* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %35
  %42 = load float**, float*** %5, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds float*, float** %42, i64 %43
  %45 = load float*, float** %44, align 8
  %46 = icmp ne float* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %41
  %48 = load float, float* %9, align 4
  %49 = load %struct.limiter_data*, %struct.limiter_data** %4, align 8
  %50 = getelementptr inbounds %struct.limiter_data, %struct.limiter_data* %49, i32 0, i32 3
  %51 = load float, float* %50, align 8
  %52 = fmul float %48, %51
  %53 = load float**, float*** %5, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds float*, float** %53, i64 %54
  %56 = load float*, float** %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds float, float* %56, i64 %57
  %59 = load float, float* %58, align 4
  %60 = fmul float %59, %52
  store float %60, float* %58, align 4
  br label %61

61:                                               ; preds = %47, %41
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %10, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %10, align 8
  br label %35

65:                                               ; preds = %35
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %7, align 8
  br label %11

69:                                               ; preds = %11
  ret void
}

declare dso_local float @mul_to_db(i32) #1

declare dso_local float @db_to_mul(i32) #1

declare dso_local i32 @fminf(i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
