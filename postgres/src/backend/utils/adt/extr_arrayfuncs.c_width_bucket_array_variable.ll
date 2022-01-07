; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_width_bucket_array_variable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_width_bucket_array_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i8, i32 }

@locfcinfo = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, %struct.TYPE_9__*)* @width_bucket_array_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @width_bucket_array_variable(i32 %0, i32* %1, i32 %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %8, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** @locfcinfo, align 8
  %20 = call i32 @LOCAL_FCINFO(%struct.TYPE_10__* %19, i32 2)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load i8, i8* %28, align 4
  store i8 %29, i8* %12, align 1
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @ARR_DATA_PTR(i32* %30)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %9, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** @locfcinfo, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  %36 = load i32, i32* %7, align 4
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = call i32 @InitFunctionCallInfoData(%struct.TYPE_8__* %38, i32* %35, i32 2, i32 %36, i32* null, i32* null)
  store i32 0, i32* %13, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @ARR_NDIM(i32* %40)
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @ARR_DIMS(i32* %42)
  %44 = call i32 @ArrayGetNItems(i32 %41, i32 %43)
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %116, %4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %117

49:                                               ; preds = %45
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %50, %51
  %53 = sdiv i32 %52, 2
  store i32 %53, i32* %15, align 4
  %54 = load i8*, i8** %9, align 8
  store i8* %54, i8** %16, align 8
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %17, align 4
  br label %56

56:                                               ; preds = %69, %49
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load i8*, i8** %16, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i8*, i8** %16, align 8
  %64 = call i8* @att_addlength_pointer(i8* %61, i32 %62, i8* %63)
  store i8* %64, i8** %16, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = load i8, i8* %12, align 1
  %67 = call i64 @att_align_nominal(i8* %65, i8 signext %66)
  %68 = inttoptr i64 %67 to i8*
  store i8* %68, i8** %16, align 8
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %17, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %17, align 4
  br label %56

72:                                               ; preds = %56
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** @locfcinfo, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  store i32 %73, i32* %78, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** @locfcinfo, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 0, i32* %83, align 4
  %84 = load i8*, i8** %16, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @fetch_att(i8* %84, i32 %85, i32 %86)
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** @locfcinfo, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  store i32 %87, i32* %92, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** @locfcinfo, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  store i32 0, i32* %97, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** @locfcinfo, align 8
  %99 = call i32 @FunctionCallInvoke(%struct.TYPE_10__* %98)
  %100 = call i64 @DatumGetInt32(i32 %99)
  store i64 %100, i64* %18, align 8
  %101 = load i64, i64* %18, align 8
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %72
  %104 = load i32, i32* %15, align 4
  store i32 %104, i32* %14, align 4
  br label %116

105:                                              ; preds = %72
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  %108 = load i8*, i8** %16, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i8*, i8** %16, align 8
  %111 = call i8* @att_addlength_pointer(i8* %108, i32 %109, i8* %110)
  store i8* %111, i8** %16, align 8
  %112 = load i8*, i8** %16, align 8
  %113 = load i8, i8* %12, align 1
  %114 = call i64 @att_align_nominal(i8* %112, i8 signext %113)
  %115 = inttoptr i64 %114 to i8*
  store i8* %115, i8** %9, align 8
  br label %116

116:                                              ; preds = %105, %103
  br label %45

117:                                              ; preds = %45
  %118 = load i32, i32* %13, align 4
  ret i32 %118
}

declare dso_local i32 @LOCAL_FCINFO(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @ARR_DATA_PTR(i32*) #1

declare dso_local i32 @InitFunctionCallInfoData(%struct.TYPE_8__*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ArrayGetNItems(i32, i32) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i32 @ARR_DIMS(i32*) #1

declare dso_local i8* @att_addlength_pointer(i8*, i32, i8*) #1

declare dso_local i64 @att_align_nominal(i8*, i8 signext) #1

declare dso_local i32 @fetch_att(i8*, i32, i32) #1

declare dso_local i64 @DatumGetInt32(i32) #1

declare dso_local i32 @FunctionCallInvoke(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
