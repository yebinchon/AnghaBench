; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_verify_cert_call_plugin.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_verify_cert_call_plugin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plugin_list = type { i32 }
%struct.env_set = type { i32 }
%struct.argv = type { i32 }

@OPENVPN_PLUGIN_TLS_VERIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%d %s\00", align 1
@OPENVPN_PLUGIN_FUNC_SUCCESS = common dso_local global i32 0, align 4
@D_HANDSHAKE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"VERIFY PLUGIN OK: depth=%d, %s\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"VERIFY PLUGIN ERROR: depth=%d, %s\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.plugin_list*, %struct.env_set*, i32, i32*, i8*)* @verify_cert_call_plugin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_cert_call_plugin(%struct.plugin_list* %0, %struct.env_set* %1, i32 %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.plugin_list*, align 8
  %8 = alloca %struct.env_set*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.argv, align 4
  store %struct.plugin_list* %0, %struct.plugin_list** %7, align 8
  store %struct.env_set* %1, %struct.env_set** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.plugin_list*, %struct.plugin_list** %7, align 8
  %15 = load i32, i32* @OPENVPN_PLUGIN_TLS_VERIFY, align 4
  %16 = call i64 @plugin_defined(%struct.plugin_list* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %5
  %19 = call i32 (...) @argv_new()
  %20 = getelementptr inbounds %struct.argv, %struct.argv* %13, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i8*, i8** %11, align 8
  %23 = call i32 @argv_printf(%struct.argv* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %22)
  %24 = load %struct.plugin_list*, %struct.plugin_list** %7, align 8
  %25 = load i32, i32* @OPENVPN_PLUGIN_TLS_VERIFY, align 4
  %26 = load %struct.env_set*, %struct.env_set** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @plugin_call_ssl(%struct.plugin_list* %24, i32 %25, %struct.argv* %13, i32* null, %struct.env_set* %26, i32 %27, i32* %28)
  store i32 %29, i32* %12, align 4
  %30 = call i32 @argv_reset(%struct.argv* %13)
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @OPENVPN_PLUGIN_FUNC_SUCCESS, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %18
  %35 = load i32, i32* @D_HANDSHAKE, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @msg(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %36, i8* %37)
  br label %45

39:                                               ; preds = %18
  %40 = load i32, i32* @D_HANDSHAKE, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @msg(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %41, i8* %42)
  %44 = load i32, i32* @FAILURE, align 4
  store i32 %44, i32* %6, align 4
  br label %48

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %5
  %47 = load i32, i32* @SUCCESS, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %46, %39
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i64 @plugin_defined(%struct.plugin_list*, i32) #1

declare dso_local i32 @argv_new(...) #1

declare dso_local i32 @argv_printf(%struct.argv*, i8*, i32, i8*) #1

declare dso_local i32 @plugin_call_ssl(%struct.plugin_list*, i32, %struct.argv*, i32*, %struct.env_set*, i32, i32*) #1

declare dso_local i32 @argv_reset(%struct.argv*) #1

declare dso_local i32 @msg(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
