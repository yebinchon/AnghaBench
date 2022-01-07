; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_build_replication_value_supplementalCredentials.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_build_replication_value_supplementalCredentials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i32] [i32 10, i32 61, i32 61, i32 32, i32 69, i32 110, i32 99, i32 111, i32 100, i32 101, i32 114, i32 32, i32 104, i32 101, i32 108, i32 112, i32 101, i32 114, i32 32, i32 102, i32 111, i32 114, i32 32, i32 115, i32 117, i32 112, i32 112, i32 108, i32 101, i32 109, i32 101, i32 110, i32 116, i32 97, i32 108, i32 67, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 115, i32 32, i32 61, i32 61, i32 10, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [28 x i32] [i32 80, i32 114, i32 105, i32 109, i32 97, i32 114, i32 121, i32 58, i32 75, i32 101, i32 114, i32 98, i32 101, i32 114, i32 111, i32 115, i32 45, i32 78, i32 101, i32 119, i32 101, i32 114, i32 45, i32 75, i32 101, i32 121, i32 115, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_dcshadow_build_replication_value_supplementalCredentials(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %5, align 4
  %14 = call i32 @kprintf(i8* bitcast ([52 x i32]* @.str to i8*))
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @kuhl_m_lsadump_dcshadow_build_replication_value_supplementalCredentials_valueFromArgs(i64 %15, i32 4096, i64* %6, i64* %7, i64* %8)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %75

18:                                               ; preds = %2
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @kuhl_m_lsadump_dcshadow_build_replication_value_supplementalCredentials_KerbStoredCredentialNew(i64 %19, i64 %20, i64 %21, i32 4096, i64* %9, i32* %10)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %56

24:                                               ; preds = %18
  %25 = load i64, i64* %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @kuhl_m_lsadump_dcshadow_build_replication_value_supplementalCredentials_UserProperties(i64* %11, i32* %12, i32 1, i8* bitcast ([28 x i32]* @.str.1 to i8*), i64 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %24
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @kuhl_m_lsadump_dcsync_descrUserProperties(i64 %30)
  %32 = load i32, i32* %12, align 4
  %33 = call i64 @MIDL_user_allocate(i32 %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = icmp ne i64 %33, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %29
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @RtlCopyMemory(i64 %43, i64 %44, i32 %47)
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %37, %29
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @LocalFree(i64 %51)
  br label %53

53:                                               ; preds = %50, %24
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @LocalFree(i64 %54)
  br label %56

56:                                               ; preds = %53, %18
  %57 = load i64, i64* %6, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @LocalFree(i64 %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i64, i64* %7, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @LocalFree(i64 %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i64, i64* %8, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @LocalFree(i64 %72)
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %2
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @kprintf(i8*) #1

declare dso_local i64 @kuhl_m_lsadump_dcshadow_build_replication_value_supplementalCredentials_valueFromArgs(i64, i32, i64*, i64*, i64*) #1

declare dso_local i64 @kuhl_m_lsadump_dcshadow_build_replication_value_supplementalCredentials_KerbStoredCredentialNew(i64, i64, i64, i32, i64*, i32*) #1

declare dso_local i64 @kuhl_m_lsadump_dcshadow_build_replication_value_supplementalCredentials_UserProperties(i64*, i32*, i32, i8*, i64, i32) #1

declare dso_local i32 @kuhl_m_lsadump_dcsync_descrUserProperties(i64) #1

declare dso_local i64 @MIDL_user_allocate(i32) #1

declare dso_local i32 @RtlCopyMemory(i64, i64, i32) #1

declare dso_local i32 @LocalFree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
