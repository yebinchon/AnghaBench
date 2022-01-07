; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_auth_set_client_reason.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_auth_set_client_reason.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_multi = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @auth_set_client_reason(%struct.tls_multi* %0, i8* %1) #0 {
  %3 = alloca %struct.tls_multi*, align 8
  %4 = alloca i8*, align 8
  store %struct.tls_multi* %0, %struct.tls_multi** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %6 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %11 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @free(i32* %12)
  %14 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %15 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  br label %16

16:                                               ; preds = %9, %2
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strlen(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = call i32* @string_alloc(i8* %24, i32* null)
  %26 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %27 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  br label %28

28:                                               ; preds = %23, %19, %16
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @string_alloc(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
