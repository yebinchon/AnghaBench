; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_tpi.c_get_sval_name.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_tpi.c_get_sval_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_33__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i8* }
%struct.TYPE_20__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_22__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i8* }
%struct.TYPE_18__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i8* }
%struct.TYPE_21__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i8* }
%struct.TYPE_32__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i8* }
%struct.TYPE_19__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i8* }

@.str = private unnamed_addr constant [47 x i8] c"get_sval_name: Skipping unsupported type (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, i8**)* @get_sval_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_sval_name(%struct.TYPE_23__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_32__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 134
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %21, %struct.TYPE_24__** %5, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8**, i8*** %4, align 8
  store i8* %24, i8** %25, align 8
  br label %107

26:                                               ; preds = %2
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %100 [
    i32 129, label %30
    i32 132, label %40
    i32 134, label %50
    i32 130, label %60
    i32 133, label %70
    i32 128, label %80
    i32 131, label %90
  ]

30:                                               ; preds = %26
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %34, %struct.TYPE_33__** %6, align 8
  %35 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8**, i8*** %4, align 8
  store i8* %38, i8** %39, align 8
  br label %106

40:                                               ; preds = %26
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %44, %struct.TYPE_20__** %7, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8**, i8*** %4, align 8
  store i8* %48, i8** %49, align 8
  br label %106

50:                                               ; preds = %26
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %54, %struct.TYPE_22__** %8, align 8
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i8**, i8*** %4, align 8
  store i8* %58, i8** %59, align 8
  br label %106

60:                                               ; preds = %26
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %64, %struct.TYPE_18__** %9, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i8**, i8*** %4, align 8
  store i8* %68, i8** %69, align 8
  br label %106

70:                                               ; preds = %26
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %74, %struct.TYPE_21__** %10, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i8**, i8*** %4, align 8
  store i8* %78, i8** %79, align 8
  br label %106

80:                                               ; preds = %26
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %84, %struct.TYPE_32__** %11, align 8
  %85 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i8**, i8*** %4, align 8
  store i8* %88, i8** %89, align 8
  br label %106

90:                                               ; preds = %26
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %94, %struct.TYPE_19__** %12, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i8**, i8*** %4, align 8
  store i8* %98, i8** %99, align 8
  br label %106

100:                                              ; preds = %26
  %101 = load i8**, i8*** %4, align 8
  store i8* null, i8** %101, align 8
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %100, %90, %80, %70, %60, %50, %40, %30
  br label %107

107:                                              ; preds = %106, %17
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
