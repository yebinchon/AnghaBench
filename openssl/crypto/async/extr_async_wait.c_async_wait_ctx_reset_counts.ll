; ModuleID = '/home/carl/AnghaBench/openssl/crypto/async/extr_async_wait.c_async_wait_ctx_reset_counts.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/async/extr_async_wait.c_async_wait_ctx_reset_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.fd_lookup_st*, i64, i64 }
%struct.fd_lookup_st = type { %struct.fd_lookup_st*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @async_wait_ctx_reset_counts(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.fd_lookup_st*, align 8
  %4 = alloca %struct.fd_lookup_st*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store %struct.fd_lookup_st* null, %struct.fd_lookup_st** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %10, align 8
  store %struct.fd_lookup_st* %11, %struct.fd_lookup_st** %3, align 8
  br label %12

12:                                               ; preds = %57, %48, %1
  %13 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %3, align 8
  %14 = icmp ne %struct.fd_lookup_st* %13, null
  br i1 %14, label %15, label %62

15:                                               ; preds = %12
  %16 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %3, align 8
  %17 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %15
  %21 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %4, align 8
  %22 = icmp eq %struct.fd_lookup_st* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %3, align 8
  %25 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %24, i32 0, i32 0
  %26 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %25, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store %struct.fd_lookup_st* %26, %struct.fd_lookup_st** %28, align 8
  br label %35

29:                                               ; preds = %20
  %30 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %3, align 8
  %31 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %30, i32 0, i32 0
  %32 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %31, align 8
  %33 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %4, align 8
  %34 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %33, i32 0, i32 0
  store %struct.fd_lookup_st* %32, %struct.fd_lookup_st** %34, align 8
  br label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %3, align 8
  %37 = call i32 @OPENSSL_free(%struct.fd_lookup_st* %36)
  %38 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %4, align 8
  %39 = icmp eq %struct.fd_lookup_st* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %42, align 8
  store %struct.fd_lookup_st* %43, %struct.fd_lookup_st** %3, align 8
  br label %48

44:                                               ; preds = %35
  %45 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %4, align 8
  %46 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %45, i32 0, i32 0
  %47 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %46, align 8
  store %struct.fd_lookup_st* %47, %struct.fd_lookup_st** %3, align 8
  br label %48

48:                                               ; preds = %44, %40
  br label %12

49:                                               ; preds = %15
  %50 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %3, align 8
  %51 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %3, align 8
  %56 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %49
  %58 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %3, align 8
  store %struct.fd_lookup_st* %58, %struct.fd_lookup_st** %4, align 8
  %59 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %3, align 8
  %60 = getelementptr inbounds %struct.fd_lookup_st, %struct.fd_lookup_st* %59, i32 0, i32 0
  %61 = load %struct.fd_lookup_st*, %struct.fd_lookup_st** %60, align 8
  store %struct.fd_lookup_st* %61, %struct.fd_lookup_st** %3, align 8
  br label %12

62:                                               ; preds = %12
  ret void
}

declare dso_local i32 @OPENSSL_free(%struct.fd_lookup_st*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
