; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp.c_pgp_get_cipher_code.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp.c_pgp_get_cipher_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cipher_info = type { i32, i64 }

@cipher_list = common dso_local global %struct.cipher_info* null, align 8
@PXE_PGP_UNSUPPORTED_CIPHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgp_get_cipher_code(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cipher_info*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.cipher_info*, %struct.cipher_info** @cipher_list, align 8
  store %struct.cipher_info* %5, %struct.cipher_info** %4, align 8
  br label %6

6:                                                ; preds = %23, %1
  %7 = load %struct.cipher_info*, %struct.cipher_info** %4, align 8
  %8 = getelementptr inbounds %struct.cipher_info, %struct.cipher_info* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %6
  %12 = load %struct.cipher_info*, %struct.cipher_info** %4, align 8
  %13 = getelementptr inbounds %struct.cipher_info, %struct.cipher_info* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @pg_strcasecmp(i64 %14, i8* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load %struct.cipher_info*, %struct.cipher_info** %4, align 8
  %20 = getelementptr inbounds %struct.cipher_info, %struct.cipher_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %2, align 4
  br label %28

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.cipher_info*, %struct.cipher_info** %4, align 8
  %25 = getelementptr inbounds %struct.cipher_info, %struct.cipher_info* %24, i32 1
  store %struct.cipher_info* %25, %struct.cipher_info** %4, align 8
  br label %6

26:                                               ; preds = %6
  %27 = load i32, i32* @PXE_PGP_UNSUPPORTED_CIPHER, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %18
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @pg_strcasecmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
