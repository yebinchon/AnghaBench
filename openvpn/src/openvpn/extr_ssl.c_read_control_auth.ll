; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_read_control_auth.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_read_control_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32, i32 }
%struct.tls_wrap_ctx = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.link_socket_actual = type { i32 }
%struct.tls_options = type { i32 }
%struct.gc_arena = type { i32 }

@P_OPCODE_SHIFT = common dso_local global i64 0, align 8
@P_CONTROL_HARD_RESET_CLIENT_V3 = common dso_local global i64 0, align 8
@D_TLS_ERRORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"TLS Error: can not extract tls-crypt-v2 client key from %s\00", align 1
@TLS_WRAP_AUTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"TLS Error: cannot locate HMAC in incoming packet from %s\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"TLS Error: incoming packet authentication failed from %s\00", align 1
@TLS_WRAP_CRYPT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c"TLS Error: tls-crypt unwrapping failed from %s\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"TLS Error: could not determine wrapping from %s\00", align 1
@TLS_WRAP_NONE = common dso_local global i64 0, align 8
@SID_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer*, %struct.tls_wrap_ctx*, %struct.link_socket_actual*, %struct.tls_options*)* @read_control_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_control_auth(%struct.buffer* %0, %struct.tls_wrap_ctx* %1, %struct.link_socket_actual* %2, %struct.tls_options* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca %struct.tls_wrap_ctx*, align 8
  %8 = alloca %struct.link_socket_actual*, align 8
  %9 = alloca %struct.tls_options*, align 8
  %10 = alloca %struct.gc_arena, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.buffer, align 4
  %14 = alloca %struct.buffer, align 4
  store %struct.buffer* %0, %struct.buffer** %6, align 8
  store %struct.tls_wrap_ctx* %1, %struct.tls_wrap_ctx** %7, align 8
  store %struct.link_socket_actual* %2, %struct.link_socket_actual** %8, align 8
  store %struct.tls_options* %3, %struct.tls_options** %9, align 8
  %15 = call i32 (...) @gc_new()
  %16 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %10, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.buffer*, %struct.buffer** %6, align 8
  %18 = call i64* @BPTR(%struct.buffer* %17)
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @P_OPCODE_SHIFT, align 8
  %21 = ashr i64 %19, %20
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* @P_CONTROL_HARD_RESET_CLIENT_V3, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %4
  %26 = load %struct.buffer*, %struct.buffer** %6, align 8
  %27 = load %struct.tls_wrap_ctx*, %struct.tls_wrap_ctx** %7, align 8
  %28 = load %struct.tls_options*, %struct.tls_options** %9, align 8
  %29 = call i32 @tls_crypt_v2_extract_client_key(%struct.buffer* %26, %struct.tls_wrap_ctx* %27, %struct.tls_options* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @D_TLS_ERRORS, align 4
  %33 = load %struct.link_socket_actual*, %struct.link_socket_actual** %8, align 8
  %34 = call i32 @print_link_socket_actual(%struct.link_socket_actual* %33, %struct.gc_arena* %10)
  %35 = call i32 @msg(i32 %32, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %138

36:                                               ; preds = %25, %4
  %37 = load %struct.tls_wrap_ctx*, %struct.tls_wrap_ctx** %7, align 8
  %38 = getelementptr inbounds %struct.tls_wrap_ctx, %struct.tls_wrap_ctx* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TLS_WRAP_AUTH, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %36
  %43 = call i64 (...) @clear_buf()
  %44 = bitcast %struct.buffer* %13 to i64*
  store i64 %43, i64* %44, align 4
  %45 = load %struct.buffer*, %struct.buffer** %6, align 8
  %46 = load %struct.tls_wrap_ctx*, %struct.tls_wrap_ctx** %7, align 8
  %47 = getelementptr inbounds %struct.tls_wrap_ctx, %struct.tls_wrap_ctx* %46, i32 0, i32 2
  %48 = call i32 @swap_hmac(%struct.buffer* %45, i32* %47, i32 1)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* @D_TLS_ERRORS, align 4
  %52 = load %struct.link_socket_actual*, %struct.link_socket_actual** %8, align 8
  %53 = call i32 @print_link_socket_actual(%struct.link_socket_actual* %52, %struct.gc_arena* %10)
  %54 = call i32 @msg(i32 %51, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = call i32 @gc_free(%struct.gc_arena* %10)
  store i32 0, i32* %5, align 4
  br label %141

56:                                               ; preds = %42
  %57 = load %struct.buffer*, %struct.buffer** %6, align 8
  %58 = load %struct.tls_wrap_ctx*, %struct.tls_wrap_ctx** %7, align 8
  %59 = getelementptr inbounds %struct.tls_wrap_ctx, %struct.tls_wrap_ctx* %58, i32 0, i32 2
  %60 = load %struct.buffer*, %struct.buffer** %6, align 8
  %61 = call i64* @BPTR(%struct.buffer* %60)
  %62 = bitcast %struct.buffer* %13 to i64*
  %63 = load i64, i64* %62, align 4
  %64 = call i32 @openvpn_decrypt(%struct.buffer* %57, i64 %63, i32* %59, i32* null, i64* %61)
  %65 = load %struct.buffer*, %struct.buffer** %6, align 8
  %66 = getelementptr inbounds %struct.buffer, %struct.buffer* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %56
  %70 = load i32, i32* @D_TLS_ERRORS, align 4
  %71 = load %struct.link_socket_actual*, %struct.link_socket_actual** %8, align 8
  %72 = call i32 @print_link_socket_actual(%struct.link_socket_actual* %71, %struct.gc_arena* %10)
  %73 = call i32 @msg(i32 %70, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  br label %138

74:                                               ; preds = %56
  br label %120

75:                                               ; preds = %36
  %76 = load %struct.tls_wrap_ctx*, %struct.tls_wrap_ctx** %7, align 8
  %77 = getelementptr inbounds %struct.tls_wrap_ctx, %struct.tls_wrap_ctx* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @TLS_WRAP_CRYPT, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %107

81:                                               ; preds = %75
  %82 = load %struct.buffer*, %struct.buffer** %6, align 8
  %83 = call i32 @buf_forward_capacity_total(%struct.buffer* %82)
  %84 = call i64 @alloc_buf_gc(i32 %83, %struct.gc_arena* %10)
  %85 = bitcast %struct.buffer* %14 to i64*
  store i64 %84, i64* %85, align 4
  %86 = load %struct.buffer*, %struct.buffer** %6, align 8
  %87 = load %struct.tls_wrap_ctx*, %struct.tls_wrap_ctx** %7, align 8
  %88 = getelementptr inbounds %struct.tls_wrap_ctx, %struct.tls_wrap_ctx* %87, i32 0, i32 2
  %89 = call i32 @tls_crypt_unwrap(%struct.buffer* %86, %struct.buffer* %14, i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %81
  %92 = load i32, i32* @D_TLS_ERRORS, align 4
  %93 = load %struct.link_socket_actual*, %struct.link_socket_actual** %8, align 8
  %94 = call i32 @print_link_socket_actual(%struct.link_socket_actual* %93, %struct.gc_arena* %10)
  %95 = call i32 @msg(i32 %92, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  br label %138

96:                                               ; preds = %81
  %97 = load %struct.buffer*, %struct.buffer** %6, align 8
  %98 = load %struct.buffer*, %struct.buffer** %6, align 8
  %99 = getelementptr inbounds %struct.buffer, %struct.buffer* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @buf_init(%struct.buffer* %97, i32 %100)
  %102 = call i32 @ASSERT(i32 %101)
  %103 = load %struct.buffer*, %struct.buffer** %6, align 8
  %104 = call i32 @buf_copy(%struct.buffer* %103, %struct.buffer* %14)
  %105 = call i32 @ASSERT(i32 %104)
  %106 = call i32 @buf_clear(%struct.buffer* %14)
  br label %119

107:                                              ; preds = %75
  %108 = load %struct.tls_wrap_ctx*, %struct.tls_wrap_ctx** %7, align 8
  %109 = getelementptr inbounds %struct.tls_wrap_ctx, %struct.tls_wrap_ctx* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load i32, i32* @D_TLS_ERRORS, align 4
  %115 = load %struct.link_socket_actual*, %struct.link_socket_actual** %8, align 8
  %116 = call i32 @print_link_socket_actual(%struct.link_socket_actual* %115, %struct.gc_arena* %10)
  %117 = call i32 @msg(i32 %114, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  br label %138

118:                                              ; preds = %107
  br label %119

119:                                              ; preds = %118, %96
  br label %120

120:                                              ; preds = %119, %74
  %121 = load %struct.tls_wrap_ctx*, %struct.tls_wrap_ctx** %7, align 8
  %122 = getelementptr inbounds %struct.tls_wrap_ctx, %struct.tls_wrap_ctx* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @TLS_WRAP_NONE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %132, label %126

126:                                              ; preds = %120
  %127 = load %struct.tls_wrap_ctx*, %struct.tls_wrap_ctx** %7, align 8
  %128 = getelementptr inbounds %struct.tls_wrap_ctx, %struct.tls_wrap_ctx* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @TLS_WRAP_AUTH, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %126, %120
  %133 = load %struct.buffer*, %struct.buffer** %6, align 8
  %134 = load i64, i64* @SID_SIZE, align 8
  %135 = add nsw i64 %134, 1
  %136 = call i32 @buf_advance(%struct.buffer* %133, i64 %135)
  br label %137

137:                                              ; preds = %132, %126
  store i32 1, i32* %11, align 4
  br label %138

138:                                              ; preds = %137, %113, %91, %69, %31
  %139 = call i32 @gc_free(%struct.gc_arena* %10)
  %140 = load i32, i32* %11, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %138, %50
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i64* @BPTR(%struct.buffer*) #1

declare dso_local i32 @tls_crypt_v2_extract_client_key(%struct.buffer*, %struct.tls_wrap_ctx*, %struct.tls_options*) #1

declare dso_local i32 @msg(i32, i8*, i32) #1

declare dso_local i32 @print_link_socket_actual(%struct.link_socket_actual*, %struct.gc_arena*) #1

declare dso_local i64 @clear_buf(...) #1

declare dso_local i32 @swap_hmac(%struct.buffer*, i32*, i32) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

declare dso_local i32 @openvpn_decrypt(%struct.buffer*, i64, i32*, i32*, i64*) #1

declare dso_local i64 @alloc_buf_gc(i32, %struct.gc_arena*) #1

declare dso_local i32 @buf_forward_capacity_total(%struct.buffer*) #1

declare dso_local i32 @tls_crypt_unwrap(%struct.buffer*, %struct.buffer*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @buf_init(%struct.buffer*, i32) #1

declare dso_local i32 @buf_copy(%struct.buffer*, %struct.buffer*) #1

declare dso_local i32 @buf_clear(%struct.buffer*) #1

declare dso_local i32 @buf_advance(%struct.buffer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
