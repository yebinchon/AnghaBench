; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_d1_lib.c_dtls1_shutdown.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_d1_lib.c_dtls1_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SSL_SENT_SHUTDOWN = common dso_local global i32 0, align 4
@BIO_CTRL_DGRAM_SCTP_SAVE_SHUTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtls1_shutdown(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = call i32* @SSL_get_wbio(%struct.TYPE_5__* %6)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %36

10:                                               ; preds = %1
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @BIO_dgram_is_sctp(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SSL_SENT_SHUTDOWN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %14
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @BIO_dgram_sctp_wait_for_dry(i32* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %44

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = call i32* @SSL_get_wbio(%struct.TYPE_5__* %31)
  %33 = load i32, i32* @BIO_CTRL_DGRAM_SCTP_SAVE_SHUTDOWN, align 4
  %34 = call i32 @BIO_ctrl(i32* %32, i32 %33, i32 1, i32* null)
  br label %35

35:                                               ; preds = %30, %27
  br label %36

36:                                               ; preds = %35, %14, %10, %1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = call i32 @ssl3_shutdown(%struct.TYPE_5__* %37)
  store i32 %38, i32* %4, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = call i32* @SSL_get_wbio(%struct.TYPE_5__* %39)
  %41 = load i32, i32* @BIO_CTRL_DGRAM_SCTP_SAVE_SHUTDOWN, align 4
  %42 = call i32 @BIO_ctrl(i32* %40, i32 %41, i32 0, i32* null)
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %36, %26
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32* @SSL_get_wbio(%struct.TYPE_5__*) #1

declare dso_local i64 @BIO_dgram_is_sctp(i32*) #1

declare dso_local i32 @BIO_dgram_sctp_wait_for_dry(i32*) #1

declare dso_local i32 @BIO_ctrl(i32*, i32, i32, i32*) #1

declare dso_local i32 @ssl3_shutdown(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
