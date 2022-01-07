; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_keymgmt_internal_test.c_set_up.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_keymgmt_internal_test.c_set_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i8*)* @set_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @set_up(i8* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %3, align 8
  %5 = call %struct.TYPE_9__* @OPENSSL_zalloc(i32 32)
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %4, align 8
  %6 = call i32 @TEST_ptr(%struct.TYPE_9__* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %38

8:                                                ; preds = %1
  %9 = call %struct.TYPE_9__* (...) @OPENSSL_CTX_new()
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %11, align 8
  %12 = call i32 @TEST_ptr(%struct.TYPE_9__* %9)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = call %struct.TYPE_9__* @OSSL_PROVIDER_load(%struct.TYPE_9__* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %20, align 8
  %21 = call i32 @TEST_ptr(%struct.TYPE_9__* %18)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %14
  %24 = call %struct.TYPE_9__* (...) @OPENSSL_CTX_new()
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %26, align 8
  %27 = call i32 @TEST_ptr(%struct.TYPE_9__* %24)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = call %struct.TYPE_9__* @OSSL_PROVIDER_load(%struct.TYPE_9__* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %35, align 8
  %36 = call i32 @TEST_ptr(%struct.TYPE_9__* %33)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %29, %23, %14, %8, %1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = call i32 @tear_down(%struct.TYPE_9__* %39)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %43

41:                                               ; preds = %29
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %2, align 8
  br label %43

43:                                               ; preds = %41, %38
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %44
}

declare dso_local i32 @TEST_ptr(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @OPENSSL_zalloc(i32) #1

declare dso_local %struct.TYPE_9__* @OPENSSL_CTX_new(...) #1

declare dso_local %struct.TYPE_9__* @OSSL_PROVIDER_load(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @tear_down(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
