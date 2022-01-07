; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.h_dstr_copy_dstr.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.h_dstr_copy_dstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dstr*, %struct.dstr*)* @dstr_copy_dstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dstr_copy_dstr(%struct.dstr* %0, %struct.dstr* %1) #0 {
  %3 = alloca %struct.dstr*, align 8
  %4 = alloca %struct.dstr*, align 8
  store %struct.dstr* %0, %struct.dstr** %3, align 8
  store %struct.dstr* %1, %struct.dstr** %4, align 8
  %5 = load %struct.dstr*, %struct.dstr** %3, align 8
  %6 = getelementptr inbounds %struct.dstr, %struct.dstr* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.dstr*, %struct.dstr** %3, align 8
  %11 = call i32 @dstr_free(%struct.dstr* %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.dstr*, %struct.dstr** %4, align 8
  %14 = getelementptr inbounds %struct.dstr, %struct.dstr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %12
  %18 = load %struct.dstr*, %struct.dstr** %3, align 8
  %19 = load %struct.dstr*, %struct.dstr** %4, align 8
  %20 = getelementptr inbounds %struct.dstr, %struct.dstr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  %23 = call i32 @dstr_ensure_capacity(%struct.dstr* %18, i64 %22)
  %24 = load %struct.dstr*, %struct.dstr** %3, align 8
  %25 = getelementptr inbounds %struct.dstr, %struct.dstr* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.dstr*, %struct.dstr** %4, align 8
  %28 = getelementptr inbounds %struct.dstr, %struct.dstr* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.dstr*, %struct.dstr** %4, align 8
  %31 = getelementptr inbounds %struct.dstr, %struct.dstr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  %34 = call i32 @memcpy(i64 %26, i64 %29, i64 %33)
  %35 = load %struct.dstr*, %struct.dstr** %4, align 8
  %36 = getelementptr inbounds %struct.dstr, %struct.dstr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.dstr*, %struct.dstr** %3, align 8
  %39 = getelementptr inbounds %struct.dstr, %struct.dstr* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %17, %12
  ret void
}

declare dso_local i32 @dstr_free(%struct.dstr*) #1

declare dso_local i32 @dstr_ensure_capacity(%struct.dstr*, i64) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
