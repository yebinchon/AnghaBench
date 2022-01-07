; ModuleID = '/home/carl/AnghaBench/openvpn/sample/sample-plugins/keying-material-exporter-demo/extr_keyingmaterialexporter.c_tls_verify.c'
source_filename = "/home/carl/AnghaBench/openvpn/sample/sample-plugins/keying-material-exporter-demo/extr_keyingmaterialexporter.c_tls_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openvpn_plugin_args_func_in = type { i32, i64, i64 }
%struct.plugin = type { i64 }
%struct.session = type { i32 }

@SERVER = common dso_local global i64 0, align 8
@OPENVPN_PLUGIN_FUNC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"this example plugin requires client certificate\00", align 1
@OPENVPN_PLUGIN_FUNC_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.openvpn_plugin_args_func_in*)* @tls_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_verify(%struct.openvpn_plugin_args_func_in* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.openvpn_plugin_args_func_in*, align 8
  %4 = alloca %struct.plugin*, align 8
  %5 = alloca %struct.session*, align 8
  store %struct.openvpn_plugin_args_func_in* %0, %struct.openvpn_plugin_args_func_in** %3, align 8
  %6 = load %struct.openvpn_plugin_args_func_in*, %struct.openvpn_plugin_args_func_in** %3, align 8
  %7 = getelementptr inbounds %struct.openvpn_plugin_args_func_in, %struct.openvpn_plugin_args_func_in* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.plugin*
  store %struct.plugin* %9, %struct.plugin** %4, align 8
  %10 = load %struct.openvpn_plugin_args_func_in*, %struct.openvpn_plugin_args_func_in** %3, align 8
  %11 = getelementptr inbounds %struct.openvpn_plugin_args_func_in, %struct.openvpn_plugin_args_func_in* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.session*
  store %struct.session* %13, %struct.session** %5, align 8
  %14 = load %struct.plugin*, %struct.plugin** %4, align 8
  %15 = getelementptr inbounds %struct.plugin, %struct.plugin* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SERVER, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @OPENVPN_PLUGIN_FUNC_SUCCESS, align 4
  store i32 %20, i32* %2, align 4
  br label %36

21:                                               ; preds = %1
  %22 = load %struct.openvpn_plugin_args_func_in*, %struct.openvpn_plugin_args_func_in** %3, align 8
  %23 = getelementptr inbounds %struct.openvpn_plugin_args_func_in, %struct.openvpn_plugin_args_func_in* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = call i32 @ovpn_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @OPENVPN_PLUGIN_FUNC_ERROR, align 4
  store i32 %28, i32* %2, align 4
  br label %36

29:                                               ; preds = %21
  %30 = load %struct.session*, %struct.session** %5, align 8
  %31 = load %struct.openvpn_plugin_args_func_in*, %struct.openvpn_plugin_args_func_in** %3, align 8
  %32 = getelementptr inbounds %struct.openvpn_plugin_args_func_in, %struct.openvpn_plugin_args_func_in* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @session_user_set(%struct.session* %30, i32 %33)
  %35 = load i32, i32* @OPENVPN_PLUGIN_FUNC_SUCCESS, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %29, %26, %19
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @ovpn_err(i8*) #1

declare dso_local i32 @session_user_set(%struct.session*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
