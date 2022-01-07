; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_nanosleep.c_nanosleep_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_nanosleep.c_nanosleep_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@UNSUPPORTED = common dso_local global i32 0, align 4
@TIMER_ABSTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nanosleep_test(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = alloca %struct.timespec, align 8
  %8 = alloca %struct.timespec, align 8
  %9 = alloca %struct.timespec, align 8
  %10 = alloca %struct.timespec, align 8
  %11 = alloca %struct.timespec, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @clock_gettime(i32 %12, %struct.timespec* %6)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @UNSUPPORTED, align 4
  store i32 %16, i32* %3, align 4
  br label %105

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = bitcast %struct.timespec* %6 to { i64, i64 }*
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call { i64, i64 } @timespec_add(i64 %21, i64 %23, i64 %18)
  %25 = bitcast %struct.timespec* %9 to { i64, i64 }*
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 0
  %27 = extractvalue { i64, i64 } %24, 0
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 1
  %29 = extractvalue { i64, i64 } %24, 1
  store i64 %29, i64* %28, align 8
  %30 = bitcast %struct.timespec* %7 to i8*
  %31 = bitcast %struct.timespec* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @TIMER_ABSTIME, align 4
  %34 = call i64 @clock_nanosleep(i32 %32, i32 %33, %struct.timespec* %7, i32* null)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %17
  %37 = load i32, i32* @UNSUPPORTED, align 4
  store i32 %37, i32* %3, align 4
  br label %105

38:                                               ; preds = %17
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @clock_gettime(i32 %39, %struct.timespec* %6)
  %41 = bitcast %struct.timespec* %7 to { i64, i64 }*
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %41, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = bitcast %struct.timespec* %6 to { i64, i64 }*
  %47 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %46, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @in_order(i64 %43, i64 %45, i64 %48, i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %105

54:                                               ; preds = %38
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @clock_gettime(i32 %55, %struct.timespec* %6)
  %57 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* %5, align 8
  %60 = bitcast %struct.timespec* %8 to { i64, i64 }*
  %61 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %60, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call { i64, i64 } @timespec_add(i64 %62, i64 %64, i64 %59)
  %66 = bitcast %struct.timespec* %10 to { i64, i64 }*
  %67 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %66, i32 0, i32 0
  %68 = extractvalue { i64, i64 } %65, 0
  store i64 %68, i64* %67, align 8
  %69 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %66, i32 0, i32 1
  %70 = extractvalue { i64, i64 } %65, 1
  store i64 %70, i64* %69, align 8
  %71 = bitcast %struct.timespec* %8 to i8*
  %72 = bitcast %struct.timespec* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 16, i1 false)
  %73 = load i64, i64* %5, align 8
  %74 = bitcast %struct.timespec* %6 to { i64, i64 }*
  %75 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %74, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call { i64, i64 } @timespec_add(i64 %76, i64 %78, i64 %73)
  %80 = bitcast %struct.timespec* %11 to { i64, i64 }*
  %81 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %80, i32 0, i32 0
  %82 = extractvalue { i64, i64 } %79, 0
  store i64 %82, i64* %81, align 8
  %83 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %80, i32 0, i32 1
  %84 = extractvalue { i64, i64 } %79, 1
  store i64 %84, i64* %83, align 8
  %85 = bitcast %struct.timespec* %7 to i8*
  %86 = bitcast %struct.timespec* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 16, i1 false)
  %87 = load i32, i32* %4, align 4
  %88 = call i64 @clock_nanosleep(i32 %87, i32 0, %struct.timespec* %8, i32* null)
  %89 = load i32, i32* %4, align 4
  %90 = call i64 @clock_gettime(i32 %89, %struct.timespec* %6)
  %91 = bitcast %struct.timespec* %7 to { i64, i64 }*
  %92 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %91, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = bitcast %struct.timespec* %6 to { i64, i64 }*
  %97 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %96, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @in_order(i64 %93, i64 %95, i64 %98, i64 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %54
  store i32 -1, i32* %3, align 4
  br label %105

104:                                              ; preds = %54
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %103, %53, %36, %15
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local { i64, i64 } @timespec_add(i64, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @clock_nanosleep(i32, i32, %struct.timespec*, i32*) #1

declare dso_local i32 @in_order(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
