; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_x11.c_Display_Image.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_x11.c_Display_Image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i64, i32, i32, i32, %struct.TYPE_4__, i32, i64, i32**, %struct.vo* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.vo = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@True = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.priv*, i32*)* @Display_Image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Display_Image(%struct.priv* %0, i32* %1) #0 {
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.vo*, align 8
  %6 = alloca i32*, align 8
  store %struct.priv* %0, %struct.priv** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.priv*, %struct.priv** %3, align 8
  %8 = getelementptr inbounds %struct.priv, %struct.priv* %7, i32 0, i32 8
  %9 = load %struct.vo*, %struct.vo** %8, align 8
  store %struct.vo* %9, %struct.vo** %5, align 8
  %10 = load %struct.priv*, %struct.priv** %3, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 7
  %12 = load i32**, i32*** %11, align 8
  %13 = load %struct.priv*, %struct.priv** %3, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32*, i32** %12, i64 %15
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %6, align 8
  %18 = load %struct.priv*, %struct.priv** %3, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %2
  %23 = load %struct.vo*, %struct.vo** %5, align 8
  %24 = getelementptr inbounds %struct.vo, %struct.vo* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.vo*, %struct.vo** %5, align 8
  %29 = getelementptr inbounds %struct.vo, %struct.vo* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.priv*, %struct.priv** %3, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vo*, %struct.vo** %5, align 8
  %37 = getelementptr inbounds %struct.vo, %struct.vo* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vo*, %struct.vo** %5, align 8
  %40 = getelementptr inbounds %struct.vo, %struct.vo* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @XFillRectangle(i32 %27, i32 %32, i32 %35, i32 0, i32 0, i32 %38, i32 %41)
  %43 = load %struct.priv*, %struct.priv** %3, align 8
  %44 = getelementptr inbounds %struct.priv, %struct.priv* %43, i32 0, i32 1
  store i32 0, i32* %44, align 8
  br label %45

45:                                               ; preds = %22, %2
  %46 = load %struct.priv*, %struct.priv** %3, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %87

50:                                               ; preds = %45
  %51 = load %struct.vo*, %struct.vo** %5, align 8
  %52 = getelementptr inbounds %struct.vo, %struct.vo* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.vo*, %struct.vo** %5, align 8
  %57 = getelementptr inbounds %struct.vo, %struct.vo* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.priv*, %struct.priv** %3, align 8
  %62 = getelementptr inbounds %struct.priv, %struct.priv* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.priv*, %struct.priv** %3, align 8
  %66 = getelementptr inbounds %struct.priv, %struct.priv* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.priv*, %struct.priv** %3, align 8
  %70 = getelementptr inbounds %struct.priv, %struct.priv* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.priv*, %struct.priv** %3, align 8
  %74 = getelementptr inbounds %struct.priv, %struct.priv* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.priv*, %struct.priv** %3, align 8
  %77 = getelementptr inbounds %struct.priv, %struct.priv* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @True, align 4
  %80 = call i32 @XShmPutImage(i32 %55, i32 %60, i32 %63, i32* %64, i32 0, i32 0, i32 %68, i32 %72, i32 %75, i32 %78, i32 %79)
  %81 = load %struct.vo*, %struct.vo** %5, align 8
  %82 = getelementptr inbounds %struct.vo, %struct.vo* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %117

87:                                               ; preds = %45
  %88 = load %struct.vo*, %struct.vo** %5, align 8
  %89 = getelementptr inbounds %struct.vo, %struct.vo* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.vo*, %struct.vo** %5, align 8
  %94 = getelementptr inbounds %struct.vo, %struct.vo* %93, i32 0, i32 0
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.priv*, %struct.priv** %3, align 8
  %99 = getelementptr inbounds %struct.priv, %struct.priv* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %6, align 8
  %102 = load %struct.priv*, %struct.priv** %3, align 8
  %103 = getelementptr inbounds %struct.priv, %struct.priv* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.priv*, %struct.priv** %3, align 8
  %107 = getelementptr inbounds %struct.priv, %struct.priv* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.priv*, %struct.priv** %3, align 8
  %111 = getelementptr inbounds %struct.priv, %struct.priv* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.priv*, %struct.priv** %3, align 8
  %114 = getelementptr inbounds %struct.priv, %struct.priv* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @XPutImage(i32 %92, i32 %97, i32 %100, i32* %101, i32 0, i32 0, i32 %105, i32 %109, i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %87, %50
  ret void
}

declare dso_local i32 @XFillRectangle(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XShmPutImage(i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XPutImage(i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
