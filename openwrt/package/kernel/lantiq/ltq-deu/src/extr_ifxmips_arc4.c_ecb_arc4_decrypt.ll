; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_arc4.c_ecb_arc4_decrypt.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_arc4.c_ecb_arc4_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.scatterlist = type { i32 }
%struct.arc4_ctx = type { i32 }
%struct.blkcipher_walk = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CRYPTO_DIR_DECRYPT = common dso_local global i32 0, align 4
@ARC4_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @ecb_arc4_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecb_arc4_decrypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.arc4_ctx*, align 8
  %10 = alloca %struct.blkcipher_walk, align 4
  %11 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %13 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.arc4_ctx* @crypto_blkcipher_ctx(i32 %14)
  store %struct.arc4_ctx* %15, %struct.arc4_ctx** %9, align 8
  %16 = call i32 @DPRINTF(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %18 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %10, %struct.scatterlist* %17, %struct.scatterlist* %18, i32 %19)
  %21 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %22 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %21, %struct.blkcipher_walk* %10)
  store i32 %22, i32* %11, align 4
  br label %23

23:                                               ; preds = %27, %4
  %24 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %23
  %28 = load %struct.arc4_ctx*, %struct.arc4_ctx** %9, align 8
  %29 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @CRYPTO_DIR_DECRYPT, align 4
  %39 = call i32 @_deu_arc4_ecb(%struct.arc4_ctx* %28, i32 %32, i32 %36, i32* null, i32 %37, i32 %38, i32 0)
  %40 = load i32, i32* @ARC4_BLOCK_SIZE, align 4
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %44, %struct.blkcipher_walk* %10, i32 %45)
  store i32 %46, i32* %11, align 4
  br label %23

47:                                               ; preds = %23
  %48 = load i32, i32* %11, align 4
  ret i32 %48
}

declare dso_local %struct.arc4_ctx* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @_deu_arc4_ecb(%struct.arc4_ctx*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
