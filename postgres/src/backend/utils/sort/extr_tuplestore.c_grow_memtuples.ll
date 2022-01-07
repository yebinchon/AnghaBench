; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplestore.c_grow_memtuples.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplestore.c_grow_memtuples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i32, i8** }

@INT_MAX = common dso_local global i32 0, align 4
@MaxAllocHugeSize = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"unexpected out-of-memory situation in tuplestore\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @grow_memtuples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grow_memtuples(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  store i64 %17, i64* %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %137

23:                                               ; preds = %1
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp sle i64 %24, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @INT_MAX, align 4
  %32 = sdiv i32 %31, 2
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %35, 2
  store i32 %36, i32* %4, align 4
  br label %41

37:                                               ; preds = %29
  %38 = load i32, i32* @INT_MAX, align 4
  store i32 %38, i32* %4, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  store i32 0, i32* %40, align 8
  br label %41

41:                                               ; preds = %37, %34
  br label %68

42:                                               ; preds = %23
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = sitofp i64 %45 to double
  %47 = load i64, i64* %6, align 8
  %48 = sitofp i64 %47 to double
  %49 = fdiv double %46, %48
  store double %49, double* %7, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sitofp i32 %50 to double
  %52 = load double, double* %7, align 8
  %53 = fmul double %51, %52
  %54 = load i32, i32* @INT_MAX, align 4
  %55 = sitofp i32 %54 to double
  %56 = fcmp olt double %53, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %42
  %58 = load i32, i32* %5, align 4
  %59 = sitofp i32 %58 to double
  %60 = load double, double* %7, align 8
  %61 = fmul double %59, %60
  %62 = fptosi double %61 to i32
  store i32 %62, i32* %4, align 4
  br label %65

63:                                               ; preds = %42
  %64 = load i32, i32* @INT_MAX, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %57
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %41
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %134

73:                                               ; preds = %68
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = load i32, i32* @MaxAllocHugeSize, align 4
  %77 = sext i32 %76 to i64
  %78 = udiv i64 %77, 8
  %79 = icmp uge i64 %75, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load i32, i32* @MaxAllocHugeSize, align 4
  %82 = sext i32 %81 to i64
  %83 = udiv i64 %82, 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %4, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  store i32 0, i32* %86, align 8
  br label %87

87:                                               ; preds = %80, %73
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %5, align 4
  %93 = sub nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 8
  %96 = icmp slt i64 %90, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %134

98:                                               ; preds = %87
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 4
  %102 = load i8**, i8*** %101, align 8
  %103 = call i32 @GetMemoryChunkSpace(i8** %102)
  %104 = call i32 @FREEMEM(%struct.TYPE_6__* %99, i32 %103)
  %105 = load i32, i32* %4, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 4
  %110 = load i8**, i8*** %109, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 8
  %116 = trunc i64 %115 to i32
  %117 = call i64 @repalloc_huge(i8** %110, i32 %116)
  %118 = inttoptr i64 %117 to i8**
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 4
  store i8** %118, i8*** %120, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 4
  %124 = load i8**, i8*** %123, align 8
  %125 = call i32 @GetMemoryChunkSpace(i8** %124)
  %126 = call i32 @USEMEM(%struct.TYPE_6__* %121, i32 %125)
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %128 = call i64 @LACKMEM(%struct.TYPE_6__* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %98
  %131 = load i32, i32* @ERROR, align 4
  %132 = call i32 @elog(i32 %131, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %98
  store i32 1, i32* %2, align 4
  br label %137

134:                                              ; preds = %97, %72
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 3
  store i32 0, i32* %136, align 8
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %134, %133, %22
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @FREEMEM(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @GetMemoryChunkSpace(i8**) #1

declare dso_local i64 @repalloc_huge(i8**, i32) #1

declare dso_local i32 @USEMEM(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @LACKMEM(%struct.TYPE_6__*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
