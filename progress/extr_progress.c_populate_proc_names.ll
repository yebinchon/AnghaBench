; ModuleID = '/home/carl/AnghaBench/progress/extr_progress.c_populate_proc_names.c'
source_filename = "/home/carl/AnghaBench/progress/extr_progress.c_populate_proc_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@default_proc_names = common dso_local global i64* null, align 8
@proc_names_cnt = common dso_local global i32 0, align 4
@proc_names = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @populate_proc_names() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %32, %0
  %3 = load i64*, i64** @default_proc_names, align 8
  %4 = load i32, i32* %1, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i64, i64* %3, i64 %5
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %2
  %10 = load i32, i32* @proc_names_cnt, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @proc_names_cnt, align 4
  %12 = load i64*, i64** @proc_names, align 8
  %13 = load i32, i32* @proc_names_cnt, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = trunc i64 %15 to i32
  %17 = call i64* @realloc(i64* %12, i32 %16)
  store i64* %17, i64** @proc_names, align 8
  %18 = load i64*, i64** @proc_names, align 8
  %19 = icmp ne i64* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i64*, i64** @default_proc_names, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** @proc_names, align 8
  %28 = load i32, i32* @proc_names_cnt, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %27, i64 %30
  store i64 %26, i64* %31, align 8
  br label %32

32:                                               ; preds = %9
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %2

35:                                               ; preds = %2
  ret void
}

declare dso_local i64* @realloc(i64*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
