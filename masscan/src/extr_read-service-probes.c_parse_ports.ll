; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_read-service-probes.c_parse_ports.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_read-service-probes.c_parse_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NmapServiceProbeList = type { i8*, i32 }
%struct.RangeList = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s:%u:%u: bad port spec\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.NmapServiceProbeList*, i8*, i64, i64)* @parse_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ports(%struct.NmapServiceProbeList* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.RangeList, align 4
  %6 = alloca %struct.NmapServiceProbeList*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.NmapServiceProbeList* %0, %struct.NmapServiceProbeList** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %12 = bitcast %struct.RangeList* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @UNUSEDPARM(i64 %13)
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = call i8* @rangelist_parse_ports(%struct.RangeList* %5, i8* %17, i32* %10, i32 0)
  store i8* %18, i8** %11, align 8
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %4
  %22 = load i32, i32* @stderr, align 4
  %23 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %6, align 8
  %24 = getelementptr inbounds %struct.NmapServiceProbeList, %struct.NmapServiceProbeList* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %6, align 8
  %27 = getelementptr inbounds %struct.NmapServiceProbeList, %struct.NmapServiceProbeList* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %28, i32 %34)
  %36 = call i32 @rangelist_remove_all(%struct.RangeList* %5)
  br label %37

37:                                               ; preds = %21, %4
  %38 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @UNUSEDPARM(i64) #2

declare dso_local i8* @rangelist_parse_ports(%struct.RangeList*, i8*, i32*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i32) #2

declare dso_local i32 @rangelist_remove_all(%struct.RangeList*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
