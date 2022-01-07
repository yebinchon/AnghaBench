; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_key_method_1_write.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_key_method_1_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.tls_session = type { %struct.TYPE_6__*, %struct.key_state* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.key_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.key = type { i32 }

@KS_PRIMARY = common dso_local global i64 0, align 8
@D_TLS_ERRORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"TLS Error: Bad encrypting key generated\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"TLS Error: write_key failed\00", align 1
@OPENVPN_OP_ENCRYPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Data Channel Encrypt\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"TLS Error: KM1 write options failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer*, %struct.tls_session*)* @key_method_1_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_method_1_write(%struct.buffer* %0, %struct.tls_session* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.buffer*, align 8
  %5 = alloca %struct.tls_session*, align 8
  %6 = alloca %struct.key, align 4
  %7 = alloca %struct.key_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.buffer* %0, %struct.buffer** %4, align 8
  store %struct.tls_session* %1, %struct.tls_session** %5, align 8
  %10 = load %struct.tls_session*, %struct.tls_session** %5, align 8
  %11 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %10, i32 0, i32 1
  %12 = load %struct.key_state*, %struct.key_state** %11, align 8
  %13 = load i64, i64* @KS_PRIMARY, align 8
  %14 = getelementptr inbounds %struct.key_state, %struct.key_state* %12, i64 %13
  store %struct.key_state* %14, %struct.key_state** %7, align 8
  %15 = load %struct.tls_session*, %struct.tls_session** %5, align 8
  %16 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.buffer*, %struct.buffer** %4, align 8
  %24 = call i32 @buf_init(%struct.buffer* %23, i32 0)
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.tls_session*, %struct.tls_session** %5, align 8
  %27 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = call i32 @generate_key_random(%struct.key* %6, i32* %29)
  %31 = load %struct.tls_session*, %struct.tls_session** %5, align 8
  %32 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = call i32 @check_key(%struct.key* %6, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* @D_TLS_ERRORS, align 4
  %39 = call i32 @msg(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %77

40:                                               ; preds = %2
  %41 = load %struct.tls_session*, %struct.tls_session** %5, align 8
  %42 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load %struct.buffer*, %struct.buffer** %4, align 8
  %46 = call i32 @write_key(%struct.key* %6, i32* %44, %struct.buffer* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* @D_TLS_ERRORS, align 4
  %50 = call i32 @msg(i32 %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %77

51:                                               ; preds = %40
  %52 = load %struct.key_state*, %struct.key_state** %7, align 8
  %53 = getelementptr inbounds %struct.key_state, %struct.key_state* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.tls_session*, %struct.tls_session** %5, align 8
  %57 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* @OPENVPN_OP_ENCRYPT, align 4
  %61 = call i32 @init_key_ctx(i32* %55, %struct.key* %6, i32* %59, i32 %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %62 = call i32 @secure_memzero(%struct.key* %6, i32 4)
  %63 = load %struct.tls_session*, %struct.tls_session** %5, align 8
  %64 = call i8* @local_options_string(%struct.tls_session* %63)
  store i8* %64, i8** %8, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  %68 = load %struct.buffer*, %struct.buffer** %4, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @buf_write(%struct.buffer* %68, i8* %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %51
  %74 = load i32, i32* @D_TLS_ERRORS, align 4
  %75 = call i32 @msg(i32 %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %77

76:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %73, %48, %37
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @buf_init(%struct.buffer*, i32) #1

declare dso_local i32 @generate_key_random(%struct.key*, i32*) #1

declare dso_local i32 @check_key(%struct.key*, i32*) #1

declare dso_local i32 @msg(i32, i8*) #1

declare dso_local i32 @write_key(%struct.key*, i32*, %struct.buffer*) #1

declare dso_local i32 @init_key_ctx(i32*, %struct.key*, i32*, i32, i8*) #1

declare dso_local i32 @secure_memzero(%struct.key*, i32) #1

declare dso_local i8* @local_options_string(%struct.tls_session*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @buf_write(%struct.buffer*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
