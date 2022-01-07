; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_funchook.c_rehook32.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_funchook.c_rehook32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.func_hook = type { i32, i64, i64 }

@JMP_32_SIZE = common dso_local global i32 0, align 4
@X86_NOP = common dso_local global i64 0, align 8
@X86_JMP_NEG_5 = common dso_local global i64 0, align 8
@HOOKTYPE_FORWARD_OVERWRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.func_hook*, i32, i64)* @rehook32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rehook32(%struct.func_hook* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.func_hook*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.func_hook* %0, %struct.func_hook** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.func_hook*, %struct.func_hook** %4, align 8
  %11 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @JMP_32_SIZE, align 4
  %14 = sext i32 %13 to i64
  %15 = sub nsw i64 %12, %14
  %16 = inttoptr i64 %15 to i8*
  %17 = load i32, i32* @JMP_32_SIZE, align 4
  %18 = mul nsw i32 %17, 2
  %19 = call i32 @fix_permissions(i8* %16, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load %struct.func_hook*, %struct.func_hook** %4, align 8
  %24 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %115, label %27

27:                                               ; preds = %22, %3
  %28 = load %struct.func_hook*, %struct.func_hook** %4, align 8
  %29 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i64*
  %32 = load i32, i32* @JMP_32_SIZE, align 4
  %33 = sext i32 %32 to i64
  %34 = sub i64 0, %33
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  store i64* %35, i64** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %36

36:                                               ; preds = %52, %27
  %37 = load i64, i64* %9, align 8
  %38 = load i32, i32* @JMP_32_SIZE, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load i64*, i64** %7, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @X86_NOP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %8, align 8
  br label %51

51:                                               ; preds = %48, %41
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %9, align 8
  br label %36

55:                                               ; preds = %36
  %56 = load i64, i64* %8, align 8
  %57 = load i32, i32* @JMP_32_SIZE, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp eq i64 %56, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load i64*, i64** %7, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 5
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 139
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load i64*, i64** %7, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 6
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 255
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.func_hook*, %struct.func_hook** %4, align 8
  %72 = load i64*, i64** %7, align 8
  %73 = call i32 @hook_reverse_new(%struct.func_hook* %71, i64* %72)
  br label %112

74:                                               ; preds = %65, %60, %55
  %75 = load i64*, i64** %7, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 233
  br i1 %78, label %79, label %89

79:                                               ; preds = %74
  %80 = load i64*, i64** %7, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 5
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @X86_JMP_NEG_5, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.func_hook*, %struct.func_hook** %4, align 8
  %87 = load i64*, i64** %7, align 8
  %88 = call i32 @hook_reverse_chain(%struct.func_hook* %86, i64* %87)
  br label %111

89:                                               ; preds = %79, %74
  %90 = load i64*, i64** %7, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 5
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 233
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.func_hook*, %struct.func_hook** %4, align 8
  %96 = load i64*, i64** %7, align 8
  %97 = load i64, i64* %6, align 8
  %98 = call i32 @hook_forward_chain(%struct.func_hook* %95, i64* %96, i64 %97)
  br label %110

99:                                               ; preds = %89
  %100 = load %struct.func_hook*, %struct.func_hook** %4, align 8
  %101 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @HOOKTYPE_FORWARD_OVERWRITE, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load i64, i64* @HOOKTYPE_FORWARD_OVERWRITE, align 8
  %107 = load %struct.func_hook*, %struct.func_hook** %4, align 8
  %108 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %105, %99
  br label %110

110:                                              ; preds = %109, %94
  br label %111

111:                                              ; preds = %110, %85
  br label %112

112:                                              ; preds = %111, %70
  %113 = load %struct.func_hook*, %struct.func_hook** %4, align 8
  %114 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  br label %115

115:                                              ; preds = %112, %22
  %116 = load %struct.func_hook*, %struct.func_hook** %4, align 8
  %117 = getelementptr inbounds %struct.func_hook, %struct.func_hook* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @HOOKTYPE_FORWARD_OVERWRITE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load %struct.func_hook*, %struct.func_hook** %4, align 8
  %123 = load i64, i64* %6, align 8
  %124 = call i32 @hook_forward_overwrite(%struct.func_hook* %122, i64 %123)
  br label %125

125:                                              ; preds = %121, %115
  ret void
}

declare dso_local i32 @fix_permissions(i8*, i32) #1

declare dso_local i32 @hook_reverse_new(%struct.func_hook*, i64*) #1

declare dso_local i32 @hook_reverse_chain(%struct.func_hook*, i64*) #1

declare dso_local i32 @hook_forward_chain(%struct.func_hook*, i64*, i64) #1

declare dso_local i32 @hook_forward_overwrite(%struct.func_hook*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
