; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_stiv.c_reduce8.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_stiv.c_reduce8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.reduce8.colors = private unnamed_addr constant [8 x [3 x i32]] [[3 x i32] zeroinitializer, [3 x i32] [i32 208, i32 16, i32 16], [3 x i32] [i32 16, i32 224, i32 16], [3 x i32] [i32 247, i32 245, i32 58], [3 x i32] [i32 16, i32 16, i32 240], [3 x i32] [i32 251, i32 61, i32 248], [3 x i32] [i32 16, i32 240, i32 240], [3 x i32] [i32 240, i32 240, i32 240]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @reduce8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reduce8(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [8 x [3 x i32]], align 16
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 8, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 1, i32* %12, align 4
  %15 = bitcast [8 x [3 x i32]]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([8 x [3 x i32]]* @__const.reduce8.colors to i8*), i64 96, i1 false)
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sdiv i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sdiv i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sdiv i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %7, align 4
  %33 = mul nsw i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 30
  br i1 %35, label %36, label %43

36:                                               ; preds = %3
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 30
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 30
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %103

43:                                               ; preds = %39, %36, %3
  %44 = load i32, i32* %5, align 4
  %45 = icmp sgt i32 %44, 200
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = icmp sgt i32 %47, 200
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = icmp sgt i32 %50, 200
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 7, i32* %4, align 4
  br label %103

53:                                               ; preds = %49, %46, %43
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %98, %53
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %101

58:                                               ; preds = %54
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8 x [3 x i32]], [8 x [3 x i32]]* %13, i64 0, i64 %60
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %61, i64 0, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %5, align 4
  %65 = sub nsw i32 %63, %64
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @POND(i32 %65, i32 %66)
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [8 x [3 x i32]], [8 x [3 x i32]]* %13, i64 0, i64 %69
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %70, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = sub nsw i32 %72, %73
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @POND(i32 %74, i32 %75)
  %77 = add nsw i32 %67, %76
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [8 x [3 x i32]], [8 x [3 x i32]]* %13, i64 0, i64 %79
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %80, i64 0, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @POND(i32 %84, i32 %85)
  %87 = add nsw i32 %77, %86
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %94, label %90

90:                                               ; preds = %58
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90, %58
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %94, %90
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %54

101:                                              ; preds = %54
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %52, %42
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @POND(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
