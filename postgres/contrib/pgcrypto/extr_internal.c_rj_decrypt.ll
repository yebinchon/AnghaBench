; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_internal.c_rj_decrypt.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_internal.c_rj_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.int_ctx = type { i64, %struct.TYPE_4__, i32*, i32 }
%struct.TYPE_4__ = type { i32 }

@PXE_CIPHER_INIT = common dso_local global i32 0, align 4
@PXE_NOTBLOCKSIZE = common dso_local global i32 0, align 4
@MODE_CBC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32, i32*)* @rj_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rj_decrypt(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.int_ctx*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.int_ctx*
  store %struct.int_ctx* %14, %struct.int_ctx** %10, align 8
  %15 = load %struct.int_ctx*, %struct.int_ctx** %10, align 8
  %16 = getelementptr inbounds %struct.int_ctx, %struct.int_ctx* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %4
  %20 = load %struct.int_ctx*, %struct.int_ctx** %10, align 8
  %21 = call i64 @rj_real_init(%struct.int_ctx* %20, i32 0)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @PXE_CIPHER_INIT, align 4
  store i32 %24, i32* %5, align 4
  br label %73

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %73

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 15
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @PXE_NOTBLOCKSIZE, align 4
  store i32 %35, i32* %5, align 4
  br label %73

36:                                               ; preds = %30
  %37 = load i32*, i32** %9, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @memcpy(i32* %37, i32* %38, i32 %39)
  %41 = load %struct.int_ctx*, %struct.int_ctx** %10, align 8
  %42 = getelementptr inbounds %struct.int_ctx, %struct.int_ctx* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MODE_CBC, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %36
  %47 = load %struct.int_ctx*, %struct.int_ctx** %10, align 8
  %48 = getelementptr inbounds %struct.int_ctx, %struct.int_ctx* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.int_ctx*, %struct.int_ctx** %10, align 8
  %51 = getelementptr inbounds %struct.int_ctx, %struct.int_ctx* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @aes_cbc_decrypt(i32* %49, i32* %52, i32* %53, i32 %54)
  %56 = load %struct.int_ctx*, %struct.int_ctx** %10, align 8
  %57 = getelementptr inbounds %struct.int_ctx, %struct.int_ctx* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = getelementptr inbounds i32, i32* %62, i64 -16
  %64 = call i32 @memcpy(i32* %58, i32* %63, i32 16)
  br label %72

65:                                               ; preds = %36
  %66 = load %struct.int_ctx*, %struct.int_ctx** %10, align 8
  %67 = getelementptr inbounds %struct.int_ctx, %struct.int_ctx* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @aes_ecb_decrypt(i32* %68, i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %65, %46
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %34, %29, %23
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i64 @rj_real_init(%struct.int_ctx*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @aes_cbc_decrypt(i32*, i32*, i32*, i32) #1

declare dso_local i32 @aes_ecb_decrypt(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
