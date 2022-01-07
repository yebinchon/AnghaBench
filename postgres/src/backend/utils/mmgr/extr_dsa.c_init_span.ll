; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_dsa.c_init_span.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_dsa.c_init_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8** }
%struct.TYPE_6__ = type { i8*, i64, i64, i32, i64, i64, i32, i32, i8*, i8*, i32 }

@dsa_size_classes = common dso_local global i64* null, align 8
@InvalidDsaPointer = common dso_local global i8* null, align 8
@DSA_SCLASS_BLOCK_OF_SPANS = common dso_local global i64 0, align 8
@FPM_PAGE_SIZE = common dso_local global i64 0, align 8
@DSA_SCLASS_SPAN_LARGE = common dso_local global i64 0, align 8
@DSA_SUPERBLOCK_SIZE = common dso_local global i64 0, align 8
@DSA_SPAN_NOTHING_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.TYPE_7__*, i8*, i64, i64)* @init_span to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_span(i32* %0, i8* %1, %struct.TYPE_7__* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call %struct.TYPE_6__* @dsa_get_address(i32* %16, i8* %17)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %13, align 8
  %19 = load i64*, i64** @dsa_size_classes, align 8
  %20 = load i64, i64* %12, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %14, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i64, i64* %12, align 8
  %25 = call i32 @DSA_SCLASS_LOCK(i32* %23, i64 %24)
  %26 = call i32 @LWLockHeldByMe(i32 %25)
  %27 = call i32 @Assert(i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @DsaPointerIsValid(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %6
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = load i8*, i8** %40, align 8
  %42 = call %struct.TYPE_6__* @dsa_get_address(i32* %36, i8* %41)
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %15, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 9
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %35, %6
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %49 = call i32 @DsaAreaPoolToDsaPointer(i32* %47, %struct.TYPE_7__* %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 10
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @InvalidDsaPointer, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 9
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  store i8* %62, i8** %66, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 8
  store i8* %67, i8** %69, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  store i32 0, i32* %77, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* @DSA_SCLASS_BLOCK_OF_SPANS, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %46
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  store i32 1, i32* %83, align 8
  %84 = load i64, i64* @FPM_PAGE_SIZE, align 8
  %85 = load i64, i64* %14, align 8
  %86 = udiv i64 %84, %85
  %87 = sub i64 %86, 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 4
  store i64 %87, i64* %89, align 8
  br label %101

90:                                               ; preds = %46
  %91 = load i64, i64* %12, align 8
  %92 = load i64, i64* @DSA_SCLASS_SPAN_LARGE, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i64, i64* @DSA_SUPERBLOCK_SIZE, align 8
  %96 = load i64, i64* %14, align 8
  %97 = udiv i64 %95, %96
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 4
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %94, %90
  br label %101

101:                                              ; preds = %100, %81
  %102 = load i32, i32* @DSA_SPAN_NOTHING_FREE, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 7
  store i32 %102, i32* %104, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 5
  store i64 %107, i64* %109, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 6
  store i32 1, i32* %111, align 8
  ret void
}

declare dso_local %struct.TYPE_6__* @dsa_get_address(i32*, i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockHeldByMe(i32) #1

declare dso_local i32 @DSA_SCLASS_LOCK(i32*, i64) #1

declare dso_local i64 @DsaPointerIsValid(i8*) #1

declare dso_local i32 @DsaAreaPoolToDsaPointer(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
