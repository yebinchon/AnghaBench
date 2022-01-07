; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_reorderbuffer.c_ReorderBufferTXNByXid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_reorderbuffer.c_ReorderBufferTXNByXid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, i64 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__*, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }

@HASH_ENTER = common dso_local global i32 0, align 4
@HASH_FIND = common dso_local global i32 0, align 4
@InvalidXLogRecPtr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_11__*, i64, i32, i32*, i64, i32)* @ReorderBufferTXNByXid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @ReorderBufferTXNByXid(%struct.TYPE_11__* %0, i64 %1, i32 %2, i32* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @TransactionIdIsValid(i64 %17)
  %19 = call i32 @Assert(i32 %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @TransactionIdIsValid(i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %6
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %25
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %14, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %36 = icmp ne %struct.TYPE_10__* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i32*, i32** %11, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32*, i32** %11, align 8
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %40, %37
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %7, align 8
  br label %142

44:                                               ; preds = %31
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  br label %142

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %25, %6
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = bitcast i64* %9 to i8*
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @HASH_ENTER, align 4
  br label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @HASH_FIND, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = call i64 @hash_search(i32 %52, i8* %53, i32 %61, i32* %16)
  %63 = inttoptr i64 %62 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %15, align 8
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** %14, align 8
  br label %116

70:                                               ; preds = %60
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %114

73:                                               ; preds = %70
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %75 = icmp ne %struct.TYPE_9__* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i32 @Assert(i32 %76)
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* @InvalidXLogRecPtr, align 8
  %80 = icmp ne i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @Assert(i32 %81)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %84 = call %struct.TYPE_10__* @ReorderBufferGetTXN(%struct.TYPE_11__* %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %86, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 3
  store i64 %87, i64* %91, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  store %struct.TYPE_10__* %94, %struct.TYPE_10__** %14, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %73
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = call i32 @dlist_push_tail(i32* %107, i32* %109)
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %112 = call i32 @AssertTXNLsnOrder(%struct.TYPE_11__* %111)
  br label %113

113:                                              ; preds = %105, %73
  br label %115

114:                                              ; preds = %70
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %14, align 8
  br label %115

115:                                              ; preds = %114, %113
  br label %116

116:                                              ; preds = %115, %66
  %117 = load i64, i64* %9, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  store %struct.TYPE_10__* %120, %struct.TYPE_10__** %122, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %116
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = load i32*, i32** %11, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %125, %116
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %136 = icmp ne %struct.TYPE_10__* %135, null
  br label %137

137:                                              ; preds = %134, %131
  %138 = phi i1 [ true, %131 ], [ %136, %134 ]
  %139 = zext i1 %138 to i32
  %140 = call i32 @Assert(i32 %139)
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %141, %struct.TYPE_10__** %7, align 8
  br label %142

142:                                              ; preds = %137, %47, %42
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  ret %struct.TYPE_10__* %143
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdIsValid(i64) #1

declare dso_local i64 @hash_search(i32, i8*, i32, i32*) #1

declare dso_local %struct.TYPE_10__* @ReorderBufferGetTXN(%struct.TYPE_11__*) #1

declare dso_local i32 @dlist_push_tail(i32*, i32*) #1

declare dso_local i32 @AssertTXNLsnOrder(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
