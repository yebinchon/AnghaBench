; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_key.c_EC_KEY_dup.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_key.c_EC_KEY_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @EC_KEY_dup(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_8__* @ec_key_new_method_int(i32 %7, i32 %10)
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %4, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = icmp eq %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %25

15:                                               ; preds = %1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = call i32* @EC_KEY_copy(%struct.TYPE_8__* %16, %struct.TYPE_8__* %17)
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = call i32 @EC_KEY_free(%struct.TYPE_8__* %21)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %25

23:                                               ; preds = %15
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %2, align 8
  br label %25

25:                                               ; preds = %23, %20, %14
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %26
}

declare dso_local %struct.TYPE_8__* @ec_key_new_method_int(i32, i32) #1

declare dso_local i32* @EC_KEY_copy(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @EC_KEY_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
