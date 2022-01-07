; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_cgroup-network.c_detect_veth_interfaces.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_cgroup-network.c_detect_veth_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iface = type { i64, i64, i32, %struct.iface* }

@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@netdata_configured_host_prefix = common dso_local global i32* null, align 8
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"cannot read host interface list.\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"there are no double-linked host interfaces available.\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"cannot switch to the namespace of pid %u\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"cgroup\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"cannot read cgroup interface list.\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"there are not double-linked cgroup interfaces available.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @detect_veth_interfaces(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.iface*, align 8
  %4 = alloca %struct.iface*, align 8
  %5 = alloca %struct.iface*, align 8
  %6 = alloca %struct.iface*, align 8
  store i64 %0, i64* %2, align 8
  store %struct.iface* null, %struct.iface** %3, align 8
  %7 = load i32*, i32** @netdata_configured_host_prefix, align 8
  %8 = call %struct.iface* @read_proc_net_dev(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %7)
  store %struct.iface* %8, %struct.iface** %4, align 8
  %9 = load %struct.iface*, %struct.iface** %4, align 8
  %10 = icmp ne %struct.iface* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  store i64 0, i64* @errno, align 8
  %12 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %94

13:                                               ; preds = %1
  %14 = load %struct.iface*, %struct.iface** %4, align 8
  %15 = call i32 @eligible_ifaces(%struct.iface* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  store i64 0, i64* @errno, align 8
  %18 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %94

19:                                               ; preds = %13
  %20 = load i32*, i32** @netdata_configured_host_prefix, align 8
  %21 = load i64, i64* %2, align 8
  %22 = call i64 @switch_namespace(i32* %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  store i64 0, i64* @errno, align 8
  %25 = load i64, i64* %2, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  br label %94

28:                                               ; preds = %19
  %29 = call %struct.iface* @read_proc_net_dev(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store %struct.iface* %29, %struct.iface** %3, align 8
  %30 = load %struct.iface*, %struct.iface** %3, align 8
  %31 = icmp ne %struct.iface* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  store i64 0, i64* @errno, align 8
  %33 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %94

34:                                               ; preds = %28
  %35 = load %struct.iface*, %struct.iface** %3, align 8
  %36 = call i32 @eligible_ifaces(%struct.iface* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  store i64 0, i64* @errno, align 8
  %39 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  br label %94

40:                                               ; preds = %34
  %41 = load %struct.iface*, %struct.iface** %4, align 8
  store %struct.iface* %41, %struct.iface** %5, align 8
  br label %42

42:                                               ; preds = %89, %40
  %43 = load %struct.iface*, %struct.iface** %5, align 8
  %44 = icmp ne %struct.iface* %43, null
  br i1 %44, label %45, label %93

45:                                               ; preds = %42
  %46 = load %struct.iface*, %struct.iface** %5, align 8
  %47 = call i64 @iface_is_eligible(%struct.iface* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %88

49:                                               ; preds = %45
  %50 = load %struct.iface*, %struct.iface** %3, align 8
  store %struct.iface* %50, %struct.iface** %6, align 8
  br label %51

51:                                               ; preds = %83, %49
  %52 = load %struct.iface*, %struct.iface** %6, align 8
  %53 = icmp ne %struct.iface* %52, null
  br i1 %53, label %54, label %87

54:                                               ; preds = %51
  %55 = load %struct.iface*, %struct.iface** %6, align 8
  %56 = call i64 @iface_is_eligible(%struct.iface* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %54
  %59 = load %struct.iface*, %struct.iface** %5, align 8
  %60 = getelementptr inbounds %struct.iface, %struct.iface* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.iface*, %struct.iface** %6, align 8
  %63 = getelementptr inbounds %struct.iface, %struct.iface* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %58
  %67 = load %struct.iface*, %struct.iface** %5, align 8
  %68 = getelementptr inbounds %struct.iface, %struct.iface* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.iface*, %struct.iface** %6, align 8
  %71 = getelementptr inbounds %struct.iface, %struct.iface* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %66
  %75 = load %struct.iface*, %struct.iface** %5, align 8
  %76 = getelementptr inbounds %struct.iface, %struct.iface* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.iface*, %struct.iface** %6, align 8
  %79 = getelementptr inbounds %struct.iface, %struct.iface* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @add_device(i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %74, %66, %58, %54
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.iface*, %struct.iface** %6, align 8
  %85 = getelementptr inbounds %struct.iface, %struct.iface* %84, i32 0, i32 3
  %86 = load %struct.iface*, %struct.iface** %85, align 8
  store %struct.iface* %86, %struct.iface** %6, align 8
  br label %51

87:                                               ; preds = %51
  br label %88

88:                                               ; preds = %87, %45
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.iface*, %struct.iface** %5, align 8
  %91 = getelementptr inbounds %struct.iface, %struct.iface* %90, i32 0, i32 3
  %92 = load %struct.iface*, %struct.iface** %91, align 8
  store %struct.iface* %92, %struct.iface** %5, align 8
  br label %42

93:                                               ; preds = %42
  br label %94

94:                                               ; preds = %93, %38, %32, %24, %17, %11
  %95 = load %struct.iface*, %struct.iface** %3, align 8
  %96 = call i32 @free_host_ifaces(%struct.iface* %95)
  %97 = load %struct.iface*, %struct.iface** %4, align 8
  %98 = call i32 @free_host_ifaces(%struct.iface* %97)
  ret void
}

declare dso_local %struct.iface* @read_proc_net_dev(i8*, i32*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @eligible_ifaces(%struct.iface*) #1

declare dso_local i64 @switch_namespace(i32*, i64) #1

declare dso_local i64 @iface_is_eligible(%struct.iface*) #1

declare dso_local i32 @add_device(i32, i32) #1

declare dso_local i32 @free_host_ifaces(%struct.iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
