; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_SSL_key_update.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_SSL_key_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@SSL_F_SSL_KEY_UPDATE = common dso_local global i32 0, align 4
@SSL_R_WRONG_SSL_VERSION = common dso_local global i32 0, align 4
@SSL_KEY_UPDATE_NOT_REQUESTED = common dso_local global i32 0, align 4
@SSL_KEY_UPDATE_REQUESTED = common dso_local global i32 0, align 4
@SSL_R_INVALID_KEY_UPDATE_TYPE = common dso_local global i32 0, align 4
@SSL_R_STILL_IN_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_key_update(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = call i32 @SSL_IS_TLS13(%struct.TYPE_6__* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @SSL_F_SSL_KEY_UPDATE, align 4
  %11 = load i32, i32* @SSL_R_WRONG_SSL_VERSION, align 4
  %12 = call i32 @SSLerr(i32 %10, i32 %11)
  store i32 0, i32* %3, align 4
  br label %39

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SSL_KEY_UPDATE_NOT_REQUESTED, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SSL_KEY_UPDATE_REQUESTED, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @SSL_F_SSL_KEY_UPDATE, align 4
  %23 = load i32, i32* @SSL_R_INVALID_KEY_UPDATE_TYPE, align 4
  %24 = call i32 @SSLerr(i32 %22, i32 %23)
  store i32 0, i32* %3, align 4
  br label %39

25:                                               ; preds = %17, %13
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = call i32 @SSL_is_init_finished(%struct.TYPE_6__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @SSL_F_SSL_KEY_UPDATE, align 4
  %31 = load i32, i32* @SSL_R_STILL_IN_INIT, align 4
  %32 = call i32 @SSLerr(i32 %30, i32 %31)
  store i32 0, i32* %3, align 4
  br label %39

33:                                               ; preds = %25
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = call i32 @ossl_statem_set_in_init(%struct.TYPE_6__* %34, i32 1)
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %33, %29, %21, %9
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @SSL_IS_TLS13(%struct.TYPE_6__*) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @SSL_is_init_finished(%struct.TYPE_6__*) #1

declare dso_local i32 @ossl_statem_set_in_init(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
