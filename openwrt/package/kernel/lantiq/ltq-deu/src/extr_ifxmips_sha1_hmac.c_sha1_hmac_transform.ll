; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_sha1_hmac.c_sha1_hmac_transform.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_sha1_hmac.c_sha1_hmac_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha1_hmac_ctx = type { i32 }

@temp = common dso_local global i32* null, align 8
@SHA1_HMAC_DBN_TEMP_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SHA1_HMAC_DBN_TEMP_SIZE exceeded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @sha1_hmac_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha1_hmac_transform(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sha1_hmac_ctx*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %7 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.sha1_hmac_ctx* @crypto_shash_ctx(i32 %8)
  store %struct.sha1_hmac_ctx* %9, %struct.sha1_hmac_ctx** %5, align 8
  %10 = load i32*, i32** @temp, align 8
  %11 = load %struct.sha1_hmac_ctx*, %struct.sha1_hmac_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.sha1_hmac_ctx, %struct.sha1_hmac_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %10, i64 %15
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @memcpy(i32* %16, i32* %17, i32 64)
  %19 = load %struct.sha1_hmac_ctx*, %struct.sha1_hmac_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.sha1_hmac_ctx, %struct.sha1_hmac_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.sha1_hmac_ctx*, %struct.sha1_hmac_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.sha1_hmac_ctx, %struct.sha1_hmac_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 4
  %27 = load i32, i32* @SHA1_HMAC_DBN_TEMP_SIZE, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %2
  ret i32 0
}

declare dso_local %struct.sha1_hmac_ctx* @crypto_shash_ctx(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
