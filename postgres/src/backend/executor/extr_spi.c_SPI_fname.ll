; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_fname.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_fname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@SPI_result = common dso_local global i64 0, align 8
@FirstLowInvalidHeapAttributeNumber = common dso_local global i32 0, align 4
@SPI_ERROR_NOATTRIBUTE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @SPI_fname(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* @SPI_result, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sgt i32 %7, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @FirstLowInvalidHeapAttributeNumber, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %12, %2
  %20 = load i64, i64* @SPI_ERROR_NOATTRIBUTE, align 8
  store i64 %20, i64* @SPI_result, align 8
  store i8* null, i8** %3, align 8
  br label %38

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %26, 1
  %28 = call %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__* %25, i32 %27)
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %6, align 8
  br label %32

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = call %struct.TYPE_8__* @SystemAttributeDefinition(i32 %30)
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %6, align 8
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @NameStr(i32 %35)
  %37 = call i8* @pstrdup(i32 %36)
  store i8* %37, i8** %3, align 8
  br label %38

38:                                               ; preds = %32, %19
  %39 = load i8*, i8** %3, align 8
  ret i8* %39
}

declare dso_local %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.TYPE_8__* @SystemAttributeDefinition(i32) #1

declare dso_local i8* @pstrdup(i32) #1

declare dso_local i32 @NameStr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
