; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_ssl_print_sigalgs.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_ssl_print_sigalgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_undef = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Peer signing digest: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Peer signature type: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_print_sigalgs(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @SSL_is_server(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @ssl_print_client_cert_types(i32* %10, i32* %11)
  br label %13

13:                                               ; preds = %9, %2
  %14 = load i32*, i32** %3, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @do_print_sigalgs(i32* %14, i32* %15, i32 0)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @do_print_sigalgs(i32* %17, i32* %18, i32 1)
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @SSL_get_peer_signature_nid(i32* %20, i32* %5)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @NID_undef, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @OBJ_nid2sn(i32 %29)
  %31 = call i32 @BIO_printf(i32* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %27, %23, %13
  %33 = load i32*, i32** %4, align 8
  %34 = call i64 @SSL_get_peer_signature_type_nid(i32* %33, i32* %5)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @get_sigtype(i32 %38)
  %40 = call i32 @BIO_printf(i32* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %36, %32
  ret i32 1
}

declare dso_local i32 @SSL_is_server(i32*) #1

declare dso_local i32 @ssl_print_client_cert_types(i32*, i32*) #1

declare dso_local i32 @do_print_sigalgs(i32*, i32*, i32) #1

declare dso_local i64 @SSL_get_peer_signature_nid(i32*, i32*) #1

declare dso_local i32 @BIO_printf(i32*, i8*, i32) #1

declare dso_local i32 @OBJ_nid2sn(i32) #1

declare dso_local i64 @SSL_get_peer_signature_type_nid(i32*, i32*) #1

declare dso_local i32 @get_sigtype(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
