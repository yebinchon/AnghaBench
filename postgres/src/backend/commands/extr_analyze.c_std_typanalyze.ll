; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_analyze.c_std_typanalyze.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_analyze.c_std_typanalyze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i8*, i32, i8* }
%struct.TYPE_7__ = type { i32 }

@default_statistics_target = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@compute_scalar_stats = common dso_local global i32 0, align 4
@compute_distinct_stats = common dso_local global i32 0, align 4
@compute_trivial_stats = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @std_typanalyze(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @default_statistics_target, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @get_sort_group_operators(i32 %21, i32 0, i32 0, i32 0, i8** %4, i8** %5, i32* null, i32* null)
  %23 = call i64 @palloc(i32 24)
  %24 = inttoptr i64 %23 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %6, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @OidIsValid(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @get_opcode(i8* %32)
  br label %36

34:                                               ; preds = %18
  %35 = load i32, i32* @InvalidOid, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi i32 [ %33, %31 ], [ %35, %34 ]
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %45, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @OidIsValid(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %36
  %50 = load i8*, i8** %4, align 8
  %51 = call i64 @OidIsValid(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load i32, i32* @compute_scalar_stats, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 300, %59
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %88

63:                                               ; preds = %49, %36
  %64 = load i8*, i8** %5, align 8
  %65 = call i64 @OidIsValid(i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load i32, i32* @compute_distinct_stats, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 300, %73
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  br label %87

77:                                               ; preds = %63
  %78 = load i32, i32* @compute_trivial_stats, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 300, %83
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %77, %67
  br label %88

88:                                               ; preds = %87, %53
  ret i32 1
}

declare dso_local i32 @get_sort_group_operators(i32, i32, i32, i32, i8**, i8**, i32*, i32*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i64 @OidIsValid(i8*) #1

declare dso_local i32 @get_opcode(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
