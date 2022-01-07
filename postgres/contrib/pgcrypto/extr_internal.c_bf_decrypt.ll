; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_internal.c_bf_decrypt.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_internal.c_bf_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.int_ctx = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PXE_NOTBLOCKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32, i32*)* @bf_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bf_decrypt(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.int_ctx*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.int_ctx*
  store %struct.int_ctx* %15, %struct.int_ctx** %10, align 8
  %16 = load %struct.int_ctx*, %struct.int_ctx** %10, align 8
  %17 = getelementptr inbounds %struct.int_ctx, %struct.int_ctx* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32* %18, i32** %11, align 8
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %47

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, 7
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @PXE_NOTBLOCKSIZE, align 4
  store i32 %27, i32* %5, align 4
  br label %47

28:                                               ; preds = %22
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @memcpy(i32* %29, i32* %30, i32 %31)
  %33 = load %struct.int_ctx*, %struct.int_ctx** %10, align 8
  %34 = getelementptr inbounds %struct.int_ctx, %struct.int_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %46 [
    i32 128, label %36
    i32 129, label %41
  ]

36:                                               ; preds = %28
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @blowfish_decrypt_ecb(i32* %37, i32 %38, i32* %39)
  br label %46

41:                                               ; preds = %28
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @blowfish_decrypt_cbc(i32* %42, i32 %43, i32* %44)
  br label %46

46:                                               ; preds = %28, %41, %36
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %26, %21
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @blowfish_decrypt_ecb(i32*, i32, i32*) #1

declare dso_local i32 @blowfish_decrypt_cbc(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
