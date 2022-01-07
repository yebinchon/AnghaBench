; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_crypto_read_openvpn_key.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_crypto_read_openvpn_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_type = type { i32 }
%struct.key_ctx_bi = type { i32 }
%struct.key2 = type { i32 }
%struct.key_direction_state = type { i32 }

@RKF_MUST_SUCCEED = common dso_local global i32 0, align 4
@RKF_INLINE = common dso_local global i32 0, align 4
@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [110 x i8] c"File '%s' does not have OpenVPN Static Key format.  Using free-form passphrase file is not supported anymore.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crypto_read_openvpn_key(%struct.key_type* %0, %struct.key_ctx_bi* %1, i8* %2, i8* %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.key_type*, align 8
  %9 = alloca %struct.key_ctx_bi*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.key2, align 4
  %16 = alloca %struct.key_direction_state, align 4
  store %struct.key_type* %0, %struct.key_type** %8, align 8
  store %struct.key_ctx_bi* %1, %struct.key_ctx_bi** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %7
  %20 = load i8*, i8** %11, align 8
  %21 = load i32, i32* @RKF_MUST_SUCCEED, align 4
  %22 = load i32, i32* @RKF_INLINE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @read_key_file(%struct.key2* %15, i8* %20, i32 %23)
  br label %29

25:                                               ; preds = %7
  %26 = load i8*, i8** %10, align 8
  %27 = load i32, i32* @RKF_MUST_SUCCEED, align 4
  %28 = call i32 @read_key_file(%struct.key2* %15, i8* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %19
  %30 = getelementptr inbounds %struct.key2, %struct.key2* %15, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 2
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @M_ERR, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @msg(i32 %34, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.key_type*, %struct.key_type** %8, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @verify_fix_key2(%struct.key2* %15, %struct.key_type* %38, i8* %39)
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @key_direction_state_init(%struct.key_direction_state* %16, i32 %41)
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = getelementptr inbounds %struct.key_direction_state, %struct.key_direction_state* %16, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @must_have_n_keys(i8* %43, i8* %44, %struct.key2* %15, i32 %46)
  %48 = load %struct.key_ctx_bi*, %struct.key_ctx_bi** %9, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.key_type*, %struct.key_type** %8, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 @init_key_ctx_bi(%struct.key_ctx_bi* %48, %struct.key2* %15, i32 %49, %struct.key_type* %50, i8* %51)
  %53 = call i32 @secure_memzero(%struct.key2* %15, i32 4)
  ret void
}

declare dso_local i32 @read_key_file(%struct.key2*, i8*, i32) #1

declare dso_local i32 @msg(i32, i8*, i8*) #1

declare dso_local i32 @verify_fix_key2(%struct.key2*, %struct.key_type*, i8*) #1

declare dso_local i32 @key_direction_state_init(%struct.key_direction_state*, i32) #1

declare dso_local i32 @must_have_n_keys(i8*, i8*, %struct.key2*, i32) #1

declare dso_local i32 @init_key_ctx_bi(%struct.key_ctx_bi*, %struct.key2*, i32, %struct.key_type*, i8*) #1

declare dso_local i32 @secure_memzero(%struct.key2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
