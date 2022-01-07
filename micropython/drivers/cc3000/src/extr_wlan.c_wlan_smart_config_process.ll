; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_wlan.c_wlan_smart_config_process.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_wlan.c_wlan_smart_config_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@key = common dso_local global i32 0, align 4
@NVMEM_SHARED_MEM_FILEID = common dso_local global i32 0, align 4
@SMART_CONFIG_PROFILE_SIZE = common dso_local global i32 0, align 4
@profileArray = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wlan_smart_config_process() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = load i32, i32* @key, align 4
  %8 = call i64 @aes_read_key(i32 %7)
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = load i64, i64* %2, align 8
  store i64 %12, i64* %1, align 8
  br label %117

13:                                               ; preds = %0
  %14 = load i32, i32* @NVMEM_SHARED_MEM_FILEID, align 4
  %15 = load i32, i32* @SMART_CONFIG_PROFILE_SIZE, align 4
  %16 = load i32*, i32** @profileArray, align 8
  %17 = call i64 @nvmem_read(i32 %14, i32 %15, i32 0, i32* %16)
  store i64 %17, i64* %2, align 8
  %18 = load i64, i64* %2, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i64, i64* %2, align 8
  store i64 %21, i64* %1, align 8
  br label %117

22:                                               ; preds = %13
  %23 = load i32*, i32** @profileArray, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = bitcast i32* %24 to i64*
  store i64* %25, i64** %6, align 8
  %26 = load i32*, i32** @profileArray, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %3, align 4
  %29 = load i32*, i32** @profileArray, align 8
  %30 = load i32*, i32** @profileArray, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 3
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %29, i64 %34
  %36 = bitcast i32* %35 to i64*
  store i64* %36, i64** %5, align 8
  %37 = load i64*, i64** %5, align 8
  %38 = load i32, i32* @key, align 4
  %39 = call i32 @aes_decrypt(i64* %37, i32 %38)
  %40 = load i32*, i32** @profileArray, align 8
  %41 = load i32*, i32** @profileArray, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %40, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 16
  br i1 %48, label %49, label %54

49:                                               ; preds = %22
  %50 = load i64*, i64** %5, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 16
  %52 = load i32, i32* @key, align 4
  %53 = call i32 @aes_decrypt(i64* %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %22
  %55 = load i64*, i64** %5, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 31
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load i64*, i64** %5, align 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 31
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  store i32 31, i32* %4, align 4
  %64 = load i64*, i64** %5, align 8
  %65 = getelementptr inbounds i64, i64* %64, i32 1
  store i64* %65, i64** %5, align 8
  br label %67

66:                                               ; preds = %59
  store i32 32, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %63
  br label %74

68:                                               ; preds = %54
  %69 = load i64*, i64** %5, align 8
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %4, align 4
  %72 = load i64*, i64** %5, align 8
  %73 = getelementptr inbounds i64, i64* %72, i32 1
  store i64* %73, i64** %5, align 8
  br label %74

74:                                               ; preds = %68, %67
  %75 = load i32*, i32** @profileArray, align 8
  %76 = load i32*, i32** @profileArray, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 2
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %75, i64 %80
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %115 [
    i32 131, label %83
    i32 130, label %95
    i32 129, label %109
    i32 128, label %109
  ]

83:                                               ; preds = %74
  %84 = load i32*, i32** @profileArray, align 8
  %85 = load i32*, i32** @profileArray, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 2
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %84, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i64*, i64** %6, align 8
  %93 = load i32, i32* %3, align 4
  %94 = call i64 @wlan_add_profile(i32 %91, i64* %92, i32 %93, i32* null, i32 1, i32 0, i32 0, i32 0, i64* null, i32 0)
  store i64 %94, i64* %2, align 8
  br label %115

95:                                               ; preds = %74
  %96 = load i32*, i32** @profileArray, align 8
  %97 = load i32*, i32** @profileArray, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 2
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %96, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i64*, i64** %6, align 8
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* %4, align 4
  %107 = load i64*, i64** %5, align 8
  %108 = call i64 @wlan_add_profile(i32 %103, i64* %104, i32 %105, i32* null, i32 1, i32 %106, i32 0, i32 0, i64* %107, i32 0)
  store i64 %108, i64* %2, align 8
  br label %115

109:                                              ; preds = %74, %74
  %110 = load i64*, i64** %6, align 8
  %111 = load i32, i32* %3, align 4
  %112 = load i64*, i64** %5, align 8
  %113 = load i32, i32* %4, align 4
  %114 = call i64 @wlan_add_profile(i32 128, i64* %110, i32 %111, i32* null, i32 1, i32 24, i32 30, i32 2, i64* %112, i32 %113)
  store i64 %114, i64* %2, align 8
  br label %115

115:                                              ; preds = %74, %109, %95, %83
  %116 = load i64, i64* %2, align 8
  store i64 %116, i64* %1, align 8
  br label %117

117:                                              ; preds = %115, %20, %11
  %118 = load i64, i64* %1, align 8
  ret i64 %118
}

declare dso_local i64 @aes_read_key(i32) #1

declare dso_local i64 @nvmem_read(i32, i32, i32, i32*) #1

declare dso_local i32 @aes_decrypt(i64*, i32) #1

declare dso_local i64 @wlan_add_profile(i32, i64*, i32, i32*, i32, i32, i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
