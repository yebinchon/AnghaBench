; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_auth_token.c_generate_auth_token.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_auth_token.c_generate_auth_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_pass = type { i8* }
%struct.tls_multi = type { i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.gc_arena = type { i32 }
%struct.buffer = type { i32 }

@now = common dso_local global i64 0, align 8
@AUTH_TOKEN_SESSION_ID_LEN = common dso_local global i32 0, align 4
@SESSION_ID_PREFIX = common dso_local global i8* null, align 8
@M_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Failed to get enough randomness for authentication token\00", align 1
@AUTH_TOKEN_VALID_EMPTYUSER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@D_SHOW_KEYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Generated token for client: %s (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_auth_token(%struct.user_pass* %0, %struct.tls_multi* %1) #0 {
  %3 = alloca %struct.user_pass*, align 8
  %4 = alloca %struct.tls_multi*, align 8
  %5 = alloca %struct.gc_arena, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [9 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [32 x i8], align 16
  %16 = alloca %struct.buffer, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.buffer, align 4
  store %struct.user_pass* %0, %struct.user_pass** %3, align 8
  store %struct.tls_multi* %1, %struct.tls_multi** %4, align 8
  %19 = call i32 (...) @gc_new()
  %20 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %5, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load i64, i64* @now, align 8
  %22 = trunc i64 %21 to i8
  %23 = call signext i8 @htonll(i8 signext %22)
  store i8 %23, i8* %6, align 1
  %24 = load i8, i8* %6, align 1
  store i8 %24, i8* %7, align 1
  %25 = load %struct.tls_multi*, %struct.tls_multi** %4, align 8
  %26 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @hmac_ctx_size(i32* %30)
  %32 = icmp eq i32 %31, 32
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load i32, i32* @AUTH_TOKEN_SESSION_ID_LEN, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %9, align 8
  %38 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %10, align 8
  %39 = load %struct.tls_multi*, %struct.tls_multi** %4, align 8
  %40 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %81

43:                                               ; preds = %2
  %44 = load %struct.tls_multi*, %struct.tls_multi** %4, align 8
  %45 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** @SESSION_ID_PREFIX, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  store i8* %50, i8** %12, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load i32, i32* @AUTH_TOKEN_SESSION_ID_LEN, align 4
  %53 = mul nsw i32 %52, 8
  %54 = sdiv i32 %53, 6
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  store i8* %56, i8** %13, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 12
  store i8 0, i8* %58, align 1
  %59 = load i8*, i8** %13, align 8
  %60 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  %61 = call i32 @openvpn_base64_decode(i8* %59, i8* %60, i32 9)
  %62 = icmp eq i32 %61, 9
  %63 = zext i1 %62 to i32
  %64 = call i32 @ASSERT(i32 %63)
  %65 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  store i8* %65, i8** %14, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = load i8, i8* %66, align 1
  store i8 %67, i8* %7, align 1
  %68 = load i8*, i8** %13, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  store i8 0, i8* %69, align 1
  %70 = load i8*, i8** %12, align 8
  %71 = load i32, i32* @AUTH_TOKEN_SESSION_ID_LEN, align 4
  %72 = call i32 @openvpn_base64_decode(i8* %70, i8* %38, i32 %71)
  %73 = load i32, i32* @AUTH_TOKEN_SESSION_ID_LEN, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @ASSERT(i32 %75)
  %77 = load %struct.tls_multi*, %struct.tls_multi** %4, align 8
  %78 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @free(i8* %79)
  br label %89

81:                                               ; preds = %2
  %82 = load i32, i32* @AUTH_TOKEN_SESSION_ID_LEN, align 4
  %83 = call i32 @rand_bytes(i8* %38, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* @M_FATAL, align 4
  %87 = call i32 @msg(i32 %86, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %81
  br label %89

89:                                               ; preds = %88, %43
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @hmac_ctx_reset(i32* %90)
  %92 = load %struct.tls_multi*, %struct.tls_multi** %4, align 8
  %93 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @AUTH_TOKEN_VALID_EMPTYUSER, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %89
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @hmac_ctx_update(i32* %99, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %111

101:                                              ; preds = %89
  %102 = load i32*, i32** %8, align 8
  %103 = load %struct.user_pass*, %struct.user_pass** %3, align 8
  %104 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.user_pass*, %struct.user_pass** %3, align 8
  %107 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @strlen(i8* %108)
  %110 = call i32 @hmac_ctx_update(i32* %102, i8* %105, i32 %109)
  br label %111

111:                                              ; preds = %101, %98
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* @AUTH_TOKEN_SESSION_ID_LEN, align 4
  %114 = call i32 @hmac_ctx_update(i32* %112, i8* %38, i32 %113)
  %115 = load i32*, i32** %8, align 8
  %116 = call i32 @hmac_ctx_update(i32* %115, i8* %7, i32 1)
  %117 = load i32*, i32** %8, align 8
  %118 = call i32 @hmac_ctx_update(i32* %117, i8* %6, i32 1)
  %119 = load i32*, i32** %8, align 8
  %120 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %121 = call i32 @hmac_ctx_final(i32* %119, i8* %120)
  %122 = load i32, i32* @AUTH_TOKEN_SESSION_ID_LEN, align 4
  %123 = sext i32 %122 to i64
  %124 = add i64 2, %123
  %125 = add i64 %124, 32
  %126 = trunc i64 %125 to i32
  %127 = call i32 @alloc_buf_gc(i32 %126, %struct.gc_arena* %5)
  %128 = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 0
  store i32 %127, i32* %128, align 4
  %129 = trunc i64 %36 to i32
  %130 = call i32 @buf_write(%struct.buffer* %16, i8* %38, i32 %129)
  %131 = call i32 @ASSERT(i32 %130)
  %132 = call i32 @buf_write(%struct.buffer* %16, i8* %7, i32 1)
  %133 = call i32 @ASSERT(i32 %132)
  %134 = call i32 @buf_write(%struct.buffer* %16, i8* %6, i32 1)
  %135 = call i32 @ASSERT(i32 %134)
  %136 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %137 = call i32 @buf_write(%struct.buffer* %16, i8* %136, i32 32)
  %138 = call i32 @ASSERT(i32 %137)
  %139 = call i64 @BPTR(%struct.buffer* %16)
  %140 = call i32 @BLEN(%struct.buffer* %16)
  %141 = call i32 @openvpn_base64_encode(i64 %139, i32 %140, i8** %17)
  %142 = load i8*, i8** @SESSION_ID_PREFIX, align 8
  %143 = call i32 @strlen(i8* %142)
  %144 = load i8*, i8** %17, align 8
  %145 = call i32 @strlen(i8* %144)
  %146 = add nsw i32 %143, %145
  %147 = add nsw i32 %146, 1
  %148 = call i32 @alloc_buf_gc(i32 %147, %struct.gc_arena* %5)
  %149 = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 0
  store i32 %148, i32* %149, align 4
  %150 = load i8*, i8** @SESSION_ID_PREFIX, align 8
  %151 = load i8*, i8** @SESSION_ID_PREFIX, align 8
  %152 = call i32 @strlen(i8* %151)
  %153 = call i32 @buf_write(%struct.buffer* %18, i8* %150, i32 %152)
  %154 = call i32 @ASSERT(i32 %153)
  %155 = load i8*, i8** %17, align 8
  %156 = load i8*, i8** %17, align 8
  %157 = call i32 @strlen(i8* %156)
  %158 = call i32 @buf_write(%struct.buffer* %18, i8* %155, i32 %157)
  %159 = call i32 @ASSERT(i32 %158)
  %160 = call i32 @buf_write_u8(%struct.buffer* %18, i32 0)
  %161 = call i32 @ASSERT(i32 %160)
  %162 = load i8*, i8** %17, align 8
  %163 = call i32 @free(i8* %162)
  %164 = call i64 @BPTR(%struct.buffer* %18)
  %165 = inttoptr i64 %164 to i8*
  %166 = call i8* @strdup(i8* %165)
  %167 = load %struct.tls_multi*, %struct.tls_multi** %4, align 8
  %168 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %167, i32 0, i32 0
  store i8* %166, i8** %168, align 8
  %169 = load i32, i32* @D_SHOW_KEYS, align 4
  %170 = load %struct.tls_multi*, %struct.tls_multi** %4, align 8
  %171 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.user_pass*, %struct.user_pass** %3, align 8
  %174 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @dmsg(i32 %169, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %172, i8* %175)
  %177 = call i32 @gc_free(%struct.gc_arena* %5)
  %178 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %178)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local signext i8 @htonll(i8 signext) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @hmac_ctx_size(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @openvpn_base64_decode(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @rand_bytes(i8*, i32) #1

declare dso_local i32 @msg(i32, i8*) #1

declare dso_local i32 @hmac_ctx_reset(i32*) #1

declare dso_local i32 @hmac_ctx_update(i32*, i8*, i32) #1

declare dso_local i32 @hmac_ctx_final(i32*, i8*) #1

declare dso_local i32 @alloc_buf_gc(i32, %struct.gc_arena*) #1

declare dso_local i32 @buf_write(%struct.buffer*, i8*, i32) #1

declare dso_local i32 @openvpn_base64_encode(i64, i32, i8**) #1

declare dso_local i64 @BPTR(%struct.buffer*) #1

declare dso_local i32 @BLEN(%struct.buffer*) #1

declare dso_local i32 @buf_write_u8(%struct.buffer*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @dmsg(i32, i8*, i8*, i8*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
