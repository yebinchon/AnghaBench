; ModuleID = '/home/carl/AnghaBench/openvpn/sample/sample-plugins/keying-material-exporter-demo/extr_keyingmaterialexporter.c_server_store.c'
source_filename = "/home/carl/AnghaBench/openvpn/sample/sample-plugins/keying-material-exporter-demo/extr_keyingmaterialexporter.c_server_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openvpn_plugin_args_func_in = type { i64, i64 }
%struct.plugin = type { i32 }
%struct.session = type { i8*, i32 }

@MAXPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"/tmp/openvpn_sso_%s\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"app session file: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.openvpn_plugin_args_func_in*)* @server_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_store(%struct.openvpn_plugin_args_func_in* %0) #0 {
  %2 = alloca %struct.openvpn_plugin_args_func_in*, align 8
  %3 = alloca %struct.plugin*, align 8
  %4 = alloca %struct.session*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.openvpn_plugin_args_func_in* %0, %struct.openvpn_plugin_args_func_in** %2, align 8
  %7 = load %struct.openvpn_plugin_args_func_in*, %struct.openvpn_plugin_args_func_in** %2, align 8
  %8 = getelementptr inbounds %struct.openvpn_plugin_args_func_in, %struct.openvpn_plugin_args_func_in* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.plugin*
  store %struct.plugin* %10, %struct.plugin** %3, align 8
  %11 = load %struct.openvpn_plugin_args_func_in*, %struct.openvpn_plugin_args_func_in** %2, align 8
  %12 = getelementptr inbounds %struct.openvpn_plugin_args_func_in, %struct.openvpn_plugin_args_func_in* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.session*
  store %struct.session* %14, %struct.session** %4, align 8
  %15 = load i32, i32* @MAXPATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = sub i64 %16, 1
  %20 = trunc i64 %19 to i32
  %21 = load %struct.session*, %struct.session** %4, align 8
  %22 = getelementptr inbounds %struct.session, %struct.session* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @snprintf(i8* %18, i32 %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = call i32 @ovpn_note(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %26 = load %struct.session*, %struct.session** %4, align 8
  %27 = getelementptr inbounds %struct.session, %struct.session* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @file_store(i8* %18, i32 %28)
  %30 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %30)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @ovpn_note(i8*, i8*) #2

declare dso_local i32 @file_store(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
