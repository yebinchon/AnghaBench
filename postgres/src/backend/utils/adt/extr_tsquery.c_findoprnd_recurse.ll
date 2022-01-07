; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsquery.c_findoprnd_recurse.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsquery.c_findoprnd_recurse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"malformed tsquery: operand not found\00", align 1
@QI_VAL = common dso_local global i64 0, align 8
@QI_VALSTOP = common dso_local global i64 0, align 8
@QI_OPR = common dso_local global i64 0, align 8
@OP_NOT = common dso_local global i64 0, align 8
@OP_AND = common dso_local global i64 0, align 8
@OP_OR = common dso_local global i64 0, align 8
@OP_PHRASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32, i32*)* @findoprnd_recurse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @findoprnd_recurse(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = call i32 (...) @check_stack_depth()
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @ERROR, align 4
  %18 = call i32 @elog(i32 %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @QI_VAL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %134

33:                                               ; preds = %19
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @QI_VALSTOP, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load i32*, i32** %8, align 8
  store i32 1, i32* %44, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %133

48:                                               ; preds = %33
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @QI_OPR, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @Assert(i32 %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @OP_NOT, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %48
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i32 1, i32* %77, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32*, i32** %8, align 8
  call void @findoprnd_recurse(%struct.TYPE_5__* %81, i32* %82, i32 %83, i32* %84)
  br label %132

85:                                               ; preds = %48
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  store %struct.TYPE_4__* %91, %struct.TYPE_4__** %9, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %10, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @OP_AND, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %111, label %99

99:                                               ; preds = %85
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @OP_OR, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %99
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @OP_PHRASE, align 8
  %110 = icmp eq i64 %108, %109
  br label %111

111:                                              ; preds = %105, %99, %85
  %112 = phi i1 [ true, %99 ], [ true, %85 ], [ %110, %105 ]
  %113 = zext i1 %112 to i32
  %114 = call i32 @Assert(i32 %113)
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i32*, i32** %8, align 8
  call void @findoprnd_recurse(%struct.TYPE_5__* %118, i32* %119, i32 %120, i32* %121)
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %10, align 4
  %125 = sub nsw i32 %123, %124
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %129 = load i32*, i32** %6, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load i32*, i32** %8, align 8
  call void @findoprnd_recurse(%struct.TYPE_5__* %128, i32* %129, i32 %130, i32* %131)
  br label %132

132:                                              ; preds = %111, %70
  br label %133

133:                                              ; preds = %132, %43
  br label %134

134:                                              ; preds = %133, %29
  ret void
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
