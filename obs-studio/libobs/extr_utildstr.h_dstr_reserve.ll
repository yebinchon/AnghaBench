; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_utildstr.h_dstr_reserve.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_utildstr.h_dstr_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i64, i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dstr*, i64)* @dstr_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dstr_reserve(%struct.dstr* %0, i64 %1) #0 {
  %3 = alloca %struct.dstr*, align 8
  %4 = alloca i64, align 8
  store %struct.dstr* %0, %struct.dstr** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.dstr*, %struct.dstr** %3, align 8
  %10 = getelementptr inbounds %struct.dstr, %struct.dstr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ule i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7, %2
  br label %26

14:                                               ; preds = %7
  %15 = load %struct.dstr*, %struct.dstr** %3, align 8
  %16 = getelementptr inbounds %struct.dstr, %struct.dstr* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @brealloc(i8* %17, i64 %18)
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.dstr*, %struct.dstr** %3, align 8
  %22 = getelementptr inbounds %struct.dstr, %struct.dstr* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.dstr*, %struct.dstr** %3, align 8
  %25 = getelementptr inbounds %struct.dstr, %struct.dstr* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %14, %13
  ret void
}

declare dso_local i64 @brealloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
