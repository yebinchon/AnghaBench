; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_process_outgoing_tun.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_process_outgoing_tun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__, i32, i32, i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.gc_arena = type { i32 }

@PERF_PROC_OUT_TUN = common dso_local global i32 0, align 4
@PIP_MSSFIX = common dso_local global i32 0, align 4
@PIPV4_EXTRACT_DHCP_ROUTER = common dso_local global i32 0, align 4
@PIPV4_CLIENT_NAT = common dso_local global i32 0, align 4
@PIP_OUTGOING = common dso_local global i32 0, align 4
@D_TUN_RW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"TUN WRITE [%d]\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"write to TUN/TAP\00", align 1
@D_LINK_ERRORS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [80 x i8] c"TUN/TAP packet was destructively fragmented on write to %s (tried=%d,actual=%d)\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"tun packet too large on write (tried=%d,max=%d)\00", align 1
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_outgoing_tun(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  %3 = alloca %struct.gc_arena, align 4
  %4 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %2, align 8
  %5 = call i32 (...) @gc_new()
  %6 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %3, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = load %struct.context*, %struct.context** %2, align 8
  %8 = getelementptr inbounds %struct.context, %struct.context* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %124

14:                                               ; preds = %1
  %15 = load i32, i32* @PERF_PROC_OUT_TUN, align 4
  %16 = call i32 @perf_push(i32 %15)
  %17 = load %struct.context*, %struct.context** %2, align 8
  %18 = load i32, i32* @PIP_MSSFIX, align 4
  %19 = load i32, i32* @PIPV4_EXTRACT_DHCP_ROUTER, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @PIPV4_CLIENT_NAT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @PIP_OUTGOING, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.context*, %struct.context** %2, align 8
  %26 = getelementptr inbounds %struct.context, %struct.context* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = call i32 @process_ip_header(%struct.context* %17, i32 %24, %struct.TYPE_15__* %27)
  %29 = load %struct.context*, %struct.context** %2, align 8
  %30 = getelementptr inbounds %struct.context, %struct.context* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.context*, %struct.context** %2, align 8
  %35 = getelementptr inbounds %struct.context, %struct.context* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 2
  %37 = call i64 @MAX_RW_SIZE_TUN(i32* %36)
  %38 = icmp sle i64 %33, %37
  br i1 %38, label %39, label %105

39:                                               ; preds = %14
  %40 = load i32, i32* @D_TUN_RW, align 4
  %41 = load %struct.context*, %struct.context** %2, align 8
  %42 = getelementptr inbounds %struct.context, %struct.context* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = call i32 @BLEN(%struct.TYPE_15__* %43)
  %45 = call i32 @dmsg(i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.context*, %struct.context** %2, align 8
  %47 = getelementptr inbounds %struct.context, %struct.context* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = load %struct.context*, %struct.context** %2, align 8
  %51 = getelementptr inbounds %struct.context, %struct.context* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = call i32 @BPTR(%struct.TYPE_15__* %52)
  %54 = load %struct.context*, %struct.context** %2, align 8
  %55 = getelementptr inbounds %struct.context, %struct.context* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = call i32 @BLEN(%struct.TYPE_15__* %56)
  %58 = call i32 @write_tun(%struct.TYPE_14__* %49, i32 %53, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %39
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.context*, %struct.context** %2, align 8
  %64 = getelementptr inbounds %struct.context, %struct.context* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, %62
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %61, %39
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.context*, %struct.context** %2, align 8
  %71 = getelementptr inbounds %struct.context, %struct.context* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = call i32 @check_status(i32 %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* null, %struct.TYPE_14__* %73)
  %75 = load i32, i32* %4, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %104

77:                                               ; preds = %68
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.context*, %struct.context** %2, align 8
  %80 = getelementptr inbounds %struct.context, %struct.context* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = call i32 @BLEN(%struct.TYPE_15__* %81)
  %83 = icmp ne i32 %78, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %77
  %85 = load i32, i32* @D_LINK_ERRORS, align 4
  %86 = load %struct.context*, %struct.context** %2, align 8
  %87 = getelementptr inbounds %struct.context, %struct.context* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = load %struct.context*, %struct.context** %2, align 8
  %94 = getelementptr inbounds %struct.context, %struct.context* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = call i32 @BLEN(%struct.TYPE_15__* %95)
  %97 = sext i32 %96 to i64
  %98 = load i32, i32* %4, align 4
  %99 = call i32 (i32, i8*, i64, i64, ...) @msg(i32 %85, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i64 %92, i64 %97, i32 %98)
  br label %100

100:                                              ; preds = %84, %77
  %101 = load %struct.context*, %struct.context** %2, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @register_activity(%struct.context* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %68
  br label %117

105:                                              ; preds = %14
  %106 = load i32, i32* @D_LINK_ERRORS, align 4
  %107 = load %struct.context*, %struct.context** %2, align 8
  %108 = getelementptr inbounds %struct.context, %struct.context* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.context*, %struct.context** %2, align 8
  %113 = getelementptr inbounds %struct.context, %struct.context* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 2
  %115 = call i64 @MAX_RW_SIZE_TUN(i32* %114)
  %116 = call i32 (i32, i8*, i64, i64, ...) @msg(i32 %106, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %111, i64 %115)
  br label %117

117:                                              ; preds = %105, %104
  %118 = load %struct.context*, %struct.context** %2, align 8
  %119 = getelementptr inbounds %struct.context, %struct.context* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = call i32 @buf_reset(%struct.TYPE_15__* %120)
  %122 = call i32 (...) @perf_pop()
  %123 = call i32 @gc_free(%struct.gc_arena* %3)
  br label %124

124:                                              ; preds = %117, %13
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @perf_push(i32) #1

declare dso_local i32 @process_ip_header(%struct.context*, i32, %struct.TYPE_15__*) #1

declare dso_local i64 @MAX_RW_SIZE_TUN(i32*) #1

declare dso_local i32 @dmsg(i32, i8*, i32) #1

declare dso_local i32 @BLEN(%struct.TYPE_15__*) #1

declare dso_local i32 @write_tun(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @BPTR(%struct.TYPE_15__*) #1

declare dso_local i32 @check_status(i32, i8*, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @msg(i32, i8*, i64, i64, ...) #1

declare dso_local i32 @register_activity(%struct.context*, i32) #1

declare dso_local i32 @buf_reset(%struct.TYPE_15__*) #1

declare dso_local i32 @perf_pop(...) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
