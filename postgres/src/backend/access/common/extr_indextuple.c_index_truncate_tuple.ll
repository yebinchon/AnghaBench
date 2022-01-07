; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_indextuple.c_index_truncate_tuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_indextuple.c_index_truncate_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@INDEX_MAX_KEYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @index_truncate_tuple(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %35 = call %struct.TYPE_19__* @CopyIndexTuple(%struct.TYPE_19__* %34)
  store %struct.TYPE_19__* %35, %struct.TYPE_19__** %4, align 8
  store i32 1, i32* %13, align 4
  br label %66

36:                                               ; preds = %3
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %38 = call i32 @TupleDescSize(%struct.TYPE_18__* %37)
  %39 = call %struct.TYPE_18__* @palloc(i32 %38)
  store %struct.TYPE_18__* %39, %struct.TYPE_18__** %8, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %42 = call i32 @TupleDescCopy(%struct.TYPE_18__* %40, %struct.TYPE_18__* %41)
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %48 = call i32 @index_deform_tuple(%struct.TYPE_19__* %46, %struct.TYPE_18__* %47, i32* %17, i32* %20)
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %50 = call %struct.TYPE_19__* @index_form_tuple(%struct.TYPE_18__* %49, i32* %17, i32* %20)
  store %struct.TYPE_19__* %50, %struct.TYPE_19__** %12, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %57 = call i64 @IndexTupleSize(%struct.TYPE_19__* %56)
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %59 = call i64 @IndexTupleSize(%struct.TYPE_19__* %58)
  %60 = icmp sle i64 %57, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @Assert(i32 %61)
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %64 = call i32 @pfree(%struct.TYPE_18__* %63)
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %65, %struct.TYPE_19__** %4, align 8
  store i32 1, i32* %13, align 4
  br label %66

66:                                               ; preds = %36, %33
  %67 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  ret %struct.TYPE_19__* %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Assert(i32) #2

declare dso_local %struct.TYPE_19__* @CopyIndexTuple(%struct.TYPE_19__*) #2

declare dso_local %struct.TYPE_18__* @palloc(i32) #2

declare dso_local i32 @TupleDescSize(%struct.TYPE_18__*) #2

declare dso_local i32 @TupleDescCopy(%struct.TYPE_18__*, %struct.TYPE_18__*) #2

declare dso_local i32 @index_deform_tuple(%struct.TYPE_19__*, %struct.TYPE_18__*, i32*, i32*) #2

declare dso_local %struct.TYPE_19__* @index_form_tuple(%struct.TYPE_18__*, i32*, i32*) #2

declare dso_local i64 @IndexTupleSize(%struct.TYPE_19__*) #2

declare dso_local i32 @pfree(%struct.TYPE_18__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
