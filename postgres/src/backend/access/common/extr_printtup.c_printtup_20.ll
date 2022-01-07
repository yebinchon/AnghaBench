; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_printtup.c_printtup_20.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_printtup.c_printtup_20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64*, i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_11__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @printtup_20 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @printtup_20(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %5, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %6, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 4
  store i32* %22, i32** %8, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = icmp ne %struct.TYPE_10__* %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %2
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31, %2
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @printtup_prepare_info(%struct.TYPE_12__* %38, %struct.TYPE_10__* %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %31
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = call i32 @slot_getallattrs(%struct.TYPE_9__* %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @MemoryContextSwitchTo(i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @pq_beginmessage_reuse(i32* %49, i8 signext 68)
  store i32 0, i32* %11, align 4
  store i32 128, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %78, %42
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %51
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %11, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %64, %55
  %69 = load i32, i32* %12, align 4
  %70 = ashr i32 %69, 1
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @pq_sendint8(i32* %74, i32 %75)
  store i32 0, i32* %11, align 4
  store i32 128, i32* %12, align 4
  br label %77

77:                                               ; preds = %73, %68
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %51

81:                                               ; preds = %51
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 128
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @pq_sendint8(i32* %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %81
  store i32 0, i32* %10, align 4
  br label %89

89:                                               ; preds = %132, %88
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %135

93:                                               ; preds = %89
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i64 %98
  store %struct.TYPE_11__* %99, %struct.TYPE_11__** %13, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %14, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %93
  br label %132

116:                                              ; preds = %93
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 @Assert(i32 %121)
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load i32, i32* %14, align 4
  %126 = call i8* @OutputFunctionCall(i32* %124, i32 %125)
  store i8* %126, i8** %15, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = load i8*, i8** %15, align 8
  %129 = load i8*, i8** %15, align 8
  %130 = call i32 @strlen(i8* %129)
  %131 = call i32 @pq_sendcountedtext(i32* %127, i8* %128, i32 %130, i32 1)
  br label %132

132:                                              ; preds = %116, %115
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %89

135:                                              ; preds = %89
  %136 = load i32*, i32** %8, align 8
  %137 = call i32 @pq_endmessage_reuse(i32* %136)
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @MemoryContextSwitchTo(i32 %138)
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @MemoryContextReset(i32 %142)
  ret i32 1
}

declare dso_local i32 @printtup_prepare_info(%struct.TYPE_12__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @slot_getallattrs(%struct.TYPE_9__*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @pq_beginmessage_reuse(i32*, i8 signext) #1

declare dso_local i32 @pq_sendint8(i32*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @OutputFunctionCall(i32*, i32) #1

declare dso_local i32 @pq_sendcountedtext(i32*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pq_endmessage_reuse(i32*) #1

declare dso_local i32 @MemoryContextReset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
