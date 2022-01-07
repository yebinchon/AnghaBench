; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_resolve_bind_local.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_resolve_bind_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.gc_arena = type { i32 }

@GETADDR_RESOLVE = common dso_local global i32 0, align 4
@GETADDR_WARN_ON_SIGNAL = common dso_local global i32 0, align 4
@GETADDR_FATAL = common dso_local global i32 0, align 4
@GETADDR_PASSIVE = common dso_local global i32 0, align 4
@GETADDR_DATAGRAM = common dso_local global i32 0, align 4
@M_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"getaddrinfo() failed for local \22%s:%s\22: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_socket*, i32)* @resolve_bind_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolve_bind_local(%struct.link_socket* %0, i32 %1) #0 {
  %3 = alloca %struct.link_socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gc_arena, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.link_socket* %0, %struct.link_socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 (...) @gc_new()
  %9 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %5, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %11 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %85, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @GETADDR_RESOLVE, align 4
  %19 = load i32, i32* @GETADDR_WARN_ON_SIGNAL, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @GETADDR_FATAL, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @GETADDR_PASSIVE, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %6, align 4
  %25 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %26 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @proto_is_dgram(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %17
  %32 = load i32, i32* @GETADDR_DATAGRAM, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %17
  %36 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %37 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %40 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %43 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %48 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = call i32 @get_cached_dns_entry(i32 %38, i32 %41, i32 %44, i32 %45, i32 %46, i32* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %35
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %58 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %61 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %65 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = call i32 @openvpn_getaddrinfo(i32 %56, i32 %59, i32 %62, i32 0, i32* null, i32 %63, i32* %68)
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %55, %35
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load i32, i32* @M_FATAL, align 4
  %75 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %76 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %79 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @gai_strerror(i32 %81)
  %83 = call i32 @msg(i32 %74, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %80, i32 %82)
  br label %84

84:                                               ; preds = %73, %70
  br label %85

85:                                               ; preds = %84, %2
  %86 = call i32 @gc_free(%struct.gc_arena* %5)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i64 @proto_is_dgram(i32) #1

declare dso_local i32 @get_cached_dns_entry(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @openvpn_getaddrinfo(i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @msg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
