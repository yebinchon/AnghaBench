; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_packet.c_WPACKET_sub_allocate_bytes__.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_packet.c_WPACKET_sub_allocate_bytes__.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WPACKET_sub_allocate_bytes__(i32* %0, i64 %1, i8** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i64, i64* %9, align 8
  %12 = call i32 @WPACKET_start_sub_packet_len__(i32* %10, i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %4
  %15 = load i32*, i32** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i8**, i8*** %8, align 8
  %18 = call i32 @WPACKET_allocate_bytes(i32* %15, i64 %16, i8** %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @WPACKET_close(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20, %14, %4
  store i32 0, i32* %5, align 4
  br label %26

25:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @WPACKET_start_sub_packet_len__(i32*, i64) #1

declare dso_local i32 @WPACKET_allocate_bytes(i32*, i64, i8**) #1

declare dso_local i32 @WPACKET_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
