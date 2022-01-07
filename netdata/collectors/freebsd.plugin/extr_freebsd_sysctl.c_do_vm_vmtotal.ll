; ModuleID = '/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_vm_vmtotal.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_vm_vmtotal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmtotal = type { i64, i64, i64, i64, i64, i64 }

@do_vm_vmtotal.do_all_processes = internal global i32 -1, align 4
@do_vm_vmtotal.do_processes = internal global i32 -1, align 4
@do_vm_vmtotal.do_committed = internal global i32 -1, align 4
@.str = private unnamed_addr constant [26 x i8] c"plugin:freebsd:vm.vmtotal\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"enable total processes\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"processes running\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"committed memory\00", align 1
@do_vm_vmtotal.mib = internal global [2 x i32] zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"vm.vmtotal\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"DISABLED: system.active_processes chart\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"DISABLED: system.processes chart\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"DISABLED: mem.committed chart\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"DISABLED: vm.vmtotal module\00", align 1
@do_vm_vmtotal.st = internal global i32* null, align 8
@do_vm_vmtotal.rd = internal global i32* null, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"active_processes\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"processes\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"System Active Processes\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"freebsd.plugin\00", align 1
@NETDATA_CHART_PRIO_SYSTEM_ACTIVE_PROCESSES = common dso_local global i32 0, align 4
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@RRD_ALGORITHM_ABSOLUTE = common dso_local global i32 0, align 4
@do_vm_vmtotal.st.15 = internal global i32* null, align 8
@do_vm_vmtotal.rd_running = internal global i32* null, align 8
@do_vm_vmtotal.rd_blocked = internal global i32* null, align 8
@.str.16 = private unnamed_addr constant [17 x i8] c"System Processes\00", align 1
@NETDATA_CHART_PRIO_SYSTEM_PROCESSES = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"blocked\00", align 1
@do_vm_vmtotal.st.19 = internal global i32* null, align 8
@do_vm_vmtotal.rd.20 = internal global i32* null, align 8
@.str.21 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"committed\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"Committed (Allocated) Memory\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"MiB\00", align 1
@NETDATA_CHART_PRIO_MEM_SYSTEM_COMMITTED = common dso_local global i32 0, align 4
@RRDSET_TYPE_AREA = common dso_local global i32 0, align 4
@RRDSET_FLAG_DETAIL = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [13 x i8] c"Committed_AS\00", align 1
@system_pagesize = common dso_local global i32 0, align 4
@MEGA_FACTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_vm_vmtotal(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmtotal, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @do_vm_vmtotal.do_all_processes, align 4
  %9 = icmp eq i32 %8, -1
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = call i32 @config_get_boolean(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %14, i32* @do_vm_vmtotal.do_all_processes, align 4
  %15 = call i32 @config_get_boolean(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %15, i32* @do_vm_vmtotal.do_processes, align 4
  %16 = call i32 @config_get_boolean(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32 %16, i32* @do_vm_vmtotal.do_committed, align 4
  br label %17

17:                                               ; preds = %13, %2
  %18 = load i32, i32* @do_vm_vmtotal.do_all_processes, align 4
  %19 = load i32, i32* @do_vm_vmtotal.do_processes, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @do_vm_vmtotal.do_committed, align 4
  %22 = or i32 %20, %21
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %154

25:                                               ; preds = %17
  %26 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @do_vm_vmtotal.mib, i64 0, i64 0), %struct.vmtotal* byval(%struct.vmtotal) align 8 %6)
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  store i32 0, i32* @do_vm_vmtotal.do_all_processes, align 4
  %30 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* @do_vm_vmtotal.do_processes, align 4
  %31 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* @do_vm_vmtotal.do_committed, align 4
  %32 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %33 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %157

34:                                               ; preds = %25
  %35 = load i32, i32* @do_vm_vmtotal.do_all_processes, align 4
  %36 = call i64 @likely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %76

38:                                               ; preds = %34
  %39 = load i32*, i32** @do_vm_vmtotal.st, align 8
  %40 = icmp ne i32* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load i32, i32* @NETDATA_CHART_PRIO_SYSTEM_ACTIVE_PROCESSES, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %49 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %46, i32 %47, i32 %48)
  store i32* %49, i32** @do_vm_vmtotal.st, align 8
  %50 = load i32*, i32** @do_vm_vmtotal.st, align 8
  %51 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %52 = call i32* @rrddim_add(i32* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %51)
  store i32* %52, i32** @do_vm_vmtotal.rd, align 8
  br label %56

53:                                               ; preds = %38
  %54 = load i32*, i32** @do_vm_vmtotal.st, align 8
  %55 = call i32 @rrdset_next(i32* %54)
  br label %56

56:                                               ; preds = %53, %45
  %57 = load i32*, i32** @do_vm_vmtotal.st, align 8
  %58 = load i32*, i32** @do_vm_vmtotal.rd, align 8
  %59 = getelementptr inbounds %struct.vmtotal, %struct.vmtotal* %6, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.vmtotal, %struct.vmtotal* %6, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %60, %62
  %64 = getelementptr inbounds %struct.vmtotal, %struct.vmtotal* %6, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %63, %65
  %67 = getelementptr inbounds %struct.vmtotal, %struct.vmtotal* %6, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %66, %68
  %70 = getelementptr inbounds %struct.vmtotal, %struct.vmtotal* %6, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %69, %71
  %73 = call i32 @rrddim_set_by_pointer(i32* %57, i32* %58, i64 %72)
  %74 = load i32*, i32** @do_vm_vmtotal.st, align 8
  %75 = call i32 @rrdset_done(i32* %74)
  br label %76

76:                                               ; preds = %56, %34
  %77 = load i32, i32* @do_vm_vmtotal.do_processes, align 4
  %78 = call i64 @likely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %117

80:                                               ; preds = %76
  %81 = load i32*, i32** @do_vm_vmtotal.st.15, align 8
  %82 = icmp ne i32* %81, null
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %80
  %88 = load i32, i32* @NETDATA_CHART_PRIO_SYSTEM_PROCESSES, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %91 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %88, i32 %89, i32 %90)
  store i32* %91, i32** @do_vm_vmtotal.st.15, align 8
  %92 = load i32*, i32** @do_vm_vmtotal.st.15, align 8
  %93 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %94 = call i32* @rrddim_add(i32* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %93)
  store i32* %94, i32** @do_vm_vmtotal.rd_running, align 8
  %95 = load i32*, i32** @do_vm_vmtotal.st.15, align 8
  %96 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %97 = call i32* @rrddim_add(i32* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32* null, i32 -1, i32 1, i32 %96)
  store i32* %97, i32** @do_vm_vmtotal.rd_blocked, align 8
  br label %101

