; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_do_close_link_socket.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_do_close_link_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32, i64, i64, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32*, i64 }

@SIGUSR1 = common dso_local global i64 0, align 8
@SIG_SOURCE_HARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*)* @do_close_link_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_close_link_socket(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  store %struct.context* %0, %struct.context** %2, align 8
  %3 = load %struct.context*, %struct.context** %2, align 8
  %4 = getelementptr inbounds %struct.context, %struct.context* %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.context*, %struct.context** %2, align 8
  %10 = getelementptr inbounds %struct.context, %struct.context* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %8
  %15 = load %struct.context*, %struct.context** %2, align 8
  %16 = getelementptr inbounds %struct.context, %struct.context* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @link_socket_close(i32* %18)
  %20 = load %struct.context*, %struct.context** %2, align 8
  %21 = getelementptr inbounds %struct.context, %struct.context* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %14, %8, %1
  %24 = load %struct.context*, %struct.context** %2, align 8
  %25 = getelementptr inbounds %struct.context, %struct.context* %24, i32 0, i32 2
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SIGUSR1, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %67

31:                                               ; preds = %23
  %32 = load %struct.context*, %struct.context** %2, align 8
  %33 = getelementptr inbounds %struct.context, %struct.context* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %79, label %37

37:                                               ; preds = %31
  %38 = load %struct.context*, %struct.context** %2, align 8
  %39 = getelementptr inbounds %struct.context, %struct.context* %38, i32 0, i32 2
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SIG_SOURCE_HARD, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %37
  %46 = load %struct.context*, %struct.context** %2, align 8
  %47 = getelementptr inbounds %struct.context, %struct.context* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = icmp ne %struct.TYPE_8__* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load %struct.context*, %struct.context** %2, align 8
  %54 = getelementptr inbounds %struct.context, %struct.context* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %52, %45
  %62 = load %struct.context*, %struct.context** %2, align 8
  %63 = getelementptr inbounds %struct.context, %struct.context* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %61, %37, %23
  %68 = load %struct.context*, %struct.context** %2, align 8
  %69 = getelementptr inbounds %struct.context, %struct.context* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load %struct.context*, %struct.context** %2, align 8
  %72 = getelementptr inbounds %struct.context, %struct.context* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i32 @clear_remote_addrlist(%struct.TYPE_12__* %70, i32 %77)
  br label %79

79:                                               ; preds = %67, %61, %52, %31
  %80 = load %struct.context*, %struct.context** %2, align 8
  %81 = getelementptr inbounds %struct.context, %struct.context* %80, i32 0, i32 2
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SIGUSR1, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load %struct.context*, %struct.context** %2, align 8
  %89 = getelementptr inbounds %struct.context, %struct.context* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %87, %79
  %94 = load %struct.context*, %struct.context** %2, align 8
  %95 = getelementptr inbounds %struct.context, %struct.context* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @CLEAR(i32 %98)
  br label %100

100:                                              ; preds = %93, %87
  %101 = load %struct.context*, %struct.context** %2, align 8
  %102 = getelementptr inbounds %struct.context, %struct.context* %101, i32 0, i32 2
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @SIGUSR1, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %100
  %109 = load %struct.context*, %struct.context** %2, align 8
  %110 = getelementptr inbounds %struct.context, %struct.context* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %139, label %114

114:                                              ; preds = %108, %100
  %115 = load %struct.context*, %struct.context** %2, align 8
  %116 = getelementptr inbounds %struct.context, %struct.context* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %134

121:                                              ; preds = %114
  %122 = load %struct.context*, %struct.context** %2, align 8
  %123 = getelementptr inbounds %struct.context, %struct.context* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %121
  %128 = load %struct.context*, %struct.context** %2, align 8
  %129 = getelementptr inbounds %struct.context, %struct.context* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @freeaddrinfo(i32* %132)
  br label %134

134:                                              ; preds = %127, %121, %114
  %135 = load %struct.context*, %struct.context** %2, align 8
  %136 = getelementptr inbounds %struct.context, %struct.context* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  store i32* null, i32** %138, align 8
  br label %139

139:                                              ; preds = %134, %108
  ret void
}

declare dso_local i32 @link_socket_close(i32*) #1

declare dso_local i32 @clear_remote_addrlist(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @CLEAR(i32) #1

declare dso_local i32 @freeaddrinfo(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
