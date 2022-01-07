; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_tls_username.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_tls_username.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_multi = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"UNDEF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tls_username(%struct.tls_multi* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tls_multi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.tls_multi* %0, %struct.tls_multi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %7 = load %struct.tls_multi*, %struct.tls_multi** %4, align 8
  %8 = icmp ne %struct.tls_multi* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.tls_multi*, %struct.tls_multi** %4, align 8
  %11 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  br label %13

13:                                               ; preds = %9, %2
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %3, align 8
  br label %27

22:                                               ; preds = %16, %13
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i8* null, i8** %3, align 8
  br label %27

26:                                               ; preds = %22
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %27

27:                                               ; preds = %26, %25, %20
  %28 = load i8*, i8** %3, align 8
  ret i8* %28
}

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
