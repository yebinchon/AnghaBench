; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_tls_crypt.c_tls_crypt_v2_load_client_key.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_tls_crypt.c_tls_crypt_v2_load_client_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_ctx_bi = type { i32 }
%struct.key2 = type { i32 }
%struct.key_type = type { i32, i32 }

@KEY_DIRECTION_NORMAL = common dso_local global i32 0, align 4
@KEY_DIRECTION_INVERSE = common dso_local global i32 0, align 4
@M_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ERROR: --tls-crypt-v2 not supported\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Control Channel Encryption\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key_ctx_bi*, %struct.key2*, i32)* @tls_crypt_v2_load_client_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_crypt_v2_load_client_key(%struct.key_ctx_bi* %0, %struct.key2* %1, i32 %2) #0 {
  %4 = alloca %struct.key_ctx_bi*, align 8
  %5 = alloca %struct.key2*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.key_type, align 4
  store %struct.key_ctx_bi* %0, %struct.key_ctx_bi** %4, align 8
  store %struct.key2* %1, %struct.key2** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @KEY_DIRECTION_NORMAL, align 4
  br label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @KEY_DIRECTION_INVERSE, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %7, align 4
  %17 = call i64 (...) @tls_crypt_kt()
  %18 = bitcast %struct.key_type* %8 to i64*
  store i64 %17, i64* %18, align 4
  %19 = getelementptr inbounds %struct.key_type, %struct.key_type* %8, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.key_type, %struct.key_type* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22, %15
  %27 = load i32, i32* @M_FATAL, align 4
  %28 = call i32 @msg(i32 %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %22
  %30 = load %struct.key_ctx_bi*, %struct.key_ctx_bi** %4, align 8
  %31 = load %struct.key2*, %struct.key2** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @init_key_ctx_bi(%struct.key_ctx_bi* %30, %struct.key2* %31, i32 %32, %struct.key_type* %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i64 @tls_crypt_kt(...) #1

declare dso_local i32 @msg(i32, i8*) #1

declare dso_local i32 @init_key_ctx_bi(%struct.key_ctx_bi*, %struct.key2*, i32, %struct.key_type*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
