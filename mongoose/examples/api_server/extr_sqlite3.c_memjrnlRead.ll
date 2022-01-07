; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_memjrnlRead.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_memjrnlRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_9__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_9__* }
%struct.TYPE_6__ = type { i64 }

@JOURNAL_CHUNKSIZE = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i64)* @memjrnlRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memjrnlRead(i32* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %9, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %10, align 8
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i64, i64* %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %25, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %4
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %39, %4
  store i64 0, i64* %14, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %13, align 8
  br label %46

46:                                               ; preds = %62, %42
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %48 = call i64 @ALWAYS(%struct.TYPE_9__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* @JOURNAL_CHUNKSIZE, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i64, i64* %8, align 8
  %55 = icmp sle i64 %53, %54
  br label %56

56:                                               ; preds = %50, %46
  %57 = phi i1 [ false, %46 ], [ %55, %50 ]
  br i1 %57, label %58, label %66

58:                                               ; preds = %56
  %59 = load i64, i64* @JOURNAL_CHUNKSIZE, align 8
  %60 = load i64, i64* %14, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %14, align 8
  br label %62

62:                                               ; preds = %58
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  store %struct.TYPE_9__* %65, %struct.TYPE_9__** %13, align 8
  br label %46

66:                                               ; preds = %56
  br label %72

67:                                               ; preds = %39
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  store %struct.TYPE_9__* %71, %struct.TYPE_9__** %13, align 8
  br label %72

72:                                               ; preds = %67, %66
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @JOURNAL_CHUNKSIZE, align 8
  %75 = srem i64 %73, %74
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %116, %72
  %78 = load i64, i64* @JOURNAL_CHUNKSIZE, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = sub nsw i64 %78, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i64, i64* @JOURNAL_CHUNKSIZE, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = sub nsw i64 %84, %86
  %88 = call i32 @MIN(i32 %83, i64 %87)
  store i32 %88, i32* %16, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @memcpy(i32* %89, i32* %95, i32 %96)
  %98 = load i32, i32* %16, align 4
  %99 = load i32*, i32** %10, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %10, align 8
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %11, align 4
  %104 = sub nsw i32 %103, %102
  store i32 %104, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %105

105:                                              ; preds = %77
  %106 = load i32, i32* %11, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  store %struct.TYPE_9__* %111, %struct.TYPE_9__** %13, align 8
  %112 = icmp ne %struct.TYPE_9__* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* %11, align 4
  %115 = icmp sgt i32 %114, 0
  br label %116

116:                                              ; preds = %113, %108, %105
  %117 = phi i1 [ false, %108 ], [ false, %105 ], [ %115, %113 ]
  br i1 %117, label %77, label %118

118:                                              ; preds = %116
  %119 = load i64, i64* %8, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %119, %121
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  store i64 %122, i64* %125, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  store %struct.TYPE_9__* %126, %struct.TYPE_9__** %129, align 8
  %130 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %130
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ALWAYS(%struct.TYPE_9__*) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
