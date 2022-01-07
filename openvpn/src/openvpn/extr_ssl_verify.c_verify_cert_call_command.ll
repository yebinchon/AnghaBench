; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_verify_cert_call_command.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_verify_cert_call_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_set = type { i32 }
%struct.gc_arena = type { i32 }
%struct.argv = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"script_type\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"tls-verify\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"peer_cert\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%d %s\00", align 1
@D_TLS_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"TLS: executing verify command\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"--tls-verify script\00", align 1
@D_HANDSHAKE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"VERIFY SCRIPT OK: depth=%d, %s\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"VERIFY SCRIPT ERROR: depth=%d, %s\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.env_set*, i32, i32*, i8*, i8*)* @verify_cert_call_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_cert_call_command(i8* %0, %struct.env_set* %1, i32 %2, i32* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.env_set*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.gc_arena, align 4
  %17 = alloca %struct.argv, align 4
  store i8* %0, i8** %8, align 8
  store %struct.env_set* %1, %struct.env_set** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %18 = call i32 (...) @gc_new()
  %19 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %16, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = call i32 (...) @argv_new()
  %21 = getelementptr inbounds %struct.argv, %struct.argv* %17, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.env_set*, %struct.env_set** %9, align 8
  %23 = call i32 @setenv_str(%struct.env_set* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i8*, i8** %13, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %6
  %27 = load i32*, i32** %11, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = call i8* @verify_cert_export_cert(i32* %27, i8* %28, %struct.gc_arena* %16)
  store i8* %29, i8** %14, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store i32 0, i32* %15, align 4
  br label %57

33:                                               ; preds = %26
  %34 = load %struct.env_set*, %struct.env_set** %9, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = call i32 @setenv_str(%struct.env_set* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %33, %6
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @argv_parse_cmd(%struct.argv* %17, i8* %38)
  %40 = load i32, i32* %10, align 4
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @argv_printf_cat(%struct.argv* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %40, i8* %41)
  %43 = load i32, i32* @D_TLS_DEBUG, align 4
  %44 = call i32 @argv_msg_prefix(i32 %43, %struct.argv* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %45 = load %struct.env_set*, %struct.env_set** %9, align 8
  %46 = call i32 @openvpn_run_script(%struct.argv* %17, %struct.env_set* %45, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i32 %46, i32* %15, align 4
  %47 = load i8*, i8** %13, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %37
  %50 = load i8*, i8** %14, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i8*, i8** %14, align 8
  %54 = call i32 @platform_unlink(i8* %53)
  br label %55

55:                                               ; preds = %52, %49
  br label %56

56:                                               ; preds = %55, %37
  br label %57

57:                                               ; preds = %56, %32
  %58 = call i32 @gc_free(%struct.gc_arena* %16)
  %59 = call i32 @argv_reset(%struct.argv* %17)
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32, i32* @D_HANDSHAKE, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 @msg(i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %64, i8* %65)
  %67 = load i32, i32* @SUCCESS, align 4
  store i32 %67, i32* %7, align 4
  br label %74

68:                                               ; preds = %57
  %69 = load i32, i32* @D_HANDSHAKE, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i8*, i8** %12, align 8
  %72 = call i32 @msg(i32 %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %70, i8* %71)
  %73 = load i32, i32* @FAILURE, align 4
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %68, %62
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @argv_new(...) #1

declare dso_local i32 @setenv_str(%struct.env_set*, i8*, i8*) #1

declare dso_local i8* @verify_cert_export_cert(i32*, i8*, %struct.gc_arena*) #1

declare dso_local i32 @argv_parse_cmd(%struct.argv*, i8*) #1

declare dso_local i32 @argv_printf_cat(%struct.argv*, i8*, i32, i8*) #1

declare dso_local i32 @argv_msg_prefix(i32, %struct.argv*, i8*) #1

declare dso_local i32 @openvpn_run_script(%struct.argv*, %struct.env_set*, i32, i8*) #1

declare dso_local i32 @platform_unlink(i8*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

declare dso_local i32 @argv_reset(%struct.argv*) #1

declare dso_local i32 @msg(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
