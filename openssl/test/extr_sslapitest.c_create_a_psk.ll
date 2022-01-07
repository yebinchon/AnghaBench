; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_create_a_psk.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_create_a_psk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.create_a_psk.key = private unnamed_addr constant [48 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./", align 16
@TLS13_AES_256_GCM_SHA384_BYTES = common dso_local global i32 0, align 4
@TLS1_3_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @create_a_psk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_a_psk(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [48 x i8], align 16
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %7 = bitcast [48 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 getelementptr inbounds ([48 x i8], [48 x i8]* @__const.create_a_psk.key, i32 0, i32 0), i64 48, i1 false)
  store i32* null, i32** %6, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @TLS13_AES_256_GCM_SHA384_BYTES, align 4
  %10 = call i32* @SSL_CIPHER_find(i32* %8, i32 %9)
  store i32* %10, i32** %4, align 8
  %11 = call i32* (...) @SSL_SESSION_new()
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @TEST_ptr(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %1
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @TEST_ptr(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds [48 x i8], [48 x i8]* %5, i64 0, i64 0
  %22 = call i32 @SSL_SESSION_set1_master_key(i32* %20, i8* %21, i32 48)
  %23 = call i32 @TEST_true(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @SSL_SESSION_set_cipher(i32* %26, i32* %27)
  %29 = call i32 @TEST_true(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @TLS1_3_VERSION, align 4
  %34 = call i32 @SSL_SESSION_set_protocol_version(i32* %32, i32 %33)
  %35 = call i32 @TEST_true(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31, %25, %19, %15, %1
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @SSL_SESSION_free(i32* %38)
  store i32* null, i32** %2, align 8
  br label %42

40:                                               ; preds = %31
  %41 = load i32*, i32** %6, align 8
  store i32* %41, i32** %2, align 8
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i32*, i32** %2, align 8
  ret i32* %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @SSL_CIPHER_find(i32*, i32) #2

declare dso_local i32* @SSL_SESSION_new(...) #2

declare dso_local i32 @TEST_ptr(i32*) #2

declare dso_local i32 @TEST_true(i32) #2

declare dso_local i32 @SSL_SESSION_set1_master_key(i32*, i8*, i32) #2

declare dso_local i32 @SSL_SESSION_set_cipher(i32*, i32*) #2

declare dso_local i32 @SSL_SESSION_set_protocol_version(i32*, i32) #2

declare dso_local i32 @SSL_SESSION_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
