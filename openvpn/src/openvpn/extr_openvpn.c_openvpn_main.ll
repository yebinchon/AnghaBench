; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_openvpn.c_openvpn_main.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_openvpn.c_openvpn_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32, i64, i32, i32, %struct.TYPE_14__, i32, %struct.context*, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@siginfo_static = common dso_local global %struct.context zeroinitializer, align 8
@M_USAGE = common dso_local global i32 0, align 4
@OPT_P_DEFAULT = common dso_local global i32 0, align 4
@IVM_LEVEL_1 = common dso_local global i32 0, align 4
@M_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@title_string = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i64 0, align 8
@SIGHUP = common dso_local global i64 0, align 8
@OPENVPN_EXIT_STATUS_GOOD = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@MF_QUERY_PASSWORDS = common dso_local global i32 0, align 4
@OPENVPN_PLUGIN_INIT_PRE_CONFIG_PARSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @openvpn_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @openvpn_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.context, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = call i32 @CLEAR(%struct.context* byval(%struct.context) align 8 %5)
  %7 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = call i64 (...) @init_static()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %132

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %124, %10
  %12 = call i32 (...) @pre_init_signal_catch()
  %13 = call i32 @context_clear_all_except_first_time(%struct.context* %5)
  %14 = call i32 @CLEAR(%struct.context* byval(%struct.context) align 8 @siginfo_static)
  %15 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 6
  store %struct.context* @siginfo_static, %struct.context** %15, align 8
  %16 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 3
  %17 = call i32 @gc_init(i32* %16)
  %18 = call i32 @env_set_create(i32* null)
  %19 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 5
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 4
  %21 = call i32 @init_options(%struct.TYPE_14__* %20, i32 1)
  %22 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 4
  %23 = load i32, i32* %3, align 4
  %24 = load i8**, i8*** %4, align 8
  %25 = load i32, i32* @M_USAGE, align 4
  %26 = load i32, i32* @OPT_P_DEFAULT, align 4
  %27 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @parse_argv(%struct.TYPE_14__* %22, i32 %23, i8** %24, i32 %25, i32 %26, i32* null, i32 %28)
  %30 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 2
  %31 = call i32 @net_ctx_init(%struct.context* %5, i32* %30)
  %32 = load i32, i32* @IVM_LEVEL_1, align 4
  %33 = call i32 @init_verb_mute(%struct.context* %5, i32 %32)
  %34 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 4
  %35 = call i32 @init_options_dev(%struct.TYPE_14__* %34)
  %36 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 4
  %37 = call i64 @print_openssl_info(%struct.TYPE_14__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %11
  br label %131

40:                                               ; preds = %11
  %41 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 4
  %42 = call i64 @do_genkey(%struct.TYPE_14__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %131

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 4
  %47 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 2
  %48 = call i64 @do_persist_tuntap(%struct.TYPE_14__* %46, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %131

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 4
  %53 = call i32 @options_postprocess(%struct.TYPE_14__* %52)
  %54 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 4
  %55 = call i32 @show_settings(%struct.TYPE_14__* %54)
  %56 = load i32, i32* @M_INFO, align 4
  %57 = load i32, i32* @title_string, align 4
  %58 = call i32 @msg(i32 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @M_INFO, align 4
  %60 = call i32 @show_library_versions(i32 %59)
  %61 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 4
  %62 = call i32 @pre_setup(%struct.TYPE_14__* %61)
  %63 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 4
  %64 = call i64 @do_test_crypto(%struct.TYPE_14__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %51
  br label %131

67:                                               ; preds = %51
  %68 = call i32 @init_query_passwords(%struct.context* %5)
  %69 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 4
  %74 = call i32 @possibly_become_daemon(%struct.TYPE_14__* %73)
  %75 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 7
  store i32 %74, i32* %75, align 8
  %76 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @write_pid(i32 %78)
  br label %80

80:                                               ; preds = %72, %67
  %81 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 4
  %84 = call i32 @setenv_settings(i32 %82, %struct.TYPE_14__* %83)
  %85 = call i32 @context_init_1(%struct.context* %5)
  br label %86

86:                                               ; preds = %107, %80
  %87 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  switch i32 %89, label %92 [
    i32 129, label %90
  ]

90:                                               ; preds = %86
  %91 = call i32 @tunnel_point_to_point(%struct.context* %5)
  br label %94

92:                                               ; preds = %86
  %93 = call i32 @ASSERT(i32 0)
  br label %94

94:                                               ; preds = %92, %90
  %95 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 0
  store i32 0, i32* %95, align 8
  %96 = call i64 @IS_SIG(%struct.context* %5)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 6
  %100 = load %struct.context*, %struct.context** %99, align 8
  %101 = load i32, i32* @M_INFO, align 4
  %102 = call i32 @print_signal(%struct.context* %100, i32* null, i32 %101)
  br label %103

103:                                              ; preds = %98, %94
  %104 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 6
  %105 = load %struct.context*, %struct.context** %104, align 8
  %106 = call i32 @signal_restart_status(%struct.context* %105)
  br label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 6
  %109 = load %struct.context*, %struct.context** %108, align 8
  %110 = getelementptr inbounds %struct.context, %struct.context* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @SIGUSR1, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %86, label %114

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @env_set_destroy(i32 %116)
  %118 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 4
  %119 = call i32 @uninit_options(%struct.TYPE_14__* %118)
  %120 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 3
  %121 = call i32 @gc_reset(i32* %120)
  %122 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 2
  %123 = call i32 @net_ctx_free(i32* %122)
  br label %124

124:                                              ; preds = %114
  %125 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 6
  %126 = load %struct.context*, %struct.context** %125, align 8
  %127 = getelementptr inbounds %struct.context, %struct.context* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @SIGHUP, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %11, label %131

131:                                              ; preds = %124, %66, %50, %44, %39
  br label %132

132:                                              ; preds = %131, %2
  %133 = call i32 @context_gc_free(%struct.context* %5)
  %134 = call i32 (...) @uninit_static()
  %135 = load i32, i32* @OPENVPN_EXIT_STATUS_GOOD, align 4
  %136 = call i32 @openvpn_exit(i32 %135)
  ret i32 0
}

declare dso_local i32 @CLEAR(%struct.context* byval(%struct.context) align 8) #1

declare dso_local i64 @init_static(...) #1

declare dso_local i32 @pre_init_signal_catch(...) #1

declare dso_local i32 @context_clear_all_except_first_time(%struct.context*) #1

declare dso_local i32 @gc_init(i32*) #1

declare dso_local i32 @env_set_create(i32*) #1

declare dso_local i32 @init_options(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @parse_argv(%struct.TYPE_14__*, i32, i8**, i32, i32, i32*, i32) #1

declare dso_local i32 @net_ctx_init(%struct.context*, i32*) #1

declare dso_local i32 @init_verb_mute(%struct.context*, i32) #1

declare dso_local i32 @init_options_dev(%struct.TYPE_14__*) #1

declare dso_local i64 @print_openssl_info(%struct.TYPE_14__*) #1

declare dso_local i64 @do_genkey(%struct.TYPE_14__*) #1

declare dso_local i64 @do_persist_tuntap(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @options_postprocess(%struct.TYPE_14__*) #1

declare dso_local i32 @show_settings(%struct.TYPE_14__*) #1

declare dso_local i32 @msg(i32, i8*, i32) #1

declare dso_local i32 @show_library_versions(i32) #1

declare dso_local i32 @pre_setup(%struct.TYPE_14__*) #1

declare dso_local i64 @do_test_crypto(%struct.TYPE_14__*) #1

declare dso_local i32 @init_query_passwords(%struct.context*) #1

declare dso_local i32 @possibly_become_daemon(%struct.TYPE_14__*) #1

declare dso_local i32 @write_pid(i32) #1

declare dso_local i32 @setenv_settings(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @context_init_1(%struct.context*) #1

declare dso_local i32 @tunnel_point_to_point(%struct.context*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @IS_SIG(%struct.context*) #1

declare dso_local i32 @print_signal(%struct.context*, i32*, i32) #1

declare dso_local i32 @signal_restart_status(%struct.context*) #1

declare dso_local i32 @env_set_destroy(i32) #1

declare dso_local i32 @uninit_options(%struct.TYPE_14__*) #1

declare dso_local i32 @gc_reset(i32*) #1

declare dso_local i32 @net_ctx_free(i32*) #1

declare dso_local i32 @context_gc_free(%struct.context*) #1

declare dso_local i32 @uninit_static(...) #1

declare dso_local i32 @openvpn_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
