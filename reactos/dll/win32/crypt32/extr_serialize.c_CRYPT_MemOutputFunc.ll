; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_serialize.c_CRYPT_MemOutputFunc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_serialize.c_CRYPT_MemOutputFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemWrittenTracker = type { i64, i64, i64 }

@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @CRYPT_MemOutputFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRYPT_MemOutputFunc(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.MemWrittenTracker*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.MemWrittenTracker*
  store %struct.MemWrittenTracker* %10, %struct.MemWrittenTracker** %7, align 8
  %11 = load %struct.MemWrittenTracker*, %struct.MemWrittenTracker** %7, align 8
  %12 = getelementptr inbounds %struct.MemWrittenTracker, %struct.MemWrittenTracker* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = add nsw i64 %13, %14
  %16 = load %struct.MemWrittenTracker*, %struct.MemWrittenTracker** %7, align 8
  %17 = getelementptr inbounds %struct.MemWrittenTracker, %struct.MemWrittenTracker* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load i32, i32* @ERROR_MORE_DATA, align 4
  %22 = call i32 @SetLastError(i32 %21)
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.MemWrittenTracker*, %struct.MemWrittenTracker** %7, align 8
  %25 = getelementptr inbounds %struct.MemWrittenTracker, %struct.MemWrittenTracker* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, %23
  store i64 %27, i64* %25, align 8
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %8, align 4
  br label %46

29:                                               ; preds = %3
  %30 = load %struct.MemWrittenTracker*, %struct.MemWrittenTracker** %7, align 8
  %31 = getelementptr inbounds %struct.MemWrittenTracker, %struct.MemWrittenTracker* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.MemWrittenTracker*, %struct.MemWrittenTracker** %7, align 8
  %34 = getelementptr inbounds %struct.MemWrittenTracker, %struct.MemWrittenTracker* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @memcpy(i64 %36, i8* %37, i64 %38)
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.MemWrittenTracker*, %struct.MemWrittenTracker** %7, align 8
  %42 = getelementptr inbounds %struct.MemWrittenTracker, %struct.MemWrittenTracker* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, %40
  store i64 %44, i64* %42, align 8
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %29, %20
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
