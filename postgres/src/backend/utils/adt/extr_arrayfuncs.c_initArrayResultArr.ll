; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_initArrayResultArr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_initArrayResultArr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"data type %s is not an array type\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"accumArrayResultArr\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @initArrayResultArr(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @OidIsValid(i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %4
  %16 = load i8*, i8** %5, align 8
  %17 = call i8* @get_element_type(i8* %16)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @OidIsValid(i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @ERROR, align 4
  %23 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %24 = call i32 @errcode(i32 %23)
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @format_type_be(i8* %25)
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = call i32 @ereport(i32 %22, i32 %27)
  br label %29

29:                                               ; preds = %21, %15
  br label %30

30:                                               ; preds = %29, %4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %36 = call i32 @AllocSetContextCreate(i32 %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @MemoryContextAllocZero(i32 %38, i32 32)
  %40 = inttoptr i64 %39 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  ret %struct.TYPE_3__* %53
}

declare dso_local i32 @OidIsValid(i8*) #1

declare dso_local i8* @get_element_type(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @format_type_be(i8*) #1

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i64 @MemoryContextAllocZero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
