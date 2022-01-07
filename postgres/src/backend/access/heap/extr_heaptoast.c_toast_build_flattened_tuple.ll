; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heaptoast.c_toast_build_flattened_tuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heaptoast.c_toast_build_flattened_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.varlena = type { i32 }
%struct.TYPE_7__ = type { i32 }

@MaxTupleAttributeNumber = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @toast_build_flattened_tuple(%struct.TYPE_6__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.varlena*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @MaxTupleAttributeNumber, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i32, i32* @MaxTupleAttributeNumber, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i64, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @MaxTupleAttributeNumber, align 4
  %27 = icmp sle i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memcpy(i32* %21, i32* %30, i32 %34)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %80, %3
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %83

40:                                               ; preds = %36
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %79, label %47

47:                                               ; preds = %40
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call %struct.TYPE_7__* @TupleDescAttr(%struct.TYPE_6__* %48, i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %79

54:                                               ; preds = %47
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %21, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @DatumGetPointer(i32 %58)
  %60 = inttoptr i64 %59 to %struct.varlena*
  store %struct.varlena* %60, %struct.varlena** %14, align 8
  %61 = load %struct.varlena*, %struct.varlena** %14, align 8
  %62 = call i64 @VARATT_IS_EXTERNAL(%struct.varlena* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %54
  %65 = load %struct.varlena*, %struct.varlena** %14, align 8
  %66 = call %struct.varlena* @detoast_external_attr(%struct.varlena* %65)
  store %struct.varlena* %66, %struct.varlena** %14, align 8
  %67 = load %struct.varlena*, %struct.varlena** %14, align 8
  %68 = call i32 @PointerGetDatum(%struct.varlena* %67)
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %21, i64 %70
  store i32 %68, i32* %71, align 4
  %72 = load %struct.varlena*, %struct.varlena** %14, align 8
  %73 = ptrtoint %struct.varlena* %72 to i64
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i64, i64* %24, i64 %76
  store i64 %73, i64* %77, align 8
  br label %78

78:                                               ; preds = %64, %54
  br label %79

79:                                               ; preds = %78, %47, %40
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %36

83:                                               ; preds = %36
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @heap_form_tuple(%struct.TYPE_6__* %84, i32* %21, i32* %85)
  store i32 %86, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %97, %83
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %24, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @pfree(i64 %95)
  br label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %87

100:                                              ; preds = %87
  %101 = load i32, i32* %7, align 4
  %102 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %102)
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local %struct.TYPE_7__* @TupleDescAttr(%struct.TYPE_6__*, i32) #2

declare dso_local i64 @DatumGetPointer(i32) #2

declare dso_local i64 @VARATT_IS_EXTERNAL(%struct.varlena*) #2

declare dso_local %struct.varlena* @detoast_external_attr(%struct.varlena*) #2

declare dso_local i32 @PointerGetDatum(%struct.varlena*) #2

declare dso_local i32 @heap_form_tuple(%struct.TYPE_6__*, i32*, i32*) #2

declare dso_local i32 @pfree(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
