; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_reorderbuffer.c_ResolveCminCmaxDuringDecoding.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_reorderbuffer.c_ResolveCminCmaxDuringDecoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@MAIN_FORKNUM = common dso_local global i64 0, align 8
@HASH_FIND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ResolveCminCmaxDuringDecoding(i32* %0, i32 %1, %struct.TYPE_8__* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_6__, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %18, align 4
  %19 = call i32 @memset(%struct.TYPE_6__* %14, i32 0, i32 8)
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @BufferIsLocal(i32 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load i32, i32* %11, align 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %28 = call i32 @BufferGetTag(i32 %26, i32* %27, i64* %16, i64* %17)
  %29 = load i64, i64* %16, align 8
  %30 = load i64, i64* @MAIN_FORKNUM, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  %34 = load i64, i64* %17, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = call i64 @ItemPointerGetBlockNumber(i32* %36)
  %38 = icmp eq i64 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @Assert(i32 %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %44 = call i32 @ItemPointerCopy(i32* %42, i32* %43)
  br label %45

45:                                               ; preds = %56, %6
  %46 = load i32*, i32** %8, align 8
  %47 = bitcast %struct.TYPE_6__* %14 to i8*
  %48 = load i32, i32* @HASH_FIND, align 4
  %49 = call i64 @hash_search(i32* %46, i8* %47, i32 %48, i32* null)
  %50 = inttoptr i64 %49 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %15, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %52 = icmp eq %struct.TYPE_7__* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %45
  %54 = load i32, i32* %18, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = load i32*, i32** %8, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @UpdateLogicalMappings(i32* %57, i32 %60, i32 %61)
  store i32 1, i32* %18, align 4
  br label %45

63:                                               ; preds = %53, %45
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %65 = icmp eq %struct.TYPE_7__* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 0, i32* %7, align 4
  br label %85

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67
  %69 = load i32*, i32** %12, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %12, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %71, %68
  %77 = load i32*, i32** %13, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %13, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %79, %76
  store i32 1, i32* %7, align 4
  br label %85

85:                                               ; preds = %84, %66
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BufferIsLocal(i32) #1

declare dso_local i32 @BufferGetTag(i32, i32*, i64*, i64*) #1

declare dso_local i64 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i32 @ItemPointerCopy(i32*, i32*) #1

declare dso_local i64 @hash_search(i32*, i8*, i32, i32*) #1

declare dso_local i32 @UpdateLogicalMappings(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
