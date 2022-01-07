; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_dstr_ncopy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_dstr_ncopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i64, i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dstr_ncopy(%struct.dstr* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.dstr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.dstr* %0, %struct.dstr** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.dstr*, %struct.dstr** %4, align 8
  %8 = getelementptr inbounds %struct.dstr, %struct.dstr* %7, i32 0, i32 2
  %9 = load i64*, i64** %8, align 8
  %10 = icmp ne i64* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.dstr*, %struct.dstr** %4, align 8
  %13 = call i32 @dstr_free(%struct.dstr* %12)
  br label %14

14:                                               ; preds = %11, %3
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  br label %37

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = add i64 %20, 1
  %22 = call i64* @bmemdup(i8* %19, i64 %21)
  %23 = load %struct.dstr*, %struct.dstr** %4, align 8
  %24 = getelementptr inbounds %struct.dstr, %struct.dstr* %23, i32 0, i32 2
  store i64* %22, i64** %24, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.dstr*, %struct.dstr** %4, align 8
  %27 = getelementptr inbounds %struct.dstr, %struct.dstr* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %6, align 8
  %29 = add i64 %28, 1
  %30 = load %struct.dstr*, %struct.dstr** %4, align 8
  %31 = getelementptr inbounds %struct.dstr, %struct.dstr* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.dstr*, %struct.dstr** %4, align 8
  %33 = getelementptr inbounds %struct.dstr, %struct.dstr* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @dstr_free(%struct.dstr*) #1

declare dso_local i64* @bmemdup(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
