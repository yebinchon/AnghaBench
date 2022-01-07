; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_create_ticket_prequel.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_create_ticket_prequel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_CREATE_TICKET_PREQUEL = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@TICKET_NONCE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32, i8*)* @create_ticket_prequel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_ticket_prequel(%struct.TYPE_7__* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = call i64 @SSL_IS_TLS13(%struct.TYPE_7__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %26

20:                                               ; preds = %15, %4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  br label %26

26:                                               ; preds = %20, %19
  %27 = phi i32 [ 0, %19 ], [ %25, %20 ]
  %28 = call i32 @WPACKET_put_bytes_u32(i32* %10, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %33 = load i32, i32* @SSL_F_CREATE_TICKET_PREQUEL, align 4
  %34 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %35 = call i32 @SSLfatal(%struct.TYPE_7__* %31, i32 %32, i32 %33, i32 %34)
  store i32 0, i32* %5, align 4
  br label %69

36:                                               ; preds = %26
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = call i64 @SSL_IS_TLS13(%struct.TYPE_7__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @WPACKET_put_bytes_u32(i32* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i32*, i32** %7, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* @TICKET_NONCE_SIZE, align 4
  %49 = call i32 @WPACKET_sub_memcpy_u8(i32* %46, i8* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %45, %40
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %54 = load i32, i32* @SSL_F_CREATE_TICKET_PREQUEL, align 4
  %55 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %56 = call i32 @SSLfatal(%struct.TYPE_7__* %52, i32 %53, i32 %54, i32 %55)
  store i32 0, i32* %5, align 4
  br label %69

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %36
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @WPACKET_start_sub_packet_u16(i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %65 = load i32, i32* @SSL_F_CREATE_TICKET_PREQUEL, align 4
  %66 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %67 = call i32 @SSLfatal(%struct.TYPE_7__* %63, i32 %64, i32 %65, i32 %66)
  store i32 0, i32* %5, align 4
  br label %69

68:                                               ; preds = %58
  store i32 1, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %62, %51, %30
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @WPACKET_put_bytes_u32(i32*, i32) #1

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_7__*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @WPACKET_sub_memcpy_u8(i32*, i8*, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