98:                                               ; preds = %80
  %99 = load i32*, i32** @do_vm_vmtotal.st.15, align 8
  %100 = call i32 @rrdset_next(i32* %99)
  br label %101

101:                                              ; preds = %98, %87
  %102 = load i32*, i32** @do_vm_vmtotal.st.15, align 8
  %103 = load i32*, i32** @do_vm_vmtotal.rd_running, align 8
  %104 = getelementptr inbounds %struct.vmtotal, %struct.vmtotal* %6, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @rrddim_set_by_pointer(i32* %102, i32* %103, i64 %105)
  %107 = load i32*, i32** @do_vm_vmtotal.st.15, align 8
  %108 = load i32*, i32** @do_vm_vmtotal.rd_blocked, align 8
  %109 = getelementptr inbounds %struct.vmtotal, %struct.vmtotal* %6, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.vmtotal, %struct.vmtotal* %6, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %110, %112
  %114 = call i32 @rrddim_set_by_pointer(i32* %107, i32* %108, i64 %113)
  %115 = load i32*, i32** @do_vm_vmtotal.st.15, align 8
  %116 = call i32 @rrdset_done(i32* %115)
  br label %117

117:                                              ; preds = %101, %76
  %118 = load i32, i32* @do_vm_vmtotal.do_committed, align 4
  %119 = call i64 @likely(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %152

121:                                              ; preds = %117
  %122 = load i32*, i32** @do_vm_vmtotal.st.19, align 8
  %123 = icmp ne i32* %122, null
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = call i64 @unlikely(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %121
  %129 = load i32, i32* @NETDATA_CHART_PRIO_MEM_SYSTEM_COMMITTED, align 4
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @RRDSET_TYPE_AREA, align 4
  %132 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %129, i32 %130, i32 %131)
  store i32* %132, i32** @do_vm_vmtotal.st.19, align 8
  %133 = load i32*, i32** @do_vm_vmtotal.st.19, align 8
  %134 = load i32, i32* @RRDSET_FLAG_DETAIL, align 4
  %135 = call i32 @rrdset_flag_set(i32* %133, i32 %134)
  %136 = load i32*, i32** @do_vm_vmtotal.st.19, align 8
  %137 = load i32, i32* @system_pagesize, align 4
  %138 = load i32, i32* @MEGA_FACTOR, align 4
  %139 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %140 = call i32* @rrddim_add(i32* %136, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i32* null, i32 %137, i32 %138, i32 %139)
  store i32* %140, i32** @do_vm_vmtotal.rd.20, align 8
  br label %144

141:                                              ; preds = %121
  %142 = load i32*, i32** @do_vm_vmtotal.st.19, align 8
  %143 = call i32 @rrdset_next(i32* %142)
  br label %144

144:                                              ; preds = %141, %128
  %145 = load i32*, i32** @do_vm_vmtotal.st.19, align 8
  %146 = load i32*, i32** @do_vm_vmtotal.rd.20, align 8
  %147 = getelementptr inbounds %struct.vmtotal, %struct.vmtotal* %6, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @rrddim_set_by_pointer(i32* %145, i32* %146, i64 %148)
  %150 = load i32*, i32** @do_vm_vmtotal.st.19, align 8
  %151 = call i32 @rrdset_done(i32* %150)
  br label %152

152:                                              ; preds = %144, %117
  br label %153

153:                                              ; preds = %152
  br label %156

154:                                              ; preds = %17
  %155 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %157

156:                                              ; preds = %153
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %156, %154, %29
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @config_get_boolean(i8*, i8*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @GETSYSCTL_SIMPLE(i8*, i32*, %struct.vmtotal* byval(%struct.vmtotal) align 8) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32* @rrdset_create_localhost(i8*, i8*, i32*, i8*, i32*, i8*, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32* @rrddim_add(i32*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @rrdset_next(i32*) #1

declare dso_local i32 @rrddim_set_by_pointer(i32*, i32*, i64) #1

declare dso_local i32 @rrdset_done(i32*) #1

declare dso_local i32 @rrdset_flag_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
