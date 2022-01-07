; ModuleID = '/home/carl/AnghaBench/micropython/extmod/uzlib/extr_tinflate.c_tinf_inflate_uncompressed_block.c'
source_filename = "/home/carl/AnghaBench/micropython/extmod/uzlib/extr_tinflate.c_tinf_inflate_uncompressed_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@TINF_DATA_ERROR = common dso_local global i32 0, align 4
@TINF_DONE = common dso_local global i32 0, align 4
@TINF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @tinf_inflate_uncompressed_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tinf_inflate_uncompressed_block(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = call i32 @uzlib_get_byte(%struct.TYPE_5__* %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = call i32 @uzlib_get_byte(%struct.TYPE_5__* %14)
  %16 = mul nsw i32 256, %15
  %17 = load i32, i32* %4, align 4
  %18 = add i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = call i32 @uzlib_get_byte(%struct.TYPE_5__* %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = call i32 @uzlib_get_byte(%struct.TYPE_5__* %21)
  %23 = mul nsw i32 256, %22
  %24 = load i32, i32* %5, align 4
  %25 = add i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %28, 65535
  %30 = icmp ne i32 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %11
  %32 = load i32, i32* @TINF_DATA_ERROR, align 4
  store i32 %32, i32* %2, align 4
  br label %57

33:                                               ; preds = %11
  %34 = load i32, i32* %4, align 4
  %35 = add i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %33, %1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %43, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @TINF_DONE, align 4
  store i32 %48, i32* %2, align 4
  br label %57

49:                                               ; preds = %41
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = call i32 @uzlib_get_byte(%struct.TYPE_5__* %50)
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %6, align 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = load i8, i8* %6, align 1
  %55 = call i32 @TINF_PUT(%struct.TYPE_5__* %53, i8 zeroext %54)
  %56 = load i32, i32* @TINF_OK, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %49, %47, %31
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @uzlib_get_byte(%struct.TYPE_5__*) #1

declare dso_local i32 @TINF_PUT(%struct.TYPE_5__*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
