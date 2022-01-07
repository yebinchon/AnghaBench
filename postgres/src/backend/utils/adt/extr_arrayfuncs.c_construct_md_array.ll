; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_construct_md_array.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_construct_md_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"invalid number of dimensions: %d\00", align 1
@MAXDIM = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"number of array dimensions (%d) exceeds the maximum allowed (%d)\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"array size exceeds the maximum allowed (%d)\00", align 1
@MaxAllocSize = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @construct_md_array(i32* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7, i8 signext %8) #0 {
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca %struct.TYPE_8__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i8 %8, i8* %19, align 1
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %9
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %31 = call i32 @errcode(i32 %30)
  %32 = load i32, i32* %13, align 4
  %33 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = call i32 @ereport(i32 %29, i32 %33)
  br label %35

35:                                               ; preds = %28, %9
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @MAXDIM, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i32, i32* @ERROR, align 4
  %41 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %42 = call i32 @errcode(i32 %41)
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @MAXDIM, align 4
  %45 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  %46 = call i32 @ereport(i32 %40, i32 %45)
  br label %47

47:                                               ; preds = %39, %35
  %48 = load i32, i32* %13, align 4
  %49 = load i32*, i32** %14, align 8
  %50 = call i32 @ArrayGetNItems(i32 %48, i32* %49)
  store i32 %50, i32* %25, align 4
  %51 = load i32, i32* %25, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* %16, align 4
  %55 = call %struct.TYPE_8__* @construct_empty_array(i32 %54)
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %10, align 8
  br label %170

56:                                               ; preds = %47
  store i64 0, i64* %22, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %24, align 4
  br label %57

57:                                               ; preds = %111, %56
  %58 = load i32, i32* %24, align 4
  %59 = load i32, i32* %25, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %114

61:                                               ; preds = %57
  %62 = load i32*, i32** %12, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* %24, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store i32 1, i32* %21, align 4
  br label %111

72:                                               ; preds = %64, %61
  %73 = load i32, i32* %17, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %87

75:                                               ; preds = %72
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %24, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @PG_DETOAST_DATUM(i32 %80)
  %82 = call i32 @PointerGetDatum(i32 %81)
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %24, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %75, %72
  %88 = load i64, i64* %22, align 8
  %89 = load i32, i32* %17, align 4
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* %24, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @att_addlength_datum(i64 %88, i32 %89, i32 %94)
  store i64 %95, i64* %22, align 8
  %96 = load i64, i64* %22, align 8
  %97 = load i8, i8* %19, align 1
  %98 = call i64 @att_align_nominal(i64 %96, i8 signext %97)
  store i64 %98, i64* %22, align 8
  %99 = load i64, i64* %22, align 8
  %100 = call i32 @AllocSizeIsValid(i64 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %87
  %103 = load i32, i32* @ERROR, align 4
  %104 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %105 = call i32 @errcode(i32 %104)
  %106 = load i64, i64* @MaxAllocSize, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  %109 = call i32 @ereport(i32 %103, i32 %108)
  br label %110

110:                                              ; preds = %102, %87
  br label %111

111:                                              ; preds = %110, %71
  %112 = load i32, i32* %24, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %24, align 4
  br label %57

114:                                              ; preds = %57
  %115 = load i32, i32* %21, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %25, align 4
  %120 = call i64 @ARR_OVERHEAD_WITHNULLS(i32 %118, i32 %119)
  store i64 %120, i64* %23, align 8
  %121 = load i64, i64* %23, align 8
  %122 = load i64, i64* %22, align 8
  %123 = add nsw i64 %122, %121
  store i64 %123, i64* %22, align 8
  br label %129

124:                                              ; preds = %114
  store i64 0, i64* %23, align 8
  %125 = load i32, i32* %13, align 4
  %126 = call i64 @ARR_OVERHEAD_NONULLS(i32 %125)
  %127 = load i64, i64* %22, align 8
  %128 = add nsw i64 %127, %126
  store i64 %128, i64* %22, align 8
  br label %129

129:                                              ; preds = %124, %117
  %130 = load i64, i64* %22, align 8
  %131 = call i64 @palloc0(i64 %130)
  %132 = inttoptr i64 %131 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %132, %struct.TYPE_8__** %20, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %134 = load i64, i64* %22, align 8
  %135 = call i32 @SET_VARSIZE(%struct.TYPE_8__* %133, i64 %134)
  %136 = load i32, i32* %13, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load i64, i64* %23, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  store i64 %139, i64* %141, align 8
  %142 = load i32, i32* %16, align 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %146 = call i32 @ARR_DIMS(%struct.TYPE_8__* %145)
  %147 = load i32*, i32** %14, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = mul i64 %149, 4
  %151 = trunc i64 %150 to i32
  %152 = call i32 @memcpy(i32 %146, i32* %147, i32 %151)
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %154 = call i32 @ARR_LBOUND(%struct.TYPE_8__* %153)
  %155 = load i32*, i32** %15, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = mul i64 %157, 4
  %159 = trunc i64 %158 to i32
  %160 = call i32 @memcpy(i32 %154, i32* %155, i32 %159)
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %162 = load i32*, i32** %11, align 8
  %163 = load i32*, i32** %12, align 8
  %164 = load i32, i32* %25, align 4
  %165 = load i32, i32* %17, align 4
  %166 = load i32, i32* %18, align 4
  %167 = load i8, i8* %19, align 1
  %168 = call i32 @CopyArrayEls(%struct.TYPE_8__* %161, i32* %162, i32* %163, i32 %164, i32 %165, i32 %166, i8 signext %167, i32 0)
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  store %struct.TYPE_8__* %169, %struct.TYPE_8__** %10, align 8
  br label %170

170:                                              ; preds = %129, %53
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  ret %struct.TYPE_8__* %171
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @ArrayGetNItems(i32, i32*) #1

declare dso_local %struct.TYPE_8__* @construct_empty_array(i32) #1

declare dso_local i32 @PointerGetDatum(i32) #1

declare dso_local i32 @PG_DETOAST_DATUM(i32) #1

declare dso_local i64 @att_addlength_datum(i64, i32, i32) #1

declare dso_local i64 @att_align_nominal(i64, i8 signext) #1

declare dso_local i32 @AllocSizeIsValid(i64) #1

declare dso_local i64 @ARR_OVERHEAD_WITHNULLS(i32, i32) #1

declare dso_local i64 @ARR_OVERHEAD_NONULLS(i32) #1

declare dso_local i64 @palloc0(i64) #1

declare dso_local i32 @SET_VARSIZE(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ARR_DIMS(%struct.TYPE_8__*) #1

declare dso_local i32 @ARR_LBOUND(%struct.TYPE_8__*) #1

declare dso_local i32 @CopyArrayEls(%struct.TYPE_8__*, i32*, i32*, i32, i32, i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
