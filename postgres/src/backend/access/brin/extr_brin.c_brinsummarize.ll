; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin.c_brinsummarize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin.c_brinsummarize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@BRIN_ALL_BLOCKRANGES = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i32 0, align 4
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, double*, double*)* @brinsummarize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brinsummarize(i32 %0, i32 %1, i32 %2, i32 %3, double* %4, double* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store double* %4, double** %11, align 8
  store double* %5, double** %12, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %14, align 8
  store i32* null, i32** %15, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32* @brinRevmapInitialize(i32 %22, i32* %17, i32* null)
  store i32* %23, i32** %13, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @RelationGetNumberOfBlocks(i32 %24)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @BRIN_ALL_BLOCKRANGES, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %6
  store i32 0, i32* %19, align 4
  br label %41

30:                                               ; preds = %6
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %17, align 4
  %33 = sdiv i32 %31, %32
  %34 = load i32, i32* %17, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %19, align 4
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %19, align 4
  %38 = load i32, i32* %17, align 4
  %39 = add nsw i32 %37, %38
  %40 = call i32 @Min(i32 %36, i32 %39)
  store i32 %40, i32* %16, align 4
  br label %41

41:                                               ; preds = %30, %29
  %42 = load i32, i32* %19, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32*, i32** %13, align 8
  %47 = call i32 @brinRevmapTerminate(i32* %46)
  br label %141

48:                                               ; preds = %41
  %49 = load i32, i32* @InvalidBuffer, align 4
  store i32 %49, i32* %18, align 4
  br label %50

50:                                               ; preds = %120, %48
  %51 = load i32, i32* %19, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %124

54:                                               ; preds = %50
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* %17, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %16, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %124

64:                                               ; preds = %57, %54
  %65 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %69 = call i32* @brinGetTupleForHeapBlock(i32* %66, i32 %67, i32* %18, i32* %21, i32* null, i32 %68, i32* null)
  store i32* %69, i32** %20, align 8
  %70 = load i32*, i32** %20, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %108

72:                                               ; preds = %64
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %74 = icmp eq %struct.TYPE_5__* %73, null
  br i1 %74, label %75, label %87

75:                                               ; preds = %72
  %76 = load i32*, i32** %15, align 8
  %77 = icmp ne i32* %76, null
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 @Assert(i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* %17, align 4
  %84 = call %struct.TYPE_5__* @initialize_brin_buildstate(i32 %81, i32* %82, i32 %83)
  store %struct.TYPE_5__* %84, %struct.TYPE_5__** %14, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32* @BuildIndexInfo(i32 %85)
  store i32* %86, i32** %15, align 8
  br label %87

87:                                               ; preds = %75, %72
  %88 = load i32*, i32** %15, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %16, align 4
  %93 = call i32 @summarize_range(i32* %88, %struct.TYPE_5__* %89, i32 %90, i32 %91, i32 %92)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @brin_memtuple_initialize(i32 %96, i32 %99)
  %101 = load double*, double** %11, align 8
  %102 = icmp ne double* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %87
  %104 = load double*, double** %11, align 8
  %105 = load double, double* %104, align 8
  %106 = fadd double %105, 1.000000e+00
  store double %106, double* %104, align 8
  br label %107

107:                                              ; preds = %103, %87
  br label %119

108:                                              ; preds = %64
  %109 = load double*, double** %12, align 8
  %110 = icmp ne double* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load double*, double** %12, align 8
  %113 = load double, double* %112, align 8
  %114 = fadd double %113, 1.000000e+00
  store double %114, double* %112, align 8
  br label %115

115:                                              ; preds = %111, %108
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %118 = call i32 @LockBuffer(i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %107
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %19, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %19, align 4
  br label %50

124:                                              ; preds = %63, %50
  %125 = load i32, i32* %18, align 4
  %126 = call i64 @BufferIsValid(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32, i32* %18, align 4
  %130 = call i32 @ReleaseBuffer(i32 %129)
  br label %131

131:                                              ; preds = %128, %124
  %132 = load i32*, i32** %13, align 8
  %133 = call i32 @brinRevmapTerminate(i32* %132)
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %135 = icmp ne %struct.TYPE_5__* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %138 = call i32 @terminate_brin_buildstate(%struct.TYPE_5__* %137)
  %139 = load i32*, i32** %15, align 8
  %140 = call i32 @pfree(i32* %139)
  br label %141

141:                                              ; preds = %45, %136, %131
  ret void
}

declare dso_local i32* @brinRevmapInitialize(i32, i32*, i32*) #1

declare dso_local i32 @RelationGetNumberOfBlocks(i32) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @brinRevmapTerminate(i32*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32* @brinGetTupleForHeapBlock(i32*, i32, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_5__* @initialize_brin_buildstate(i32, i32*, i32) #1

declare dso_local i32* @BuildIndexInfo(i32) #1

declare dso_local i32 @summarize_range(i32*, %struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @brin_memtuple_initialize(i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local i32 @terminate_brin_buildstate(%struct.TYPE_5__*) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
