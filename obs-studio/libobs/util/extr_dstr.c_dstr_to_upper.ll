; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_dstr_to_upper.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_dstr_to_upper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dstr_to_upper(%struct.dstr* %0) #0 {
  %2 = alloca %struct.dstr*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  store %struct.dstr* %0, %struct.dstr** %2, align 8
  %5 = load %struct.dstr*, %struct.dstr** %2, align 8
  %6 = call i64 @dstr_is_empty(%struct.dstr* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %34

9:                                                ; preds = %1
  %10 = load %struct.dstr*, %struct.dstr** %2, align 8
  %11 = call i64* @dstr_to_wcs(%struct.dstr* %10)
  store i64* %11, i64** %3, align 8
  %12 = load i64*, i64** %3, align 8
  store i64* %12, i64** %4, align 8
  %13 = load i64*, i64** %3, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  br label %34

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %21, %16
  %18 = load i64*, i64** %4, align 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i64*, i64** %4, align 8
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @towupper(i64 %23)
  %25 = load i64*, i64** %4, align 8
  store i64 %24, i64* %25, align 8
  %26 = load i64*, i64** %4, align 8
  %27 = getelementptr inbounds i64, i64* %26, i32 1
  store i64* %27, i64** %4, align 8
  br label %17

28:                                               ; preds = %17
  %29 = load %struct.dstr*, %struct.dstr** %2, align 8
  %30 = load i64*, i64** %3, align 8
  %31 = call i32 @dstr_from_wcs(%struct.dstr* %29, i64* %30)
  %32 = load i64*, i64** %3, align 8
  %33 = call i32 @bfree(i64* %32)
  br label %34

34:                                               ; preds = %28, %15, %8
  ret void
}

declare dso_local i64 @dstr_is_empty(%struct.dstr*) #1

declare dso_local i64* @dstr_to_wcs(%struct.dstr*) #1

declare dso_local i64 @towupper(i64) #1

declare dso_local i32 @dstr_from_wcs(%struct.dstr*, i64*) #1

declare dso_local i32 @bfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
