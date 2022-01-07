; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_copytup_heap.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_copytup_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_17__*, %struct.TYPE_14__*, i32 }
%struct.TYPE_17__ = type { i32, i8* (i8*, %struct.TYPE_17__*)* }
%struct.TYPE_14__ = type { i32, i8*, i8* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i8*, i8* }

@MINIMAL_TUPLE_OFFSET = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_14__*, i8*)* @copytup_heap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copytup_heap(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_16__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %7, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @MemoryContextSwitchTo(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = call %struct.TYPE_15__* @ExecCopySlotMinimalTuple(i32* %20)
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %9, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %23 = bitcast %struct.TYPE_15__* %22 to i8*
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %28 = call i32 @GetMemoryChunkSpace(%struct.TYPE_15__* %27)
  %29 = call i32 @USEMEM(%struct.TYPE_13__* %26, i32 %28)
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** @MINIMAL_TUPLE_OFFSET, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %38 = bitcast %struct.TYPE_15__* %37 to i8*
  %39 = load i8*, i8** @MINIMAL_TUPLE_OFFSET, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = inttoptr i64 %42 to i8*
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  store i8* %43, i8** %44, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = call i8* @heap_getattr(%struct.TYPE_16__* %10, i32 %50, i32 %53, i32* %55)
  store i8* %56, i8** %8, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @MemoryContextSwitchTo(i32 %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = load i8* (i8*, %struct.TYPE_17__*)*, i8* (i8*, %struct.TYPE_17__*)** %62, align 8
  %64 = icmp ne i8* (i8*, %struct.TYPE_17__*)* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %3
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65, %3
  %71 = load i8*, i8** %8, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  br label %146

74:                                               ; preds = %65
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %76 = call i32 @consider_abort_common(%struct.TYPE_13__* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %74
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = load i8* (i8*, %struct.TYPE_17__*)*, i8* (i8*, %struct.TYPE_17__*)** %82, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %86, align 8
  %88 = call i8* %83(i8* %84, %struct.TYPE_17__* %87)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  br label %145

91:                                               ; preds = %74
  %92 = load i8*, i8** %8, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %141, %91
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %144

101:                                              ; preds = %95
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i64 %106
  store %struct.TYPE_14__* %107, %struct.TYPE_14__** %13, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = bitcast i8* %110 to %struct.TYPE_15__*
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i8*, i8** @MINIMAL_TUPLE_OFFSET, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i8* %116, i8** %117, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = load i8*, i8** @MINIMAL_TUPLE_OFFSET, align 8
  %122 = ptrtoint i8* %120 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = inttoptr i64 %124 to i8*
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  store i8* %125, i8** %126, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = call i8* @heap_getattr(%struct.TYPE_16__* %10, i32 %132, i32 %135, i32* %137)
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  store i8* %138, i8** %140, align 8
  br label %141

141:                                              ; preds = %101
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %12, align 4
  br label %95

144:                                              ; preds = %95
  br label %145

145:                                              ; preds = %144, %78
  br label %146

146:                                              ; preds = %145, %70
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_15__* @ExecCopySlotMinimalTuple(i32*) #1

declare dso_local i32 @USEMEM(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @GetMemoryChunkSpace(%struct.TYPE_15__*) #1

declare dso_local i8* @heap_getattr(%struct.TYPE_16__*, i32, i32, i32*) #1

declare dso_local i32 @consider_abort_common(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
