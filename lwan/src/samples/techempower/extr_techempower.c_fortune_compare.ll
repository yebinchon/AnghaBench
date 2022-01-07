; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/techempower/extr_techempower.c_fortune_compare.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/techempower/extr_techempower.c_fortune_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Fortune = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @fortune_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fortune_compare(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.Fortune*, align 8
  %7 = alloca %struct.Fortune*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.Fortune*
  store %struct.Fortune* %13, %struct.Fortune** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.Fortune*
  store %struct.Fortune* %15, %struct.Fortune** %7, align 8
  %16 = load %struct.Fortune*, %struct.Fortune** %6, align 8
  %17 = getelementptr inbounds %struct.Fortune, %struct.Fortune* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @strlen(i32 %19)
  store i64 %20, i64* %8, align 8
  %21 = load %struct.Fortune*, %struct.Fortune** %7, align 8
  %22 = getelementptr inbounds %struct.Fortune, %struct.Fortune* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @strlen(i32 %24)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28, %2
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ugt i64 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %67

36:                                               ; preds = %28
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i64, i64* %8, align 8
  br label %44

42:                                               ; preds = %36
  %43 = load i64, i64* %9, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i64 [ %41, %40 ], [ %43, %42 ]
  store i64 %45, i64* %10, align 8
  %46 = load %struct.Fortune*, %struct.Fortune** %6, align 8
  %47 = getelementptr inbounds %struct.Fortune, %struct.Fortune* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.Fortune*, %struct.Fortune** %7, align 8
  %51 = getelementptr inbounds %struct.Fortune, %struct.Fortune* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @memcmp(i32 %49, i32 %53, i64 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %44
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp ugt i64 %59, %60
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %67

63:                                               ; preds = %44
  %64 = load i32, i32* %11, align 4
  %65 = icmp sgt i32 %64, 0
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %58, %31
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
