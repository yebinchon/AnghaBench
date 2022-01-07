; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_tls_lock_username.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_tls_lock_username.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_multi = type { i64 }

@D_TLS_ERRORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"TLS Auth Error: username attempted to change from '%s' to '%s' -- tunnel disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tls_multi*, i8*)* @tls_lock_username to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_lock_username(%struct.tls_multi* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tls_multi*, align 8
  %5 = alloca i8*, align 8
  store %struct.tls_multi* %0, %struct.tls_multi** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.tls_multi*, %struct.tls_multi** %4, align 8
  %7 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.tls_multi*, %struct.tls_multi** %4, align 8
  %16 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @strcmp(i8* %14, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %13, %10
  %21 = load i32, i32* @D_TLS_ERRORS, align 4
  %22 = load %struct.tls_multi*, %struct.tls_multi** %4, align 8
  %23 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @np(i8* %25)
  %27 = call i32 @msg(i32 %21, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i64 %24, i32 %26)
  %28 = load %struct.tls_multi*, %struct.tls_multi** %4, align 8
  %29 = call i32 @tls_deauthenticate(%struct.tls_multi* %28)
  store i32 0, i32* %3, align 4
  br label %41

30:                                               ; preds = %13
  br label %40

31:                                               ; preds = %2
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @string_alloc(i8* %35, i32* null)
  %37 = load %struct.tls_multi*, %struct.tls_multi** %4, align 8
  %38 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %34, %31
  br label %40

40:                                               ; preds = %39, %30
  store i32 1, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %20
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @strcmp(i8*, i64) #1

declare dso_local i32 @msg(i32, i8*, i64, i32) #1

declare dso_local i32 @np(i8*) #1

declare dso_local i32 @tls_deauthenticate(%struct.tls_multi*) #1

declare dso_local i64 @string_alloc(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
