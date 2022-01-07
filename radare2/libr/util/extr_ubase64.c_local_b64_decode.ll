; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_ubase64.c_local_b64_decode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_ubase64.c_local_b64_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cd64 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @local_b64_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @local_b64_decode(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 3, i32* %6, align 4
  %9 = bitcast [4 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 16, i1 false)
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %65, %2
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %68

13:                                               ; preds = %10
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp slt i32 %19, 43
  br i1 %20, label %29, label %21

21:                                               ; preds = %13
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp sgt i32 %27, 122
  br i1 %28, label %29, label %30

29:                                               ; preds = %21, %13
  store i32 -1, i32* %3, align 4
  br label %97

30:                                               ; preds = %21
  %31 = load i32*, i32** @cd64, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = sub nsw i32 %37, 43
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %31, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %43
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 36
  br i1 %49, label %50, label %59

50:                                               ; preds = %30
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %54, 1
  br label %57

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi i32 [ %55, %53 ], [ -1, %56 ]
  store i32 %58, i32* %6, align 4
  br label %68

59:                                               ; preds = %30
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 62
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %10

68:                                               ; preds = %57, %10
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %70 = load i32, i32* %69, align 16
  %71 = shl i32 %70, 2
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 4
  %75 = or i32 %71, %74
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %75, i32* %77, align 4
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 4
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %82 = load i32, i32* %81, align 8
  %83 = ashr i32 %82, 2
  %84 = or i32 %80, %83
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 %84, i32* %86, align 4
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %88 = load i32, i32* %87, align 8
  %89 = shl i32 %88, 6
  %90 = and i32 %89, 192
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %90, %92
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %68, %29
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
