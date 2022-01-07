; ModuleID = '/home/carl/AnghaBench/openvpn/sample/sample-plugins/keying-material-exporter-demo/extr_keyingmaterialexporter.c_tls_final.c'
source_filename = "/home/carl/AnghaBench/openvpn/sample/sample-plugins/keying-material-exporter-demo/extr_keyingmaterialexporter.c_tls_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openvpn_plugin_args_func_in = type { i32, i64, i64 }
%struct.openvpn_plugin_args_func_return = type { i32 }
%struct.plugin = type { i32 }
%struct.session = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"exported_keying_material\00", align 1
@OPENVPN_PLUGIN_FUNC_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"app session key:  %s\00", align 1
@OPENVPN_PLUGIN_FUNC_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"app session user: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.openvpn_plugin_args_func_in*, %struct.openvpn_plugin_args_func_return*)* @tls_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_final(%struct.openvpn_plugin_args_func_in* %0, %struct.openvpn_plugin_args_func_return* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.openvpn_plugin_args_func_in*, align 8
  %5 = alloca %struct.openvpn_plugin_args_func_return*, align 8
  %6 = alloca %struct.plugin*, align 8
  %7 = alloca %struct.session*, align 8
  %8 = alloca i8*, align 8
  store %struct.openvpn_plugin_args_func_in* %0, %struct.openvpn_plugin_args_func_in** %4, align 8
  store %struct.openvpn_plugin_args_func_return* %1, %struct.openvpn_plugin_args_func_return** %5, align 8
  %9 = load %struct.openvpn_plugin_args_func_in*, %struct.openvpn_plugin_args_func_in** %4, align 8
  %10 = getelementptr inbounds %struct.openvpn_plugin_args_func_in, %struct.openvpn_plugin_args_func_in* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.plugin*
  store %struct.plugin* %12, %struct.plugin** %6, align 8
  %13 = load %struct.openvpn_plugin_args_func_in*, %struct.openvpn_plugin_args_func_in** %4, align 8
  %14 = getelementptr inbounds %struct.openvpn_plugin_args_func_in, %struct.openvpn_plugin_args_func_in* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.session*
  store %struct.session* %16, %struct.session** %7, align 8
  %17 = load %struct.openvpn_plugin_args_func_in*, %struct.openvpn_plugin_args_func_in** %4, align 8
  %18 = getelementptr inbounds %struct.openvpn_plugin_args_func_in, %struct.openvpn_plugin_args_func_in* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @get_env(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i8* %20, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @OPENVPN_PLUGIN_FUNC_ERROR, align 4
  store i32 %23, i32* %3, align 4
  br label %50

24:                                               ; preds = %2
  %25 = load %struct.session*, %struct.session** %7, align 8
  %26 = getelementptr inbounds %struct.session, %struct.session* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @snprintf(i32 %27, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = load %struct.session*, %struct.session** %7, align 8
  %31 = getelementptr inbounds %struct.session, %struct.session* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ovpn_note(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load %struct.plugin*, %struct.plugin** %6, align 8
  %35 = getelementptr inbounds %struct.plugin, %struct.plugin* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %44 [
    i32 128, label %37
    i32 129, label %40
  ]

37:                                               ; preds = %24
  %38 = load %struct.openvpn_plugin_args_func_in*, %struct.openvpn_plugin_args_func_in** %4, align 8
  %39 = call i32 @server_store(%struct.openvpn_plugin_args_func_in* %38)
  br label %44

40:                                               ; preds = %24
  %41 = load %struct.openvpn_plugin_args_func_in*, %struct.openvpn_plugin_args_func_in** %4, align 8
  %42 = call i32 @client_store(%struct.openvpn_plugin_args_func_in* %41)
  %43 = load i32, i32* @OPENVPN_PLUGIN_FUNC_SUCCESS, align 4
  store i32 %43, i32* %3, align 4
  br label %50

44:                                               ; preds = %24, %37
  %45 = load %struct.session*, %struct.session** %7, align 8
  %46 = getelementptr inbounds %struct.session, %struct.session* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ovpn_note(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @OPENVPN_PLUGIN_FUNC_SUCCESS, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %44, %40, %22
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i8* @get_env(i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @ovpn_note(i8*, i32) #1

declare dso_local i32 @server_store(%struct.openvpn_plugin_args_func_in*) #1

declare dso_local i32 @client_store(%struct.openvpn_plugin_args_func_in*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
