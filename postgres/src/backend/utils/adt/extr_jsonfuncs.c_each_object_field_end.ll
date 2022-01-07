; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_each_object_field_end.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_each_object_field_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32, i32, i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @each_object_field_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @each_object_field_end(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x i64], align 16
  %13 = alloca [2 x i32], align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %7, align 8
  %16 = bitcast [2 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 8, i1 false)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 6
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %92

24:                                               ; preds = %3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @MemoryContextSwitchTo(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @CStringGetTextDatum(i8* %29)
  %31 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  store i64 %30, i64* %31, align 16
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %24
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 1, i32* %40, align 4
  %41 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  store i64 0, i64* %41, align 8
  br label %74

42:                                               ; preds = %34, %24
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @CStringGetTextDatum(i8* %50)
  %52 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  store i64 %51, i64* %52, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %73

55:                                               ; preds = %42
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 6
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %60, %63
  store i32 %64, i32* %9, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32* @cstring_to_text_with_len(i32 %67, i32 %68)
  store i32* %69, i32** %10, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = call i64 @PointerGetDatum(i32* %70)
  %72 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %55, %47
  br label %74

74:                                               ; preds = %73, %39
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %80 = call i32 @heap_form_tuple(i32 %77, i64* %78, i32* %79)
  store i32 %80, i32* %11, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @tuplestore_puttuple(i32 %83, i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @MemoryContextSwitchTo(i32 %86)
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @MemoryContextReset(i32 %90)
  br label %92

92:                                               ; preds = %74, %23
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #2

declare dso_local i64 @CStringGetTextDatum(i8*) #2

declare dso_local i32* @cstring_to_text_with_len(i32, i32) #2

declare dso_local i64 @PointerGetDatum(i32*) #2

declare dso_local i32 @heap_form_tuple(i32, i64*, i32*) #2

declare dso_local i32 @tuplestore_puttuple(i32, i32) #2

declare dso_local i32 @MemoryContextReset(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
