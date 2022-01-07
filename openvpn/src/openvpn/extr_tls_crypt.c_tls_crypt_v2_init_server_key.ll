; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_tls_crypt.c_tls_crypt_v2_init_server_key.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_tls_crypt.c_tls_crypt_v2_init_server_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_ctx = type { i32 }
%struct.key = type { i32 }
%struct.buffer = type { i32 }
%struct.key_type = type { i32, i32 }

@tls_crypt_v2_srv_pem_name = common dso_local global i32 0, align 4
@M_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"ERROR: invalid tls-crypt-v2 server key format\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: --tls-crypt-v2 not supported\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"tls-crypt-v2 server key\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls_crypt_v2_init_server_key(%struct.key_ctx* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.key_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.key, align 4
  %10 = alloca %struct.buffer, align 4
  %11 = alloca %struct.key_type, align 4
  store %struct.key_ctx* %0, %struct.key_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = bitcast %struct.key* %9 to i8*
  %13 = call i32 @buf_set_write(%struct.buffer* %10, i8* %12, i32 4)
  %14 = load i32, i32* @tls_crypt_v2_srv_pem_name, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @read_pem_key_file(%struct.buffer* %10, i32 %14, i8* %15, i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @M_FATAL, align 4
  %21 = call i32 @msg(i32 %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %4
  %23 = call i64 (...) @tls_crypt_kt()
  %24 = bitcast %struct.key_type* %11 to i64*
  store i64 %23, i64* %24, align 4
  %25 = getelementptr inbounds %struct.key_type, %struct.key_type* %11, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.key_type, %struct.key_type* %11, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28, %22
  %33 = load i32, i32* @M_FATAL, align 4
  %34 = call i32 @msg(i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %28
  %36 = load %struct.key_ctx*, %struct.key_ctx** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @init_key_ctx(%struct.key_ctx* %36, %struct.key* %9, %struct.key_type* %11, i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %39 = call i32 @secure_memzero(%struct.key* %9, i32 4)
  ret void
}

declare dso_local i32 @buf_set_write(%struct.buffer*, i8*, i32) #1

declare dso_local i32 @read_pem_key_file(%struct.buffer*, i32, i8*, i8*) #1

declare dso_local i32 @msg(i32, i8*) #1

declare dso_local i64 @tls_crypt_kt(...) #1

declare dso_local i32 @init_key_ctx(%struct.key_ctx*, %struct.key*, %struct.key_type*, i32, i8*) #1

declare dso_local i32 @secure_memzero(%struct.key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
