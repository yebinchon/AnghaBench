; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_read-service-probes.c_nmapserviceprobes_read_file.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_read-service-probes.c_nmapserviceprobes_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NmapServiceProbeList = type { i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.NmapServiceProbeList* @nmapserviceprobes_read_file(i8* %0) #0 {
  %2 = alloca %struct.NmapServiceProbeList*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [32768 x i8], align 16
  %6 = alloca %struct.NmapServiceProbeList*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32* @fopen(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @perror(i8* %12)
  store %struct.NmapServiceProbeList* null, %struct.NmapServiceProbeList** %2, align 8
  br label %41

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call %struct.NmapServiceProbeList* @nmapserviceprobes_new(i8* %15)
  store %struct.NmapServiceProbeList* %16, %struct.NmapServiceProbeList** %6, align 8
  br label %17

17:                                               ; preds = %22, %14
  %18 = getelementptr inbounds [32768 x i8], [32768 x i8]* %5, i64 0, i64 0
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @fgets(i8* %18, i32 32768, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %6, align 8
  %24 = getelementptr inbounds %struct.NmapServiceProbeList, %struct.NmapServiceProbeList* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %6, align 8
  %28 = getelementptr inbounds [32768 x i8], [32768 x i8]* %5, i64 0, i64 0
  %29 = call i32 @parse_line(%struct.NmapServiceProbeList* %27, i8* %28)
  br label %17

30:                                               ; preds = %17
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @fclose(i32* %31)
  %33 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %6, align 8
  %34 = getelementptr inbounds %struct.NmapServiceProbeList, %struct.NmapServiceProbeList* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %6, align 8
  %36 = getelementptr inbounds %struct.NmapServiceProbeList, %struct.NmapServiceProbeList* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 8
  %37 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %6, align 8
  %38 = load i32, i32* @stdout, align 4
  %39 = call i32 @nmapserviceprobes_print(%struct.NmapServiceProbeList* %37, i32 %38)
  %40 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %6, align 8
  store %struct.NmapServiceProbeList* %40, %struct.NmapServiceProbeList** %2, align 8
  br label %41

41:                                               ; preds = %30, %11
  %42 = load %struct.NmapServiceProbeList*, %struct.NmapServiceProbeList** %2, align 8
  ret %struct.NmapServiceProbeList* %42
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local %struct.NmapServiceProbeList* @nmapserviceprobes_new(i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @parse_line(%struct.NmapServiceProbeList*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @nmapserviceprobes_print(%struct.NmapServiceProbeList*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
