; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_sock.c_sock_write.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_sock.c_sock_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32)* @sock_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sock_write(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = call i32 (...) @clear_socket_error()
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = call i64 @BIO_should_ktls_ctrl_msg_flag(%struct.TYPE_7__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = trunc i64 %17 to i8
  store i8 %18, i8* %8, align 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8, i8* %8, align 1
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @ktls_send_ctrl_message(i32 %21, i8 zeroext %22, i8* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %13
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %7, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = call i32 @BIO_clear_ktls_ctrl_msg_flag(%struct.TYPE_7__* %30)
  br label %32

32:                                               ; preds = %28, %13
  br label %40

33:                                               ; preds = %3
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @writesocket(i32 %36, i8* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %33, %32
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = call i32 @BIO_clear_retry_flags(%struct.TYPE_7__* %41)
  %43 = load i32, i32* %7, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @BIO_sock_should_retry(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = call i32 @BIO_set_retry_write(%struct.TYPE_7__* %50)
  br label %52

52:                                               ; preds = %49, %45
  br label %53

53:                                               ; preds = %52, %40
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @clear_socket_error(...) #1

declare dso_local i64 @BIO_should_ktls_ctrl_msg_flag(%struct.TYPE_7__*) #1

declare dso_local i32 @ktls_send_ctrl_message(i32, i8 zeroext, i8*, i32) #1

declare dso_local i32 @BIO_clear_ktls_ctrl_msg_flag(%struct.TYPE_7__*) #1

declare dso_local i32 @writesocket(i32, i8*, i32) #1

declare dso_local i32 @BIO_clear_retry_flags(%struct.TYPE_7__*) #1

declare dso_local i64 @BIO_sock_should_retry(i32) #1

declare dso_local i32 @BIO_set_retry_write(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
