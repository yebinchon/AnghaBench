; ModuleID = '/home/carl/AnghaBench/lz4/lib/extr_lz4hc.c_LZ4_compress_HC_destSize.c'
source_filename = "/home/carl/AnghaBench/lz4/lib/extr_lz4hc.c_LZ4_compress_HC_destSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@fillOutput = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LZ4_compress_HC_destSize(i8* %0, i8* %1, i8* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = call %struct.TYPE_4__* @LZ4_initStreamHC(i8* %15, i32 4)
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %14, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %18 = icmp eq %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %38

20:                                               ; preds = %6
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = call i32 @LZ4HC_init_internal(i32* %22, i32* %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @LZ4_setCompressionLevel(%struct.TYPE_4__* %26, i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @fillOutput, align 4
  %37 = call i32 @LZ4HC_compress_generic(i32* %30, i8* %31, i8* %32, i32* %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %20, %19
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_4__* @LZ4_initStreamHC(i8*, i32) #1

declare dso_local i32 @LZ4HC_init_internal(i32*, i32*) #1

declare dso_local i32 @LZ4_setCompressionLevel(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @LZ4HC_compress_generic(i32*, i8*, i8*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
