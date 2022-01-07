; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_tls_multi_free.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_tls_multi_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_multi = type { i32*, %struct.tls_multi*, i32, %struct.tls_multi*, %struct.tls_multi*, %struct.tls_multi* }

@TM_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls_multi_free(%struct.tls_multi* %0, i32 %1) #0 {
  %3 = alloca %struct.tls_multi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tls_multi* %0, %struct.tls_multi** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %7 = call i32 @ASSERT(%struct.tls_multi* %6)
  %8 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %9 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %8, i32 0, i32 4
  %10 = load %struct.tls_multi*, %struct.tls_multi** %9, align 8
  %11 = icmp ne %struct.tls_multi* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %14 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %13, i32 0, i32 4
  %15 = load %struct.tls_multi*, %struct.tls_multi** %14, align 8
  %16 = call i32 @free(%struct.tls_multi* %15)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %19 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %18, i32 0, i32 3
  %20 = load %struct.tls_multi*, %struct.tls_multi** %19, align 8
  %21 = icmp ne %struct.tls_multi* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %24 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %23, i32 0, i32 3
  %25 = load %struct.tls_multi*, %struct.tls_multi** %24, align 8
  %26 = call i32 @free(%struct.tls_multi* %25)
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %29 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @cert_hash_free(i32 %30)
  %32 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %33 = call i32 @wipe_auth_token(%struct.tls_multi* %32)
  %34 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %35 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %34, i32 0, i32 1
  %36 = load %struct.tls_multi*, %struct.tls_multi** %35, align 8
  %37 = call i32 @free(%struct.tls_multi* %36)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %50, %27
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @TM_SIZE, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %44 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @tls_session_free(i32* %48, i32 0)
  br label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %38

53:                                               ; preds = %38
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %58 = call i32 @secure_memzero(%struct.tls_multi* %57, i32 48)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %61 = call i32 @free(%struct.tls_multi* %60)
  ret void
}

declare dso_local i32 @ASSERT(%struct.tls_multi*) #1

declare dso_local i32 @free(%struct.tls_multi*) #1

declare dso_local i32 @cert_hash_free(i32) #1

declare dso_local i32 @wipe_auth_token(%struct.tls_multi*) #1

declare dso_local i32 @tls_session_free(i32*, i32) #1

declare dso_local i32 @secure_memzero(%struct.tls_multi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
