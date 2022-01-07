; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_operatorMask.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_operatorMask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TK_IN = common dso_local global i32 0, align 4
@WO_IN = common dso_local global i32 0, align 4
@TK_ISNULL = common dso_local global i32 0, align 4
@WO_ISNULL = common dso_local global i32 0, align 4
@TK_IS = common dso_local global i32 0, align 4
@WO_IS = common dso_local global i32 0, align 4
@WO_EQ = common dso_local global i32 0, align 4
@TK_EQ = common dso_local global i32 0, align 4
@TK_LT = common dso_local global i32 0, align 4
@WO_LT = common dso_local global i32 0, align 4
@TK_LE = common dso_local global i32 0, align 4
@WO_LE = common dso_local global i32 0, align 4
@TK_GT = common dso_local global i32 0, align 4
@WO_GT = common dso_local global i32 0, align 4
@TK_GE = common dso_local global i32 0, align 4
@WO_GE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @operatorMask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @operatorMask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @allowedOp(i32 %4)
  %6 = call i32 @assert(i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @TK_IN, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @WO_IN, align 4
  store i32 %11, i32* %3, align 4
  br label %40

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @TK_ISNULL, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @WO_ISNULL, align 4
  store i32 %17, i32* %3, align 4
  br label %39

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @TK_IS, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @WO_IS, align 4
  store i32 %23, i32* %3, align 4
  br label %38

24:                                               ; preds = %18
  %25 = load i32, i32* @WO_EQ, align 4
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @TK_EQ, align 4
  %28 = sub nsw i32 %26, %27
  %29 = shl i32 %25, %28
  %30 = icmp slt i32 %29, 32767
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* @WO_EQ, align 4
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @TK_EQ, align 4
  %36 = sub nsw i32 %34, %35
  %37 = shl i32 %33, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %24, %22
  br label %39

39:                                               ; preds = %38, %16
  br label %40

40:                                               ; preds = %39, %10
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @TK_ISNULL, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @WO_ISNULL, align 4
  %47 = icmp eq i32 %45, %46
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i1 [ true, %40 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @TK_IN, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @WO_IN, align 4
  %58 = icmp eq i32 %56, %57
  br label %59

59:                                               ; preds = %55, %48
  %60 = phi i1 [ true, %48 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* @TK_EQ, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @WO_EQ, align 4
  %69 = icmp eq i32 %67, %68
  br label %70

70:                                               ; preds = %66, %59
  %71 = phi i1 [ true, %59 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @TK_LT, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @WO_LT, align 4
  %80 = icmp eq i32 %78, %79
  br label %81

81:                                               ; preds = %77, %70
  %82 = phi i1 [ true, %70 ], [ %80, %77 ]
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load i32, i32* %2, align 4
  %86 = load i32, i32* @TK_LE, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @WO_LE, align 4
  %91 = icmp eq i32 %89, %90
  br label %92

92:                                               ; preds = %88, %81
  %93 = phi i1 [ true, %81 ], [ %91, %88 ]
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load i32, i32* %2, align 4
  %97 = load i32, i32* @TK_GT, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %92
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @WO_GT, align 4
  %102 = icmp eq i32 %100, %101
  br label %103

103:                                              ; preds = %99, %92
  %104 = phi i1 [ true, %92 ], [ %102, %99 ]
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load i32, i32* %2, align 4
  %108 = load i32, i32* @TK_GE, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @WO_GE, align 4
  %113 = icmp eq i32 %111, %112
  br label %114

114:                                              ; preds = %110, %103
  %115 = phi i1 [ true, %103 ], [ %113, %110 ]
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load i32, i32* %2, align 4
  %119 = load i32, i32* @TK_IS, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* @WO_IS, align 4
  %124 = icmp eq i32 %122, %123
  br label %125

125:                                              ; preds = %121, %114
  %126 = phi i1 [ true, %114 ], [ %124, %121 ]
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @allowedOp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
