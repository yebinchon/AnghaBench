; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_raw_skew.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_raw_skew.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.timex = type { i32, i64, i64, i64 }

@stdout = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ERR: NO CLOCK_MONOTONIC_RAW\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"WARNING: ADJ_OFFSET in progress, this will cause inaccurate results\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Estimating clock drift: \00", align 1
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"%lld.%i(est)\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" %lld.%i(act)\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"\09[SKIP]\0A\00", align 1
@.str.6 = private unnamed_addr constant [77 x i8] c"The clock was adjusted externally. Shutdown NTPd or other time sync daemons\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"\09[FAILED]\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"\09[OK]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.timespec, align 4
  %7 = alloca %struct.timespec, align 4
  %8 = alloca %struct.timespec, align 4
  %9 = alloca %struct.timespec, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.timex, align 8
  %16 = alloca %struct.timex, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i32, i32* @stdout, align 4
  %18 = call i32 @setbuf(i32 %17, i32* null)
  %19 = load i32, i32* @CLOCK_MONOTONIC_RAW, align 4
  %20 = call i64 @clock_gettime(i32 %19, %struct.timespec* %7)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %131

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.timex, %struct.timex* %15, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = call i32 @adjtimex(%struct.timex* %15)
  %27 = call i32 @get_monotonic_and_raw(%struct.timespec* %6, %struct.timespec* %7)
  %28 = bitcast %struct.timespec* %8 to i8*
  %29 = bitcast %struct.timespec* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @diff_timespec(i32 %31, i32 %33)
  store i64 %34, i64* %10, align 8
  %35 = getelementptr inbounds %struct.timex, %struct.timex* %15, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %24
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @stdout, align 4
  %43 = call i32 @fflush(i32 %42)
  %44 = call i32 @sleep(i32 120)
  %45 = call i32 @get_monotonic_and_raw(%struct.timespec* %6, %struct.timespec* %7)
  %46 = bitcast %struct.timespec* %9 to i8*
  %47 = bitcast %struct.timespec* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 4, i1 false)
  %48 = getelementptr inbounds %struct.timex, %struct.timex* %16, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = call i32 @adjtimex(%struct.timex* %16)
  %50 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @diff_timespec(i32 %51, i32 %53)
  store i64 %54, i64* %11, align 8
  %55 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @diff_timespec(i32 %56, i32 %58)
  store i64 %59, i64* %12, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %10, align 8
  %62 = sub nsw i64 %60, %61
  %63 = load i64, i64* @NSEC_PER_SEC, align 8
  %64 = mul nsw i64 %62, %63
  %65 = load i64, i64* %12, align 8
  %66 = sdiv i64 %64, %65
  store i64 %66, i64* %13, align 8
  %67 = load i64, i64* %13, align 8
  %68 = sub nsw i64 0, %67
  store i64 %68, i64* %13, align 8
  %69 = load i64, i64* %13, align 8
  %70 = sdiv i64 %69, 1000
  %71 = load i64, i64* %13, align 8
  %72 = srem i64 %71, 1000
  %73 = trunc i64 %72 to i32
  %74 = call i32 @abs(i32 %73) #4
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 %70, i32 %74)
  %76 = getelementptr inbounds %struct.timex, %struct.timex* %15, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.timex, %struct.timex* %16, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %77, %79
  %81 = mul nsw i32 %80, 1000
  %82 = sdiv i32 %81, 2
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %14, align 8
  %84 = getelementptr inbounds %struct.timex, %struct.timex* %15, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = mul nsw i64 %86, 1000
  store i64 %87, i64* %14, align 8
  %88 = load i64, i64* %14, align 8
  %89 = call i64 @shift_right(i64 %88, i32 16)
  store i64 %89, i64* %14, align 8
  %90 = load i64, i64* %14, align 8
  %91 = sdiv i64 %90, 1000
  %92 = load i64, i64* %14, align 8
  %93 = srem i64 %92, 1000
  %94 = trunc i64 %93 to i32
  %95 = call i32 @abs(i32 %94) #4
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 %91, i32 %95)
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* %14, align 8
  %99 = sub nsw i64 %97, %98
  %100 = call i32 @llabs(i64 %99)
  %101 = icmp sgt i32 %100, 1000
  br i1 %101, label %102, label %128

102:                                              ; preds = %40
  %103 = getelementptr inbounds %struct.timex, %struct.timex* %15, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %122, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.timex, %struct.timex* %16, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %122, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.timex, %struct.timex* %15, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.timex, %struct.timex* %16, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %112, %114
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.timex, %struct.timex* %15, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.timex, %struct.timex* %16, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %118, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %116, %110, %106, %102
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %124 = call i32 @ksft_exit_skip(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.6, i64 0, i64 0))
  store i32 %124, i32* %3, align 4
  br label %131

125:                                              ; preds = %116
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %127 = call i32 (...) @ksft_exit_fail()
  store i32 %127, i32* %3, align 4
  br label %131

128:                                              ; preds = %40
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %130 = call i32 (...) @ksft_exit_pass()
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %128, %125, %122, %22
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @setbuf(i32, i32*) #1

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @adjtimex(%struct.timex*) #1

declare dso_local i32 @get_monotonic_and_raw(%struct.timespec*, %struct.timespec*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @diff_timespec(i32, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @sleep(i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #3

declare dso_local i64 @shift_right(i64, i32) #1

declare dso_local i32 @llabs(i64) #1

declare dso_local i32 @ksft_exit_skip(i8*) #1

declare dso_local i32 @ksft_exit_fail(...) #1

declare dso_local i32 @ksft_exit_pass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
