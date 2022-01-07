; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_key_method_1_read.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_key_method_1_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.tls_session = type { %struct.TYPE_6__*, i32, %struct.key_state* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.key_state = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.key = type { i32 }

@KS_PRIMARY = common dso_local global i64 0, align 8
@D_TLS_ERRORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"TLS Error: Certificate verification failed (key-method 1)\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"TLS Error: Error reading data channel key from plaintext buffer\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"TLS Error: Bad decrypting key received from peer\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"TLS Error: Missing options string\00", align 1
@OPENVPN_OP_DECRYPT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Data Channel Decrypt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer*, %struct.tls_session*)* @key_method_1_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_method_1_read(%struct.buffer* %0, %struct.tls_session* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.buffer*, align 8
  %5 = alloca %struct.tls_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.key, align 4
  %8 = alloca %struct.key_state*, align 8
  store %struct.buffer* %0, %struct.buffer** %4, align 8
  store %struct.tls_session* %1, %struct.tls_session** %5, align 8
  %9 = load %struct.tls_session*, %struct.tls_session** %5, align 8
  %10 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %9, i32 0, i32 2
  %11 = load %struct.key_state*, %struct.key_state** %10, align 8
  %12 = load i64, i64* @KS_PRIMARY, align 8
  %13 = getelementptr inbounds %struct.key_state, %struct.key_state* %11, i64 %12
  store %struct.key_state* %13, %struct.key_state** %8, align 8
  %14 = load %struct.tls_session*, %struct.tls_session** %5, align 8
  %15 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.tls_session*, %struct.tls_session** %5, align 8
  %23 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @D_TLS_ERRORS, align 4
  %28 = call i32 @msg(i32 %27, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %75

29:                                               ; preds = %2
  %30 = load %struct.tls_session*, %struct.tls_session** %5, align 8
  %31 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.buffer*, %struct.buffer** %4, align 8
  %35 = call i32 @read_key(%struct.key* %7, i32* %33, %struct.buffer* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @D_TLS_ERRORS, align 4
  %40 = call i32 @msg(i32 %39, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  br label %75

41:                                               ; preds = %29
  %42 = load %struct.tls_session*, %struct.tls_session** %5, align 8
  %43 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = call i32 @check_key(%struct.key* %7, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @D_TLS_ERRORS, align 4
  %50 = call i32 @msg(i32 %49, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %75

51:                                               ; preds = %41
  %52 = load %struct.buffer*, %struct.buffer** %4, align 8
  %53 = getelementptr inbounds %struct.buffer, %struct.buffer* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @D_TLS_ERRORS, align 4
  %58 = call i32 @msg(i32 %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %75

59:                                               ; preds = %51
  %60 = load %struct.buffer*, %struct.buffer** %4, align 8
  %61 = call i32 @buf_clear(%struct.buffer* %60)
  %62 = load %struct.key_state*, %struct.key_state** %8, align 8
  %63 = getelementptr inbounds %struct.key_state, %struct.key_state* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.tls_session*, %struct.tls_session** %5, align 8
  %67 = getelementptr inbounds %struct.tls_session, %struct.tls_session* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* @OPENVPN_OP_DECRYPT, align 4
  %71 = call i32 @init_key_ctx(i32* %65, %struct.key* %7, i32* %69, i32 %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %72 = call i32 @secure_memzero(%struct.key* %7, i32 4)
  %73 = load %struct.key_state*, %struct.key_state** %8, align 8
  %74 = getelementptr inbounds %struct.key_state, %struct.key_state* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  store i32 1, i32* %3, align 4
  br label %79

75:                                               ; preds = %56, %48, %38, %26
  %76 = load %struct.buffer*, %struct.buffer** %4, align 8
  %77 = call i32 @buf_clear(%struct.buffer* %76)
  %78 = call i32 @secure_memzero(%struct.key* %7, i32 4)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %59
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @msg(i32, i8*) #1

declare dso_local i32 @read_key(%struct.key*, i32*, %struct.buffer*) #1

declare dso_local i32 @check_key(%struct.key*, i32*) #1

declare dso_local i32 @buf_clear(%struct.buffer*) #1

declare dso_local i32 @init_key_ctx(i32*, %struct.key*, i32*, i32, i8*) #1

declare dso_local i32 @secure_memzero(%struct.key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
