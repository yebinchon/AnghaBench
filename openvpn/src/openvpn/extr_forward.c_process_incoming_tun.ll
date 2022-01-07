; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_process_incoming_tun.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_process_incoming_tun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__, i32, i64, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.gc_arena = type { i32 }

@PERF_PROC_IN_TUN = common dso_local global i32 0, align 4
@D_TUN_RW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"TUN READ [%d]\00", align 1
@MODE_POINT_TO_POINT = common dso_local global i64 0, align 8
@PIPV4_PASSTOS = common dso_local global i32 0, align 4
@PIP_MSSFIX = common dso_local global i32 0, align 4
@PIPV4_CLIENT_NAT = common dso_local global i32 0, align 4
@PIPV6_IMCP_NOHOST_CLIENT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_incoming_tun(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  %3 = alloca %struct.gc_arena, align 4
  %4 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %2, align 8
  %5 = call i32 (...) @gc_new()
  %6 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %3, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @PERF_PROC_IN_TUN, align 4
  %8 = call i32 @perf_push(i32 %7)
  %9 = load %struct.context*, %struct.context** %2, align 8
  %10 = getelementptr inbounds %struct.context, %struct.context* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load %struct.context*, %struct.context** %2, align 8
  %17 = getelementptr inbounds %struct.context, %struct.context* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.context*, %struct.context** %2, align 8
  %22 = getelementptr inbounds %struct.context, %struct.context* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %20
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 8
  br label %28

28:                                               ; preds = %15, %1
  %29 = load i32, i32* @D_TUN_RW, align 4
  %30 = load %struct.context*, %struct.context** %2, align 8
  %31 = getelementptr inbounds %struct.context, %struct.context* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = call i32 @BLEN(%struct.TYPE_11__* %32)
  %34 = call i32 @dmsg(i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.context*, %struct.context** %2, align 8
  %36 = getelementptr inbounds %struct.context, %struct.context* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %28
  %42 = load %struct.context*, %struct.context** %2, align 8
  %43 = getelementptr inbounds %struct.context, %struct.context* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MODE_POINT_TO_POINT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %41
  %49 = load %struct.context*, %struct.context** %2, align 8
  %50 = getelementptr inbounds %struct.context, %struct.context* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.context*, %struct.context** %2, align 8
  %56 = load %struct.context*, %struct.context** %2, align 8
  %57 = getelementptr inbounds %struct.context, %struct.context* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = call i32 @drop_if_recursive_routing(%struct.context* %55, %struct.TYPE_11__* %58)
  br label %60

60:                                               ; preds = %54, %48, %41
  %61 = load i32, i32* @PIPV4_PASSTOS, align 4
  %62 = load i32, i32* @PIP_MSSFIX, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @PIPV4_CLIENT_NAT, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @PIPV6_IMCP_NOHOST_CLIENT, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %4, align 4
  %68 = load %struct.context*, %struct.context** %2, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.context*, %struct.context** %2, align 8
  %71 = getelementptr inbounds %struct.context, %struct.context* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = call i32 @process_ip_header(%struct.context* %68, i32 %69, %struct.TYPE_11__* %72)
  br label %74

74:                                               ; preds = %60, %28
  %75 = load %struct.context*, %struct.context** %2, align 8
  %76 = getelementptr inbounds %struct.context, %struct.context* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load %struct.context*, %struct.context** %2, align 8
  %83 = call i32 @encrypt_sign(%struct.context* %82, i32 1)
  br label %89

84:                                               ; preds = %74
  %85 = load %struct.context*, %struct.context** %2, align 8
  %86 = getelementptr inbounds %struct.context, %struct.context* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = call i32 @buf_reset(i32* %87)
  br label %89

89:                                               ; preds = %84, %81
  %90 = call i32 (...) @perf_pop()
  %91 = call i32 @gc_free(%struct.gc_arena* %3)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @perf_push(i32) #1

declare dso_local i32 @dmsg(i32, i8*, i32) #1

declare dso_local i32 @BLEN(%struct.TYPE_11__*) #1

declare dso_local i32 @drop_if_recursive_routing(%struct.context*, %struct.TYPE_11__*) #1

declare dso_local i32 @process_ip_header(%struct.context*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @encrypt_sign(%struct.context*, i32) #1

declare dso_local i32 @buf_reset(i32*) #1

declare dso_local i32 @perf_pop(...) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
