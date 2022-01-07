; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_lock.c_handle_unlock.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_lock.c_handle_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__*, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8*, i64, i64 }
%struct.TYPE_18__ = type { i64, i64 }

@NO_ERROR = common dso_local global i32 0, align 4
@NFS4_UINT64_MAX = common dso_local global i64 0, align 8
@ERROR_LOCKED = common dso_local global i32 0, align 4
@ERROR_BAD_NET_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @handle_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_unlock(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_18__, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %5, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %6, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %7, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load i32, i32* @NO_ERROR, align 4
  store i32 %23, i32* %10, align 4
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %84, %1
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %87

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 0
  %32 = call i64 @safe_read(i8** %7, i64* %8, i64* %31, i32 4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %87

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 1
  %37 = call i64 @safe_read(i8** %7, i64* %8, i64* %36, i32 4)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %87

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NFS4_UINT64_MAX, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %43, %45
  %47 = icmp sge i64 %42, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i64, i64* @NFS4_UINT64_MAX, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 1
  store i64 %49, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %40
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %53 = call i32 @open_unlock_delegate(%struct.TYPE_17__* %52, %struct.TYPE_18__* %3)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @ERROR_LOCKED, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %84

58:                                               ; preds = %51
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = call i32 @EnterCriticalSection(i32* %61)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %64 = call i32 @lock_stateid_arg(%struct.TYPE_17__* %63, i32* %4)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @nfs41_unlock(i32 %67, i32* %69, i64 %71, i64 %73, i32* %4)
  store i32 %74, i32* %10, align 4
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %76 = call i32 @open_unlock_remove(%struct.TYPE_17__* %75, i32* %4, %struct.TYPE_18__* %3)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = call i32 @LeaveCriticalSection(i32* %79)
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @ERROR_BAD_NET_RESP, align 4
  %83 = call i32 @nfs_to_windows_error(i32 %81, i32 %82)
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %58, %57
  %85 = load i64, i64* %9, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %9, align 8
  br label %24

87:                                               ; preds = %39, %34, %24
  %88 = load i32, i32* %10, align 4
  ret i32 %88
}

declare dso_local i64 @safe_read(i8**, i64*, i64*, i32) #1

declare dso_local i32 @open_unlock_delegate(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @lock_stateid_arg(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @nfs41_unlock(i32, i32*, i64, i64, i32*) #1

declare dso_local i32 @open_unlock_remove(%struct.TYPE_17__*, i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @nfs_to_windows_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
