; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_gettype.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_gettype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@SPI_result = common dso_local global i64 0, align 8
@FirstLowInvalidHeapAttributeNumber = common dso_local global i32 0, align 4
@SPI_ERROR_NOATTRIBUTE = common dso_local global i64 0, align 8
@TYPEOID = common dso_local global i32 0, align 4
@SPI_ERROR_TYPUNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @SPI_gettype(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* @SPI_result, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %9, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @FirstLowInvalidHeapAttributeNumber, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %14, %2
  %22 = load i64, i64* @SPI_ERROR_NOATTRIBUTE, align 8
  store i64 %22, i64* @SPI_result, align 8
  store i8* null, i8** %3, align 8
  br label %59

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %28, 1
  %30 = call %struct.TYPE_9__* @TupleDescAttr(%struct.TYPE_7__* %27, i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  br label %38

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.TYPE_10__* @SystemAttributeDefinition(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %33, %26
  %39 = load i32, i32* @TYPEOID, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @ObjectIdGetDatum(i32 %40)
  %42 = call i32 @SearchSysCache1(i32 %39, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @HeapTupleIsValid(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %38
  %47 = load i64, i64* @SPI_ERROR_TYPUNKNOWN, align 8
  store i64 %47, i64* @SPI_result, align 8
  store i8* null, i8** %3, align 8
  br label %59

48:                                               ; preds = %38
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @GETSTRUCT(i32 %49)
  %51 = inttoptr i64 %50 to %struct.TYPE_8__*
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @NameStr(i32 %53)
  %55 = call i8* @pstrdup(i32 %54)
  store i8* %55, i8** %8, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @ReleaseSysCache(i32 %56)
  %58 = load i8*, i8** %8, align 8
  store i8* %58, i8** %3, align 8
  br label %59

59:                                               ; preds = %48, %46, %21
  %60 = load i8*, i8** %3, align 8
  ret i8* %60
}

declare dso_local %struct.TYPE_9__* @TupleDescAttr(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.TYPE_10__* @SystemAttributeDefinition(i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i8* @pstrdup(i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
