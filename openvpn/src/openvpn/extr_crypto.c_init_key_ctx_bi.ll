; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_init_key_ctx_bi.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_init_key_ctx_bi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_ctx_bi = type { i32, i32, i32 }
%struct.key2 = type { i32* }
%struct.key_type = type { i32 }
%struct.key_direction_state = type { i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"Outgoing %s\00", align 1
@OPENVPN_OP_ENCRYPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Incoming %s\00", align 1
@OPENVPN_OP_DECRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_key_ctx_bi(%struct.key_ctx_bi* %0, %struct.key2* %1, i32 %2, %struct.key_type* %3, i8* %4) #0 {
  %6 = alloca %struct.key_ctx_bi*, align 8
  %7 = alloca %struct.key2*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.key_type*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [128 x i8], align 16
  %12 = alloca %struct.key_direction_state, align 8
  store %struct.key_ctx_bi* %0, %struct.key_ctx_bi** %6, align 8
  store %struct.key2* %1, %struct.key2** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.key_type* %3, %struct.key_type** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = bitcast [128 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 128, i1 false)
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @key_direction_state_init(%struct.key_direction_state* %12, i32 %14)
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @openvpn_snprintf(i8* %16, i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load %struct.key_ctx_bi*, %struct.key_ctx_bi** %6, align 8
  %20 = getelementptr inbounds %struct.key_ctx_bi, %struct.key_ctx_bi* %19, i32 0, i32 2
  %21 = load %struct.key2*, %struct.key2** %7, align 8
  %22 = getelementptr inbounds %struct.key2, %struct.key2* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds %struct.key_direction_state, %struct.key_direction_state* %12, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load %struct.key_type*, %struct.key_type** %9, align 8
  %28 = load i32, i32* @OPENVPN_OP_ENCRYPT, align 4
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %30 = call i32 @init_key_ctx(i32* %20, i32* %26, %struct.key_type* %27, i32 %28, i8* %29)
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @openvpn_snprintf(i8* %31, i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load %struct.key_ctx_bi*, %struct.key_ctx_bi** %6, align 8
  %35 = getelementptr inbounds %struct.key_ctx_bi, %struct.key_ctx_bi* %34, i32 0, i32 1
  %36 = load %struct.key2*, %struct.key2** %7, align 8
  %37 = getelementptr inbounds %struct.key2, %struct.key2* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds %struct.key_direction_state, %struct.key_direction_state* %12, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load %struct.key_type*, %struct.key_type** %9, align 8
  %43 = load i32, i32* @OPENVPN_OP_DECRYPT, align 4
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %45 = call i32 @init_key_ctx(i32* %35, i32* %41, %struct.key_type* %42, i32 %43, i8* %44)
  %46 = load %struct.key_ctx_bi*, %struct.key_ctx_bi** %6, align 8
  %47 = getelementptr inbounds %struct.key_ctx_bi, %struct.key_ctx_bi* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @key_direction_state_init(%struct.key_direction_state*, i32) #2

declare dso_local i32 @openvpn_snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @init_key_ctx(i32*, i32*, %struct.key_type*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
