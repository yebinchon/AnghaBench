; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_tpi.c_free_sval.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_tpi.c_free_sval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"free_sval()::not supproted type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @free_sval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_sval(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %11, 132
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %3, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @R_FREE(i64 %20)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @R_FREE(i64 %24)
  br label %103

26:                                               ; preds = %1
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %100 [
    i32 129, label %30
    i32 131, label %44
    i32 130, label %58
    i32 128, label %72
    i32 132, label %86
  ]

30:                                               ; preds = %26
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %34, %struct.TYPE_23__** %4, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @R_FREE(i64 %38)
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @R_FREE(i64 %42)
  br label %102

44:                                               ; preds = %26
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %48, %struct.TYPE_25__** %5, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @R_FREE(i64 %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @R_FREE(i64 %56)
  br label %102

58:                                               ; preds = %26
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %62, %struct.TYPE_24__** %6, align 8
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @R_FREE(i64 %66)
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @R_FREE(i64 %70)
  br label %102

72:                                               ; preds = %26
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %76, %struct.TYPE_22__** %7, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @R_FREE(i64 %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @R_FREE(i64 %84)
  br label %102

86:                                               ; preds = %26
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %90, %struct.TYPE_14__** %8, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @R_FREE(i64 %94)
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @R_FREE(i64 %98)
  br label %102

100:                                              ; preds = %26
  %101 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %86, %72, %58, %44, %30
  br label %103

103:                                              ; preds = %102, %13
  ret void
}

declare dso_local i32 @R_FREE(i64) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
