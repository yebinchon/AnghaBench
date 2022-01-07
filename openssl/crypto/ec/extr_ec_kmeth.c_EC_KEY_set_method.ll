; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_kmeth.c_EC_KEY_set_method.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_kmeth.c_EC_KEY_set_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { void (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EC_KEY_set_method(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca void (%struct.TYPE_7__*)*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load void (%struct.TYPE_7__*)*, void (%struct.TYPE_7__*)** %10, align 8
  store void (%struct.TYPE_7__*)* %11, void (%struct.TYPE_7__*)** %6, align 8
  %12 = load void (%struct.TYPE_7__*)*, void (%struct.TYPE_7__*)** %6, align 8
  %13 = icmp ne void (%struct.TYPE_7__*)* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load void (%struct.TYPE_7__*)*, void (%struct.TYPE_7__*)** %6, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  call void %15(%struct.TYPE_7__* %16)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @ENGINE_finish(i32* %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %28, align 8
  %30 = icmp ne i32 (%struct.TYPE_7__*)* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %17
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = call i32 %34(%struct.TYPE_7__* %35)
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @ENGINE_finish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
