; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_lib.c_tls13_restore_handshake_digest_for_pha.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_lib.c_tls13_restore_handshake_digest_for_pha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS13_RESTORE_HANDSHAKE_DIGEST_FOR_PHA = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls13_restore_handshake_digest_for_pha(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %11 = load i32, i32* @SSL_F_TLS13_RESTORE_HANDSHAKE_DIGEST_FOR_PHA, align 4
  %12 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %13 = call i32 @SSLfatal(%struct.TYPE_6__* %9, i32 %10, i32 %11, i32 %12)
  store i32 0, i32* %2, align 4
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @EVP_MD_CTX_copy_ex(i32 %18, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %14
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %27 = load i32, i32* @SSL_F_TLS13_RESTORE_HANDSHAKE_DIGEST_FOR_PHA, align 4
  %28 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %29 = call i32 @SSLfatal(%struct.TYPE_6__* %25, i32 %26, i32 %27, i32 %28)
  store i32 0, i32* %2, align 4
  br label %31

30:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %24, %8
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @SSLfatal(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @EVP_MD_CTX_copy_ex(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
