; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_dsa.c_dsa_get_address.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_dsa.c_dsa_get_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }

@DSA_MAX_SEGMENTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dsa_get_address(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @DsaPointerIsValid(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %49

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = call i32 @check_for_freed_segments(%struct.TYPE_7__* %13)
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @DSA_EXTRACT_SEGMENT_NUMBER(i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @DSA_EXTRACT_OFFSET(i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @DSA_MAX_SEGMENTS, align 8
  %21 = icmp ult i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @Assert(i32 %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp eq i8* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %12
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @get_segment_by_index(%struct.TYPE_7__* %36, i64 %37)
  br label %39

39:                                               ; preds = %35, %12
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr i8, i8* %46, i64 %47
  store i8* %48, i8** %3, align 8
  br label %49

49:                                               ; preds = %39, %11
  %50 = load i8*, i8** %3, align 8
  ret i8* %50
}

declare dso_local i32 @DsaPointerIsValid(i32) #1

declare dso_local i32 @check_for_freed_segments(%struct.TYPE_7__*) #1

declare dso_local i64 @DSA_EXTRACT_SEGMENT_NUMBER(i32) #1

declare dso_local i64 @DSA_EXTRACT_OFFSET(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @get_segment_by_index(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
