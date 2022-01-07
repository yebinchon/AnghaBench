; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_linksock_print_addr.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_linksock_print_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket = type { i64, %struct.TYPE_11__, i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__, %struct.addrinfo* }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.addrinfo = type { i64, i32, %struct.addrinfo* }
%struct.gc_arena = type { i32 }

@LS_MODE_TCP_ACCEPT_FROM = common dso_local global i64 0, align 8
@D_INIT_MEDIUM = common dso_local global i32 0, align 4
@M_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s link local: [inetd]\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%s link local (bound): %s\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s link local: (not bound)\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s link remote: %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@PS_SHOW_PORT_IF_DEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_socket*)* @linksock_print_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linksock_print_addr(%struct.link_socket* %0) #0 {
  %2 = alloca %struct.link_socket*, align 8
  %3 = alloca %struct.gc_arena, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.addrinfo*, align 8
  store %struct.link_socket* %0, %struct.link_socket** %2, align 8
  %7 = call i32 (...) @gc_new()
  %8 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %3, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load %struct.link_socket*, %struct.link_socket** %2, align 8
  %10 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LS_MODE_TCP_ACCEPT_FROM, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @D_INIT_MEDIUM, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @M_INFO, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %4, align 4
  %20 = load %struct.link_socket*, %struct.link_socket** %2, align 8
  %21 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.link_socket*, %struct.link_socket** %2, align 8
  %27 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.link_socket*, %struct.link_socket** %2, align 8
  %31 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @proto2ascii(i32 %29, i32 %33, i32 1)
  %35 = call i32 (i32, i8*, i32, ...) @msg(i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %107

36:                                               ; preds = %18
  %37 = load %struct.link_socket*, %struct.link_socket** %2, align 8
  %38 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %94

41:                                               ; preds = %36
  %42 = load %struct.link_socket*, %struct.link_socket** %2, align 8
  %43 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %5, align 8
  %52 = load %struct.link_socket*, %struct.link_socket** %2, align 8
  %53 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load %struct.addrinfo*, %struct.addrinfo** %56, align 8
  store %struct.addrinfo* %57, %struct.addrinfo** %6, align 8
  br label %58

58:                                               ; preds = %72, %41
  %59 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %60 = icmp ne %struct.addrinfo* %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %58
  %62 = load i64, i64* %5, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64, %61
  br label %76

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %74 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %73, i32 0, i32 2
  %75 = load %struct.addrinfo*, %struct.addrinfo** %74, align 8
  store %struct.addrinfo* %75, %struct.addrinfo** %6, align 8
  br label %58

76:                                               ; preds = %70, %58
  %77 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %78 = call i32 @ASSERT(%struct.addrinfo* %77)
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.link_socket*, %struct.link_socket** %2, align 8
  %81 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.link_socket*, %struct.link_socket** %2, align 8
  %85 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @proto2ascii(i32 %83, i32 %87, i32 1)
  %89 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %90 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @print_sockaddr(i32 %91, %struct.gc_arena* %3)
  %93 = call i32 (i32, i8*, i32, ...) @msg(i32 %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %92)
  br label %106

94:                                               ; preds = %36
  %95 = load i32, i32* %4, align 4
  %96 = load %struct.link_socket*, %struct.link_socket** %2, align 8
  %97 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.link_socket*, %struct.link_socket** %2, align 8
  %101 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @proto2ascii(i32 %99, i32 %103, i32 1)
  %105 = call i32 (i32, i8*, i32, ...) @msg(i32 %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %94, %76
  br label %107

107:                                              ; preds = %106, %24
  %108 = load i32, i32* %4, align 4
  %109 = load %struct.link_socket*, %struct.link_socket** %2, align 8
  %110 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.link_socket*, %struct.link_socket** %2, align 8
  %114 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @proto2ascii(i32 %112, i32 %116, i32 1)
  %118 = load %struct.link_socket*, %struct.link_socket** %2, align 8
  %119 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* @PS_SHOW_PORT_IF_DEFINED, align 4
  %124 = call i32 @print_link_socket_actual_ex(%struct.TYPE_12__* %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %123, %struct.gc_arena* %3)
  %125 = call i32 (i32, i8*, i32, ...) @msg(i32 %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %117, i32 %124)
  %126 = call i32 @gc_free(%struct.gc_arena* %3)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @msg(i32, i8*, i32, ...) #1

declare dso_local i32 @proto2ascii(i32, i32, i32) #1

declare dso_local i32 @ASSERT(%struct.addrinfo*) #1

declare dso_local i32 @print_sockaddr(i32, %struct.gc_arena*) #1

declare dso_local i32 @print_link_socket_actual_ex(%struct.TYPE_12__*, i8*, i32, %struct.gc_arena*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
