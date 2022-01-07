; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_nsleep-lat.c_timespec_add.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_nsleep-lat.c_timespec_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i32 }

@NSEC_PER_SEC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32 } @timespec_add(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.timespec, align 8
  %5 = alloca %struct.timespec, align 8
  %6 = alloca i64, align 8
  %7 = bitcast %struct.timespec* %5 to { i64, i32 }*
  %8 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  store i64 %0, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  store i32 %1, i32* %9, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, %10
  store i64 %13, i64* %11, align 8
  br label %14

14:                                               ; preds = %19, %3
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NSEC_PER_SEC, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load i64, i64* @NSEC_PER_SEC, align 8
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %22, %20
  store i64 %23, i64* %21, align 8
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  br label %14

27:                                               ; preds = %14
  %28 = bitcast %struct.timespec* %4 to i8*
  %29 = bitcast %struct.timespec* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 16, i1 false)
  %30 = bitcast %struct.timespec* %4 to { i64, i32 }*
  %31 = load { i64, i32 }, { i64, i32 }* %30, align 8
  ret { i64, i32 } %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
