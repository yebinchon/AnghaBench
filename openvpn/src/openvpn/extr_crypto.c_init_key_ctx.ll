; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_init_key_ctx.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_init_key_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_ctx = type { i32, i32 }
%struct.key = type { i32, i32 }
%struct.key_type = type { i32, i32, i64, i64 }
%struct.gc_arena = type { i32 }

@D_HANDSHAKE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s: Cipher '%s' initialized with %d bit key\00", align 1
@D_SHOW_KEYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: CIPHER KEY: %s\00", align 1
@D_CRYPTO_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%s: CIPHER block_size=%d iv_size=%d\00", align 1
@M_WARN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [179 x i8] c"WARNING: INSECURE cipher with block size less than 128 bit (%d bit).  This allows attacks like SWEET32.  Mitigate by using a --cipher with a larger block size (e.g. AES-256-CBC).\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"%s: Using %d bit message hash '%s' for HMAC authentication\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"%s: HMAC KEY: %s\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"%s: HMAC size=%d block_size=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_key_ctx(%struct.key_ctx* %0, %struct.key* %1, %struct.key_type* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.key_ctx*, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca %struct.key_type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.gc_arena, align 4
  store %struct.key_ctx* %0, %struct.key_ctx** %6, align 8
  store %struct.key* %1, %struct.key** %7, align 8
  store %struct.key_type* %2, %struct.key_type** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = call i32 (...) @gc_new()
  %13 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %11, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load %struct.key_ctx*, %struct.key_ctx** %6, align 8
  %15 = bitcast %struct.key_ctx* %14 to i64*
  %16 = load i64, i64* %15, align 4
  %17 = call i32 @CLEAR(i64 %16)
  %18 = load %struct.key_type*, %struct.key_type** %8, align 8
  %19 = getelementptr inbounds %struct.key_type, %struct.key_type* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %92

22:                                               ; preds = %5
  %23 = load %struct.key_type*, %struct.key_type** %8, align 8
  %24 = getelementptr inbounds %struct.key_type, %struct.key_type* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %92

27:                                               ; preds = %22
  %28 = call i32 (...) @cipher_ctx_new()
  %29 = load %struct.key_ctx*, %struct.key_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.key_ctx, %struct.key_ctx* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.key_ctx*, %struct.key_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.key_ctx, %struct.key_ctx* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.key*, %struct.key** %7, align 8
  %35 = getelementptr inbounds %struct.key, %struct.key* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.key_type*, %struct.key_type** %8, align 8
  %38 = getelementptr inbounds %struct.key_type, %struct.key_type* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.key_type*, %struct.key_type** %8, align 8
  %41 = getelementptr inbounds %struct.key_type, %struct.key_type* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @cipher_ctx_init(i32 %33, i32 %36, i32 %39, i64 %42, i32 %43)
  %45 = load i32, i32* @D_HANDSHAKE, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = load %struct.key_type*, %struct.key_type** %8, align 8
  %48 = getelementptr inbounds %struct.key_type, %struct.key_type* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @cipher_kt_name(i64 %49)
  %51 = call i32 @translate_cipher_name_to_openvpn(i32 %50)
  %52 = load %struct.key_type*, %struct.key_type** %8, align 8
  %53 = getelementptr inbounds %struct.key_type, %struct.key_type* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %54, 8
  %56 = call i32 (i32, i8*, ...) @msg(i32 %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %46, i32 %51, i32 %55)
  %57 = load i32, i32* @D_SHOW_KEYS, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = load %struct.key*, %struct.key** %7, align 8
  %60 = getelementptr inbounds %struct.key, %struct.key* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.key_type*, %struct.key_type** %8, align 8
  %63 = getelementptr inbounds %struct.key_type, %struct.key_type* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @format_hex(i32 %61, i32 %64, i32 0, %struct.gc_arena* %11)
  %66 = call i32 (i32, i8*, i8*, i32, ...) @dmsg(i32 %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %58, i32 %65)
  %67 = load i32, i32* @D_CRYPTO_DEBUG, align 4
  %68 = load i8*, i8** %10, align 8
  %69 = load %struct.key_type*, %struct.key_type** %8, align 8
  %70 = getelementptr inbounds %struct.key_type, %struct.key_type* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @cipher_kt_block_size(i64 %71)
  %73 = load %struct.key_type*, %struct.key_type** %8, align 8
  %74 = getelementptr inbounds %struct.key_type, %struct.key_type* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @cipher_kt_iv_size(i64 %75)
  %77 = call i32 (i32, i8*, i8*, i32, ...) @dmsg(i32 %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %68, i32 %72, i32 %76)
  %78 = load %struct.key_type*, %struct.key_type** %8, align 8
  %79 = getelementptr inbounds %struct.key_type, %struct.key_type* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @cipher_kt_insecure(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %27
  %84 = load i32, i32* @M_WARN, align 4
  %85 = load %struct.key_type*, %struct.key_type** %8, align 8
  %86 = getelementptr inbounds %struct.key_type, %struct.key_type* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @cipher_kt_block_size(i64 %87)
  %89 = mul nsw i32 %88, 8
  %90 = call i32 (i32, i8*, ...) @msg(i32 %84, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %83, %27
  br label %92

92:                                               ; preds = %91, %22, %5
  %93 = load %struct.key_type*, %struct.key_type** %8, align 8
  %94 = getelementptr inbounds %struct.key_type, %struct.key_type* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %152

97:                                               ; preds = %92
  %98 = load %struct.key_type*, %struct.key_type** %8, align 8
  %99 = getelementptr inbounds %struct.key_type, %struct.key_type* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %152

102:                                              ; preds = %97
  %103 = call i32 (...) @hmac_ctx_new()
  %104 = load %struct.key_ctx*, %struct.key_ctx** %6, align 8
  %105 = getelementptr inbounds %struct.key_ctx, %struct.key_ctx* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load %struct.key_ctx*, %struct.key_ctx** %6, align 8
  %107 = getelementptr inbounds %struct.key_ctx, %struct.key_ctx* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.key*, %struct.key** %7, align 8
  %110 = getelementptr inbounds %struct.key, %struct.key* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.key_type*, %struct.key_type** %8, align 8
  %113 = getelementptr inbounds %struct.key_type, %struct.key_type* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.key_type*, %struct.key_type** %8, align 8
  %116 = getelementptr inbounds %struct.key_type, %struct.key_type* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @hmac_ctx_init(i32 %108, i32 %111, i32 %114, i64 %117)
  %119 = load i32, i32* @D_HANDSHAKE, align 4
  %120 = load i8*, i8** %10, align 8
  %121 = load %struct.key_type*, %struct.key_type** %8, align 8
  %122 = getelementptr inbounds %struct.key_type, %struct.key_type* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @md_kt_size(i64 %123)
  %125 = mul nsw i32 %124, 8
  %126 = load %struct.key_type*, %struct.key_type** %8, align 8
  %127 = getelementptr inbounds %struct.key_type, %struct.key_type* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @md_kt_name(i64 %128)
  %130 = call i32 (i32, i8*, ...) @msg(i32 %119, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i8* %120, i32 %125, i32 %129)
  %131 = load i32, i32* @D_SHOW_KEYS, align 4
  %132 = load i8*, i8** %10, align 8
  %133 = load %struct.key*, %struct.key** %7, align 8
  %134 = getelementptr inbounds %struct.key, %struct.key* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.key_type*, %struct.key_type** %8, align 8
  %137 = getelementptr inbounds %struct.key_type, %struct.key_type* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @format_hex(i32 %135, i32 %138, i32 0, %struct.gc_arena* %11)
  %140 = call i32 (i32, i8*, i8*, i32, ...) @dmsg(i32 %131, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %132, i32 %139)
  %141 = load i32, i32* @D_CRYPTO_DEBUG, align 4
  %142 = load i8*, i8** %10, align 8
  %143 = load %struct.key_type*, %struct.key_type** %8, align 8
  %144 = getelementptr inbounds %struct.key_type, %struct.key_type* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @md_kt_size(i64 %145)
  %147 = load %struct.key_ctx*, %struct.key_ctx** %6, align 8
  %148 = getelementptr inbounds %struct.key_ctx, %struct.key_ctx* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @hmac_ctx_size(i32 %149)
  %151 = call i32 (i32, i8*, i8*, i32, ...) @dmsg(i32 %141, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %142, i32 %146, i32 %150)
  br label %152

152:                                              ; preds = %102, %97, %92
  %153 = call i32 @gc_free(%struct.gc_arena* %11)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @CLEAR(i64) #1

declare dso_local i32 @cipher_ctx_new(...) #1

declare dso_local i32 @cipher_ctx_init(i32, i32, i32, i64, i32) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32 @translate_cipher_name_to_openvpn(i32) #1

declare dso_local i32 @cipher_kt_name(i64) #1

declare dso_local i32 @dmsg(i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @format_hex(i32, i32, i32, %struct.gc_arena*) #1

declare dso_local i32 @cipher_kt_block_size(i64) #1

declare dso_local i32 @cipher_kt_iv_size(i64) #1

declare dso_local i64 @cipher_kt_insecure(i64) #1

declare dso_local i32 @hmac_ctx_new(...) #1

declare dso_local i32 @hmac_ctx_init(i32, i32, i32, i64) #1

declare dso_local i32 @md_kt_size(i64) #1

declare dso_local i32 @md_kt_name(i64) #1

declare dso_local i32 @hmac_ctx_size(i32) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
