; ModuleID = '/home/carl/AnghaBench/meltdown/libkdump/extr_libkdump.c_detect_flush_reload_threshold.c'
source_filename = "/home/carl/AnghaBench/meltdown/libkdump/extr_libkdump.c_detect_flush_reload_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Flush+Reload: %zd cycles, Reload only: %zd cycles\0A\00", align 1
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Flush+Reload threshold: %zd cycles\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @detect_flush_reload_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detect_flush_reload_threshold() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [16 x i64], align 16
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  store i64 0, i64* %2, align 8
  store i64 1000000, i64* %4, align 8
  %9 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 0
  %10 = getelementptr inbounds i64, i64* %9, i64 8
  store i64* %10, i64** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load i64*, i64** %6, align 8
  %12 = call i32 @maccess(i64* %11)
  store i64 0, i64* %3, align 8
  br label %13

13:                                               ; preds = %27, %0
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = call i64 (...) @rdtsc()
  store i64 %18, i64* %7, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = call i32 @maccess(i64* %19)
  %21 = call i64 (...) @rdtsc()
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = sub nsw i64 %22, %23
  %25 = load i64, i64* %1, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %1, align 8
  br label %27

27:                                               ; preds = %17
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %3, align 8
  br label %13

30:                                               ; preds = %13
  store i64 0, i64* %3, align 8
  br label %31

31:                                               ; preds = %47, %30
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = call i64 (...) @rdtsc()
  store i64 %36, i64* %7, align 8
  %37 = load i64*, i64** %6, align 8
  %38 = call i32 @maccess(i64* %37)
  %39 = call i64 (...) @rdtsc()
  store i64 %39, i64* %8, align 8
  %40 = load i64*, i64** %6, align 8
  %41 = call i32 @flush(i64* %40)
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %7, align 8
  %44 = sub nsw i64 %42, %43
  %45 = load i64, i64* %2, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %2, align 8
  br label %47

47:                                               ; preds = %35
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %3, align 8
  br label %31

50:                                               ; preds = %31
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* %1, align 8
  %53 = udiv i64 %52, %51
  store i64 %53, i64* %1, align 8
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* %2, align 8
  %56 = udiv i64 %55, %54
  store i64 %56, i64* %2, align 8
  %57 = load i32, i32* @INFO, align 4
  %58 = load i64, i64* %2, align 8
  %59 = load i64, i64* %1, align 8
  %60 = call i32 (i32, i8*, i64, ...) @debug(i32 %57, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %58, i64 %59)
  %61 = load i64, i64* %2, align 8
  %62 = load i64, i64* %1, align 8
  %63 = mul i64 %62, 2
  %64 = add i64 %61, %63
  %65 = udiv i64 %64, 3
  store i64 %65, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %66 = load i32, i32* @SUCCESS, align 4
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %68 = call i32 (i32, i8*, i64, ...) @debug(i32 %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %67)
  ret void
}

declare dso_local i32 @maccess(i64*) #1

declare dso_local i64 @rdtsc(...) #1

declare dso_local i32 @flush(i64*) #1

declare dso_local i32 @debug(i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
