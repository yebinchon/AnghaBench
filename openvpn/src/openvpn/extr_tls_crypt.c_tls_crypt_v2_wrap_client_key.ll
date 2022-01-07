; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_tls_crypt.c_tls_crypt_v2_wrap_client_key.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_tls_crypt.c_tls_crypt_v2_wrap_client_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key2 = type { i64 }
%struct.buffer = type { i32 }
%struct.key_ctx = type { i32*, i32* }
%struct.gc_arena = type { i32 }

@TLS_CRYPT_V2_MAX_WKC_LEN = common dso_local global i64 0, align 8
@TLS_CRYPT_TAG_SIZE = common dso_local global i32 0, align 4
@M_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ERROR: could not write tag\00", align 1
@TLS_CRYPT_V2_TAG_SIZE = common dso_local global i64 0, align 8
@D_CRYPTO_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"TLS-CRYPT WRAP TAG: %s\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"ERROR: could not crypt: insufficient space in dst\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer*, %struct.key2*, %struct.buffer*, %struct.key_ctx*, %struct.gc_arena*)* @tls_crypt_v2_wrap_client_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_crypt_v2_wrap_client_key(%struct.buffer* %0, %struct.key2* %1, %struct.buffer* %2, %struct.key_ctx* %3, %struct.gc_arena* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer*, align 8
  %8 = alloca %struct.key2*, align 8
  %9 = alloca %struct.buffer*, align 8
  %10 = alloca %struct.key_ctx*, align 8
  %11 = alloca %struct.gc_arena*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.buffer, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.buffer* %0, %struct.buffer** %7, align 8
  store %struct.key2* %1, %struct.key2** %8, align 8
  store %struct.buffer* %2, %struct.buffer** %9, align 8
  store %struct.key_ctx* %3, %struct.key_ctx** %10, align 8
  store %struct.gc_arena* %4, %struct.gc_arena** %11, align 8
  %18 = load %struct.key_ctx*, %struct.key_ctx** %10, align 8
  %19 = getelementptr inbounds %struct.key_ctx, %struct.key_ctx* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %12, align 8
  %21 = load i64, i64* @TLS_CRYPT_V2_MAX_WKC_LEN, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = call i64 @cipher_ctx_block_size(i32* %22)
  %24 = add nsw i64 %21, %23
  %25 = load %struct.gc_arena*, %struct.gc_arena** %11, align 8
  %26 = call i32 @alloc_buf_gc(i64 %24, %struct.gc_arena* %25)
  %27 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @TLS_CRYPT_TAG_SIZE, align 4
  %29 = call i32* @buf_write_alloc(%struct.buffer* %13, i32 %28)
  store i32* %29, i32** %14, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* @M_WARN, align 4
  %34 = call i32 @msg(i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %124

35:                                               ; preds = %5
  %36 = load %struct.buffer*, %struct.buffer** %9, align 8
  %37 = call i32 @BLEN(%struct.buffer* %36)
  %38 = sext i32 %37 to i64
  %39 = add i64 8, %38
  %40 = load i64, i64* @TLS_CRYPT_V2_TAG_SIZE, align 8
  %41 = add i64 %39, %40
  %42 = add i64 %41, 4
  %43 = call i32 @htons(i64 %42)
  store i32 %43, i32* %15, align 4
  %44 = load %struct.key_ctx*, %struct.key_ctx** %10, align 8
  %45 = getelementptr inbounds %struct.key_ctx, %struct.key_ctx* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %16, align 8
  %47 = load i32*, i32** %16, align 8
  %48 = call i32 @hmac_ctx_reset(i32* %47)
  %49 = load i32*, i32** %16, align 8
  %50 = bitcast i32* %15 to i8*
  %51 = call i32 @hmac_ctx_update(i32* %49, i8* %50, i32 4)
  %52 = load i32*, i32** %16, align 8
  %53 = load %struct.key2*, %struct.key2** %8, align 8
  %54 = getelementptr inbounds %struct.key2, %struct.key2* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @hmac_ctx_update(i32* %52, i8* %56, i32 8)
  %58 = load i32*, i32** %16, align 8
  %59 = load %struct.buffer*, %struct.buffer** %9, align 8
  %60 = call i8* @BPTR(%struct.buffer* %59)
  %61 = load %struct.buffer*, %struct.buffer** %9, align 8
  %62 = call i32 @BLEN(%struct.buffer* %61)
  %63 = call i32 @hmac_ctx_update(i32* %58, i8* %60, i32 %62)
  %64 = load i32*, i32** %16, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = call i32 @hmac_ctx_final(i32* %64, i32* %65)
  %67 = load i32, i32* @D_CRYPTO_DEBUG, align 4
  %68 = load i32*, i32** %14, align 8
  %69 = load i32, i32* @TLS_CRYPT_TAG_SIZE, align 4
  %70 = load %struct.gc_arena*, %struct.gc_arena** %11, align 8
  %71 = call i32 @format_hex(i32* %68, i32 %69, i32 0, %struct.gc_arena* %70)
  %72 = call i32 @dmsg(i32 %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32*, i32** %12, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = call i32 @cipher_ctx_reset(i32* %73, i32* %74)
  %76 = call i32 @ASSERT(i32 %75)
  %77 = call i64 @buf_forward_capacity(%struct.buffer* %13)
  %78 = load %struct.buffer*, %struct.buffer** %9, align 8
  %79 = call i32 @BLEN(%struct.buffer* %78)
  %80 = sext i32 %79 to i64
  %81 = add i64 8, %80
  %82 = add i64 %81, 4
  %83 = load i32*, i32** %12, align 8
  %84 = call i64 @cipher_ctx_block_size(i32* %83)
  %85 = add i64 %82, %84
  %86 = icmp ult i64 %77, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %35
  %88 = load i32, i32* @M_WARN, align 4
  %89 = call i32 @msg(i32 %88, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %124

90:                                               ; preds = %35
  store i32 0, i32* %17, align 4
  %91 = load i32*, i32** %12, align 8
  %92 = call i32 @BEND(%struct.buffer* %13)
  %93 = load %struct.key2*, %struct.key2** %8, align 8
  %94 = getelementptr inbounds %struct.key2, %struct.key2* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = call i32 @cipher_ctx_update(i32* %91, i32 %92, i32* %17, i8* %96, i32 8)
  %98 = call i32 @ASSERT(i32 %97)
  %99 = load i32, i32* %17, align 4
  %100 = call i32 @buf_inc_len(%struct.buffer* %13, i32 %99)
  %101 = call i32 @ASSERT(i32 %100)
  %102 = load i32*, i32** %12, align 8
  %103 = call i32 @BEND(%struct.buffer* %13)
  %104 = load %struct.buffer*, %struct.buffer** %9, align 8
  %105 = call i8* @BPTR(%struct.buffer* %104)
  %106 = load %struct.buffer*, %struct.buffer** %9, align 8
  %107 = call i32 @BLEN(%struct.buffer* %106)
  %108 = call i32 @cipher_ctx_update(i32* %102, i32 %103, i32* %17, i8* %105, i32 %107)
  %109 = call i32 @ASSERT(i32 %108)
  %110 = load i32, i32* %17, align 4
  %111 = call i32 @buf_inc_len(%struct.buffer* %13, i32 %110)
  %112 = call i32 @ASSERT(i32 %111)
  %113 = load i32*, i32** %12, align 8
  %114 = call i32 @BEND(%struct.buffer* %13)
  %115 = call i32 @cipher_ctx_final(i32* %113, i32 %114, i32* %17)
  %116 = call i32 @ASSERT(i32 %115)
  %117 = load i32, i32* %17, align 4
  %118 = call i32 @buf_inc_len(%struct.buffer* %13, i32 %117)
  %119 = call i32 @ASSERT(i32 %118)
  %120 = call i32 @buf_write(%struct.buffer* %13, i32* %15, i32 4)
  %121 = call i32 @ASSERT(i32 %120)
  %122 = load %struct.buffer*, %struct.buffer** %7, align 8
  %123 = call i32 @buf_copy(%struct.buffer* %122, %struct.buffer* %13)
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %90, %87, %32
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i32 @alloc_buf_gc(i64, %struct.gc_arena*) #1

declare dso_local i64 @cipher_ctx_block_size(i32*) #1

declare dso_local i32* @buf_write_alloc(%struct.buffer*, i32) #1

declare dso_local i32 @msg(i32, i8*) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @BLEN(%struct.buffer*) #1

declare dso_local i32 @hmac_ctx_reset(i32*) #1

declare dso_local i32 @hmac_ctx_update(i32*, i8*, i32) #1

declare dso_local i8* @BPTR(%struct.buffer*) #1

declare dso_local i32 @hmac_ctx_final(i32*, i32*) #1

declare dso_local i32 @dmsg(i32, i8*, i32) #1

declare dso_local i32 @format_hex(i32*, i32, i32, %struct.gc_arena*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @cipher_ctx_reset(i32*, i32*) #1

declare dso_local i64 @buf_forward_capacity(%struct.buffer*) #1

declare dso_local i32 @cipher_ctx_update(i32*, i32, i32*, i8*, i32) #1

declare dso_local i32 @BEND(%struct.buffer*) #1

declare dso_local i32 @buf_inc_len(%struct.buffer*, i32) #1

declare dso_local i32 @cipher_ctx_final(i32*, i32, i32*) #1

declare dso_local i32 @buf_write(%struct.buffer*, i32*, i32) #1

declare dso_local i32 @buf_copy(%struct.buffer*, %struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
