; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkporayfw.c_build_fw.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkporayfw.c_build_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@layout = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"no memory for buffer\0A\00", align 1
@firmware_info = common dso_local global i32 0, align 4
@firmware_len = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @build_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_fw() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @layout, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i64 @malloc(i32 %11)
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %0
  %17 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %71

18:                                               ; preds = %0
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @memset(i32* %19, i32 255, i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  store i32* %23, i32** %3, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @read_to_buf(i32* @firmware_info, i32* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %68

29:                                               ; preds = %18
  %30 = load i32, i32* @firmware_len, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 4, %31
  %33 = add i64 %32, 2
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %5, align 4
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @fill_header(i32* %35)
  %37 = load i32*, i32** %2, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  %39 = load i32, i32* @firmware_len, align 4
  %40 = call i32 @checksum_fw(i32* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 8
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 %42, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 255
  %50 = load i32*, i32** %2, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sub nsw i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %49, i32* %54, align 4
  %55 = load i32*, i32** %2, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  %57 = load i32, i32* @firmware_len, align 4
  %58 = add nsw i32 %57, 2
  %59 = call i32 @xor_fw(i32* %56, i32 %58)
  %60 = load i32*, i32** %2, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @write_fw(i32* %60, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %29
  br label %68

66:                                               ; preds = %29
  %67 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %65, %28
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @free(i32* %69)
  br label %71

71:                                               ; preds = %68, %16
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @read_to_buf(i32*, i32*) #1

declare dso_local i32 @fill_header(i32*) #1

declare dso_local i32 @checksum_fw(i32*, i32) #1

declare dso_local i32 @xor_fw(i32*, i32) #1

declare dso_local i32 @write_fw(i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
