; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsquery_rewrite.c_dofindsubquery.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsquery_rewrite.c_dofindsubquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_16__**, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }

@QTN_NOCHANGE = common dso_local global i32 0, align 4
@QI_OPR = common dso_local global i64 0, align 8
@OP_NOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32*)* @dofindsubquery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @dofindsubquery(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = call i32 (...) @check_stack_depth()
  %13 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call %struct.TYPE_16__* @findeq(%struct.TYPE_16__* %14, %struct.TYPE_16__* %15, %struct.TYPE_16__* %16, i32* %17)
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %5, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = icmp ne %struct.TYPE_16__* %19, null
  br i1 %20, label %21, label %112

21:                                               ; preds = %4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @QTN_NOCHANGE, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %112

28:                                               ; preds = %21
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @QI_OPR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %112

36:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %73, %36
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %76

43:                                               ; preds = %37
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %46, i64 %48
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call %struct.TYPE_16__* @dofindsubquery(%struct.TYPE_16__* %50, %struct.TYPE_16__* %51, %struct.TYPE_16__* %52, i32* %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %57, i64 %59
  store %struct.TYPE_16__* %54, %struct.TYPE_16__** %60, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %63, i64 %65
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = icmp ne %struct.TYPE_16__* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %43
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %69, %43
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %37

76:                                               ; preds = %37
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %86 = call i32 @QTNFree(%struct.TYPE_16__* %85)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %5, align 8
  br label %111

87:                                               ; preds = %76
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %110

92:                                               ; preds = %87
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @OP_NOT, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %92
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %104, i64 0
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  store %struct.TYPE_16__* %106, %struct.TYPE_16__** %11, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %108 = call i32 @pfree(%struct.TYPE_16__* %107)
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  store %struct.TYPE_16__* %109, %struct.TYPE_16__** %5, align 8
  br label %110

110:                                              ; preds = %101, %92, %87
  br label %111

111:                                              ; preds = %110, %84
  br label %112

112:                                              ; preds = %111, %28, %21, %4
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  ret %struct.TYPE_16__* %113
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local %struct.TYPE_16__* @findeq(%struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @QTNFree(%struct.TYPE_16__*) #1

declare dso_local i32 @pfree(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
