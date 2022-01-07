; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_fixup_key.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_fixup_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.key_type = type { i32, i64 }
%struct.gc_arena = type { i32 }

@D_CRYPTO_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fixup_key(%struct.key* %0, %struct.key_type* %1) #0 {
  %3 = alloca %struct.key*, align 8
  %4 = alloca %struct.key_type*, align 8
  %5 = alloca %struct.gc_arena, align 4
  %6 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %3, align 8
  store %struct.key_type* %1, %struct.key_type** %4, align 8
  %7 = call i32 (...) @gc_new()
  %8 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %5, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load %struct.key_type*, %struct.key_type** %4, align 8
  %10 = getelementptr inbounds %struct.key_type, %struct.key_type* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load %struct.key_type*, %struct.key_type** %4, align 8
  %15 = getelementptr inbounds %struct.key_type, %struct.key_type* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @key_des_num_cblocks(i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load %struct.key*, %struct.key** %3, align 8
  %22 = getelementptr inbounds %struct.key, %struct.key* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.key_type*, %struct.key_type** %4, align 8
  %25 = getelementptr inbounds %struct.key_type, %struct.key_type* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @key_des_fixup(i32 %23, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %20, %13
  br label %30

30:                                               ; preds = %29, %2
  %31 = call i32 @gc_free(%struct.gc_arena* %5)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @key_des_num_cblocks(i64) #1

declare dso_local i32 @key_des_fixup(i32, i32, i32) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
