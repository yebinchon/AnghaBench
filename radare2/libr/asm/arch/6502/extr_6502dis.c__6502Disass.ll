; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/6502/extr_6502dis.c__6502Disass.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/6502/extr_6502dis.c__6502Disass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.TYPE_5__ = type { i32 }

@ops = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"truncated\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_5__*, i64*, i32)* @_6502Disass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_6502Disass(i32 %0, %struct.TYPE_5__* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %128, %4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ops, align 8
  %15 = load i32, i32* %10, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %131

22:                                               ; preds = %13
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ops, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %127

33:                                               ; preds = %22
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ops, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %12, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ops, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %120 [
    i32 1, label %46
    i32 2, label %54
    i32 3, label %71
    i32 4, label %93
  ]

46:                                               ; preds = %33
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ops, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i8* @sdb_fmt(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  store i8* %53, i8** %11, align 8
  br label %121

54:                                               ; preds = %33
  %55 = load i32, i32* %12, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ops, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = load i64*, i64** %8, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = call i8* @sdb_fmt(i8* %64, i64 %67)
  store i8* %68, i8** %11, align 8
  br label %70

69:                                               ; preds = %54
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  store i32 -1, i32* %12, align 4
  br label %70

70:                                               ; preds = %69, %57
  br label %121

71:                                               ; preds = %33
  %72 = load i32, i32* %12, align 4
  %73 = icmp sgt i32 %72, 2
  br i1 %73, label %74, label %91

74:                                               ; preds = %71
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ops, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = load i64*, i64** %8, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %8, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 2
  %87 = load i64, i64* %86, align 8
  %88 = mul nsw i64 256, %87
  %89 = add nsw i64 %84, %88
  %90 = call i8* @sdb_fmt(i8* %81, i64 %89)
  store i8* %90, i8** %11, align 8
  br label %92

91:                                               ; preds = %71
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  store i32 -1, i32* %12, align 4
  br label %92

92:                                               ; preds = %91, %74
  br label %121

93:                                               ; preds = %33
  %94 = load i32, i32* %12, align 4
  %95 = icmp sgt i32 %94, 3
  br i1 %95, label %96, label %118

96:                                               ; preds = %93
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ops, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i8*
  %104 = load i64*, i64** %8, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64*, i64** %8, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 2
  %109 = load i64, i64* %108, align 8
  %110 = mul nsw i64 256, %109
  %111 = add nsw i64 %106, %110
  %112 = load i64*, i64** %8, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 3
  %114 = load i64, i64* %113, align 8
  %115 = mul nsw i64 65536, %114
  %116 = add nsw i64 %111, %115
  %117 = call i8* @sdb_fmt(i8* %103, i64 %116)
  store i8* %117, i8** %11, align 8
  br label %119

118:                                              ; preds = %93
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  store i32 -1, i32* %12, align 4
  br label %119

119:                                              ; preds = %118, %96
  br label %121

120:                                              ; preds = %33
  br label %132

121:                                              ; preds = %119, %92, %70, %46
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i8*, i8** %11, align 8
  %125 = call i32 @r_strbuf_set(i32* %123, i8* %124)
  %126 = load i32, i32* %12, align 4
  store i32 %126, i32* %5, align 4
  br label %138

127:                                              ; preds = %22
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %13

131:                                              ; preds = %13
  br label %132

132:                                              ; preds = %131, %120
  %133 = load i32, i32* %6, align 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %135 = load i64*, i64** %8, align 8
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @snesDisass(i32 1, i32 1, i32 %133, %struct.TYPE_5__* %134, i64* %135, i32 %136)
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %132, %121
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i8* @sdb_fmt(i8*, i64) #1

declare dso_local i32 @r_strbuf_set(i32*, i8*) #1

declare dso_local i32 @snesDisass(i32, i32, i32, %struct.TYPE_5__*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
