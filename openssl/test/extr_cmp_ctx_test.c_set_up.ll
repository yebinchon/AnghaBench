; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_cmp_ctx_test.c_set_up.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_cmp_ctx_test.c_set_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_7__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i8*)* @set_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @set_up(i8* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %3, align 8
  %5 = call %struct.TYPE_7__* @OPENSSL_zalloc(i32 16)
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %4, align 8
  %6 = call i32 @TEST_ptr(%struct.TYPE_7__* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %23

9:                                                ; preds = %1
  %10 = call %struct.TYPE_7__* (...) @OSSL_CMP_CTX_new()
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %12, align 8
  %13 = call i32 @TEST_ptr(%struct.TYPE_7__* %10)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = call i32 @tear_down(%struct.TYPE_7__* %16)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %23

18:                                               ; preds = %9
  %19 = load i8*, i8** %3, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %2, align 8
  br label %23

23:                                               ; preds = %18, %15, %8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %24
}

declare dso_local i32 @TEST_ptr(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @OPENSSL_zalloc(i32) #1

declare dso_local %struct.TYPE_7__* @OSSL_CMP_CTX_new(...) #1

declare dso_local i32 @tear_down(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
