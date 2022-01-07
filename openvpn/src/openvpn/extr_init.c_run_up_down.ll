; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_run_up_down.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_run_up_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plugin_list = type { i32 }
%struct.env_set = type { i32 }
%struct.gc_arena = type { i32 }
%struct.argv = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"script_context\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"tun_mtu\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"link_mtu\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"dev_type\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"%s %d %d %s %s %s\00", align 1
@OPENVPN_PLUGIN_FUNC_SUCCESS = common dso_local global i64 0, align 8
@M_FATAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"ERROR: up/down plugin call failed\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"script_type\00", align 1
@M_INFO = common dso_local global i32 0, align 4
@S_FATAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"--up/--down\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.plugin_list*, i32, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, %struct.env_set*)* @run_up_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_up_down(i8* %0, %struct.plugin_list* %1, i32 %2, i8* %3, i8* %4, i32 %5, i32 %6, i8* %7, i8* %8, i8* %9, i8* %10, i8* %11, %struct.env_set* %12) #0 {
  %14 = alloca i8*, align 8
  %15 = alloca %struct.plugin_list*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.env_set*, align 8
  %27 = alloca %struct.gc_arena, align 4
  %28 = alloca %struct.argv, align 4
  %29 = alloca %struct.argv, align 4
  store i8* %0, i8** %14, align 8
  store %struct.plugin_list* %1, %struct.plugin_list** %15, align 8
  store i32 %2, i32* %16, align 4
  store i8* %3, i8** %17, align 8
  store i8* %4, i8** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i8* %7, i8** %21, align 8
  store i8* %8, i8** %22, align 8
  store i8* %9, i8** %23, align 8
  store i8* %10, i8** %24, align 8
  store i8* %11, i8** %25, align 8
  store %struct.env_set* %12, %struct.env_set** %26, align 8
  %30 = call i32 (...) @gc_new()
  %31 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %27, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load i8*, i8** %24, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %13
  %35 = load %struct.env_set*, %struct.env_set** %26, align 8
  %36 = load i8*, i8** %24, align 8
  %37 = call i32 @setenv_str(%struct.env_set* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %34, %13
  %39 = load %struct.env_set*, %struct.env_set** %26, align 8
  %40 = load i8*, i8** %23, align 8
  %41 = call i32 @setenv_str(%struct.env_set* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load %struct.env_set*, %struct.env_set** %26, align 8
  %43 = load i32, i32* %19, align 4
  %44 = call i32 @setenv_int(%struct.env_set* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load %struct.env_set*, %struct.env_set** %26, align 8
  %46 = load i32, i32* %20, align 4
  %47 = call i32 @setenv_int(%struct.env_set* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load %struct.env_set*, %struct.env_set** %26, align 8
  %49 = load i8*, i8** %17, align 8
  %50 = call i32 @setenv_str(%struct.env_set* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %18, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %38
  %54 = load %struct.env_set*, %struct.env_set** %26, align 8
  %55 = load i8*, i8** %18, align 8
  %56 = call i32 @setenv_str(%struct.env_set* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %53, %38
  %58 = load i8*, i8** %21, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8** %21, align 8
  br label %61

61:                                               ; preds = %60, %57
  %62 = load i8*, i8** %22, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8** %22, align 8
  br label %65

65:                                               ; preds = %64, %61
  %66 = load i8*, i8** %23, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8** %23, align 8
  br label %69

69:                                               ; preds = %68, %65
  %70 = load %struct.plugin_list*, %struct.plugin_list** %15, align 8
  %71 = load i32, i32* %16, align 4
  %72 = call i64 @plugin_defined(%struct.plugin_list* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %69
  %75 = call i32 (...) @argv_new()
  %76 = getelementptr inbounds %struct.argv, %struct.argv* %28, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = load i8*, i8** %17, align 8
  %78 = call i32 @ASSERT(i8* %77)
  %79 = load i8*, i8** %17, align 8
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %20, align 4
  %82 = load i8*, i8** %21, align 8
  %83 = load i8*, i8** %22, align 8
  %84 = load i8*, i8** %23, align 8
  %85 = call i32 @argv_printf(%struct.argv* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %79, i32 %80, i32 %81, i8* %82, i8* %83, i8* %84)
  %86 = load %struct.plugin_list*, %struct.plugin_list** %15, align 8
  %87 = load i32, i32* %16, align 4
  %88 = load %struct.env_set*, %struct.env_set** %26, align 8
  %89 = call i64 @plugin_call(%struct.plugin_list* %86, i32 %87, %struct.argv* %28, i32* null, %struct.env_set* %88)
  %90 = load i64, i64* @OPENVPN_PLUGIN_FUNC_SUCCESS, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %74
  %93 = load i32, i32* @M_FATAL, align 4
  %94 = call i32 @msg(i32 %93, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %74
  %96 = call i32 @argv_reset(%struct.argv* %28)
  br label %97

97:                                               ; preds = %95, %69
  %98 = load i8*, i8** %14, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %123

100:                                              ; preds = %97
  %101 = call i32 (...) @argv_new()
  %102 = getelementptr inbounds %struct.argv, %struct.argv* %29, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  %103 = load i8*, i8** %17, align 8
  %104 = call i32 @ASSERT(i8* %103)
  %105 = load %struct.env_set*, %struct.env_set** %26, align 8
  %106 = load i8*, i8** %25, align 8
  %107 = call i32 @setenv_str(%struct.env_set* %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %106)
  %108 = load i8*, i8** %14, align 8
  %109 = call i32 @argv_parse_cmd(%struct.argv* %29, i8* %108)
  %110 = load i8*, i8** %17, align 8
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* %20, align 4
  %113 = load i8*, i8** %21, align 8
  %114 = load i8*, i8** %22, align 8
  %115 = load i8*, i8** %23, align 8
  %116 = call i32 @argv_printf_cat(%struct.argv* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %110, i32 %111, i32 %112, i8* %113, i8* %114, i8* %115)
  %117 = load i32, i32* @M_INFO, align 4
  %118 = call i32 @argv_msg(i32 %117, %struct.argv* %29)
  %119 = load %struct.env_set*, %struct.env_set** %26, align 8
  %120 = load i32, i32* @S_FATAL, align 4
  %121 = call i32 @openvpn_run_script(%struct.argv* %29, %struct.env_set* %119, i32 %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %122 = call i32 @argv_reset(%struct.argv* %29)
  br label %123

123:                                              ; preds = %100, %97
  %124 = call i32 @gc_free(%struct.gc_arena* %27)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @setenv_str(%struct.env_set*, i8*, i8*) #1

declare dso_local i32 @setenv_int(%struct.env_set*, i8*, i32) #1

declare dso_local i64 @plugin_defined(%struct.plugin_list*, i32) #1

declare dso_local i32 @argv_new(...) #1

declare dso_local i32 @ASSERT(i8*) #1

declare dso_local i32 @argv_printf(%struct.argv*, i8*, i8*, i32, i32, i8*, i8*, i8*) #1

declare dso_local i64 @plugin_call(%struct.plugin_list*, i32, %struct.argv*, i32*, %struct.env_set*) #1

declare dso_local i32 @msg(i32, i8*) #1

declare dso_local i32 @argv_reset(%struct.argv*) #1

declare dso_local i32 @argv_parse_cmd(%struct.argv*, i8*) #1

declare dso_local i32 @argv_printf_cat(%struct.argv*, i8*, i8*, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @argv_msg(i32, %struct.argv*) #1

declare dso_local i32 @openvpn_run_script(%struct.argv*, %struct.env_set*, i32, i8*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
