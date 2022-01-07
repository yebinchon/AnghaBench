; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/image/lzma-loader/src/extr_decompress.c_entry.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/image/lzma-loader/src/extr_decompress.c_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@read_byte = common dso_local global i32 0, align 4
@lzma_start = common dso_local global i32 0, align 4
@data = common dso_local global i32 0, align 4
@buffer = common dso_local global i64 0, align 8
@KERNEL_ENTRY = common dso_local global i64 0, align 8
@LZMA_RESULT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @entry(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__, align 4
  %16 = alloca %struct.TYPE_8__, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = call i32 asm sideeffect "ori $0, $$12, 0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store volatile i32 %17, i32* %11, align 4
  %18 = call i32 asm sideeffect "ori $0, $$13, 0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  store volatile i32 %18, i32* %12, align 4
  %19 = call i32 asm sideeffect "ori $0, $$14, 0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  store volatile i32 %19, i32* %13, align 4
  %20 = call i32 asm sideeffect "ori $0, $$15, 0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !5
  store volatile i32 %20, i32* %14, align 4
  %21 = load i32, i32* @read_byte, align 4
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @lzma_start, align 4
  store i32 %23, i32* @data, align 4
  %24 = call i32 (...) @get_byte()
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = urem i32 %25, 9
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = udiv i32 %29, 9
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = urem i32 %31, 5
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = udiv i32 %35, 5
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i64, i64* @buffer, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i32* %40, i32** %41, align 8
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %47, %4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ult i32 %43, 4
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = call i32 (...) @get_byte()
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %9, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %42

50:                                               ; preds = %42
  %51 = call i32 (...) @get_byte()
  %52 = call i32 (...) @get_byte()
  %53 = shl i32 %52, 8
  %54 = add i32 %51, %53
  %55 = call i32 (...) @get_byte()
  %56 = shl i32 %55, 16
  %57 = add i32 %54, %56
  %58 = call i32 (...) @get_byte()
  %59 = shl i32 %58, 24
  %60 = add i32 %57, %59
  store i32 %60, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %66, %50
  %62 = load i32, i32* %9, align 4
  %63 = icmp ult i32 %62, 4
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = call i32 (...) @get_byte()
  br label %66

66:                                               ; preds = %64
  %67 = load i32, i32* %9, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %61

69:                                               ; preds = %61
  %70 = load i64, i64* @KERNEL_ENTRY, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @LzmaDecode(%struct.TYPE_8__* %16, %struct.TYPE_7__* %15, i8* %71, i32 %72, i32* %10)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* @LZMA_RESULT_OK, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %69
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @blast_dcache(i64 %77, i64 %78)
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @blast_icache(i64 %80, i64 %81)
  %83 = load i64, i64* @KERNEL_ENTRY, align 8
  %84 = inttoptr i64 %83 to void (i32, i32, i32, i32)*
  %85 = load volatile i32, i32* %11, align 4
  %86 = load volatile i32, i32* %12, align 4
  %87 = load volatile i32, i32* %13, align 4
  %88 = load volatile i32, i32* %14, align 4
  call void %84(i32 %85, i32 %86, i32 %87, i32 %88)
  br label %89

89:                                               ; preds = %76, %69
  ret void
}

declare dso_local i32 @get_byte(...) #1

declare dso_local i32 @LzmaDecode(%struct.TYPE_8__*, %struct.TYPE_7__*, i8*, i32, i32*) #1

declare dso_local i32 @blast_dcache(i64, i64) #1

declare dso_local i32 @blast_icache(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1108}
!3 = !{i32 1161}
!4 = !{i32 1214}
!5 = !{i32 1267}
