; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-atm/src/extr_ifxmips_atm_ar9.c_pp32_download_code.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-atm/src/extr_ifxmips_atm_ar9.c_pp32_download_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CDM_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32)* @pp32_download_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp32_download_code(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %4
  %14 = load i32*, i32** %6, align 8
  %15 = ptrtoint i32* %14 to i64
  %16 = and i64 %15, 3
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  %19 = load i32*, i32** %8, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load i32*, i32** %8, align 8
  %23 = ptrtoint i32* %22 to i64
  %24 = and i64 %23, 3
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %18, %13, %4
  store i32 -1, i32* %5, align 4
  br label %66

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @CDM_CODE_MEMORYn_DWLEN(i32 0)
  %30 = icmp ule i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @CDM_CFG, align 4
  %33 = call i32 @IFX_REG_W32(i32 0, i32 %32)
  br label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @CDM_CFG, align 4
  %36 = call i32 @IFX_REG_W32(i32 4, i32 %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = call i32* @CDM_CODE_MEMORY(i32 0, i32 0)
  store i32* %38, i32** %10, align 8
  br label %39

39:                                               ; preds = %43, %37
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %40, -1
  store i32 %41, i32* %7, align 4
  %42 = icmp ugt i32 %40, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %6, align 8
  %46 = load i32, i32* %44, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %10, align 8
  %49 = ptrtoint i32* %47 to i32
  %50 = call i32 @IFX_REG_W32(i32 %46, i32 %49)
  br label %39

51:                                               ; preds = %39
  %52 = call i32* @CDM_DATA_MEMORY(i32 0, i32 0)
  store i32* %52, i32** %10, align 8
  br label %53

53:                                               ; preds = %57, %51
  %54 = load i32, i32* %9, align 4
  %55 = add i32 %54, -1
  store i32 %55, i32* %9, align 4
  %56 = icmp ugt i32 %54, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %8, align 8
  %60 = load i32, i32* %58, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %10, align 8
  %63 = ptrtoint i32* %61 to i32
  %64 = call i32 @IFX_REG_W32(i32 %60, i32 %63)
  br label %53

65:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %26
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @CDM_CODE_MEMORYn_DWLEN(i32) #1

declare dso_local i32 @IFX_REG_W32(i32, i32) #1

declare dso_local i32* @CDM_CODE_MEMORY(i32, i32) #1

declare dso_local i32* @CDM_DATA_MEMORY(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
