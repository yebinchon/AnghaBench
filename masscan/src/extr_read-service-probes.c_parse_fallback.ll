; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_read-service-probes.c_parse_fallback.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_read-service-probes.c_parse_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ServiceProbeFallback = type { i8*, %struct.ServiceProbeFallback* }
%struct.NmapServiceProbeList = type { i8*, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s:%u:%u: name too short\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ServiceProbeFallback* (%struct.NmapServiceProbeList*, i8*, i64, i64)* @parse_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ServiceProbeFallback* @parse_fallback(%struct.NmapServiceProbeList* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.NmapServiceProbeList*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ServiceProbeFallback*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ServiceProbeFallback*, align 8
  %13 = alloca %struct.ServiceProbeFallback**, align 8
  store %struct.NmapServiceProbeList* %0, %struct.NmapServiceProbeList** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store %struct.ServiceProbeFallback* null, %struct.ServiceProbeFallback** %9, align 8
  br label %14

14:                                               ; preds = %116, %4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %123

18:                                               ; preds = %14
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %10, align 8
  br label %20

20:                                               ; preds = %40, %18
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @isspace(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 44
  br label %38

38:                                               ; preds = %31, %24, %20
  %39 = phi i1 [ false, %24 ], [ false, %20 ], [ %37, %31 ]
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %7, align 8
  br label %20

43:                                               ; preds = %38
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %10, align 8
  %46 = sub i64 %44, %45
  store i64 %46, i64* %11, align 8
  br label %47

47:                                               ; preds = %69, %43
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = call i64 @isspace(i8 signext %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 44
  br label %65

65:                                               ; preds = %58, %51
  %66 = phi i1 [ true, %51 ], [ %64, %58 ]
  br label %67

67:                                               ; preds = %65, %47
  %68 = phi i1 [ false, %47 ], [ %66, %65 ]
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = load i64, i64* %7, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %7, align 8
  br label %47

72:                                               ; preds = %67
  %73 = load i64, i64* %11, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load i32, i32* @stderr, align 4
  %77 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %5, align 8
  %78 = getelementptr inbounds %struct.NmapServiceProbeList, %struct.NmapServiceProbeList* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %5, align 8
  %81 = getelementptr inbounds %struct.NmapServiceProbeList, %struct.NmapServiceProbeList* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @fprintf(i32 %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %79, i32 %82, i32 %84)
  br label %123

86:                                               ; preds = %72
  %87 = call %struct.ServiceProbeFallback* @CALLOC(i32 1, i32 16)
  store %struct.ServiceProbeFallback* %87, %struct.ServiceProbeFallback** %12, align 8
  %88 = load i64, i64* %11, align 8
  %89 = add i64 %88, 1
  %90 = call i8* @MALLOC(i64 %89)
  %91 = load %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback** %12, align 8
  %92 = getelementptr inbounds %struct.ServiceProbeFallback, %struct.ServiceProbeFallback* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback** %12, align 8
  %94 = getelementptr inbounds %struct.ServiceProbeFallback, %struct.ServiceProbeFallback* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load i64, i64* %10, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  %99 = load i64, i64* %11, align 8
  %100 = add i64 %99, 1
  %101 = call i32 @memcpy(i8* %95, i8* %98, i64 %100)
  %102 = load %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback** %12, align 8
  %103 = getelementptr inbounds %struct.ServiceProbeFallback, %struct.ServiceProbeFallback* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i64, i64* %11, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8 0, i8* %106, align 1
  store %struct.ServiceProbeFallback** %9, %struct.ServiceProbeFallback*** %13, align 8
  br label %107

107:                                              ; preds = %112, %86
  %108 = load %struct.ServiceProbeFallback**, %struct.ServiceProbeFallback*** %13, align 8
  %109 = load %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback** %108, align 8
  %110 = icmp ne %struct.ServiceProbeFallback* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  br label %112

112:                                              ; preds = %111
  %113 = load %struct.ServiceProbeFallback**, %struct.ServiceProbeFallback*** %13, align 8
  %114 = load %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback** %113, align 8
  %115 = getelementptr inbounds %struct.ServiceProbeFallback, %struct.ServiceProbeFallback* %114, i32 0, i32 1
  store %struct.ServiceProbeFallback** %115, %struct.ServiceProbeFallback*** %13, align 8
  br label %107

116:                                              ; preds = %107
  %117 = load %struct.ServiceProbeFallback**, %struct.ServiceProbeFallback*** %13, align 8
  %118 = load %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback** %117, align 8
  %119 = load %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback** %12, align 8
  %120 = getelementptr inbounds %struct.ServiceProbeFallback, %struct.ServiceProbeFallback* %119, i32 0, i32 1
  store %struct.ServiceProbeFallback* %118, %struct.ServiceProbeFallback** %120, align 8
  %121 = load %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback** %12, align 8
  %122 = load %struct.ServiceProbeFallback**, %struct.ServiceProbeFallback*** %13, align 8
  store %struct.ServiceProbeFallback* %121, %struct.ServiceProbeFallback** %122, align 8
  br label %14

123:                                              ; preds = %75, %14
  %124 = load %struct.ServiceProbeFallback*, %struct.ServiceProbeFallback** %9, align 8
  ret %struct.ServiceProbeFallback* %124
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i32) #1

declare dso_local %struct.ServiceProbeFallback* @CALLOC(i32, i32) #1

declare dso_local i8* @MALLOC(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
