; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_lock.c_handle_lock.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_lock.c_handle_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__*, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { %struct.TYPE_17__, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i64, i8*, i32, i32 }
%struct.TYPE_20__ = type { i64, i64, i32 }

@NO_ERROR = common dso_local global i32 0, align 4
@NFS4_UINT64_MAX = common dso_local global i64 0, align 8
@LKLVL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"delegated lock { %llu, %llu }\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@ERROR_FILE_INVALID = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"nfs41_lock failed with %s\0A\00", align 1
@ERROR_BAD_NET_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @handle_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_lock(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store %struct.TYPE_21__* %11, %struct.TYPE_21__** %4, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %5, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @get_lock_type(i32 %17, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @NO_ERROR, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NFS4_UINT64_MAX, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = icmp sge i64 %25, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load i64, i64* @NFS4_UINT64_MAX, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %32, %1
  %37 = call %struct.TYPE_20__* @calloc(i32 1, i32 24)
  store %struct.TYPE_20__* %37, %struct.TYPE_20__** %6, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %39 = icmp eq %struct.TYPE_20__* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 (...) @GetLastError()
  store i32 %41, i32* %8, align 4
  br label %132

42:                                               ; preds = %36
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %60 = call i64 @open_lock_delegate(%struct.TYPE_19__* %58, %struct.TYPE_20__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %42
  %63 = load i32, i32* @LKLVL, align 4
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (i32, i8*, i64, ...) @dprintf(i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %66, i64 %69)
  %71 = load i8*, i8** @TRUE, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  br label %132

74:                                               ; preds = %42
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %76 = load i8*, i8** @TRUE, align 8
  %77 = call i32 @nfs41_delegation_to_open(%struct.TYPE_19__* %75, i8* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @ERROR_FILE_INVALID, align 4
  store i32 %81, i32* %8, align 4
  br label %134

82:                                               ; preds = %74
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = call i32 @EnterCriticalSection(i32* %85)
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %88 = call i32 @lock_stateid_arg(%struct.TYPE_19__* %87, i32* %3)
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 1
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* @FALSE, align 4
  %104 = load i8*, i8** @TRUE, align 8
  %105 = call i32 @nfs41_lock(i32 %91, i32* %93, i32* %95, i32 %96, i64 %99, i64 %102, i32 %103, i8* %104, i32* %3)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %82
  %109 = load i32, i32* @LKLVL, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @nfs_error_string(i32 %110)
  %112 = sext i32 %111 to i64
  %113 = call i32 (i32, i8*, i64, ...) @dprintf(i32 %109, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %112)
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @ERROR_BAD_NET_RESP, align 4
  %116 = call i32 @nfs_to_windows_error(i32 %114, i32 %115)
  store i32 %116, i32* %8, align 4
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = call i32 @LeaveCriticalSection(i32* %119)
  br label %134

121:                                              ; preds = %82
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %124 = call i32 @open_lock_add(%struct.TYPE_19__* %122, i32* %3, %struct.TYPE_20__* %123)
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = call i32 @LeaveCriticalSection(i32* %127)
  %129 = load i8*, i8** @TRUE, align 8
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 2
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %134, %121, %62, %40
  %133 = load i32, i32* %8, align 4
  ret i32 %133

134:                                              ; preds = %108, %80
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %136 = call i32 @free(%struct.TYPE_20__* %135)
  br label %132
}

declare dso_local i32 @get_lock_type(i32, i32) #1

declare dso_local %struct.TYPE_20__* @calloc(i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @open_lock_delegate(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @dprintf(i32, i8*, i64, ...) #1

declare dso_local i32 @nfs41_delegation_to_open(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @lock_stateid_arg(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @nfs41_lock(i32, i32*, i32*, i32, i64, i64, i32, i8*, i32*) #1

declare dso_local i32 @nfs_error_string(i32) #1

declare dso_local i32 @nfs_to_windows_error(i32, i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @open_lock_add(%struct.TYPE_19__*, i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @free(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
