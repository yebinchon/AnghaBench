; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gd2.c__gd2PutHeader.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gd2.c__gd2PutHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@GD2_ID = common dso_local global i64* null, align 8
@GD2_VERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32, i32, i32, i32)* @_gd2PutHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_gd2PutHeader(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %26, %6
  %15 = load i32, i32* %13, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load i64*, i64** @GD2_ID, align 8
  %19 = load i32, i32* %13, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @gdPutC(i8 zeroext %23, i32* %24)
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %13, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %13, align 4
  br label %14

29:                                               ; preds = %14
  %30 = load i32, i32* @GD2_VERS, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @gdPutWord(i32 %30, i32* %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @gdPutWord(i32 %35, i32* %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @gdPutWord(i32 %40, i32* %41)
  %43 = load i32, i32* %9, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @gdPutWord(i32 %43, i32* %44)
  %46 = load i32, i32* %10, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @gdPutWord(i32 %46, i32* %47)
  %49 = load i32, i32* %11, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @gdPutWord(i32 %49, i32* %50)
  %52 = load i32, i32* %12, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @gdPutWord(i32 %52, i32* %53)
  ret void
}

declare dso_local i32 @gdPutC(i8 zeroext, i32*) #1

declare dso_local i32 @gdPutWord(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
