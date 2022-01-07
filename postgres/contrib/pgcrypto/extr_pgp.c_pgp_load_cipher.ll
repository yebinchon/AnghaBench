; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp.c_pgp_load_cipher.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp.c_pgp_load_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cipher_info = type { i32 }

@PXE_PGP_CORRUPT_DATA = common dso_local global i32 0, align 4
@PXE_PGP_UNSUPPORTED_CIPHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgp_load_cipher(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cipher_info*, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.cipher_info* @get_cipher_info(i32 %8)
  store %struct.cipher_info* %9, %struct.cipher_info** %7, align 8
  %10 = load %struct.cipher_info*, %struct.cipher_info** %7, align 8
  %11 = icmp eq %struct.cipher_info* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %13, i32* %3, align 4
  br label %25

14:                                               ; preds = %2
  %15 = load %struct.cipher_info*, %struct.cipher_info** %7, align 8
  %16 = getelementptr inbounds %struct.cipher_info, %struct.cipher_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32**, i32*** %5, align 8
  %19 = call i32 @px_find_cipher(i32 %17, i32** %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %25

23:                                               ; preds = %14
  %24 = load i32, i32* @PXE_PGP_UNSUPPORTED_CIPHER, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %22, %12
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.cipher_info* @get_cipher_info(i32) #1

declare dso_local i32 @px_find_cipher(i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
