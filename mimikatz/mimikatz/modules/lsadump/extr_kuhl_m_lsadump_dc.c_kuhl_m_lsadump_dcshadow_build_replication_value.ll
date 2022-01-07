; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_build_replication_value.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_build_replication_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i32] [i32 115, i32 117, i32 112, i32 112, i32 108, i32 101, i32 109, i32 101, i32 110, i32 116, i32 97, i32 108, i32 67, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 115, i32 0], align 4
@.str.1 = private unnamed_addr constant [47 x i32] [i32 83, i32 121, i32 110, i32 116, i32 97, i32 120, i32 32, i32 102, i32 111, i32 114, i32 32, i32 97, i32 116, i32 116, i32 114, i32 105, i32 98, i32 117, i32 116, i32 101, i32 32, i32 37, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 105, i32 109, i32 112, i32 108, i32 101, i32 109, i32 101, i32 110, i32 116, i32 101, i32 100, i32 32, i32 40, i32 48, i32 120, i32 37, i32 120, i32 41, i32 0], align 4
@.str.2 = private unnamed_addr constant [25 x i32] [i32 85, i32 110, i32 97, i32 98, i32 108, i32 101, i32 32, i32 116, i32 111, i32 32, i32 101, i32 110, i32 99, i32 111, i32 100, i32 101, i32 32, i32 37, i32 115, i32 32, i32 40, i32 37, i32 115, i32 41, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_dcshadow_build_replication_value(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32 (i32*, i32)*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 (i32*, i32)* null, i32 (i32*, i32)** %5, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  %12 = trunc i64 %11 to i32
  %13 = call i64 @MIDL_user_allocate(i32 %12)
  %14 = inttoptr i64 %13 to i32*
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i32* %14, i32** %17, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %2, align 4
  br label %119

25:                                               ; preds = %1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @_wcsicmp(i64 %37, i8* bitcast ([24 x i32]* @.str to i8*))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  store i32 (i32*, i32)* @kuhl_m_lsadump_dcshadow_build_replication_value_supplementalCredentials, i32 (i32*, i32)** %5, align 8
  br label %41

41:                                               ; preds = %40, %32
  br label %42

42:                                               ; preds = %41, %25
  %43 = load i32 (i32*, i32)*, i32 (i32*, i32)** %5, align 8
  %44 = icmp ne i32 (i32*, i32)* %43, null
  br i1 %44, label %74, label %45

45:                                               ; preds = %42
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %60 [
    i32 128, label %51
    i32 131, label %52
    i32 136, label %53
    i32 134, label %54
    i32 133, label %55
    i32 129, label %56
    i32 132, label %57
    i32 135, label %58
    i32 130, label %59
  ]

51:                                               ; preds = %45
  store i32 (i32*, i32)* @kuhl_m_lsadump_dcshadow_build_replication_value_unicode_string, i32 (i32*, i32)** %5, align 8
  br label %73

52:                                               ; preds = %45
  store i32 (i32*, i32)* @kuhl_m_lsadump_dcshadow_build_replication_value_octet_string, i32 (i32*, i32)** %5, align 8
  br label %73

53:                                               ; preds = %45
  store i32 (i32*, i32)* @kuhl_m_lsadump_dcshadow_build_replication_value_dn, i32 (i32*, i32)** %5, align 8
  br label %73

54:                                               ; preds = %45
  store i32 (i32*, i32)* @kuhl_m_lsadump_dcshadow_build_replication_value_dword, i32 (i32*, i32)** %5, align 8
  br label %73

55:                                               ; preds = %45
  store i32 (i32*, i32)* @kuhl_m_lsadump_dcshadow_build_replication_value_large_integer, i32 (i32*, i32)** %5, align 8
  br label %73

56:                                               ; preds = %45
  store i32 (i32*, i32)* @kuhl_m_lsadump_dcshadow_build_replication_value_sid, i32 (i32*, i32)** %5, align 8
  br label %73

57:                                               ; preds = %45
  store i32 (i32*, i32)* @kuhl_m_lsadump_dcshadow_build_replication_value_security_descriptor, i32 (i32*, i32)** %5, align 8
  br label %73

58:                                               ; preds = %45
  store i32 (i32*, i32)* @kuhl_m_lsadump_dcshadow_build_replication_value_date, i32 (i32*, i32)** %5, align 8
  br label %73

59:                                               ; preds = %45
  store i32 (i32*, i32)* @kuhl_m_lsadump_dcshadow_build_replication_value_oid, i32 (i32*, i32)** %5, align 8
  br label %73

60:                                               ; preds = %45
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @PRINT_ERROR(i8* bitcast ([47 x i32]* @.str.1 to i8*), i64 %65, i32 %70)
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %2, align 4
  br label %119

73:                                               ; preds = %59, %58, %57, %56, %55, %54, %53, %52, %51
  br label %74

74:                                               ; preds = %73, %42
  store i64 0, i64* %4, align 8
  br label %75

75:                                               ; preds = %114, %74
  %76 = load i64, i64* %4, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = icmp ult i64 %76, %81
  br i1 %82, label %83, label %117

83:                                               ; preds = %75
  %84 = load i32 (i32*, i32)*, i32 (i32*, i32)** %5, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* %4, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %4, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 %84(i32* %90, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %113, label %99

99:                                               ; preds = %83
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* %4, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @PRINT_ERROR(i8* bitcast ([25 x i32]* @.str.2 to i8*), i64 %104, i32 %110)
  %112 = load i32, i32* @FALSE, align 4
  store i32 %112, i32* %2, align 4
  br label %119

113:                                              ; preds = %83
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %4, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %4, align 8
  br label %75

117:                                              ; preds = %75
  %118 = load i32, i32* @TRUE, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %99, %60, %23
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i64 @MIDL_user_allocate(i32) #1

declare dso_local i32 @_wcsicmp(i64, i8*) #1

declare dso_local i32 @kuhl_m_lsadump_dcshadow_build_replication_value_supplementalCredentials(i32*, i32) #1

declare dso_local i32 @kuhl_m_lsadump_dcshadow_build_replication_value_unicode_string(i32*, i32) #1

declare dso_local i32 @kuhl_m_lsadump_dcshadow_build_replication_value_octet_string(i32*, i32) #1

declare dso_local i32 @kuhl_m_lsadump_dcshadow_build_replication_value_dn(i32*, i32) #1

declare dso_local i32 @kuhl_m_lsadump_dcshadow_build_replication_value_dword(i32*, i32) #1

declare dso_local i32 @kuhl_m_lsadump_dcshadow_build_replication_value_large_integer(i32*, i32) #1

declare dso_local i32 @kuhl_m_lsadump_dcshadow_build_replication_value_sid(i32*, i32) #1

declare dso_local i32 @kuhl_m_lsadump_dcshadow_build_replication_value_security_descriptor(i32*, i32) #1

declare dso_local i32 @kuhl_m_lsadump_dcshadow_build_replication_value_date(i32*, i32) #1

declare dso_local i32 @kuhl_m_lsadump_dcshadow_build_replication_value_oid(i32*, i32) #1

declare dso_local i32 @PRINT_ERROR(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
