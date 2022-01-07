; ModuleID = '/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_int2color.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_int2color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_color = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"nk_rawfb_int2color(): Unsupported pixel layout.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nk_color*, i32, i32)* @nk_rawfb_int2color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_rawfb_int2color(%struct.nk_color* noalias sret %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %1, i32* %4, align 4
  store i32 %2, i32* %5, align 4
  %6 = bitcast %struct.nk_color* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 32, i1 false)
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %40 [
    i32 129, label %8
    i32 128, label %24
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* %4, align 4
  %10 = lshr i32 %9, 24
  %11 = and i32 %10, 255
  %12 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %0, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %0, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = lshr i32 %17, 8
  %19 = and i32 %18, 255
  %20 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %0, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 255
  %23 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %0, i32 0, i32 3
  store i32 %22, i32* %23, align 4
  br label %42

24:                                               ; preds = %3
  %25 = load i32, i32* %4, align 4
  %26 = lshr i32 %25, 24
  %27 = and i32 %26, 255
  %28 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %0, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %0, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %4, align 4
  %34 = lshr i32 %33, 8
  %35 = and i32 %34, 255
  %36 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %0, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, 255
  %39 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %0, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  br label %42

40:                                               ; preds = %3
  %41 = call i32 @perror(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %24, %8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @perror(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
