; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_aes.c_ctr_basic_aes_encrypt.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_aes.c_ctr_basic_aes_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.scatterlist = type { i32 }
%struct.aes_ctx = type { i32 }
%struct.blkcipher_walk = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@CRYPTO_DIR_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctr_basic_aes_encrypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.aes_ctx*, align 8
  %10 = alloca %struct.blkcipher_walk, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %15 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.aes_ctx* @crypto_blkcipher_ctx(i32 %16)
  store %struct.aes_ctx* %17, %struct.aes_ctx** %9, align 8
  %18 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %19 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %10, %struct.scatterlist* %18, %struct.scatterlist* %19, i32 %20)
  %22 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %23 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %22, %struct.blkcipher_walk* %10)
  store i32 %23, i32* %11, align 4
  br label %24

24:                                               ; preds = %28, %4
  %25 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %12, align 4
  store i32 %26, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %13, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %33 = urem i32 %31, %32
  %34 = load i32, i32* %12, align 4
  %35 = sub i32 %34, %33
  store i32 %35, i32* %12, align 4
  %36 = load %struct.aes_ctx*, %struct.aes_ctx** %9, align 8
  %37 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @CRYPTO_DIR_ENCRYPT, align 4
  %48 = call i32 @ifx_deu_aes_ctr(%struct.aes_ctx* %36, i32 %40, i32 %44, i32* %45, i32 %46, i32 %47, i32 0)
  %49 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %50 = sub i32 %49, 1
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %53, %struct.blkcipher_walk* %10, i32 %54)
  store i32 %55, i32* %11, align 4
  br label %24

56:                                               ; preds = %24
  %57 = load i32, i32* %11, align 4
  ret i32 %57
}

declare dso_local %struct.aes_ctx* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @ifx_deu_aes_ctr(%struct.aes_ctx*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
