; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_convert_r5g6b5_x8r8g8b8.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_convert_r5g6b5_x8r8g8b8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@convert_r5g6b5_x8r8g8b8.convert_5to8 = internal constant [32 x i8] c"\00\08\10\19!)1:BJRZcks{\84\8C\94\9C\A5\AD\B5\BD\C5\CE\D6\DE\E6\EF\F7\FF", align 16
@convert_r5g6b5_x8r8g8b8.convert_6to8 = internal constant [64 x i8] c"\00\04\08\0C\10\14\18\1C $(-159=AEIMQUY]aeimquy}\82\86\8A\8E\92\96\9A\9E\A2\A6\AA\AE\B2\B6\BA\BE\C2\C6\CA\CE\D2\D7\DB\DF\E3\E7\EB\EF\F3\F7\FB\FF", align 16
@.str = private unnamed_addr constant [41 x i8] c"Converting %ux%u pixels, pitches %u %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32)* @convert_r5g6b5_x8r8g8b8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_r5g6b5_x8r8g8b8(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %20, i32 %21)
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %83, %6
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %86

27:                                               ; preds = %23
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %9, align 4
  %31 = mul i32 %29, %30
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  store i32* %33, i32** %15, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %10, align 4
  %37 = mul i32 %35, %36
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  store i32* %39, i32** %16, align 8
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %79, %27
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %82

44:                                               ; preds = %40
  %45 = load i32*, i32** %15, align 8
  %46 = load i32, i32* %13, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = and i32 %50, 63488
  %52 = lshr i32 %51, 11
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* @convert_r5g6b5_x8r8g8b8.convert_5to8, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl i32 %56, 16
  %58 = or i32 -16777216, %57
  %59 = load i32, i32* %17, align 4
  %60 = and i32 %59, 2016
  %61 = lshr i32 %60, 5
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* @convert_r5g6b5_x8r8g8b8.convert_6to8, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = shl i32 %65, 8
  %67 = or i32 %58, %66
  %68 = load i32, i32* %17, align 4
  %69 = and i32 %68, 31
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* @convert_r5g6b5_x8r8g8b8.convert_5to8, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = or i32 %67, %73
  %75 = load i32*, i32** %16, align 8
  %76 = load i32, i32* %13, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %74, i32* %78, align 4
  br label %79

79:                                               ; preds = %44
  %80 = load i32, i32* %13, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %40

82:                                               ; preds = %40
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %14, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %23

86:                                               ; preds = %23
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
