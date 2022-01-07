; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_dstr_depad.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_dstr_depad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i64*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dstr_depad(%struct.dstr* %0) #0 {
  %2 = alloca %struct.dstr*, align 8
  store %struct.dstr* %0, %struct.dstr** %2, align 8
  %3 = load %struct.dstr*, %struct.dstr** %2, align 8
  %4 = getelementptr inbounds %struct.dstr, %struct.dstr* %3, i32 0, i32 0
  %5 = load i64*, i64** %4, align 8
  %6 = icmp ne i64* %5, null
  br i1 %6, label %7, label %30

7:                                                ; preds = %1
  %8 = load %struct.dstr*, %struct.dstr** %2, align 8
  %9 = getelementptr inbounds %struct.dstr, %struct.dstr* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = call i64* @strdepad(i64* %10)
  %12 = load %struct.dstr*, %struct.dstr** %2, align 8
  %13 = getelementptr inbounds %struct.dstr, %struct.dstr* %12, i32 0, i32 0
  store i64* %11, i64** %13, align 8
  %14 = load %struct.dstr*, %struct.dstr** %2, align 8
  %15 = getelementptr inbounds %struct.dstr, %struct.dstr* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %7
  %20 = load %struct.dstr*, %struct.dstr** %2, align 8
  %21 = getelementptr inbounds %struct.dstr, %struct.dstr* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = call i32 @strlen(i64* %22)
  %24 = load %struct.dstr*, %struct.dstr** %2, align 8
  %25 = getelementptr inbounds %struct.dstr, %struct.dstr* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  br label %29

26:                                               ; preds = %7
  %27 = load %struct.dstr*, %struct.dstr** %2, align 8
  %28 = call i32 @dstr_free(%struct.dstr* %27)
  br label %29

29:                                               ; preds = %26, %19
  br label %30

30:                                               ; preds = %29, %1
  ret void
}

declare dso_local i64* @strdepad(i64*) #1

declare dso_local i32 @strlen(i64*) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
