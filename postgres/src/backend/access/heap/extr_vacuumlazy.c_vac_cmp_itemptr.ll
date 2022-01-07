; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_vacuumlazy.c_vac_cmp_itemptr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_vacuumlazy.c_vac_cmp_itemptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @vac_cmp_itemptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vac_cmp_itemptr(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = ptrtoint i8* %10 to i32
  %12 = call i64 @ItemPointerGetBlockNumber(i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = ptrtoint i8* %13 to i32
  %15 = call i64 @ItemPointerGetBlockNumber(i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %42

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %42

25:                                               ; preds = %20
  %26 = load i8*, i8** %4, align 8
  %27 = ptrtoint i8* %26 to i32
  %28 = call i64 @ItemPointerGetOffsetNumber(i32 %27)
  store i64 %28, i64* %8, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = call i64 @ItemPointerGetOffsetNumber(i32 %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %42

36:                                               ; preds = %25
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %42

41:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %40, %35, %24, %19
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @ItemPointerGetBlockNumber(i32) #1

declare dso_local i64 @ItemPointerGetOffsetNumber(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
