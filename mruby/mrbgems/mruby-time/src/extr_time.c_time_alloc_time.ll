; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-time/src/extr_time.c_time_alloc_time.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-time/src/extr_time.c_time_alloc_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb_time = type { i64, i64, i32 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mrb_time* (i32*, i8*, i8*, i32)* @time_alloc_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mrb_time* @time_alloc_time(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mrb_time*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @mrb_malloc(i32* %12, i32 24)
  %14 = inttoptr i64 %13 to %struct.mrb_time*
  store %struct.mrb_time* %14, %struct.mrb_time** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  %18 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  %22 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  %24 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %4
  %28 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  %29 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @NDIV(i64 %30, i32 1000000)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = mul nsw i64 %32, 1000000
  %34 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  %35 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %36, %33
  store i64 %37, i64* %35, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  %40 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, %38
  store i64 %42, i64* %40, align 8
  br label %65

43:                                               ; preds = %4
  %44 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  %45 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %46, 1000000
  br i1 %47, label %48, label %64

48:                                               ; preds = %43
  %49 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  %50 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sdiv i64 %51, 1000000
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = mul nsw i64 %53, 1000000
  %55 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  %56 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  %61 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, %59
  store i64 %63, i64* %61, align 8
  br label %64

64:                                               ; preds = %48, %43
  br label %65

65:                                               ; preds = %64, %27
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  %68 = getelementptr inbounds %struct.mrb_time, %struct.mrb_time* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  %71 = load i32, i32* @TRUE, align 4
  %72 = call i32 @time_update_datetime(i32* %69, %struct.mrb_time* %70, i32 %71)
  %73 = load %struct.mrb_time*, %struct.mrb_time** %9, align 8
  ret %struct.mrb_time* %73
}

declare dso_local i64 @mrb_malloc(i32*, i32) #1

declare dso_local i64 @NDIV(i64, i32) #1

declare dso_local i32 @time_update_datetime(i32*, %struct.mrb_time*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
