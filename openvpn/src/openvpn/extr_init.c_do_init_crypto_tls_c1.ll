; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_do_init_crypto_tls_c1.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_do_init_crypto_tls_c1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.options, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.options = type { i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i8*, i32 }

@M_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Error: private key password verification failed\00", align 1
@D_INIT_MEDIUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Re-using SSL/TLS context\00", align 1
@SIGUSR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*)* @do_init_crypto_tls_c1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_init_crypto_tls_c1(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  %3 = alloca %struct.options*, align 8
  store %struct.context* %0, %struct.context** %2, align 8
  %4 = load %struct.context*, %struct.context** %2, align 8
  %5 = getelementptr inbounds %struct.context, %struct.context* %4, i32 0, i32 0
  store %struct.options* %5, %struct.options** %3, align 8
  %6 = load %struct.context*, %struct.context** %2, align 8
  %7 = getelementptr inbounds %struct.context, %struct.context* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = call i32 @tls_ctx_initialised(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %52, label %12

12:                                               ; preds = %1
  %13 = load %struct.options*, %struct.options** %3, align 8
  %14 = load %struct.context*, %struct.context** %2, align 8
  %15 = getelementptr inbounds %struct.context, %struct.context* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = call i32 @init_ssl(%struct.options* %13, i32* %17)
  %19 = load %struct.context*, %struct.context** %2, align 8
  %20 = getelementptr inbounds %struct.context, %struct.context* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = call i32 @tls_ctx_initialised(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %12
  %26 = load i32, i32* @M_FATAL, align 4
  %27 = call i32 @msg(i32 %26, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %12
  %29 = load %struct.context*, %struct.context** %2, align 8
  %30 = getelementptr inbounds %struct.context, %struct.context* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.options*, %struct.options** %3, align 8
  %34 = getelementptr inbounds %struct.options, %struct.options* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.options*, %struct.options** %3, align 8
  %37 = getelementptr inbounds %struct.options, %struct.options* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.options*, %struct.options** %3, align 8
  %40 = getelementptr inbounds %struct.options, %struct.options* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @init_key_type(i32* %32, i32 %35, i32 %38, i32 %41, i32 1, i32 1)
  %43 = load %struct.options*, %struct.options** %3, align 8
  %44 = getelementptr inbounds %struct.options, %struct.options* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.options*, %struct.options** %3, align 8
  %47 = getelementptr inbounds %struct.options, %struct.options* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @prng_init(i32 %45, i32 %48)
  %50 = load %struct.context*, %struct.context** %2, align 8
  %51 = call i32 @do_init_tls_wrap_key(%struct.context* %50)
  br label %57

52:                                               ; preds = %1
  %53 = load i32, i32* @D_INIT_MEDIUM, align 4
  %54 = call i32 @msg(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.context*, %struct.context** %2, align 8
  %56 = call i32 @do_init_tls_wrap_key(%struct.context* %55)
  br label %57

57:                                               ; preds = %52, %28
  ret void
}

declare dso_local i32 @tls_ctx_initialised(i32*) #1

declare dso_local i32 @init_ssl(%struct.options*, i32*) #1

declare dso_local i32 @msg(i32, i8*) #1

declare dso_local i32 @init_key_type(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @prng_init(i32, i32) #1

declare dso_local i32 @do_init_tls_wrap_key(%struct.context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
