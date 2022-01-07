; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_kbkdf.c_be32.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_kbkdf.c_be32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64 }

@__const.be32.is_endian = private unnamed_addr constant %union.anon { i64 1 }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @be32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be32(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.anon, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = bitcast %union.anon* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%union.anon* @__const.be32.is_endian to i8*), i64 8, i1 false)
  %7 = bitcast %union.anon* %5 to i8*
  %8 = load i8, i8* %7, align 8
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %2, align 4
  br label %34

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, -16777216
  %15 = lshr i32 %14, 24
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 16711680
  %20 = ashr i32 %19, 8
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 65280
  %25 = shl i32 %24, 8
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, 255
  %30 = shl i32 %29, 24
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %12, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
