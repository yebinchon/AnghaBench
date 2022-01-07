; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_fnumber.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_fnumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@SPI_ERROR_NOATTRIBUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SPI_fnumber(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %33, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %9
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.TYPE_9__* @TupleDescAttr(%struct.TYPE_8__* %16, i32 %17)
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %8, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @namestrcmp(i32* %20, i8* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %15
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %47

32:                                               ; preds = %24, %15
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %9

36:                                               ; preds = %9
  %37 = load i8*, i8** %5, align 8
  %38 = call %struct.TYPE_10__* @SystemAttributeByName(i8* %37)
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %7, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = icmp ne %struct.TYPE_10__* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %3, align 4
  br label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @SPI_ERROR_NOATTRIBUTE, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %41, %29
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.TYPE_9__* @TupleDescAttr(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @namestrcmp(i32*, i8*) #1

declare dso_local %struct.TYPE_10__* @SystemAttributeByName(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
