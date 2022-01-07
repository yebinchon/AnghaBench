; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_utilcirclebuf.h_circlebuf_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_utilcirclebuf.h_circlebuf_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.circlebuf = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.circlebuf*, i64)* @circlebuf_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @circlebuf_data(%struct.circlebuf* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.circlebuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.circlebuf* %0, %struct.circlebuf** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %9 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %6, align 8
  %12 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %13 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = add i64 %14, %15
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %19 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp uge i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %39

23:                                               ; preds = %2
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %26 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp uge i64 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.circlebuf*, %struct.circlebuf** %4, align 8
  %31 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = sub i64 %33, %32
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %29, %23
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr i8, i8* %36, i64 %37
  store i8* %38, i8** %3, align 8
  br label %39

39:                                               ; preds = %35, %22
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
