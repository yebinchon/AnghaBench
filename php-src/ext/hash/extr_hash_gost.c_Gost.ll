; ModuleID = '/home/carl/AnghaBench/php-src/ext/hash/extr_hash_gost.c_Gost.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/hash/extr_hash_gost.c_Gost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @Gost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Gost(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [8 x i32], align 16
  %10 = alloca [8 x i32], align 16
  %11 = alloca [8 x i32], align 16
  %12 = alloca [8 x i32], align 16
  %13 = alloca [8 x i32], align 16
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %14, align 8
  %19 = load i32*, i32** %4, align 8
  store i32* %19, i32** %15, align 8
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @memcpy(i32* %20, i32* %23, i32 32)
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @memcpy(i32* %25, i32* %26, i32 32)
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %37, %2
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PASS(i32 %35)
  br label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 2
  store i32 %39, i32* %5, align 4
  br label %28

40:                                               ; preds = %28
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %42 = load i32*, i32** %15, align 8
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %44 = call i32 @SHIFT12(i32* %41, i32* %42, i32* %43)
  %45 = load i32*, i32** %14, align 8
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %48 = call i32 @SHIFT16(i32* %45, i32* %46, i32* %47)
  %49 = load i32*, i32** %14, align 8
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %51 = call i32 @SHIFT61(i32* %49, i32* %50)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @PASS(i32) #1

declare dso_local i32 @SHIFT12(i32*, i32*, i32*) #1

declare dso_local i32 @SHIFT16(i32*, i32*, i32*) #1

declare dso_local i32 @SHIFT61(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
