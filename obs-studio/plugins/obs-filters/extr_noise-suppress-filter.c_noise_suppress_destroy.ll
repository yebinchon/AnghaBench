; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_noise-suppress-filter.c_noise_suppress_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_noise-suppress-filter.c_noise_suppress_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.noise_suppress_data = type { i64, i32, i32, %struct.noise_suppress_data**, %struct.noise_suppress_data**, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @noise_suppress_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @noise_suppress_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.noise_suppress_data*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.noise_suppress_data*
  store %struct.noise_suppress_data* %6, %struct.noise_suppress_data** %3, align 8
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %33, %1
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %3, align 8
  %10 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %7
  %14 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %3, align 8
  %15 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %14, i32 0, i32 7
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @speex_preprocess_state_destroy(i32 %19)
  %21 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %3, align 8
  %22 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = call i32 @circlebuf_free(i32* %25)
  %27 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %3, align 8
  %28 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %27, i32 0, i32 5
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = call i32 @circlebuf_free(i32* %31)
  br label %33

33:                                               ; preds = %13
  %34 = load i64, i64* %4, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %4, align 8
  br label %7

36:                                               ; preds = %7
  %37 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %3, align 8
  %38 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %37, i32 0, i32 4
  %39 = load %struct.noise_suppress_data**, %struct.noise_suppress_data*** %38, align 8
  %40 = getelementptr inbounds %struct.noise_suppress_data*, %struct.noise_suppress_data** %39, i64 0
  %41 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %40, align 8
  %42 = call i32 @bfree(%struct.noise_suppress_data* %41)
  %43 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %3, align 8
  %44 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %43, i32 0, i32 3
  %45 = load %struct.noise_suppress_data**, %struct.noise_suppress_data*** %44, align 8
  %46 = getelementptr inbounds %struct.noise_suppress_data*, %struct.noise_suppress_data** %45, i64 0
  %47 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %46, align 8
  %48 = call i32 @bfree(%struct.noise_suppress_data* %47)
  %49 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %3, align 8
  %50 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %49, i32 0, i32 2
  %51 = call i32 @circlebuf_free(i32* %50)
  %52 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %3, align 8
  %53 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @da_free(i32 %54)
  %56 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %3, align 8
  %57 = call i32 @bfree(%struct.noise_suppress_data* %56)
  ret void
}

declare dso_local i32 @speex_preprocess_state_destroy(i32) #1

declare dso_local i32 @circlebuf_free(i32*) #1

declare dso_local i32 @bfree(%struct.noise_suppress_data*) #1

declare dso_local i32 @da_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
