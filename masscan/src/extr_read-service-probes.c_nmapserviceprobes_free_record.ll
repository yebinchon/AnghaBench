; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_read-service-probes.c_nmapserviceprobes_free_record.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_read-service-probes.c_nmapserviceprobes_free_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NmapServiceProbe = type { %struct.NmapServiceProbe*, %struct.NmapServiceProbe*, %struct.NmapServiceProbe*, %struct.NmapServiceProbe*, %struct.NmapServiceProbe*, %struct.NmapServiceProbe*, %struct.NmapServiceProbe*, %struct.NmapServiceProbe*, i32, i32, %struct.NmapServiceProbe* }
%struct.ServiceProbeMatch = type { %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch*, i32, i32, %struct.ServiceProbeMatch* }
%struct.ServiceVersionInfo = type { %struct.ServiceVersionInfo*, %struct.ServiceVersionInfo*, %struct.ServiceVersionInfo*, %struct.ServiceVersionInfo*, %struct.ServiceVersionInfo*, %struct.ServiceVersionInfo*, %struct.ServiceVersionInfo*, %struct.ServiceVersionInfo*, i32, i32, %struct.ServiceVersionInfo* }
%struct.ServiceProbeFallback = type { %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback*, i32, i32, %struct.ServiceProbeFallback* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.NmapServiceProbe*)* @nmapserviceprobes_free_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nmapserviceprobes_free_record(%struct.NmapServiceProbe* %0) #0 {
  %2 = alloca %struct.NmapServiceProbe*, align 8
  %3 = alloca %struct.ServiceProbeMatch*, align 8
  %4 = alloca %struct.ServiceVersionInfo*, align 8
  %5 = alloca %struct.ServiceProbeFallback*, align 8
  store %struct.NmapServiceProbe* %0, %struct.NmapServiceProbe** %2, align 8
  %6 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %2, align 8
  %7 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %6, i32 0, i32 0
  %8 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %7, align 8
  %9 = icmp ne %struct.NmapServiceProbe* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %2, align 8
  %12 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %11, i32 0, i32 0
  %13 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %12, align 8
  %14 = bitcast %struct.NmapServiceProbe* %13 to %struct.ServiceVersionInfo*
  %15 = call i32 @free(%struct.ServiceVersionInfo* %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %2, align 8
  %18 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %17, i32 0, i32 10
  %19 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %18, align 8
  %20 = icmp ne %struct.NmapServiceProbe* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %2, align 8
  %23 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %22, i32 0, i32 10
  %24 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %23, align 8
  %25 = bitcast %struct.NmapServiceProbe* %24 to %struct.ServiceVersionInfo*
  %26 = call i32 @free(%struct.ServiceVersionInfo* %25)
  br label %27

27:                                               ; preds = %21, %16
  %28 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %2, align 8
  %29 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %28, i32 0, i32 9
  %30 = call i32 @rangelist_remove_all(i32* %29)
  %31 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %2, align 8
  %32 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %31, i32 0, i32 8
  %33 = call i32 @rangelist_remove_all(i32* %32)
  br label %34

34:                                               ; preds = %88, %27
  %35 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %2, align 8
  %36 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %35, i32 0, i32 7
  %37 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %36, align 8
  %38 = icmp ne %struct.NmapServiceProbe* %37, null
  br i1 %38, label %39, label %92

39:                                               ; preds = %34
  %40 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %2, align 8
  %41 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %40, i32 0, i32 7
  %42 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %41, align 8
  %43 = bitcast %struct.NmapServiceProbe* %42 to %struct.ServiceProbeMatch*
  store %struct.ServiceProbeMatch* %43, %struct.ServiceProbeMatch** %3, align 8
  %44 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %3, align 8
  %45 = getelementptr inbounds %struct.ServiceProbeMatch, %struct.ServiceProbeMatch* %44, i32 0, i32 1
  %46 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %45, align 8
  %47 = bitcast %struct.ServiceProbeMatch* %46 to %struct.NmapServiceProbe*
  %48 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %2, align 8
  %49 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %48, i32 0, i32 7
  store %struct.NmapServiceProbe* %47, %struct.NmapServiceProbe** %49, align 8
  %50 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %3, align 8
  %51 = getelementptr inbounds %struct.ServiceProbeMatch, %struct.ServiceProbeMatch* %50, i32 0, i32 6
  %52 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %51, align 8
  %53 = bitcast %struct.ServiceProbeMatch* %52 to %struct.ServiceVersionInfo*
  %54 = call i32 @free(%struct.ServiceVersionInfo* %53)
  %55 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %3, align 8
  %56 = getelementptr inbounds %struct.ServiceProbeMatch, %struct.ServiceProbeMatch* %55, i32 0, i32 5
  %57 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %56, align 8
  %58 = bitcast %struct.ServiceProbeMatch* %57 to %struct.ServiceVersionInfo*
  %59 = call i32 @free(%struct.ServiceVersionInfo* %58)
  br label %60

60:                                               ; preds = %85, %39
  %61 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %3, align 8
  %62 = getelementptr inbounds %struct.ServiceProbeMatch, %struct.ServiceProbeMatch* %61, i32 0, i32 4
  %63 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %62, align 8
  %64 = icmp ne %struct.ServiceProbeMatch* %63, null
  br i1 %64, label %65, label %88

65:                                               ; preds = %60
  %66 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %3, align 8
  %67 = getelementptr inbounds %struct.ServiceProbeMatch, %struct.ServiceProbeMatch* %66, i32 0, i32 4
  %68 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %67, align 8
  %69 = bitcast %struct.ServiceProbeMatch* %68 to %struct.ServiceVersionInfo*
  store %struct.ServiceVersionInfo* %69, %struct.ServiceVersionInfo** %4, align 8
  %70 = load %struct.ServiceVersionInfo*, %struct.ServiceVersionInfo** %4, align 8
  %71 = getelementptr inbounds %struct.ServiceVersionInfo, %struct.ServiceVersionInfo* %70, i32 0, i32 1
  %72 = load %struct.ServiceVersionInfo*, %struct.ServiceVersionInfo** %71, align 8
  %73 = bitcast %struct.ServiceVersionInfo* %72 to %struct.ServiceProbeMatch*
  %74 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %3, align 8
  %75 = getelementptr inbounds %struct.ServiceProbeMatch, %struct.ServiceProbeMatch* %74, i32 0, i32 4
  store %struct.ServiceProbeMatch* %73, %struct.ServiceProbeMatch** %75, align 8
  %76 = load %struct.ServiceVersionInfo*, %struct.ServiceVersionInfo** %4, align 8
  %77 = getelementptr inbounds %struct.ServiceVersionInfo, %struct.ServiceVersionInfo* %76, i32 0, i32 3
  %78 = load %struct.ServiceVersionInfo*, %struct.ServiceVersionInfo** %77, align 8
  %79 = icmp ne %struct.ServiceVersionInfo* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %65
  %81 = load %struct.ServiceVersionInfo*, %struct.ServiceVersionInfo** %4, align 8
  %82 = getelementptr inbounds %struct.ServiceVersionInfo, %struct.ServiceVersionInfo* %81, i32 0, i32 3
  %83 = load %struct.ServiceVersionInfo*, %struct.ServiceVersionInfo** %82, align 8
  %84 = call i32 @free(%struct.ServiceVersionInfo* %83)
  br label %85

85:                                               ; preds = %80, %65
  %86 = load %struct.ServiceVersionInfo*, %struct.ServiceVersionInfo** %4, align 8
  %87 = call i32 @free(%struct.ServiceVersionInfo* %86)
  br label %60

88:                                               ; preds = %60
  %89 = load %struct.ServiceProbeMatch*, %struct.ServiceProbeMatch** %3, align 8
  %90 = bitcast %struct.ServiceProbeMatch* %89 to %struct.ServiceVersionInfo*
  %91 = call i32 @free(%struct.ServiceVersionInfo* %90)
  br label %34

92:                                               ; preds = %34
  br label %93

93:                                               ; preds = %119, %92
  %94 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %2, align 8
  %95 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %94, i32 0, i32 2
  %96 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %95, align 8
  %97 = icmp ne %struct.NmapServiceProbe* %96, null
  br i1 %97, label %98, label %123

98:                                               ; preds = %93
  %99 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %2, align 8
  %100 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %99, i32 0, i32 2
  %101 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %100, align 8
  %102 = bitcast %struct.NmapServiceProbe* %101 to %struct.ServiceProbeFallback*
  store %struct.ServiceProbeFallback* %102, %struct.ServiceProbeFallback** %5, align 8
  %103 = load %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback** %5, align 8
  %104 = getelementptr inbounds %struct.ServiceProbeFallback, %struct.ServiceProbeFallback* %103, i32 0, i32 1
  %105 = load %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback** %104, align 8
  %106 = bitcast %struct.ServiceProbeFallback* %105 to %struct.NmapServiceProbe*
  %107 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %2, align 8
  %108 = getelementptr inbounds %struct.NmapServiceProbe, %struct.NmapServiceProbe* %107, i32 0, i32 2
  store %struct.NmapServiceProbe* %106, %struct.NmapServiceProbe** %108, align 8
  %109 = load %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback** %5, align 8
  %110 = getelementptr inbounds %struct.ServiceProbeFallback, %struct.ServiceProbeFallback* %109, i32 0, i32 0
  %111 = load %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback** %110, align 8
  %112 = icmp ne %struct.ServiceProbeFallback* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %98
  %114 = load %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback** %5, align 8
  %115 = getelementptr inbounds %struct.ServiceProbeFallback, %struct.ServiceProbeFallback* %114, i32 0, i32 0
  %116 = load %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback** %115, align 8
  %117 = bitcast %struct.ServiceProbeFallback* %116 to %struct.ServiceVersionInfo*
  %118 = call i32 @free(%struct.ServiceVersionInfo* %117)
  br label %119

119:                                              ; preds = %113, %98
  %120 = load %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback** %5, align 8
  %121 = bitcast %struct.ServiceProbeFallback* %120 to %struct.ServiceVersionInfo*
  %122 = call i32 @free(%struct.ServiceVersionInfo* %121)
  br label %93

123:                                              ; preds = %93
  %124 = load %struct.NmapServiceProbe*, %struct.NmapServiceProbe** %2, align 8
  %125 = bitcast %struct.NmapServiceProbe* %124 to %struct.ServiceVersionInfo*
  %126 = call i32 @free(%struct.ServiceVersionInfo* %125)
  ret void
}

declare dso_local i32 @free(%struct.ServiceVersionInfo*) #1

declare dso_local i32 @rangelist_remove_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
