; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_process_incoming_link_part2.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_process_incoming_link_part2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_19__ }
%struct.TYPE_22__ = type { %struct.TYPE_17__, %struct.TYPE_20__*, %struct.TYPE_23__, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_24__*, i32, i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_23__*, i32, %struct.TYPE_24__*, i32*)* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i64 }
%struct.link_socket_info = type { i32 }

@D_PING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"RECEIVED PING PACKET\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_incoming_link_part2(%struct.context* %0, %struct.link_socket_info* %1, i32* %2) #0 {
  %4 = alloca %struct.context*, align 8
  %5 = alloca %struct.link_socket_info*, align 8
  %6 = alloca i32*, align 8
  store %struct.context* %0, %struct.context** %4, align 8
  store %struct.link_socket_info* %1, %struct.link_socket_info** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.context*, %struct.context** %4, align 8
  %8 = getelementptr inbounds %struct.context, %struct.context* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %119

13:                                               ; preds = %3
  %14 = load %struct.context*, %struct.context** %4, align 8
  %15 = call i32 @TLS_MODE(%struct.context* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = load %struct.context*, %struct.context** %4, align 8
  %19 = getelementptr inbounds %struct.context, %struct.context* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 2
  %21 = load %struct.link_socket_info*, %struct.link_socket_info** %5, align 8
  %22 = load %struct.context*, %struct.context** %4, align 8
  %23 = getelementptr inbounds %struct.context, %struct.context* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 8
  %25 = load %struct.context*, %struct.context** %4, align 8
  %26 = getelementptr inbounds %struct.context, %struct.context* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @link_socket_set_outgoing_addr(%struct.TYPE_23__* %20, %struct.link_socket_info* %21, i32* %24, i32* null, i32 %28)
  br label %30

30:                                               ; preds = %17, %13
  %31 = load %struct.context*, %struct.context** %4, align 8
  %32 = getelementptr inbounds %struct.context, %struct.context* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load %struct.context*, %struct.context** %4, align 8
  %38 = getelementptr inbounds %struct.context, %struct.context* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.context*, %struct.context** %4, align 8
  %45 = getelementptr inbounds %struct.context, %struct.context* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 6
  %47 = call i32 @event_timeout_reset(i32* %46)
  br label %48

48:                                               ; preds = %43, %36, %30
  %49 = load %struct.context*, %struct.context** %4, align 8
  %50 = getelementptr inbounds %struct.context, %struct.context* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %48
  %56 = load %struct.context*, %struct.context** %4, align 8
  %57 = getelementptr inbounds %struct.context, %struct.context* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.context*, %struct.context** %4, align 8
  %62 = getelementptr inbounds %struct.context, %struct.context* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %60
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 8
  %68 = load %struct.context*, %struct.context** %4, align 8
  %69 = getelementptr inbounds %struct.context, %struct.context* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.context*, %struct.context** %4, align 8
  %73 = getelementptr inbounds %struct.context, %struct.context* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @max_int(i32 %71, i32 %75)
  %77 = load %struct.context*, %struct.context** %4, align 8
  %78 = getelementptr inbounds %struct.context, %struct.context* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 3
  store i32 %76, i32* %79, align 8
  br label %80

80:                                               ; preds = %55, %48
  %81 = load %struct.context*, %struct.context** %4, align 8
  %82 = getelementptr inbounds %struct.context, %struct.context* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 2
  %84 = call i64 @is_ping_msg(%struct.TYPE_23__* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load i32, i32* @D_PING, align 4
  %88 = call i32 @dmsg(i32 %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %89 = load %struct.context*, %struct.context** %4, align 8
  %90 = getelementptr inbounds %struct.context, %struct.context* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %86, %80
  %94 = load i32*, i32** %6, align 8
  %95 = load %struct.context*, %struct.context** %4, align 8
  %96 = getelementptr inbounds %struct.context, %struct.context* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load %struct.context*, %struct.context** %4, align 8
  %99 = getelementptr inbounds %struct.context, %struct.context* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 2
  %101 = load %struct.context*, %struct.context** %4, align 8
  %102 = getelementptr inbounds %struct.context, %struct.context* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = call i32 @buffer_turnover(i32* %94, %struct.TYPE_17__* %97, %struct.TYPE_23__* %100, i32* %105)
  %107 = load %struct.context*, %struct.context** %4, align 8
  %108 = getelementptr inbounds %struct.context, %struct.context* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @tuntap_defined(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %93
  %114 = load %struct.context*, %struct.context** %4, align 8
  %115 = getelementptr inbounds %struct.context, %struct.context* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %113, %93
  br label %124

119:                                              ; preds = %3
  %120 = load %struct.context*, %struct.context** %4, align 8
  %121 = getelementptr inbounds %struct.context, %struct.context* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 0
  %123 = call i32 @buf_reset(%struct.TYPE_17__* %122)
  br label %124

124:                                              ; preds = %119, %118
  ret void
}

declare dso_local i32 @TLS_MODE(%struct.context*) #1

declare dso_local i32 @link_socket_set_outgoing_addr(%struct.TYPE_23__*, %struct.link_socket_info*, i32*, i32*, i32) #1

declare dso_local i32 @event_timeout_reset(i32*) #1

declare dso_local i32 @max_int(i32, i32) #1

declare dso_local i64 @is_ping_msg(%struct.TYPE_23__*) #1

declare dso_local i32 @dmsg(i32, i8*) #1

declare dso_local i32 @buffer_turnover(i32*, %struct.TYPE_17__*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @tuntap_defined(i32) #1

declare dso_local i32 @buf_reset(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
