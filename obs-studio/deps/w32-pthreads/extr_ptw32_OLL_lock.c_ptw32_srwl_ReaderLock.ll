; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_ptw32_OLL_lock.c_ptw32_srwl_ReaderLock.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_ptw32_OLL_lock.c_ptw32_srwl_ReaderLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i8* }

@PTW32_FALSE = common dso_local global i64 0, align 8
@ptw32_srwl_writer = common dso_local global i64 0, align 8
@PTW32_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ptw32_srwl_ReaderLock(%struct.TYPE_9__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %7

7:                                                ; preds = %140, %2
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %6, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %12 = icmp eq %struct.TYPE_10__* %11, null
  br i1 %12, label %13, label %54

13:                                               ; preds = %7
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = icmp eq %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = call %struct.TYPE_10__* @ptw32_srwl_AllocReaderNode(%struct.TYPE_11__* %17)
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %5, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i64, i64* @PTW32_FALSE, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = ptrtoint %struct.TYPE_10__** %24 to i32
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = ptrtoint %struct.TYPE_10__* %26 to i64
  %28 = call i64 @PTW32_INTERLOCKED_COMPARE_EXCHANGE_PTR(i32 %25, i64 %27, i64 0)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = ptrtoint %struct.TYPE_10__* %29 to i64
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %19
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ptw32_oll_Open(i32 %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @ptw32_oll_Arrive(i32 %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @ptw32_oll_Arrived(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %32
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %51, align 8
  br label %141

52:                                               ; preds = %32
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %53

53:                                               ; preds = %52, %19
  br label %140

54:                                               ; preds = %7
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ptw32_srwl_writer, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %109

60:                                               ; preds = %54
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = icmp eq %struct.TYPE_10__* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = call %struct.TYPE_10__* @ptw32_srwl_AllocReaderNode(%struct.TYPE_11__* %64)
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %5, align 8
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i64, i64* @PTW32_TRUE, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = ptrtoint %struct.TYPE_10__** %71 to i32
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = ptrtoint %struct.TYPE_10__* %73 to i64
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %76 = ptrtoint %struct.TYPE_10__* %75 to i64
  %77 = call i64 @PTW32_INTERLOCKED_COMPARE_EXCHANGE_PTR(i32 %72, i64 %74, i64 %76)
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = ptrtoint %struct.TYPE_10__* %78 to i64
  %80 = icmp eq i64 %77, %79
  br i1 %80, label %81, label %108

81:                                               ; preds = %66
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 3
  store %struct.TYPE_10__* %82, %struct.TYPE_10__** %84, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @ptw32_oll_Arrive(i32 %87)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @ptw32_oll_Arrived(i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %81
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  store %struct.TYPE_10__* %97, %struct.TYPE_10__** %99, align 8
  br label %100

100:                                              ; preds = %105, %96
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %100

106:                                              ; preds = %100
  br label %141

107:                                              ; preds = %81
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %108

108:                                              ; preds = %107, %66
  br label %139

109:                                              ; preds = %54
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @ptw32_oll_Arrive(i32 %112)
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = call i64 @ptw32_oll_Arrived(i8* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %138

121:                                              ; preds = %109
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %123 = icmp ne %struct.TYPE_10__* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %126 = call i32 @ptw32_srwl_FreeReaderNode(%struct.TYPE_10__* %125)
  br label %127

127:                                              ; preds = %124, %121
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  store %struct.TYPE_10__* %128, %struct.TYPE_10__** %130, align 8
  br label %131

131:                                              ; preds = %136, %127
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %131

137:                                              ; preds = %131
  br label %141

138:                                              ; preds = %109
  br label %139

139:                                              ; preds = %138, %108
  br label %140

140:                                              ; preds = %139, %53
  br label %7

141:                                              ; preds = %137, %106, %48
  ret void
}

declare dso_local %struct.TYPE_10__* @ptw32_srwl_AllocReaderNode(%struct.TYPE_11__*) #1

declare dso_local i64 @PTW32_INTERLOCKED_COMPARE_EXCHANGE_PTR(i32, i64, i64) #1

declare dso_local i32 @ptw32_oll_Open(i32) #1

declare dso_local i8* @ptw32_oll_Arrive(i32) #1

declare dso_local i64 @ptw32_oll_Arrived(i8*) #1

declare dso_local i32 @ptw32_srwl_FreeReaderNode(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
