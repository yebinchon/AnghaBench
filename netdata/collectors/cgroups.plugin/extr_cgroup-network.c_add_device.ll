; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_cgroup-network.c_add_device.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_cgroup-network.c_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.found_device = type { i64, i8*, i8*, %struct.found_device* }

@detected_devices = common dso_local global %struct.found_device* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_device(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.found_device*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @simple_hash(i8* %7)
  store i64 %8, i64* %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i8*, i8** %3, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @strcmp(i8* %16, i8* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %11
  store i8* null, i8** %4, align 8
  br label %21

21:                                               ; preds = %20, %15, %2
  %22 = load %struct.found_device*, %struct.found_device** @detected_devices, align 8
  store %struct.found_device* %22, %struct.found_device** %6, align 8
  br label %23

23:                                               ; preds = %73, %21
  %24 = load %struct.found_device*, %struct.found_device** %6, align 8
  %25 = icmp ne %struct.found_device* %24, null
  br i1 %25, label %26, label %77

26:                                               ; preds = %23
  %27 = load %struct.found_device*, %struct.found_device** %6, align 8
  %28 = getelementptr inbounds %struct.found_device, %struct.found_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %26
  %33 = load i8*, i8** %3, align 8
  %34 = load %struct.found_device*, %struct.found_device** %6, align 8
  %35 = getelementptr inbounds %struct.found_device, %struct.found_device* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strcmp(i8* %33, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %72, label %39

39:                                               ; preds = %32
  %40 = load i8*, i8** %4, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %71

42:                                               ; preds = %39
  %43 = load %struct.found_device*, %struct.found_device** %6, align 8
  %44 = getelementptr inbounds %struct.found_device, %struct.found_device* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.found_device*, %struct.found_device** %6, align 8
  %49 = getelementptr inbounds %struct.found_device, %struct.found_device* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.found_device*, %struct.found_device** %6, align 8
  %52 = getelementptr inbounds %struct.found_device, %struct.found_device* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strcmp(i8* %50, i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %47, %42
  %57 = load %struct.found_device*, %struct.found_device** %6, align 8
  %58 = getelementptr inbounds %struct.found_device, %struct.found_device* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.found_device*, %struct.found_device** %6, align 8
  %63 = getelementptr inbounds %struct.found_device, %struct.found_device* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @freez(i8* %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load i8*, i8** %4, align 8
  %68 = call i8* @strdupz(i8* %67)
  %69 = load %struct.found_device*, %struct.found_device** %6, align 8
  %70 = getelementptr inbounds %struct.found_device, %struct.found_device* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %66, %47, %39
  br label %100

72:                                               ; preds = %32, %26
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.found_device*, %struct.found_device** %6, align 8
  %75 = getelementptr inbounds %struct.found_device, %struct.found_device* %74, i32 0, i32 3
  %76 = load %struct.found_device*, %struct.found_device** %75, align 8
  store %struct.found_device* %76, %struct.found_device** %6, align 8
  br label %23

77:                                               ; preds = %23
  %78 = call %struct.found_device* @mallocz(i32 32)
  store %struct.found_device* %78, %struct.found_device** %6, align 8
  %79 = load i8*, i8** %3, align 8
  %80 = call i8* @strdupz(i8* %79)
  %81 = load %struct.found_device*, %struct.found_device** %6, align 8
  %82 = getelementptr inbounds %struct.found_device, %struct.found_device* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load i64, i64* %5, align 8
  %84 = load %struct.found_device*, %struct.found_device** %6, align 8
  %85 = getelementptr inbounds %struct.found_device, %struct.found_device* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = load i8*, i8** %4, align 8
  %90 = call i8* @strdupz(i8* %89)
  br label %92

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91, %88
  %93 = phi i8* [ %90, %88 ], [ null, %91 ]
  %94 = load %struct.found_device*, %struct.found_device** %6, align 8
  %95 = getelementptr inbounds %struct.found_device, %struct.found_device* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load %struct.found_device*, %struct.found_device** @detected_devices, align 8
  %97 = load %struct.found_device*, %struct.found_device** %6, align 8
  %98 = getelementptr inbounds %struct.found_device, %struct.found_device* %97, i32 0, i32 3
  store %struct.found_device* %96, %struct.found_device** %98, align 8
  %99 = load %struct.found_device*, %struct.found_device** %6, align 8
  store %struct.found_device* %99, %struct.found_device** @detected_devices, align 8
  br label %100

100:                                              ; preds = %92, %71
  ret void
}

declare dso_local i64 @simple_hash(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @freez(i8*) #1

declare dso_local i8* @strdupz(i8*) #1

declare dso_local %struct.found_device* @mallocz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
