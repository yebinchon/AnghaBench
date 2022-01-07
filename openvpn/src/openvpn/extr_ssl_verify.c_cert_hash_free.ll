; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_cert_hash_free.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl_verify.c_cert_hash_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cert_hash_set = type { %struct.cert_hash_set** }

@MAX_CERT_DEPTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cert_hash_free(%struct.cert_hash_set* %0) #0 {
  %2 = alloca %struct.cert_hash_set*, align 8
  %3 = alloca i32, align 4
  store %struct.cert_hash_set* %0, %struct.cert_hash_set** %2, align 8
  %4 = load %struct.cert_hash_set*, %struct.cert_hash_set** %2, align 8
  %5 = icmp ne %struct.cert_hash_set* %4, null
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %20, %6
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @MAX_CERT_DEPTH, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load %struct.cert_hash_set*, %struct.cert_hash_set** %2, align 8
  %13 = getelementptr inbounds %struct.cert_hash_set, %struct.cert_hash_set* %12, i32 0, i32 0
  %14 = load %struct.cert_hash_set**, %struct.cert_hash_set*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.cert_hash_set*, %struct.cert_hash_set** %14, i64 %16
  %18 = load %struct.cert_hash_set*, %struct.cert_hash_set** %17, align 8
  %19 = call i32 @free(%struct.cert_hash_set* %18)
  br label %20

20:                                               ; preds = %11
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %7

23:                                               ; preds = %7
  %24 = load %struct.cert_hash_set*, %struct.cert_hash_set** %2, align 8
  %25 = call i32 @free(%struct.cert_hash_set* %24)
  br label %26

26:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @free(%struct.cert_hash_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
