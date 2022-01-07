; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.TYPE_2__*, %struct.xvctx* }
%struct.TYPE_2__ = type { i32 }
%struct.xvctx = type { i32, i64, i64, i32*, i32*, i32 }

@None = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninit(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.xvctx*, align 8
  %4 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %2, align 8
  %5 = load %struct.vo*, %struct.vo** %2, align 8
  %6 = getelementptr inbounds %struct.vo, %struct.vo* %5, i32 0, i32 1
  %7 = load %struct.xvctx*, %struct.xvctx** %6, align 8
  store %struct.xvctx* %7, %struct.xvctx** %3, align 8
  %8 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %9 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @talloc_free(i32 %10)
  %12 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %13 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %18 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @XvFreeAdaptorInfo(i32* %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %23 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %22, i32 0, i32 4
  store i32* null, i32** %23, align 8
  %24 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %25 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %30 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @XFree(i32* %31)
  %33 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %34 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %33, i32 0, i32 3
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %28, %21
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %46, %35
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %39 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.vo*, %struct.vo** %2, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @deallocate_xvimage(%struct.vo* %43, i32 %44)
  br label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %36

49:                                               ; preds = %36
  %50 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %51 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @None, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load %struct.vo*, %struct.vo** %2, align 8
  %57 = getelementptr inbounds %struct.vo, %struct.vo* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %62 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @XFreeGC(i32 %60, i64 %63)
  br label %65

65:                                               ; preds = %55, %49
  %66 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %67 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @None, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load %struct.vo*, %struct.vo** %2, align 8
  %73 = getelementptr inbounds %struct.vo, %struct.vo* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %78 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @XFreeGC(i32 %76, i64 %79)
  br label %81

81:                                               ; preds = %71, %65
  %82 = load %struct.vo*, %struct.vo** %2, align 8
  %83 = call i32 @vo_x11_uninit(%struct.vo* %82)
  ret void
}

declare dso_local i32 @talloc_free(i32) #1

declare dso_local i32 @XvFreeAdaptorInfo(i32*) #1

declare dso_local i32 @XFree(i32*) #1

declare dso_local i32 @deallocate_xvimage(%struct.vo*, i32) #1

declare dso_local i32 @XFreeGC(i32, i64) #1

declare dso_local i32 @vo_x11_uninit(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
