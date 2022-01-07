; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_lib.c_BN_clear_free.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_lib.c_BN_clear_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }

@BN_FLG_STATIC_DATA = common dso_local global i32 0, align 4
@BN_FLG_MALLOCED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BN_clear_free(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = icmp eq %struct.TYPE_7__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %29

6:                                                ; preds = %1
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = load i32, i32* @BN_FLG_STATIC_DATA, align 4
  %14 = call i64 @BN_get_flags(%struct.TYPE_7__* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = call i32 @bn_free_d(%struct.TYPE_7__* %17, i32 1)
  br label %19

19:                                               ; preds = %16, %11, %6
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = load i32, i32* @BN_FLG_MALLOCED, align 4
  %22 = call i64 @BN_get_flags(%struct.TYPE_7__* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = call i32 @OPENSSL_cleanse(%struct.TYPE_7__* %25, i32 8)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = call i32 @OPENSSL_free(%struct.TYPE_7__* %27)
  br label %29

29:                                               ; preds = %5, %24, %19
  ret void
}

declare dso_local i64 @BN_get_flags(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @bn_free_d(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @OPENSSL_cleanse(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
