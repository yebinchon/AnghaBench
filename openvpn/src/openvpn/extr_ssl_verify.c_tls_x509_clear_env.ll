; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_tls_x509_clear_env.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_tls_x509_clear_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_set = type { %struct.env_item* }
%struct.env_item = type { i64, %struct.env_item* }

@.str = private unnamed_addr constant [6 x i8] c"X509_\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls_x509_clear_env(%struct.env_set* %0) #0 {
  %2 = alloca %struct.env_set*, align 8
  %3 = alloca %struct.env_item*, align 8
  %4 = alloca %struct.env_item*, align 8
  store %struct.env_set* %0, %struct.env_set** %2, align 8
  %5 = load %struct.env_set*, %struct.env_set** %2, align 8
  %6 = getelementptr inbounds %struct.env_set, %struct.env_set* %5, i32 0, i32 0
  %7 = load %struct.env_item*, %struct.env_item** %6, align 8
  store %struct.env_item* %7, %struct.env_item** %3, align 8
  br label %8

8:                                                ; preds = %32, %1
  %9 = load %struct.env_item*, %struct.env_item** %3, align 8
  %10 = icmp ne %struct.env_item* %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = load %struct.env_item*, %struct.env_item** %3, align 8
  %13 = getelementptr inbounds %struct.env_item, %struct.env_item* %12, i32 0, i32 1
  %14 = load %struct.env_item*, %struct.env_item** %13, align 8
  store %struct.env_item* %14, %struct.env_item** %4, align 8
  %15 = load %struct.env_item*, %struct.env_item** %3, align 8
  %16 = getelementptr inbounds %struct.env_item, %struct.env_item* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %11
  %20 = load %struct.env_item*, %struct.env_item** %3, align 8
  %21 = getelementptr inbounds %struct.env_item, %struct.env_item* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %24 = call i64 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %22, i32 %23)
  %25 = icmp eq i64 0, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.env_set*, %struct.env_set** %2, align 8
  %28 = load %struct.env_item*, %struct.env_item** %3, align 8
  %29 = getelementptr inbounds %struct.env_item, %struct.env_item* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @env_set_del(%struct.env_set* %27, i64 %30)
  br label %32

32:                                               ; preds = %26, %19, %11
  %33 = load %struct.env_item*, %struct.env_item** %4, align 8
  store %struct.env_item* %33, %struct.env_item** %3, align 8
  br label %8

34:                                               ; preds = %8
  ret void
}

declare dso_local i64 @strncmp(i8*, i64, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @env_set_del(%struct.env_set*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
