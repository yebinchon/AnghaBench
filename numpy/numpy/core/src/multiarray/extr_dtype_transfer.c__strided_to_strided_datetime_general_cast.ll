; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c__strided_to_strided_datetime_general_cast.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c__strided_to_strided_datetime_general_cast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@NPY_DATETIME_NAT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i64, i64, i64, i32*)* @_strided_to_strided_datetime_general_cast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_strided_to_strided_datetime_general_cast(i8* %0, i64 %1, i8* %2, i64 %3, i64 %4, i64 %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_2__*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load i32*, i32** %14, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %15, align 8
  br label %20

20:                                               ; preds = %41, %7
  %21 = load i64, i64* %12, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %20
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @memcpy(i8* %16, i8* %24, i32 1)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i8, i8* %16, align 1
  %29 = call i64 @convert_datetime_to_datetimestruct(i32* %27, i8 signext %28, i32* %17)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i8, i8* @NPY_DATETIME_NAT, align 1
  store i8 %32, i8* %16, align 1
  br label %41

33:                                               ; preds = %23
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i64 @convert_datetimestruct_to_datetime(i32* %35, i32* %17, i8* %16)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i8, i8* @NPY_DATETIME_NAT, align 1
  store i8 %39, i8* %16, align 1
  br label %40

40:                                               ; preds = %38, %33
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @memcpy(i8* %42, i8* %16, i32 1)
  %44 = load i64, i64* %9, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 %44
  store i8* %46, i8** %8, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 %47
  store i8* %49, i8** %10, align 8
  %50 = load i64, i64* %12, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %12, align 8
  br label %20

52:                                               ; preds = %20
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @convert_datetime_to_datetimestruct(i32*, i8 signext, i32*) #1

declare dso_local i64 @convert_datetimestruct_to_datetime(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
