; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls1_get_supported_groups.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_tls1_get_supported_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32* }

@suiteb_curves = common dso_local global i32* null, align 8
@supported_groups_default = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls1_get_supported_groups(%struct.TYPE_6__* %0, i32** %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = call i32 @tls1_suiteb(%struct.TYPE_6__* %7)
  switch i32 %8, label %24 [
    i32 130, label %9
    i32 129, label %15
    i32 128, label %19
  ]

9:                                                ; preds = %3
  %10 = load i32*, i32** @suiteb_curves, align 8
  %11 = load i32**, i32*** %5, align 8
  store i32* %10, i32** %11, align 8
  %12 = load i32*, i32** @suiteb_curves, align 8
  %13 = call i64 @OSSL_NELEM(i32* %12)
  %14 = load i64*, i64** %6, align 8
  store i64 %13, i64* %14, align 8
  br label %48

15:                                               ; preds = %3
  %16 = load i32*, i32** @suiteb_curves, align 8
  %17 = load i32**, i32*** %5, align 8
  store i32* %16, i32** %17, align 8
  %18 = load i64*, i64** %6, align 8
  store i64 1, i64* %18, align 8
  br label %48

19:                                               ; preds = %3
  %20 = load i32*, i32** @suiteb_curves, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32**, i32*** %5, align 8
  store i32* %21, i32** %22, align 8
  %23 = load i64*, i64** %6, align 8
  store i64 1, i64* %23, align 8
  br label %48

24:                                               ; preds = %3
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i32*, i32** @supported_groups_default, align 8
  %32 = load i32**, i32*** %5, align 8
  store i32* %31, i32** %32, align 8
  %33 = load i32*, i32** @supported_groups_default, align 8
  %34 = call i64 @OSSL_NELEM(i32* %33)
  %35 = load i64*, i64** %6, align 8
  store i64 %34, i64* %35, align 8
  br label %47

36:                                               ; preds = %24
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32**, i32*** %5, align 8
  store i32* %40, i32** %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %6, align 8
  store i64 %45, i64* %46, align 8
  br label %47

47:                                               ; preds = %36, %30
  br label %48

48:                                               ; preds = %47, %19, %15, %9
  ret void
}

declare dso_local i32 @tls1_suiteb(%struct.TYPE_6__*) #1

declare dso_local i64 @OSSL_NELEM(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
