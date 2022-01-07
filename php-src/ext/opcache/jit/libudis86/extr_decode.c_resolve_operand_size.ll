; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_resolve_operand_size.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_resolve_operand_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SZ_QQ = common dso_local global i32 0, align 4
@SZ_DQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ud*, i32)* @resolve_operand_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_operand_size(%struct.ud* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ud*, align 8
  %5 = alloca i32, align 4
  store %struct.ud* %0, %struct.ud** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %61 [
    i32 131, label %7
    i32 128, label %11
    i32 129, label %18
    i32 132, label %30
    i32 130, label %37
  ]

7:                                                ; preds = %2
  %8 = load %struct.ud*, %struct.ud** %4, align 8
  %9 = getelementptr inbounds %struct.ud, %struct.ud* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  br label %63

11:                                               ; preds = %2
  %12 = load %struct.ud*, %struct.ud** %4, align 8
  %13 = getelementptr inbounds %struct.ud, %struct.ud* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 16
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 16, i32 32
  store i32 %17, i32* %3, align 4
  br label %63

18:                                               ; preds = %2
  %19 = load %struct.ud*, %struct.ud** %4, align 8
  %20 = getelementptr inbounds %struct.ud, %struct.ud* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 16
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %28

24:                                               ; preds = %18
  %25 = load %struct.ud*, %struct.ud** %4, align 8
  %26 = getelementptr inbounds %struct.ud, %struct.ud* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  br label %28

28:                                               ; preds = %24, %23
  %29 = phi i32 [ 32, %23 ], [ %27, %24 ]
  store i32 %29, i32* %3, align 4
  br label %63

30:                                               ; preds = %2
  %31 = load %struct.ud*, %struct.ud** %4, align 8
  %32 = getelementptr inbounds %struct.ud, %struct.ud* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 64
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 64, i32 32
  store i32 %36, i32* %3, align 4
  br label %63

37:                                               ; preds = %2
  %38 = load %struct.ud*, %struct.ud** %4, align 8
  %39 = getelementptr inbounds %struct.ud, %struct.ud* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @UD_ASSERT(i32 %42)
  %44 = load %struct.ud*, %struct.ud** %4, align 8
  %45 = getelementptr inbounds %struct.ud, %struct.ud* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @P_VEXL(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %37
  %52 = load %struct.ud*, %struct.ud** %4, align 8
  %53 = call i32 @vex_l(%struct.ud* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @SZ_QQ, align 4
  br label %59

57:                                               ; preds = %51, %37
  %58 = load i32, i32* @SZ_DQ, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %3, align 4
  br label %63

61:                                               ; preds = %2
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %59, %30, %28, %11, %7
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @UD_ASSERT(i32) #1

declare dso_local i32 @P_VEXL(i32) #1

declare dso_local i32 @vex_l(%struct.ud*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
