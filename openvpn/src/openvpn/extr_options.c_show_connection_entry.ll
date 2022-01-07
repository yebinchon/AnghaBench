; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_show_connection_entry.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_show_connection_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection_entry = type { i32, i64, i32, i32 }

@D_SHOW_PARMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"  proto = %s\00", align 1
@local = common dso_local global i32 0, align 4
@local_port = common dso_local global i32 0, align 4
@remote = common dso_local global i32 0, align 4
@remote_port = common dso_local global i32 0, align 4
@remote_float = common dso_local global i32 0, align 4
@bind_defined = common dso_local global i32 0, align 4
@bind_local = common dso_local global i32 0, align 4
@bind_ipv6_only = common dso_local global i32 0, align 4
@connect_retry_seconds = common dso_local global i32 0, align 4
@connect_timeout = common dso_local global i32 0, align 4
@socks_proxy_server = common dso_local global i32 0, align 4
@socks_proxy_port = common dso_local global i32 0, align 4
@tun_mtu = common dso_local global i32 0, align 4
@tun_mtu_defined = common dso_local global i32 0, align 4
@link_mtu = common dso_local global i32 0, align 4
@link_mtu_defined = common dso_local global i32 0, align 4
@tun_mtu_extra = common dso_local global i32 0, align 4
@tun_mtu_extra_defined = common dso_local global i32 0, align 4
@mtu_discover_type = common dso_local global i32 0, align 4
@mssfix = common dso_local global i32 0, align 4
@tls_auth_file = common dso_local global i32 0, align 4
@key_direction = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tls_crypt_file = common dso_local global i32 0, align 4
@tls_crypt_v2_file = common dso_local global i32 0, align 4
@explicit_exit_notification = common dso_local global i32 0, align 4
@fragment = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connection_entry*)* @show_connection_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_connection_entry(%struct.connection_entry* %0) #0 {
  %2 = alloca %struct.connection_entry*, align 8
  store %struct.connection_entry* %0, %struct.connection_entry** %2, align 8
  %3 = load i32, i32* @D_SHOW_PARMS, align 4
  %4 = load %struct.connection_entry*, %struct.connection_entry** %2, align 8
  %5 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.connection_entry*, %struct.connection_entry** %2, align 8
  %8 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @proto2ascii(i32 %6, i32 %9, i32 0)
  %11 = call i32 @msg(i32 %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @local, align 4
  %13 = call i32 @SHOW_STR(i32 %12)
  %14 = load i32, i32* @local_port, align 4
  %15 = call i32 @SHOW_STR(i32 %14)
  %16 = load i32, i32* @remote, align 4
  %17 = call i32 @SHOW_STR(i32 %16)
  %18 = load i32, i32* @remote_port, align 4
  %19 = call i32 @SHOW_STR(i32 %18)
  %20 = load i32, i32* @remote_float, align 4
  %21 = call i32 @SHOW_BOOL(i32 %20)
  %22 = load i32, i32* @bind_defined, align 4
  %23 = call i32 @SHOW_BOOL(i32 %22)
  %24 = load i32, i32* @bind_local, align 4
  %25 = call i32 @SHOW_BOOL(i32 %24)
  %26 = load i32, i32* @bind_ipv6_only, align 4
  %27 = call i32 @SHOW_BOOL(i32 %26)
  %28 = load i32, i32* @connect_retry_seconds, align 4
  %29 = call i32 @SHOW_INT(i32 %28)
  %30 = load i32, i32* @connect_timeout, align 4
  %31 = call i32 @SHOW_INT(i32 %30)
  %32 = load %struct.connection_entry*, %struct.connection_entry** %2, align 8
  %33 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %1
  %37 = load %struct.connection_entry*, %struct.connection_entry** %2, align 8
  %38 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @show_http_proxy_options(i64 %39)
  br label %41

41:                                               ; preds = %36, %1
  %42 = load i32, i32* @socks_proxy_server, align 4
  %43 = call i32 @SHOW_STR(i32 %42)
  %44 = load i32, i32* @socks_proxy_port, align 4
  %45 = call i32 @SHOW_STR(i32 %44)
  %46 = load i32, i32* @tun_mtu, align 4
  %47 = call i32 @SHOW_INT(i32 %46)
  %48 = load i32, i32* @tun_mtu_defined, align 4
  %49 = call i32 @SHOW_BOOL(i32 %48)
  %50 = load i32, i32* @link_mtu, align 4
  %51 = call i32 @SHOW_INT(i32 %50)
  %52 = load i32, i32* @link_mtu_defined, align 4
  %53 = call i32 @SHOW_BOOL(i32 %52)
  %54 = load i32, i32* @tun_mtu_extra, align 4
  %55 = call i32 @SHOW_INT(i32 %54)
  %56 = load i32, i32* @tun_mtu_extra_defined, align 4
  %57 = call i32 @SHOW_BOOL(i32 %56)
  %58 = load i32, i32* @mtu_discover_type, align 4
  %59 = call i32 @SHOW_INT(i32 %58)
  %60 = load i32, i32* @mssfix, align 4
  %61 = call i32 @SHOW_INT(i32 %60)
  %62 = load i32, i32* @tls_auth_file, align 4
  %63 = call i32 @SHOW_STR(i32 %62)
  %64 = load i32, i32* @key_direction, align 4
  %65 = load %struct.connection_entry*, %struct.connection_entry** %2, align 8
  %66 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @keydirection2ascii(i32 %67, i32 0, i32 1)
  %69 = call i32 @SHOW_PARM(i32 %64, i32 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @tls_crypt_file, align 4
  %71 = call i32 @SHOW_STR(i32 %70)
  %72 = load i32, i32* @tls_crypt_v2_file, align 4
  %73 = call i32 @SHOW_STR(i32 %72)
  ret void
}

declare dso_local i32 @msg(i32, i8*, i32) #1

declare dso_local i32 @proto2ascii(i32, i32, i32) #1

declare dso_local i32 @SHOW_STR(i32) #1

declare dso_local i32 @SHOW_BOOL(i32) #1

declare dso_local i32 @SHOW_INT(i32) #1

declare dso_local i32 @show_http_proxy_options(i64) #1

declare dso_local i32 @SHOW_PARM(i32, i32, i8*) #1

declare dso_local i32 @keydirection2ascii(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
