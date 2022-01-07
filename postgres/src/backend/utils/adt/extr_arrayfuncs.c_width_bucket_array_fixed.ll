; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_width_bucket_array_fixed.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_width_bucket_array_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@locfcinfo = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, %struct.TYPE_9__*)* @width_bucket_array_fixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @width_bucket_array_fixed(i32 %0, i32* %1, i32 %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %8, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** @locfcinfo, align 8
  %18 = call i32 @LOCAL_FCINFO(%struct.TYPE_10__* %17, i32 2)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @ARR_DATA_PTR(i32* %25)
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %9, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @locfcinfo, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load i32, i32* %7, align 4
  %32 = bitcast %struct.TYPE_10__* %28 to { i32, %struct.TYPE_8__* }*
  %33 = getelementptr inbounds { i32, %struct.TYPE_8__* }, { i32, %struct.TYPE_8__* }* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds { i32, %struct.TYPE_8__* }, { i32, %struct.TYPE_8__* }* %32, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = call i32 @InitFunctionCallInfoData(i32 %34, %struct.TYPE_8__* %36, i32* %30, i32 2, i32 %31, i32* null, i32* null)
  store i32 0, i32* %12, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @ARR_NDIM(i32* %38)
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @ARR_DIMS(i32* %40)
  %42 = call i32 @ArrayGetNItems(i32 %39, i32 %41)
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %95, %4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %96

47:                                               ; preds = %43
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %48, %49
  %51 = sdiv i32 %50, 2
  store i32 %51, i32* %14, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %10, align 4
  %55 = mul nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  store i8* %57, i8** %15, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** @locfcinfo, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  store i32 %58, i32* %63, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** @locfcinfo, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 4
  %69 = load i8*, i8** %15, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @fetch_att(i8* %69, i32 %70, i32 %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** @locfcinfo, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store i32 %72, i32* %77, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** @locfcinfo, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i32 0, i32* %82, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** @locfcinfo, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** @locfcinfo, align 8
  %86 = call i32 @FunctionCallInvoke(%struct.TYPE_10__* %85)
  %87 = call i64 @DatumGetInt32(i32 %86)
  store i64 %87, i64* %16, align 8
  %88 = load i64, i64* %16, align 8
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %47
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %13, align 4
  br label %95

92:                                               ; preds = %47
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %92, %90
  br label %43

96:                                               ; preds = %43
  %97 = load i32, i32* %12, align 4
  ret i32 %97
}

declare dso_local i32 @LOCAL_FCINFO(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @ARR_DATA_PTR(i32*) #1

declare dso_local i32 @InitFunctionCallInfoData(i32, %struct.TYPE_8__*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ArrayGetNItems(i32, i32) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i32 @ARR_DIMS(i32*) #1

declare dso_local i32 @fetch_att(i8*, i32, i32) #1

declare dso_local i64 @DatumGetInt32(i32) #1

declare dso_local i32 @FunctionCallInvoke(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
