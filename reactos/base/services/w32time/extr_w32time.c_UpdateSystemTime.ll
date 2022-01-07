; ModuleID = '/home/carl/AnghaBench/reactos/base/services/w32time/extr_w32time.c_UpdateSystemTime.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/w32time/extr_w32time.c_UpdateSystemTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i64, i64, i64 }

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @UpdateSystemTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UpdateSystemTime(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca %struct.TYPE_6__, align 8
  store i32 %0, i32* %3, align 4
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 1900, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i32 1, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i32 1, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 6
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 5
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = call i32 @SystemTimeToFileTime(%struct.TYPE_6__* %6, i64* %4)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = call i32 (...) @GetLastError()
  store i32 %17, i32* %2, align 4
  br label %40

18:                                               ; preds = %1
  %19 = bitcast i64* %4 to %struct.TYPE_7__*
  %20 = bitcast %struct.TYPE_7__* %5 to i8*
  %21 = bitcast %struct.TYPE_7__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 8 %21, i64 4, i1 false)
  %22 = load i32, i32* %3, align 4
  %23 = mul nsw i32 10000000, %22
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, %23
  store i32 %26, i32* %24, align 4
  %27 = bitcast %struct.TYPE_7__* %5 to i64*
  %28 = load i64, i64* %27, align 4
  store i64 %28, i64* %4, align 8
  %29 = call i32 @FileTimeToSystemTime(i64* %4, %struct.TYPE_6__* %6)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %18
  %32 = call i32 (...) @GetLastError()
  store i32 %32, i32* %2, align 4
  br label %40

33:                                               ; preds = %18
  %34 = call i32 @SystemSetTime(%struct.TYPE_6__* %6)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = call i32 (...) @GetLastError()
  store i32 %37, i32* %2, align 4
  br label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %36, %31, %16
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @SystemTimeToFileTime(%struct.TYPE_6__*, i64*) #1

declare dso_local i32 @GetLastError(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @FileTimeToSystemTime(i64*, %struct.TYPE_6__*) #1

declare dso_local i32 @SystemSetTime(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
