; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_auth_token.c_wipe_auth_token.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_auth_token.c_wipe_auth_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_multi = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wipe_auth_token(%struct.tls_multi* %0) #0 {
  %2 = alloca %struct.tls_multi*, align 8
  store %struct.tls_multi* %0, %struct.tls_multi** %2, align 8
  %3 = load %struct.tls_multi*, %struct.tls_multi** %2, align 8
  %4 = icmp ne %struct.tls_multi* %3, null
  br i1 %4, label %5, label %46

5:                                                ; preds = %1
  %6 = load %struct.tls_multi*, %struct.tls_multi** %2, align 8
  %7 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %5
  %11 = load %struct.tls_multi*, %struct.tls_multi** %2, align 8
  %12 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.tls_multi*, %struct.tls_multi** %2, align 8
  %15 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @strlen(i32* %16)
  %18 = call i32 @secure_memzero(i32* %13, i32 %17)
  %19 = load %struct.tls_multi*, %struct.tls_multi** %2, align 8
  %20 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @free(i32* %21)
  br label %23

23:                                               ; preds = %10, %5
  %24 = load %struct.tls_multi*, %struct.tls_multi** %2, align 8
  %25 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load %struct.tls_multi*, %struct.tls_multi** %2, align 8
  %30 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.tls_multi*, %struct.tls_multi** %2, align 8
  %33 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @strlen(i32* %34)
  %36 = call i32 @secure_memzero(i32* %31, i32 %35)
  %37 = load %struct.tls_multi*, %struct.tls_multi** %2, align 8
  %38 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @free(i32* %39)
  br label %41

41:                                               ; preds = %28, %23
  %42 = load %struct.tls_multi*, %struct.tls_multi** %2, align 8
  %43 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load %struct.tls_multi*, %struct.tls_multi** %2, align 8
  %45 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %41, %1
  ret void
}

declare dso_local i32 @secure_memzero(i32*, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
