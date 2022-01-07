; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_dstr_ncopy_dstr.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_dstr_ncopy_dstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i64, i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dstr_ncopy_dstr(%struct.dstr* %0, %struct.dstr* %1, i64 %2) #0 {
  %4 = alloca %struct.dstr*, align 8
  %5 = alloca %struct.dstr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.dstr* %0, %struct.dstr** %4, align 8
  store %struct.dstr* %1, %struct.dstr** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.dstr*, %struct.dstr** %4, align 8
  %9 = getelementptr inbounds %struct.dstr, %struct.dstr* %8, i32 0, i32 2
  %10 = load i64*, i64** %9, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.dstr*, %struct.dstr** %4, align 8
  %14 = call i32 @dstr_free(%struct.dstr* %13)
  br label %15

15:                                               ; preds = %12, %3
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %45

19:                                               ; preds = %15
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.dstr*, %struct.dstr** %5, align 8
  %22 = getelementptr inbounds %struct.dstr, %struct.dstr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @size_min(i64 %20, i64 %23)
  store i64 %24, i64* %7, align 8
  %25 = load %struct.dstr*, %struct.dstr** %5, align 8
  %26 = getelementptr inbounds %struct.dstr, %struct.dstr* %25, i32 0, i32 2
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, 1
  %30 = call i64* @bmemdup(i64* %27, i64 %29)
  %31 = load %struct.dstr*, %struct.dstr** %4, align 8
  %32 = getelementptr inbounds %struct.dstr, %struct.dstr* %31, i32 0, i32 2
  store i64* %30, i64** %32, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.dstr*, %struct.dstr** %4, align 8
  %35 = getelementptr inbounds %struct.dstr, %struct.dstr* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, 1
  %38 = load %struct.dstr*, %struct.dstr** %4, align 8
  %39 = getelementptr inbounds %struct.dstr, %struct.dstr* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.dstr*, %struct.dstr** %4, align 8
  %41 = getelementptr inbounds %struct.dstr, %struct.dstr* %40, i32 0, i32 2
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @dstr_free(%struct.dstr*) #1

declare dso_local i64 @size_min(i64, i64) #1

declare dso_local i64* @bmemdup(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
