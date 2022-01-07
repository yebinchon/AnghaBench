; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_tls_crypt.c_tls_crypt_init_key.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_tls_crypt.c_tls_crypt_init_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_ctx_bi = type { i32 }
%struct.key_type = type { i32, i32 }

@KEY_DIRECTION_NORMAL = common dso_local global i32 0, align 4
@KEY_DIRECTION_INVERSE = common dso_local global i32 0, align 4
@M_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ERROR: --tls-crypt not supported\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Control Channel Encryption\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"tls-crypt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls_crypt_init_key(%struct.key_ctx_bi* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.key_ctx_bi*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.key_type, align 4
  store %struct.key_ctx_bi* %0, %struct.key_ctx_bi** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @KEY_DIRECTION_NORMAL, align 4
  br label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @KEY_DIRECTION_INVERSE, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %9, align 4
  %19 = call i64 (...) @tls_crypt_kt()
  %20 = bitcast %struct.key_type* %10 to i64*
  store i64 %19, i64* %20, align 4
  %21 = getelementptr inbounds %struct.key_type, %struct.key_type* %10, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.key_type, %struct.key_type* %10, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24, %17
  %29 = load i32, i32* @M_FATAL, align 4
  %30 = call i32 @msg(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %24
  %32 = load %struct.key_ctx_bi*, %struct.key_ctx_bi** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @crypto_read_openvpn_key(%struct.key_type* %10, %struct.key_ctx_bi* %32, i8* %33, i8* %34, i32 %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i64 @tls_crypt_kt(...) #1

declare dso_local i32 @msg(i32, i8*) #1

declare dso_local i32 @crypto_read_openvpn_key(%struct.key_type*, %struct.key_ctx_bi*, i8*, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
