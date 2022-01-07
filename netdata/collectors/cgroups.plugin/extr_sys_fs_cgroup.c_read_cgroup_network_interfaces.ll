; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_read_cgroup_network_interfaces.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_read_cgroup_network_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32, i32, i32, %struct.cgroup_network_interface*, i32 }
%struct.cgroup_network_interface = type { i8*, i8*, %struct.cgroup_network_interface* }

@D_CGROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"looking for the network interfaces of cgroup '%s' with chart id '%s' and title '%s'\00", align 1
@CGROUP_NETWORK_INTERFACE_MAX_LINE = common dso_local global i32 0, align 4
@CGROUP_OPTIONS_IS_UNIFIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"exec %s --cgroup '%s%s'\00", align 1
@cgroups_network_interface_script = common dso_local global i32 0, align 4
@cgroup_cpuacct_base = common dso_local global i32 0, align 4
@cgroup_unified_base = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"executing command '%s' for cgroup '%s'\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"CGROUP: cannot popen(\22%s\22, \22r\22).\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"CGROUP: empty host interface returned by script\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"CGROUP: empty guest interface returned by script\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"CGROUP: cgroup '%s' has network interface '%s' as '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgroup*)* @read_cgroup_network_interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_cgroup_network_interfaces(%struct.cgroup* %0) #0 {
  %2 = alloca %struct.cgroup*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.cgroup_network_interface*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %2, align 8
  %12 = load i32, i32* @D_CGROUP, align 4
  %13 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %14 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %19 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %22 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, i8*, i32, ...) @debug(i32 %12, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %20, i32 %23)
  %25 = load i32, i32* @CGROUP_NETWORK_INTERFACE_MAX_LINE, align 4
  %26 = add nsw i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %4, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %5, align 8
  %30 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %31 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CGROUP_OPTIONS_IS_UNIFIED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %1
  %37 = load i32, i32* @CGROUP_NETWORK_INTERFACE_MAX_LINE, align 4
  %38 = load i32, i32* @cgroups_network_interface_script, align 4
  %39 = load i32, i32* @cgroup_cpuacct_base, align 4
  %40 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %41 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @snprintfz(i8* %29, i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39, i32 %42)
  br label %52

44:                                               ; preds = %1
  %45 = load i32, i32* @CGROUP_NETWORK_INTERFACE_MAX_LINE, align 4
  %46 = load i32, i32* @cgroups_network_interface_script, align 4
  %47 = load i32, i32* @cgroup_unified_base, align 4
  %48 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %49 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @snprintfz(i8* %29, i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %44, %36
  %53 = load i32, i32* @D_CGROUP, align 4
  %54 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %55 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i32, i8*, i8*, i32, ...) @debug(i32 %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %29, i32 %56)
  %58 = call i32* @mypopen(i8* %29, i32* %3)
  store i32* %58, i32** %6, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %52
  %62 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %29)
  store i32 1, i32* %7, align 4
  br label %166

63:                                               ; preds = %52
  %64 = load i32, i32* @CGROUP_NETWORK_INTERFACE_MAX_LINE, align 4
  %65 = add nsw i32 %64, 1
  %66 = zext i32 %65 to i64
  %67 = alloca i8, i64 %66, align 16
  store i64 %66, i64* %9, align 8
  br label %68

68:                                               ; preds = %161, %121, %115, %63
  %69 = load i32, i32* @CGROUP_NETWORK_INTERFACE_MAX_LINE, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = call i8* @fgets(i8* %67, i32 %69, i32* %70)
  store i8* %71, i8** %8, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %162

73:                                               ; preds = %68
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @trim(i8* %74)
  %76 = load i8*, i8** %8, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %161

80:                                               ; preds = %73
  %81 = load i8*, i8** %8, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 10
  br i1 %84, label %85, label %161

85:                                               ; preds = %80
  %86 = load i8*, i8** %8, align 8
  store i8* %86, i8** %10, align 8
  br label %87

87:                                               ; preds = %99, %85
  %88 = load i8*, i8** %10, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i8*, i8** %10, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 32
  br label %97

97:                                               ; preds = %92, %87
  %98 = phi i1 [ false, %87 ], [ %96, %92 ]
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %10, align 8
  br label %87

102:                                              ; preds = %97
  %103 = load i8*, i8** %10, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 32
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i8*, i8** %10, align 8
  store i8 0, i8* %108, align 1
  %109 = load i8*, i8** %10, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %10, align 8
  br label %111

111:                                              ; preds = %107, %102
  %112 = load i8*, i8** %8, align 8
  %113 = load i8, i8* %112, align 1
  %114 = icmp ne i8 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  %116 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %68

117:                                              ; preds = %111
  %118 = load i8*, i8** %10, align 8
  %119 = load i8, i8* %118, align 1
  %120 = icmp ne i8 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  %122 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  br label %68

123:                                              ; preds = %117
  %124 = call %struct.cgroup_network_interface* @callocz(i32 1, i32 24)
  store %struct.cgroup_network_interface* %124, %struct.cgroup_network_interface** %11, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = call i8* @strdupz(i8* %125)
  %127 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %11, align 8
  %128 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  %129 = load i8*, i8** %10, align 8
  %130 = call i8* @strdupz(i8* %129)
  %131 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %11, align 8
  %132 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %131, i32 0, i32 0
  store i8* %130, i8** %132, align 8
  %133 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %134 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %133, i32 0, i32 3
  %135 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %134, align 8
  %136 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %11, align 8
  %137 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %136, i32 0, i32 2
  store %struct.cgroup_network_interface* %135, %struct.cgroup_network_interface** %137, align 8
  %138 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %11, align 8
  %139 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %140 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %139, i32 0, i32 3
  store %struct.cgroup_network_interface* %138, %struct.cgroup_network_interface** %140, align 8
  %141 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %142 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %11, align 8
  %145 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %11, align 8
  %148 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 %143, i8* %146, i8* %149)
  %151 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %11, align 8
  %152 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.cgroup_network_interface*, %struct.cgroup_network_interface** %11, align 8
  %155 = getelementptr inbounds %struct.cgroup_network_interface, %struct.cgroup_network_interface* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %158 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @netdev_rename_device_add(i8* %153, i8* %156, i32 %159)
  br label %161

161:                                              ; preds = %123, %80, %73
  br label %68

162:                                              ; preds = %68
  %163 = load i32*, i32** %6, align 8
  %164 = load i32, i32* %3, align 4
  %165 = call i32 @mypclose(i32* %163, i32 %164)
  store i32 0, i32* %7, align 4
  br label %166

166:                                              ; preds = %162, %61
  %167 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %167)
  %168 = load i32, i32* %7, align 4
  switch i32 %168, label %170 [
    i32 0, label %169
    i32 1, label %169
  ]

169:                                              ; preds = %166, %166
  ret void

170:                                              ; preds = %166
  unreachable
}

declare dso_local i32 @debug(i32, i8*, i8*, i32, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintfz(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32* @mypopen(i8*, i32*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @trim(i8*) #1

declare dso_local %struct.cgroup_network_interface* @callocz(i32, i32) #1

declare dso_local i8* @strdupz(i8*) #1

declare dso_local i32 @info(i8*, i32, i8*, i8*) #1

declare dso_local i32 @netdev_rename_device_add(i8*, i8*, i32) #1

declare dso_local i32 @mypclose(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
