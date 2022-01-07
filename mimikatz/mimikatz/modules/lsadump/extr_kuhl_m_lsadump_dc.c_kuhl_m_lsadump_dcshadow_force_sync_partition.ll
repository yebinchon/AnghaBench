; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_force_sync_partition.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_force_sync_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64, i32*, i8* }
%struct.TYPE_14__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i8*, i64, i32* }

@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@DRS_WRIT_REP = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i32] [i32 83, i32 121, i32 110, i32 99, i32 105, i32 110, i32 103, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [32 x i32] [i32 73, i32 68, i32 76, i32 95, i32 68, i32 82, i32 83, i32 82, i32 101, i32 112, i32 108, i32 105, i32 99, i32 97, i32 65, i32 100, i32 100, i32 32, i32 37, i32 115, i32 32, i32 48, i32 120, i32 37, i32 120, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [32 x i32] [i32 73, i32 68, i32 76, i32 95, i32 68, i32 82, i32 83, i32 82, i32 101, i32 112, i32 108, i32 105, i32 99, i32 97, i32 68, i32 101, i32 108, i32 32, i32 37, i32 115, i32 32, i32 48, i32 120, i32 37, i32 120, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [12 x i32] [i32 83, i32 121, i32 110, i32 99, i32 32, i32 68, i32 111, i32 110, i32 101, i32 10, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_dcshadow_force_sync_partition(%struct.TYPE_13__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca %struct.TYPE_15__, align 8
  %10 = alloca %struct.TYPE_14__, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %12, i32* %7, align 4
  %13 = bitcast %struct.TYPE_16__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = bitcast %struct.TYPE_15__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 32, i1 false)
  %15 = bitcast %struct.TYPE_14__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 32, i1 false)
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @kull_m_string_unicode_to_ansi(i32 %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %82

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @kuhl_m_lsadump_dcshadow_build_replication_value_dn(%struct.TYPE_16__* %8, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %81

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i8*, i8** @DRS_WRIT_REP, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (i8*, ...) @kprintf(i8* bitcast ([12 x i32]* @.str to i8*), i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @IDL_DRSReplicaAdd(i32 %40, i32 1, %struct.TYPE_15__* %9)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @NT_SUCCESS(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %26
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @PRINT_ERROR(i8* bitcast ([32 x i32]* @.str.1 to i8*), i32 %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %26
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load i8*, i8** @DRS_WRIT_REP, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @IDL_DRSReplicaDel(i32 %64, i32 1, %struct.TYPE_14__* %10)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @NT_SUCCESS(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %50
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @PRINT_ERROR(i8* bitcast ([32 x i32]* @.str.2 to i8*), i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %50
  %75 = call i32 (i8*, ...) @kprintf(i8* bitcast ([12 x i32]* @.str.3 to i8*))
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @LocalFree(i64 %76)
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @MIDL_user_free(i64 %79)
  br label %81

81:                                               ; preds = %74, %22
  br label %82

82:                                               ; preds = %81, %3
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @kull_m_string_unicode_to_ansi(i32) #2

declare dso_local i64 @kuhl_m_lsadump_dcshadow_build_replication_value_dn(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @kprintf(i8*, ...) #2

declare dso_local i32 @IDL_DRSReplicaAdd(i32, i32, %struct.TYPE_15__*) #2

declare dso_local i32 @NT_SUCCESS(i32) #2

declare dso_local i32 @PRINT_ERROR(i8*, i32, i32, i32) #2

declare dso_local i32 @IDL_DRSReplicaDel(i32, i32, %struct.TYPE_14__*) #2

declare dso_local i32 @LocalFree(i64) #2

declare dso_local i32 @MIDL_user_free(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
