; ModuleID = '/home/carl/AnghaBench/openssl/crypto/conf/extr_conf_ssl.c_ssl_module_free.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/conf/extr_conf_ssl.c_ssl_module_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_conf_name_st = type { i64, %struct.ssl_conf_name_st*, %struct.ssl_conf_name_st*, %struct.ssl_conf_name_st*, %struct.ssl_conf_name_st* }

@ssl_names = common dso_local global %struct.ssl_conf_name_st* null, align 8
@ssl_names_count = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @ssl_module_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_module_free(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ssl_conf_name_st*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load %struct.ssl_conf_name_st*, %struct.ssl_conf_name_st** @ssl_names, align 8
  %7 = icmp eq %struct.ssl_conf_name_st* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %59

9:                                                ; preds = %1
  store i64 0, i64* %3, align 8
  br label %10

10:                                               ; preds = %53, %9
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @ssl_names_count, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %56

14:                                               ; preds = %10
  %15 = load %struct.ssl_conf_name_st*, %struct.ssl_conf_name_st** @ssl_names, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds %struct.ssl_conf_name_st, %struct.ssl_conf_name_st* %15, i64 %16
  store %struct.ssl_conf_name_st* %17, %struct.ssl_conf_name_st** %5, align 8
  %18 = load %struct.ssl_conf_name_st*, %struct.ssl_conf_name_st** %5, align 8
  %19 = getelementptr inbounds %struct.ssl_conf_name_st, %struct.ssl_conf_name_st* %18, i32 0, i32 4
  %20 = load %struct.ssl_conf_name_st*, %struct.ssl_conf_name_st** %19, align 8
  %21 = call i32 @OPENSSL_free(%struct.ssl_conf_name_st* %20)
  store i64 0, i64* %4, align 8
  br label %22

22:                                               ; preds = %45, %14
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.ssl_conf_name_st*, %struct.ssl_conf_name_st** %5, align 8
  %25 = getelementptr inbounds %struct.ssl_conf_name_st, %struct.ssl_conf_name_st* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load %struct.ssl_conf_name_st*, %struct.ssl_conf_name_st** %5, align 8
  %30 = getelementptr inbounds %struct.ssl_conf_name_st, %struct.ssl_conf_name_st* %29, i32 0, i32 1
  %31 = load %struct.ssl_conf_name_st*, %struct.ssl_conf_name_st** %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds %struct.ssl_conf_name_st, %struct.ssl_conf_name_st* %31, i64 %32
  %34 = getelementptr inbounds %struct.ssl_conf_name_st, %struct.ssl_conf_name_st* %33, i32 0, i32 3
  %35 = load %struct.ssl_conf_name_st*, %struct.ssl_conf_name_st** %34, align 8
  %36 = call i32 @OPENSSL_free(%struct.ssl_conf_name_st* %35)
  %37 = load %struct.ssl_conf_name_st*, %struct.ssl_conf_name_st** %5, align 8
  %38 = getelementptr inbounds %struct.ssl_conf_name_st, %struct.ssl_conf_name_st* %37, i32 0, i32 1
  %39 = load %struct.ssl_conf_name_st*, %struct.ssl_conf_name_st** %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds %struct.ssl_conf_name_st, %struct.ssl_conf_name_st* %39, i64 %40
  %42 = getelementptr inbounds %struct.ssl_conf_name_st, %struct.ssl_conf_name_st* %41, i32 0, i32 2
  %43 = load %struct.ssl_conf_name_st*, %struct.ssl_conf_name_st** %42, align 8
  %44 = call i32 @OPENSSL_free(%struct.ssl_conf_name_st* %43)
  br label %45

45:                                               ; preds = %28
  %46 = load i64, i64* %4, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %4, align 8
  br label %22

48:                                               ; preds = %22
  %49 = load %struct.ssl_conf_name_st*, %struct.ssl_conf_name_st** %5, align 8
  %50 = getelementptr inbounds %struct.ssl_conf_name_st, %struct.ssl_conf_name_st* %49, i32 0, i32 1
  %51 = load %struct.ssl_conf_name_st*, %struct.ssl_conf_name_st** %50, align 8
  %52 = call i32 @OPENSSL_free(%struct.ssl_conf_name_st* %51)
  br label %53

53:                                               ; preds = %48
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %3, align 8
  br label %10

56:                                               ; preds = %10
  %57 = load %struct.ssl_conf_name_st*, %struct.ssl_conf_name_st** @ssl_names, align 8
  %58 = call i32 @OPENSSL_free(%struct.ssl_conf_name_st* %57)
  store %struct.ssl_conf_name_st* null, %struct.ssl_conf_name_st** @ssl_names, align 8
  store i64 0, i64* @ssl_names_count, align 8
  br label %59

59:                                               ; preds = %56, %8
  ret void
}

declare dso_local i32 @OPENSSL_free(%struct.ssl_conf_name_st*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
