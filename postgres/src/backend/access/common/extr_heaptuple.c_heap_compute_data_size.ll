; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_heaptuple.c_heap_compute_data_size.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_heaptuple.c_heap_compute_data_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heap_compute_data_size(%struct.TYPE_7__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %93, %3
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %96

19:                                               ; preds = %15
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %93

27:                                               ; preds = %19
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__* %33, i32 %34)
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %11, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %37 = call i64 @ATT_IS_PACKABLE(%struct.TYPE_8__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %27
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @DatumGetPointer(i32 %40)
  %42 = call i64 @VARATT_CAN_MAKE_SHORT(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @DatumGetPointer(i32 %45)
  %47 = call i64 @VARATT_CONVERTED_SHORT_SIZE(i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %7, align 4
  br label %92

52:                                               ; preds = %39, %27
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @DatumGetPointer(i32 %58)
  %60 = call i64 @VARATT_IS_EXTERNAL_EXPANDED(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @att_align_nominal(i32 %63, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @DatumGetEOHP(i32 %68)
  %70 = call i64 @EOH_get_flat_size(i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %7, align 4
  br label %91

75:                                               ; preds = %57, %52
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @att_align_datum(i32 %76, i32 %79, i32 %82, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @att_addlength_datum(i32 %85, i32 %88, i32 %89)
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %75, %62
  br label %92

92:                                               ; preds = %91, %44
  br label %93

93:                                               ; preds = %92, %26
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %15

96:                                               ; preds = %15
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @ATT_IS_PACKABLE(%struct.TYPE_8__*) #1

declare dso_local i64 @VARATT_CAN_MAKE_SHORT(i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

declare dso_local i64 @VARATT_CONVERTED_SHORT_SIZE(i32) #1

declare dso_local i64 @VARATT_IS_EXTERNAL_EXPANDED(i32) #1

declare dso_local i32 @att_align_nominal(i32, i32) #1

declare dso_local i64 @EOH_get_flat_size(i32) #1

declare dso_local i32 @DatumGetEOHP(i32) #1

declare dso_local i32 @att_align_datum(i32, i32, i32, i32) #1

declare dso_local i32 @att_addlength_datum(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
