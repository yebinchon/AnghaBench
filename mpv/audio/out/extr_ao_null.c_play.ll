; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_null.c_play.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_null.c_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.priv* }
%struct.priv = type { i64, i64, i32, i64, i32 }

@AOPLAY_FINAL_CHUNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, i8**, i32, i32)* @play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @play(%struct.ao* %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ao*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ao*, %struct.ao** %5, align 8
  %15 = getelementptr inbounds %struct.ao, %struct.ao* %14, i32 0, i32 0
  %16 = load %struct.priv*, %struct.priv** %15, align 8
  store %struct.priv* %16, %struct.priv** %9, align 8
  %17 = load %struct.ao*, %struct.ao** %5, align 8
  %18 = call i32 @resume(%struct.ao* %17)
  %19 = load %struct.priv*, %struct.priv** %9, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.priv*, %struct.priv** %9, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.priv*, %struct.priv** %9, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %23, %4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @AOPLAY_FINAL_CHUNK, align 4
  %32 = and i32 %30, %31
  %33 = load %struct.priv*, %struct.priv** %9, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.priv*, %struct.priv** %9, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %29
  %40 = load %struct.priv*, %struct.priv** %9, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.priv*, %struct.priv** %9, align 8
  %44 = getelementptr inbounds %struct.priv, %struct.priv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @MPMIN(i64 %46, i32 %47)
  store i32 %48, i32* %10, align 4
  br label %82

49:                                               ; preds = %29
  %50 = load %struct.priv*, %struct.priv** %9, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.priv*, %struct.priv** %9, align 8
  %54 = getelementptr inbounds %struct.priv, %struct.priv* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = load %struct.priv*, %struct.priv** %9, align 8
  %58 = getelementptr inbounds %struct.priv, %struct.priv* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = sdiv i64 %56, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.priv*, %struct.priv** %9, align 8
  %65 = getelementptr inbounds %struct.priv, %struct.priv* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = sdiv i32 %63, %66
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %49
  %72 = load i32, i32* %11, align 4
  br label %75

73:                                               ; preds = %49
  %74 = load i32, i32* %12, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.priv*, %struct.priv** %9, align 8
  %79 = getelementptr inbounds %struct.priv, %struct.priv* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = mul nsw i32 %77, %80
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %75, %39
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = load %struct.priv*, %struct.priv** %9, align 8
  %86 = getelementptr inbounds %struct.priv, %struct.priv* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  %89 = load i32, i32* %10, align 4
  ret i32 %89
}

declare dso_local i32 @resume(%struct.ao*) #1

declare dso_local i32 @MPMIN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
