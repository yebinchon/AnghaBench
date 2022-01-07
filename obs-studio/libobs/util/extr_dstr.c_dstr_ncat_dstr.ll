; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_dstr_ncat_dstr.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_dstr_ncat_dstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dstr_ncat_dstr(%struct.dstr* %0, %struct.dstr* %1, i64 %2) #0 {
  %4 = alloca %struct.dstr*, align 8
  %5 = alloca %struct.dstr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.dstr* %0, %struct.dstr** %4, align 8
  store %struct.dstr* %1, %struct.dstr** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.dstr*, %struct.dstr** %5, align 8
  %10 = getelementptr inbounds %struct.dstr, %struct.dstr* %9, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.dstr*, %struct.dstr** %5, align 8
  %15 = getelementptr inbounds %struct.dstr, %struct.dstr* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %13, %3
  br label %58

23:                                               ; preds = %19
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.dstr*, %struct.dstr** %5, align 8
  %26 = getelementptr inbounds %struct.dstr, %struct.dstr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @size_min(i64 %24, i64 %27)
  store i64 %28, i64* %8, align 8
  %29 = load %struct.dstr*, %struct.dstr** %4, align 8
  %30 = getelementptr inbounds %struct.dstr, %struct.dstr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %31, %32
  store i64 %33, i64* %7, align 8
  %34 = load %struct.dstr*, %struct.dstr** %4, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  %37 = call i32 @dstr_ensure_capacity(%struct.dstr* %34, i64 %36)
  %38 = load %struct.dstr*, %struct.dstr** %4, align 8
  %39 = getelementptr inbounds %struct.dstr, %struct.dstr* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load %struct.dstr*, %struct.dstr** %4, align 8
  %42 = getelementptr inbounds %struct.dstr, %struct.dstr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i64, i64* %40, i64 %43
  %45 = load %struct.dstr*, %struct.dstr** %5, align 8
  %46 = getelementptr inbounds %struct.dstr, %struct.dstr* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @memcpy(i64* %44, i64* %47, i64 %48)
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.dstr*, %struct.dstr** %4, align 8
  %52 = getelementptr inbounds %struct.dstr, %struct.dstr* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.dstr*, %struct.dstr** %4, align 8
  %54 = getelementptr inbounds %struct.dstr, %struct.dstr* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %23, %22
  ret void
}

declare dso_local i64 @size_min(i64, i64) #1

declare dso_local i32 @dstr_ensure_capacity(%struct.dstr*, i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
