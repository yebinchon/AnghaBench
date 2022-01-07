; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_decode_key.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_decode_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_w32_state = type { i32 }

@VK_RMENU = common dso_local global i64 0, align 8
@VK_LCONTROL = common dso_local global i64 0, align 8
@VK_LMENU = common dso_local global i64 0, align 8
@VK_MENU = common dso_local global i64 0, align 8
@VK_RCONTROL = common dso_local global i64 0, align 8
@VK_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo_w32_state*, i32, i32)* @decode_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_key(%struct.vo_w32_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vo_w32_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [256 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.vo_w32_state* %0, %struct.vo_w32_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %11 = call i32 @GetKeyboardState(i32* %10)
  %12 = load i64, i64* @VK_RMENU, align 8
  %13 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 128
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %3
  %18 = load i64, i64* @VK_LCONTROL, align 8
  %19 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 128
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %17
  %24 = load %struct.vo_w32_state*, %struct.vo_w32_state** %5, align 8
  %25 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mp_input_use_alt_gr(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* @VK_LCONTROL, align 8
  %31 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %30
  store i32 0, i32* %31, align 4
  %32 = load i64, i64* @VK_RMENU, align 8
  %33 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %32
  store i32 0, i32* %33, align 4
  %34 = load i64, i64* @VK_LMENU, align 8
  %35 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* @VK_MENU, align 8
  %38 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %37
  store i32 %36, i32* %38, align 4
  %39 = load i64, i64* @VK_RCONTROL, align 8
  %40 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* @VK_CONTROL, align 8
  %43 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %42
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %29, %23, %17, %3
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %48 = call i32 @to_unicode(i32 %45, i32 %46, i32* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 32
  br i1 %50, label %51, label %68

51:                                               ; preds = %44
  %52 = load i64, i64* @VK_MENU, align 8
  %53 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 128
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load i64, i64* @VK_MENU, align 8
  %59 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %58
  store i32 0, i32* %59, align 4
  %60 = load i64, i64* @VK_RMENU, align 8
  %61 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %60
  store i32 0, i32* %61, align 4
  %62 = load i64, i64* @VK_LMENU, align 8
  %63 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %62
  store i32 0, i32* %63, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %67 = call i32 @to_unicode(i32 %64, i32 %65, i32* %66)
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %57, %51, %44
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 32
  br i1 %70, label %71, label %88

71:                                               ; preds = %68
  %72 = load i64, i64* @VK_CONTROL, align 8
  %73 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 128
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %71
  %78 = load i64, i64* @VK_CONTROL, align 8
  %79 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %78
  store i32 0, i32* %79, align 4
  %80 = load i64, i64* @VK_RCONTROL, align 8
  %81 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %80
  store i32 0, i32* %81, align 4
  %82 = load i64, i64* @VK_LCONTROL, align 8
  %83 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %82
  store i32 0, i32* %83, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %87 = call i32 @to_unicode(i32 %84, i32 %85, i32* %86)
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %77, %71, %68
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 32
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 0, i32* %4, align 4
  br label %101

92:                                               ; preds = %88
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %93, 65536
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load %struct.vo_w32_state*, %struct.vo_w32_state** %5, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @decode_utf16(%struct.vo_w32_state* %96, i32 %97)
  store i32 %98, i32* %4, align 4
  br label %101

99:                                               ; preds = %92
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %99, %95, %91
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @GetKeyboardState(i32*) #1

declare dso_local i32 @mp_input_use_alt_gr(i32) #1

declare dso_local i32 @to_unicode(i32, i32, i32*) #1

declare dso_local i32 @decode_utf16(%struct.vo_w32_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
