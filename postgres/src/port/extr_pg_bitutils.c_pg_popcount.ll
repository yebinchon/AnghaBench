; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_pg_bitutils.c_pg_popcount.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_pg_bitutils.c_pg_popcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pg_number_of_ones = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_popcount(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @TYPEALIGN(i32 4, i8* %8)
  %10 = inttoptr i64 %9 to i8*
  %11 = icmp eq i8* %7, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %6, align 8
  br label %15

15:                                               ; preds = %18, %12
  %16 = load i32, i32* %4, align 4
  %17 = icmp sge i32 %16, 4
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %6, align 8
  %21 = load i32, i32* %19, align 4
  %22 = call i64 @pg_popcount32(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 4
  store i32 %28, i32* %4, align 4
  br label %15

29:                                               ; preds = %15
  %30 = load i32*, i32** %6, align 8
  %31 = bitcast i32* %30 to i8*
  store i8* %31, i8** %3, align 8
  br label %32

32:                                               ; preds = %29, %2
  br label %33

33:                                               ; preds = %37, %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %4, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i64*, i64** @pg_number_of_ones, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %3, align 8
  %41 = load i8, i8* %39, align 1
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds i64, i64* %38, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %5, align 4
  br label %33

49:                                               ; preds = %33
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i64 @TYPEALIGN(i32, i8*) #1

declare dso_local i64 @pg_popcount32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
