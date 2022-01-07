; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_printtup.c_SendRowDescriptionCols_3.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_printtup.c_SendRowDescriptionCols_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i64, i64 }
%struct.TYPE_8__ = type { i64, i64, i64 }

@NAMEDATALEN = common dso_local global i32 0, align 4
@MAX_CONVERSION_GROWTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_7__*, i32*, i64*)* @SendRowDescriptionCols_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SendRowDescriptionCols_3(i32 %0, %struct.TYPE_7__* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64* %3, i64** %8, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = call i32* @list_head(i32* %22)
  store i32* %23, i32** %11, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @NAMEDATALEN, align 4
  %26 = load i32, i32* @MAX_CONVERSION_GROWTH, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = add i64 %28, 8
  %30 = add i64 %29, 8
  %31 = add i64 %30, 8
  %32 = add i64 %31, 8
  %33 = add i64 %32, 8
  %34 = add i64 %33, 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %34, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @enlargeStringInfo(i32 %24, i32 %38)
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %126, %4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %129

44:                                               ; preds = %40
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call %struct.TYPE_9__* @TupleDescAttr(%struct.TYPE_7__* %45, i32 %46)
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %12, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %13, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %14, align 8
  %54 = load i64, i64* %13, align 8
  %55 = call i64 @getBaseTypeAndTypmod(i64 %54, i64* %14)
  store i64 %55, i64* %13, align 8
  br label %56

56:                                               ; preds = %68, %44
  %57 = load i32*, i32** %11, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i32*, i32** %11, align 8
  %61 = call i64 @lfirst(i32* %60)
  %62 = inttoptr i64 %61 to %struct.TYPE_8__*
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %59, %56
  %67 = phi i1 [ false, %56 ], [ %65, %59 ]
  br i1 %67, label %68, label %72

68:                                               ; preds = %66
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = call i32* @lnext(i32* %69, i32* %70)
  store i32* %71, i32** %11, align 8
  br label %56

72:                                               ; preds = %66
  %73 = load i32*, i32** %11, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load i32*, i32** %11, align 8
  %77 = call i64 @lfirst(i32* %76)
  %78 = inttoptr i64 %77 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %78, %struct.TYPE_8__** %18, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %15, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %16, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = call i32* @lnext(i32* %85, i32* %86)
  store i32* %87, i32** %11, align 8
  br label %89

88:                                               ; preds = %72
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %89

89:                                               ; preds = %88, %75
  %90 = load i64*, i64** %8, align 8
  %91 = icmp ne i64* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i64*, i64** %8, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %17, align 8
  br label %99

98:                                               ; preds = %89
  store i64 0, i64* %17, align 8
  br label %99

99:                                               ; preds = %98, %92
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @NameStr(i32 %103)
  %105 = call i32 @pq_writestring(i32 %100, i32 %104)
  %106 = load i32, i32* %5, align 4
  %107 = load i64, i64* %15, align 8
  %108 = call i32 @pq_writeint32(i32 %106, i64 %107)
  %109 = load i32, i32* %5, align 4
  %110 = load i64, i64* %16, align 8
  %111 = call i32 @pq_writeint16(i32 %109, i64 %110)
  %112 = load i32, i32* %5, align 4
  %113 = load i64, i64* %13, align 8
  %114 = call i32 @pq_writeint32(i32 %112, i64 %113)
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @pq_writeint16(i32 %115, i64 %118)
  %120 = load i32, i32* %5, align 4
  %121 = load i64, i64* %14, align 8
  %122 = call i32 @pq_writeint32(i32 %120, i64 %121)
  %123 = load i32, i32* %5, align 4
  %124 = load i64, i64* %17, align 8
  %125 = call i32 @pq_writeint16(i32 %123, i64 %124)
  br label %126

126:                                              ; preds = %99
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %40

129:                                              ; preds = %40
  ret void
}

declare dso_local i32* @list_head(i32*) #1

declare dso_local i32 @enlargeStringInfo(i32, i32) #1

declare dso_local %struct.TYPE_9__* @TupleDescAttr(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @getBaseTypeAndTypmod(i64, i64*) #1

declare dso_local i64 @lfirst(i32*) #1

declare dso_local i32* @lnext(i32*, i32*) #1

declare dso_local i32 @pq_writestring(i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @pq_writeint32(i32, i64) #1

declare dso_local i32 @pq_writeint16(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
