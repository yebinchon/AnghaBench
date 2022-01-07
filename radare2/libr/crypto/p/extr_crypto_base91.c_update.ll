; ModuleID = '/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_base91.c_update.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_base91.c_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@INSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32)* @update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @INSIZE, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %13, %3
  store i32 0, i32* %4, align 4
  br label %56

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = call i32* @malloc(i32 %21)
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %56

26:                                               ; preds = %20
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32*, i32** %9, align 8
  %33 = bitcast i32* %32 to i8*
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @r_base91_encode(i8* %33, i32* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  br label %49

37:                                               ; preds = %26
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = bitcast i32* %44 to i8*
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @r_base91_decode(i32* %43, i8* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %42, %37
  br label %49

49:                                               ; preds = %48, %31
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @r_crypto_append(%struct.TYPE_4__* %50, i32* %51, i32 %52)
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @free(i32* %54)
  store i32 1, i32* %4, align 4
  br label %56

56:                                               ; preds = %49, %25, %19
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @r_base91_encode(i8*, i32*, i32) #1

declare dso_local i32 @r_base91_decode(i32*, i8*, i32) #1

declare dso_local i32 @r_crypto_append(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
