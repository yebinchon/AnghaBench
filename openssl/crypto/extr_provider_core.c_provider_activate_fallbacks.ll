; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_provider_core.c_provider_activate_fallbacks.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_provider_core.c_provider_activate_fallbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.provider_store_st = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.provider_store_st*)* @provider_activate_fallbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @provider_activate_fallbacks(%struct.provider_store_st* %0) #0 {
  %2 = alloca %struct.provider_store_st*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store %struct.provider_store_st* %0, %struct.provider_store_st** %2, align 8
  %7 = load %struct.provider_store_st*, %struct.provider_store_st** %2, align 8
  %8 = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %46

11:                                               ; preds = %1
  %12 = load %struct.provider_store_st*, %struct.provider_store_st** %2, align 8
  %13 = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @sk_OSSL_PROVIDER_num(i32 %14)
  store i32 %15, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %36, %11
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load %struct.provider_store_st*, %struct.provider_store_st** %2, align 8
  %22 = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.TYPE_4__* @sk_OSSL_PROVIDER_value(i32 %23, i32 %24)
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %6, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = call i32 @provider_activate(%struct.TYPE_4__* %33)
  br label %35

35:                                               ; preds = %30, %20
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %16

39:                                               ; preds = %16
  %40 = load i32, i32* %4, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.provider_store_st*, %struct.provider_store_st** %2, align 8
  %44 = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %39
  br label %46

46:                                               ; preds = %45, %1
  ret void
}

declare dso_local i32 @sk_OSSL_PROVIDER_num(i32) #1

declare dso_local %struct.TYPE_4__* @sk_OSSL_PROVIDER_value(i32, i32) #1

declare dso_local i32 @provider_activate(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
