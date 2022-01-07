; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/uzlib/extr_uzlib_inflate.c_inflate_block_data.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/uzlib/extr_uzlib_inflate.c_inflate_block_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i8*)*, i8*, i32 (i32)*, i8*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [21 x i8] c"huff sym: %02x   %c\0A\00", align 1
@UZLIB_OK = common dso_local global i32 0, align 4
@UZLIB_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"huff dict: -%u for %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"huff dict byte(%u): -%u -  %02x   %c\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*)* @inflate_block_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inflate_block_data(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %87

15:                                               ; preds = %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @decode_symbol(%struct.TYPE_5__* %16, i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 256
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 (i8*, i32, i32, ...) @DBG_PRINT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32 (i32)*, i32 (i32)** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 %27(i32 %28)
  %30 = load i32, i32* @UZLIB_OK, align 4
  store i32 %30, i32* %4, align 4
  br label %116

31:                                               ; preds = %15
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 256
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @UZLIB_DONE, align 4
  store i32 %35, i32* %4, align 4
  br label %116

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %37, 257
  store i32 %38, i32* %9, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 7
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 6
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @read_bits(%struct.TYPE_5__* %39, i32 %46, i32 %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @decode_symbol(%struct.TYPE_5__* %57, i32* %58)
  store i32 %59, i32* %8, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 5
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @read_bits(%struct.TYPE_5__* %60, i32 %67, i32 %74)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = ptrtoint i8* %84 to i32
  %86 = call i32 (i8*, i32, i32, ...) @DBG_PRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %85)
  br label %87

87:                                               ; preds = %36, %3
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32 (i8*)*, i32 (i8*)** %89, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 %90(i8* %93)
  store i32 %94, i32* %10, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = ptrtoint i8* %101 to i32
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 (i8*, i32, i32, ...) @DBG_PRINT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %98, i32 %102, i32 %103, i32 %104)
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load i32 (i32)*, i32 (i32)** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 %108(i32 %109)
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 -1
  store i8* %114, i8** %112, align 8
  %115 = load i32, i32* @UZLIB_OK, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %87, %34, %21
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @decode_symbol(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @DBG_PRINT(i8*, i32, i32, ...) #1

declare dso_local i8* @read_bits(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
