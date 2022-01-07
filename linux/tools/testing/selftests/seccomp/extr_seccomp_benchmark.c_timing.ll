; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/seccomp/extr_seccomp_benchmark.c_timing.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/seccomp/extr_seccomp_benchmark.c_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@__NR_getpid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%lu.%09lu - %lu.%09lu = %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @timing(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.timespec, align 8
  %9 = alloca %struct.timespec, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %10 = call i64 (...) @getpid()
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @clock_gettime(i32 %11, %struct.timespec* %8)
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %28, %2
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load i32, i32* @__NR_getpid, align 4
  %22 = call i64 @syscall(i32 %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  br label %28

28:                                               ; preds = %20
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %7, align 8
  br label %16

31:                                               ; preds = %16
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @clock_gettime(i32 %32, %struct.timespec* %9)
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %38, %40
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = mul i64 %42, 1000000000
  store i64 %43, i64* %7, align 8
  %44 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %45, %47
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %7, align 8
  %51 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %52, i64 %54, i64 %56, i64 %58, i64 %59)
  %61 = load i64, i64* %7, align 8
  ret i64 %61
}

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i64 @syscall(i32) #1

declare dso_local i32 @printf(i8*, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
