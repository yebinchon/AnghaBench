; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_nsleep-lat.c_nanosleep_lat_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_nsleep-lat.c_nanosleep_lat_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@NSEC_PER_SEC = common dso_local global i64 0, align 8
@UNSUPPORTED = common dso_local global i32 0, align 4
@UNRESONABLE_LATENCY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Large rel latency: %lld ns :\00", align 1
@TIMER_ABSTIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Large abs latency: %lld ns :\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nanosleep_lat_test(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = alloca %struct.timespec, align 8
  %8 = alloca %struct.timespec, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.timespec, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %9, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @NSEC_PER_SEC, align 8
  %15 = sdiv i64 %13, %14
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @NSEC_PER_SEC, align 8
  %19 = srem i64 %17, %18
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1
  store i64 %19, i64* %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @clock_gettime(i32 %21, %struct.timespec* %6)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @UNSUPPORTED, align 4
  store i32 %25, i32* %3, align 4
  br label %143

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @clock_nanosleep(i32 %27, i32 0, %struct.timespec* %8, i32* null)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @UNSUPPORTED, align 4
  store i32 %31, i32* %3, align 4
  br label %143

32:                                               ; preds = %26
  store i32 10, i32* %11, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @clock_gettime(i32 %33, %struct.timespec* %6)
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %42, %32
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = call i64 @clock_nanosleep(i32 %40, i32 0, %struct.timespec* %8, i32* null)
  br label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %35

45:                                               ; preds = %35
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @clock_gettime(i32 %46, %struct.timespec* %7)
  %48 = bitcast %struct.timespec* %6 to { i64, i64 }*
  %49 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %48, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = bitcast %struct.timespec* %7 to { i64, i64 }*
  %54 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %53, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @timespec_sub(i64 %50, i64 %52, i64 %55, i64 %57)
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = sdiv i64 %58, %60
  %62 = load i64, i64* %5, align 8
  %63 = sub nsw i64 %61, %62
  %64 = load i32, i32* @UNRESONABLE_LATENCY, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp sgt i64 %63, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %45
  %68 = bitcast %struct.timespec* %6 to { i64, i64 }*
  %69 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %68, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = bitcast %struct.timespec* %7 to { i64, i64 }*
  %74 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %73, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @timespec_sub(i64 %70, i64 %72, i64 %75, i64 %77)
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = sdiv i64 %78, %80
  %82 = load i64, i64* %5, align 8
  %83 = sub nsw i64 %81, %82
  %84 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %83)
  store i32 -1, i32* %3, align 4
  br label %143

85:                                               ; preds = %45
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %125, %85
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %128

90:                                               ; preds = %86
  %91 = load i32, i32* %4, align 4
  %92 = call i64 @clock_gettime(i32 %91, %struct.timespec* %6)
  %93 = load i64, i64* %5, align 8
  %94 = bitcast %struct.timespec* %6 to { i64, i64 }*
  %95 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %94, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call { i64, i64 } @timespec_add(i64 %96, i64 %98, i64 %93)
  %100 = bitcast %struct.timespec* %12 to { i64, i64 }*
  %101 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %100, i32 0, i32 0
  %102 = extractvalue { i64, i64 } %99, 0
  store i64 %102, i64* %101, align 8
  %103 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %100, i32 0, i32 1
  %104 = extractvalue { i64, i64 } %99, 1
  store i64 %104, i64* %103, align 8
  %105 = bitcast %struct.timespec* %8 to i8*
  %106 = bitcast %struct.timespec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 16, i1 false)
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @TIMER_ABSTIME, align 4
  %109 = call i64 @clock_nanosleep(i32 %107, i32 %108, %struct.timespec* %8, i32* null)
  %110 = load i32, i32* %4, align 4
  %111 = call i64 @clock_gettime(i32 %110, %struct.timespec* %7)
  %112 = bitcast %struct.timespec* %8 to { i64, i64 }*
  %113 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %112, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = bitcast %struct.timespec* %7 to { i64, i64 }*
  %118 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %117, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @timespec_sub(i64 %114, i64 %116, i64 %119, i64 %121)
  %123 = load i64, i64* %9, align 8
  %124 = add nsw i64 %123, %122
  store i64 %124, i64* %9, align 8
  br label %125

125:                                              ; preds = %90
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %86

128:                                              ; preds = %86
  %129 = load i64, i64* %9, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = sdiv i64 %129, %131
  %133 = load i32, i32* @UNRESONABLE_LATENCY, align 4
  %134 = sext i32 %133 to i64
  %135 = icmp sgt i64 %132, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %128
  %137 = load i64, i64* %9, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = sdiv i64 %137, %139
  %141 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %140)
  store i32 -1, i32* %3, align 4
  br label %143

142:                                              ; preds = %128
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %136, %67, %30, %24
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i64 @clock_nanosleep(i32, i32, %struct.timespec*, i32*) #1

declare dso_local i64 @timespec_sub(i64, i64, i64, i64) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local { i64, i64 } @timespec_add(i64, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
