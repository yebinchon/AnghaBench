; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_link_socket_connection_initiated.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_link_socket_connection_initiated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.link_socket_info = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.link_socket_actual }
%struct.link_socket_actual = type { i32 }
%struct.env_set = type { i32 }
%struct.gc_arena = type { i32 }
%struct.argv = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Peer Connection Initiated with %s\00", align 1
@M_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"common_name\00", align 1
@OPENVPN_PLUGIN_IPCHANGE = common dso_local global i32 0, align 4
@OPENVPN_PLUGIN_FUNC_SUCCESS = common dso_local global i64 0, align 8
@M_WARN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"WARNING: ipchange plugin call failed\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"script_type\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"ipchange\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"--ipchange\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @link_socket_connection_initiated(%struct.buffer* %0, %struct.link_socket_info* %1, %struct.link_socket_actual* %2, i8* %3, %struct.env_set* %4) #0 {
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca %struct.link_socket_info*, align 8
  %8 = alloca %struct.link_socket_actual*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.env_set*, align 8
  %11 = alloca %struct.gc_arena, align 4
  %12 = alloca %struct.buffer, align 4
  %13 = alloca %struct.argv, align 4
  %14 = alloca %struct.argv, align 4
  store %struct.buffer* %0, %struct.buffer** %6, align 8
  store %struct.link_socket_info* %1, %struct.link_socket_info** %7, align 8
  store %struct.link_socket_actual* %2, %struct.link_socket_actual** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.env_set* %4, %struct.env_set** %10, align 8
  %15 = call i32 (...) @gc_new()
  %16 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %11, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.link_socket_info*, %struct.link_socket_info** %7, align 8
  %18 = getelementptr inbounds %struct.link_socket_info, %struct.link_socket_info* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.link_socket_actual*, %struct.link_socket_actual** %8, align 8
  %22 = bitcast %struct.link_socket_actual* %20 to i8*
  %23 = bitcast %struct.link_socket_actual* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  %24 = load %struct.env_set*, %struct.env_set** %10, align 8
  %25 = load %struct.link_socket_info*, %struct.link_socket_info** %7, align 8
  %26 = call i32 @setenv_trusted(%struct.env_set* %24, %struct.link_socket_info* %25)
  %27 = load %struct.link_socket_info*, %struct.link_socket_info** %7, align 8
  %28 = getelementptr inbounds %struct.link_socket_info, %struct.link_socket_info* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = call i32 @alloc_buf_gc(i32 256, %struct.gc_arena* %11)
  %30 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %5
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @buf_printf(%struct.buffer* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33, %5
  %37 = load %struct.link_socket_info*, %struct.link_socket_info** %7, align 8
  %38 = getelementptr inbounds %struct.link_socket_info, %struct.link_socket_info* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i8* @print_link_socket_actual(%struct.link_socket_actual* %40, %struct.gc_arena* %11)
  %42 = call i32 @buf_printf(%struct.buffer* %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* @M_INFO, align 4
  %44 = call i32 @BSTR(%struct.buffer* %12)
  %45 = call i32 (i32, i8*, ...) @msg(i32 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load %struct.env_set*, %struct.env_set** %10, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @setenv_str(%struct.env_set* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  %49 = load %struct.link_socket_info*, %struct.link_socket_info** %7, align 8
  %50 = getelementptr inbounds %struct.link_socket_info, %struct.link_socket_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @OPENVPN_PLUGIN_IPCHANGE, align 4
  %53 = call i64 @plugin_defined(i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %36
  %56 = call i32 (...) @argv_new()
  %57 = getelementptr inbounds %struct.argv, %struct.argv* %13, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = load %struct.link_socket_info*, %struct.link_socket_info** %7, align 8
  %59 = call i32 @ipchange_fmt(i32 0, %struct.argv* %13, %struct.link_socket_info* %58, %struct.gc_arena* %11)
  %60 = load %struct.link_socket_info*, %struct.link_socket_info** %7, align 8
  %61 = getelementptr inbounds %struct.link_socket_info, %struct.link_socket_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @OPENVPN_PLUGIN_IPCHANGE, align 4
  %64 = load %struct.env_set*, %struct.env_set** %10, align 8
  %65 = call i64 @plugin_call(i32 %62, i32 %63, %struct.argv* %13, i32* null, %struct.env_set* %64)
  %66 = load i64, i64* @OPENVPN_PLUGIN_FUNC_SUCCESS, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %55
  %69 = load i32, i32* @M_WARN, align 4
  %70 = call i32 (i32, i8*, ...) @msg(i32 %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %55
  %72 = call i32 @argv_reset(%struct.argv* %13)
  br label %73

73:                                               ; preds = %71, %36
  %74 = load %struct.link_socket_info*, %struct.link_socket_info** %7, align 8
  %75 = getelementptr inbounds %struct.link_socket_info, %struct.link_socket_info* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = call i32 (...) @argv_new()
  %80 = getelementptr inbounds %struct.argv, %struct.argv* %14, i32 0, i32 0
  store i32 %79, i32* %80, align 4
  %81 = load %struct.env_set*, %struct.env_set** %10, align 8
  %82 = call i32 @setenv_str(%struct.env_set* %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %83 = load %struct.link_socket_info*, %struct.link_socket_info** %7, align 8
  %84 = call i32 @ipchange_fmt(i32 1, %struct.argv* %14, %struct.link_socket_info* %83, %struct.gc_arena* %11)
  %85 = load %struct.env_set*, %struct.env_set** %10, align 8
  %86 = call i32 @openvpn_run_script(%struct.argv* %14, %struct.env_set* %85, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %87 = call i32 @argv_reset(%struct.argv* %14)
  br label %88

88:                                               ; preds = %78, %73
  %89 = call i32 @gc_free(%struct.gc_arena* %11)
  ret void
}

declare dso_local i32 @gc_new(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @setenv_trusted(%struct.env_set*, %struct.link_socket_info*) #1

declare dso_local i32 @alloc_buf_gc(i32, %struct.gc_arena*) #1

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, i8*) #1

declare dso_local i8* @print_link_socket_actual(%struct.link_socket_actual*, %struct.gc_arena*) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32 @BSTR(%struct.buffer*) #1

declare dso_local i32 @setenv_str(%struct.env_set*, i8*, i8*) #1

declare dso_local i64 @plugin_defined(i32, i32) #1

declare dso_local i32 @argv_new(...) #1

declare dso_local i32 @ipchange_fmt(i32, %struct.argv*, %struct.link_socket_info*, %struct.gc_arena*) #1

declare dso_local i64 @plugin_call(i32, i32, %struct.argv*, i32*, %struct.env_set*) #1

declare dso_local i32 @argv_reset(%struct.argv*) #1

declare dso_local i32 @openvpn_run_script(%struct.argv*, %struct.env_set*, i32, i8*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
