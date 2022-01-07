; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_tls_crypt.c_tls_crypt_v2_verify_metadata.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_tls_crypt.c_tls_crypt_v2_verify_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_wrap_ctx = type { %struct.buffer }
%struct.buffer = type { i32 }
%struct.tls_options = type { i32, i32 }
%struct.gc_arena = type { i32 }
%struct.env_set = type { i32 }
%struct.argv = type { i32 }

@M_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ERROR: no metadata type\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"tls_crypt_v2_metadata_\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"ERROR: could not write metadata to file\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"script_type\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"tls-crypt-v2-verify\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"metadata_type\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"metadata_file\00", align 1
@D_TLS_DEBUG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"Executing tls-crypt-v2-verify\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"--tls-crypt-v2-verify\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"WARNING: failed to remove temp file '%s\00", align 1
@D_HANDSHAKE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"TLS CRYPT V2 VERIFY SCRIPT OK\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"TLS CRYPT V2 VERIFY SCRIPT ERROR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tls_wrap_ctx*, %struct.tls_options*)* @tls_crypt_v2_verify_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_crypt_v2_verify_metadata(%struct.tls_wrap_ctx* %0, %struct.tls_options* %1) #0 {
  %3 = alloca %struct.tls_wrap_ctx*, align 8
  %4 = alloca %struct.tls_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gc_arena, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.buffer, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i8], align 1
  %11 = alloca %struct.env_set*, align 8
  %12 = alloca %struct.argv, align 4
  store %struct.tls_wrap_ctx* %0, %struct.tls_wrap_ctx** %3, align 8
  store %struct.tls_options* %1, %struct.tls_options** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = call i32 (...) @gc_new()
  %14 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %6, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  store i8* null, i8** %7, align 8
  %15 = load %struct.tls_wrap_ctx*, %struct.tls_wrap_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.tls_wrap_ctx, %struct.tls_wrap_ctx* %15, i32 0, i32 0
  %17 = bitcast %struct.buffer* %8 to i8*
  %18 = bitcast %struct.buffer* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = call i32 @buf_read_u8(%struct.buffer* %8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @M_WARN, align 4
  %24 = call i32 (i32, i8*, ...) @msg(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %83

25:                                               ; preds = %2
  %26 = load %struct.tls_options*, %struct.tls_options** %4, align 8
  %27 = getelementptr inbounds %struct.tls_options, %struct.tls_options* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @platform_create_temp_file(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.gc_arena* %6)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @buffer_write_file(i8* %33, %struct.buffer* %8)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32, %25
  %37 = load i32, i32* @M_WARN, align 4
  %38 = call i32 (i32, i8*, ...) @msg(i32 %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %83

39:                                               ; preds = %32
  %40 = bitcast [4 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %40, i8 0, i64 4, i1 false)
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @openvpn_snprintf(i8* %41, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = call %struct.env_set* @env_set_create(i32* null)
  store %struct.env_set* %44, %struct.env_set** %11, align 8
  %45 = load %struct.env_set*, %struct.env_set** %11, align 8
  %46 = call i32 @setenv_str(%struct.env_set* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %47 = load %struct.env_set*, %struct.env_set** %11, align 8
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %49 = call i32 @setenv_str(%struct.env_set* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %48)
  %50 = load %struct.env_set*, %struct.env_set** %11, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @setenv_str(%struct.env_set* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %51)
  %53 = call i32 (...) @argv_new()
  %54 = getelementptr inbounds %struct.argv, %struct.argv* %12, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.tls_options*, %struct.tls_options** %4, align 8
  %56 = getelementptr inbounds %struct.tls_options, %struct.tls_options* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @argv_parse_cmd(%struct.argv* %12, i32 %57)
  %59 = load i32, i32* @D_TLS_DEBUG, align 4
  %60 = call i32 @argv_msg_prefix(i32 %59, %struct.argv* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %61 = load %struct.env_set*, %struct.env_set** %11, align 8
  %62 = call i32 @openvpn_run_script(%struct.argv* %12, %struct.env_set* %61, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  store i32 %62, i32* %5, align 4
  %63 = call i32 @argv_reset(%struct.argv* %12)
  %64 = load %struct.env_set*, %struct.env_set** %11, align 8
  %65 = call i32 @env_set_destroy(%struct.env_set* %64)
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @platform_unlink(i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %39
  %70 = load i32, i32* @M_WARN, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 (i32, i8*, ...) @msg(i32 %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %69, %39
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* @D_HANDSHAKE, align 4
  %78 = call i32 (i32, i8*, ...) @msg(i32 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  br label %82

79:                                               ; preds = %73
  %80 = load i32, i32* @D_HANDSHAKE, align 4
  %81 = call i32 (i32, i8*, ...) @msg(i32 %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %76
  br label %83

83:                                               ; preds = %82, %36, %22
  %84 = call i32 @gc_free(%struct.gc_arena* %6)
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @gc_new(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @buf_read_u8(%struct.buffer*) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i8* @platform_create_temp_file(i32, i8*, %struct.gc_arena*) #1

declare dso_local i32 @buffer_write_file(i8*, %struct.buffer*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @openvpn_snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.env_set* @env_set_create(i32*) #1

declare dso_local i32 @setenv_str(%struct.env_set*, i8*, i8*) #1

declare dso_local i32 @argv_new(...) #1

declare dso_local i32 @argv_parse_cmd(%struct.argv*, i32) #1

declare dso_local i32 @argv_msg_prefix(i32, %struct.argv*, i8*) #1

declare dso_local i32 @openvpn_run_script(%struct.argv*, %struct.env_set*, i32, i8*) #1

declare dso_local i32 @argv_reset(%struct.argv*) #1

declare dso_local i32 @env_set_destroy(%struct.env_set*) #1

declare dso_local i32 @platform_unlink(i8*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
