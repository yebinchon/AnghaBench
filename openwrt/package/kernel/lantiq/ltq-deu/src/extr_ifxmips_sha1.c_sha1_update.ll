; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_sha1.c_sha1_update.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_sha1.c_sha1_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha1_ctx = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @sha1_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha1_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sha1_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %11 = call %struct.sha1_ctx* @shash_desc_ctx(%struct.shash_desc* %10)
  store %struct.sha1_ctx* %11, %struct.sha1_ctx** %7, align 8
  %12 = load %struct.sha1_ctx*, %struct.sha1_ctx** %7, align 8
  %13 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = ashr i32 %14, 3
  %16 = and i32 %15, 63
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 %17, 3
  %19 = load %struct.sha1_ctx*, %struct.sha1_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add i32 %23, %24
  %26 = icmp ugt i32 %25, 63
  br i1 %26, label %27, label %65

27:                                               ; preds = %3
  %28 = load %struct.sha1_ctx*, %struct.sha1_ctx** %7, align 8
  %29 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sub i32 64, %35
  store i32 %36, i32* %8, align 4
  %37 = call i32 @memcpy(i32* %33, i32* %34, i32 %36)
  %38 = load %struct.sha1_ctx*, %struct.sha1_ctx** %7, align 8
  %39 = load %struct.sha1_ctx*, %struct.sha1_ctx** %7, align 8
  %40 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.sha1_ctx*, %struct.sha1_ctx** %7, align 8
  %43 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @sha1_transform(%struct.sha1_ctx* %38, i32 %41, i32* %44)
  br label %46

46:                                               ; preds = %61, %27
  %47 = load i32, i32* %8, align 4
  %48 = add i32 %47, 63
  %49 = load i32, i32* %6, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load %struct.sha1_ctx*, %struct.sha1_ctx** %7, align 8
  %53 = load %struct.sha1_ctx*, %struct.sha1_ctx** %7, align 8
  %54 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = call i32 @sha1_transform(%struct.sha1_ctx* %52, i32 %55, i32* %59)
  br label %61

61:                                               ; preds = %51
  %62 = load i32, i32* %8, align 4
  %63 = add i32 %62, 64
  store i32 %63, i32* %8, align 4
  br label %46

64:                                               ; preds = %46
  store i32 0, i32* %9, align 4
  br label %66

65:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %65, %64
  %67 = load %struct.sha1_ctx*, %struct.sha1_ctx** %7, align 8
  %68 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %8, align 4
  %79 = sub i32 %77, %78
  %80 = call i32 @memcpy(i32* %72, i32* %76, i32 %79)
  ret i32 0
}

declare dso_local %struct.sha1_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sha1_transform(%struct.sha1_ctx*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
