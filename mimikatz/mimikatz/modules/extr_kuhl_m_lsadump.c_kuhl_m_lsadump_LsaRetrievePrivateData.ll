; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_lsadump.c_kuhl_m_lsadump_LsaRetrievePrivateData.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_lsadump.c_kuhl_m_lsadump_LsaRetrievePrivateData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i8* }
%struct.TYPE_15__ = type { i32 }

@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@POLICY_GET_PRIVATE_INFORMATION = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@SECRET_QUERY_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_LsaRetrievePrivateData(i32 %0, i32 %1, %struct.TYPE_14__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca %struct.TYPE_14__, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %19, i32* %9, align 4
  %20 = bitcast %struct.TYPE_15__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %134

23:                                               ; preds = %4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @RtlInitUnicodeString(%struct.TYPE_14__* %13, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @RtlInitUnicodeString(%struct.TYPE_14__* %14, i32 %26)
  %28 = load i32, i32* @POLICY_GET_PRIVATE_INFORMATION, align 4
  %29 = call i32 @LsaOpenPolicy(%struct.TYPE_14__* %14, %struct.TYPE_15__* %10, i32 %28, i32* %11)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @NT_SUCCESS(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %133

33:                                               ; preds = %23
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %75, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @LsaRetrievePrivateData(i32 %37, %struct.TYPE_14__* %13, %struct.TYPE_14__** %15)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @NT_SUCCESS(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %74

42:                                               ; preds = %36
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %44 = icmp ne %struct.TYPE_14__* %43, null
  br i1 %44, label %45, label %73

45:                                               ; preds = %42
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %48 = bitcast %struct.TYPE_14__* %46 to i8*
  %49 = bitcast %struct.TYPE_14__* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 16, i1 false)
  %50 = load i32, i32* @LPTR, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @LocalAlloc(i32 %50, i32 %53)
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = icmp ne i8* %55, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %45
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @RtlCopyMemory(i8* %62, i8* %65, i32 %68)
  br label %70

70:                                               ; preds = %59, %45
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %72 = call i32 @LsaFreeMemory(%struct.TYPE_14__* %71)
  br label %73

73:                                               ; preds = %70, %42
  br label %74

74:                                               ; preds = %73, %36
  br label %130

75:                                               ; preds = %33
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @SECRET_QUERY_VALUE, align 4
  %78 = call i32 @LsaOpenSecret(i32 %76, %struct.TYPE_14__* %13, i32 %77, i32* %12)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i64 @NT_SUCCESS(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %129

82:                                               ; preds = %75
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @LsaQuerySecret(i32 %83, %struct.TYPE_14__** %15, i32* %17, %struct.TYPE_14__** %16, i32* %18)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i64 @NT_SUCCESS(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %126

88:                                               ; preds = %82
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %90 = icmp ne %struct.TYPE_14__* %89, null
  br i1 %90, label %91, label %119

91:                                               ; preds = %88
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %94 = bitcast %struct.TYPE_14__* %92 to i8*
  %95 = bitcast %struct.TYPE_14__* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %95, i64 16, i1 false)
  %96 = load i32, i32* @LPTR, align 4
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @LocalAlloc(i32 %96, i32 %99)
  %101 = inttoptr i64 %100 to i8*
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = icmp ne i8* %101, null
  br i1 %104, label %105, label %116

105:                                              ; preds = %91
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @RtlCopyMemory(i8* %108, i8* %111, i32 %114)
  br label %116

116:                                              ; preds = %105, %91
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %118 = call i32 @LsaFreeMemory(%struct.TYPE_14__* %117)
  br label %119

119:                                              ; preds = %116, %88
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %121 = icmp ne %struct.TYPE_14__* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %124 = call i32 @LsaFreeMemory(%struct.TYPE_14__* %123)
  br label %125

125:                                              ; preds = %122, %119
  br label %126

126:                                              ; preds = %125, %82
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @LsaClose(i32 %127)
  br label %129

129:                                              ; preds = %126, %75
  br label %130

130:                                              ; preds = %129, %74
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @LsaClose(i32 %131)
  br label %133

133:                                              ; preds = %130, %23
  br label %134

134:                                              ; preds = %133, %4
  %135 = load i32, i32* %9, align 4
  ret i32 %135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @RtlInitUnicodeString(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @LsaOpenPolicy(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32*) #2

declare dso_local i64 @NT_SUCCESS(i32) #2

declare dso_local i32 @LsaRetrievePrivateData(i32, %struct.TYPE_14__*, %struct.TYPE_14__**) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @LocalAlloc(i32, i32) #2

declare dso_local i32 @RtlCopyMemory(i8*, i8*, i32) #2

declare dso_local i32 @LsaFreeMemory(%struct.TYPE_14__*) #2

declare dso_local i32 @LsaOpenSecret(i32, %struct.TYPE_14__*, i32, i32*) #2

declare dso_local i32 @LsaQuerySecret(i32, %struct.TYPE_14__**, i32*, %struct.TYPE_14__**, i32*) #2

declare dso_local i32 @LsaClose(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
