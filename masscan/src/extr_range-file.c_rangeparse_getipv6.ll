; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_range-file.c_rangeparse_getipv6.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_range-file.c_rangeparse_getipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RangeParser = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_8__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.RangeParser*, %struct.TYPE_8__*, %struct.TYPE_8__*)* @rangeparse_getipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rangeparse_getipv6(%struct.RangeParser* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca %struct.RangeParser*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  store %struct.RangeParser* %0, %struct.RangeParser** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %8 = load %struct.RangeParser*, %struct.RangeParser** %4, align 8
  %9 = getelementptr inbounds %struct.RangeParser, %struct.RangeParser* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i64
  %16 = shl i64 %15, 56
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i64
  %21 = shl i64 %20, 48
  %22 = or i64 %16, %21
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i64
  %27 = shl i64 %26, 40
  %28 = or i64 %22, %27
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 3
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i64
  %33 = shl i64 %32, 32
  %34 = or i64 %28, %33
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 4
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i64
  %39 = shl i64 %38, 24
  %40 = or i64 %34, %39
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 5
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i64
  %45 = shl i64 %44, 16
  %46 = or i64 %40, %45
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 6
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i64
  %51 = shl i64 %50, 8
  %52 = or i64 %46, %51
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 7
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i64
  %57 = shl i64 %56, 0
  %58 = or i64 %52, %57
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 8
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i64
  %65 = shl i64 %64, 56
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 9
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i64
  %70 = shl i64 %69, 48
  %71 = or i64 %65, %70
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 10
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i64
  %76 = shl i64 %75, 40
  %77 = or i64 %71, %76
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 11
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i64
  %82 = shl i64 %81, 32
  %83 = or i64 %77, %82
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 12
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i64
  %88 = shl i64 %87, 24
  %89 = or i64 %83, %88
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 13
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i64
  %94 = shl i64 %93, 16
  %95 = or i64 %89, %94
  %96 = load i8*, i8** %7, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 14
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i64
  %100 = shl i64 %99, 8
  %101 = or i64 %95, %100
  %102 = load i8*, i8** %7, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 15
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i64
  %106 = shl i64 %105, 0
  %107 = or i64 %101, %106
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %112 = call i32 @memcpy(%struct.TYPE_8__* %110, %struct.TYPE_8__* %111, i32 16)
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
