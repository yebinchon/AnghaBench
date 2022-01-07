; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pgsql.c_check_expect.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pgsql.c_check_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.debug_expect = type { i32 }

@cipher_algo = common dso_local global i32 0, align 4
@s2k_mode = common dso_local global i32 0, align 4
@s2k_count = common dso_local global i32 0, align 4
@s2k_digest_algo = common dso_local global i32 0, align 4
@use_sess_key = common dso_local global i32 0, align 4
@s2k_cipher_algo = common dso_local global i32 0, align 4
@disable_mdc = common dso_local global i32 0, align 4
@compress_algo = common dso_local global i32 0, align 4
@unicode_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.debug_expect*)* @check_expect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_expect(%struct.TYPE_3__* %0, %struct.debug_expect* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.debug_expect*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.debug_expect* %1, %struct.debug_expect** %4, align 8
  %5 = load i32, i32* @cipher_algo, align 4
  %6 = call i32 @EX_CHECK(i32 %5)
  %7 = load i32, i32* @s2k_mode, align 4
  %8 = call i32 @EX_CHECK(i32 %7)
  %9 = load i32, i32* @s2k_count, align 4
  %10 = call i32 @EX_CHECK(i32 %9)
  %11 = load i32, i32* @s2k_digest_algo, align 4
  %12 = call i32 @EX_CHECK(i32 %11)
  %13 = load i32, i32* @use_sess_key, align 4
  %14 = call i32 @EX_CHECK(i32 %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @s2k_cipher_algo, align 4
  %21 = call i32 @EX_CHECK(i32 %20)
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i32, i32* @disable_mdc, align 4
  %24 = call i32 @EX_CHECK(i32 %23)
  %25 = load i32, i32* @compress_algo, align 4
  %26 = call i32 @EX_CHECK(i32 %25)
  %27 = load i32, i32* @unicode_mode, align 4
  %28 = call i32 @EX_CHECK(i32 %27)
  ret void
}

declare dso_local i32 @EX_CHECK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
