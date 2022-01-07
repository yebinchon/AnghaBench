; ModuleID = '/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_num.c_gbt_num_compress.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_num.c_gbt_num_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%union.anon = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @gbt_num_compress(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %union.anon, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %152

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @palloc0(i32 %16)
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %7, align 8
  store i8* null, i8** %8, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %102 [
    i32 133, label %22
    i32 132, label %30
    i32 131, label %38
    i32 130, label %46
    i32 136, label %46
    i32 135, label %54
    i32 134, label %62
    i32 137, label %70
    i32 129, label %78
    i32 128, label %86
    i32 138, label %94
  ]

22:                                               ; preds = %13
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @DatumGetInt16(i32 %25)
  %27 = bitcast %union.anon* %6 to i32*
  store i32 %26, i32* %27, align 4
  %28 = bitcast %union.anon* %6 to i32*
  %29 = bitcast i32* %28 to i8*
  store i8* %29, i8** %8, align 8
  br label %107

30:                                               ; preds = %13
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @DatumGetInt32(i32 %33)
  %35 = bitcast %union.anon* %6 to i32*
  store i32 %34, i32* %35, align 4
  %36 = bitcast %union.anon* %6 to i32*
  %37 = bitcast i32* %36 to i8*
  store i8* %37, i8** %8, align 8
  br label %107

38:                                               ; preds = %13
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @DatumGetInt64(i32 %41)
  %43 = bitcast %union.anon* %6 to i32*
  store i32 %42, i32* %43, align 4
  %44 = bitcast %union.anon* %6 to i32*
  %45 = bitcast i32* %44 to i8*
  store i8* %45, i8** %8, align 8
  br label %107

46:                                               ; preds = %13, %13
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @DatumGetObjectId(i32 %49)
  %51 = bitcast %union.anon* %6 to i32*
  store i32 %50, i32* %51, align 4
  %52 = bitcast %union.anon* %6 to i32*
  %53 = bitcast i32* %52 to i8*
  store i8* %53, i8** %8, align 8
  br label %107

54:                                               ; preds = %13
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @DatumGetFloat4(i32 %57)
  %59 = bitcast %union.anon* %6 to i32*
  store i32 %58, i32* %59, align 4
  %60 = bitcast %union.anon* %6 to i32*
  %61 = bitcast i32* %60 to i8*
  store i8* %61, i8** %8, align 8
  br label %107

62:                                               ; preds = %13
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @DatumGetFloat8(i32 %65)
  %67 = bitcast %union.anon* %6 to i32*
  store i32 %66, i32* %67, align 4
  %68 = bitcast %union.anon* %6 to i32*
  %69 = bitcast i32* %68 to i8*
  store i8* %69, i8** %8, align 8
  br label %107

70:                                               ; preds = %13
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @DatumGetDateADT(i32 %73)
  %75 = bitcast %union.anon* %6 to i32*
  store i32 %74, i32* %75, align 4
  %76 = bitcast %union.anon* %6 to i32*
  %77 = bitcast i32* %76 to i8*
  store i8* %77, i8** %8, align 8
  br label %107

78:                                               ; preds = %13
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @DatumGetTimeADT(i32 %81)
  %83 = bitcast %union.anon* %6 to i32*
  store i32 %82, i32* %83, align 4
  %84 = bitcast %union.anon* %6 to i32*
  %85 = bitcast i32* %84 to i8*
  store i8* %85, i8** %8, align 8
  br label %107

86:                                               ; preds = %13
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @DatumGetTimestamp(i32 %89)
  %91 = bitcast %union.anon* %6 to i32*
  store i32 %90, i32* %91, align 4
  %92 = bitcast %union.anon* %6 to i32*
  %93 = bitcast i32* %92 to i8*
  store i8* %93, i8** %8, align 8
  br label %107

94:                                               ; preds = %13
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @DatumGetCash(i32 %97)
  %99 = bitcast %union.anon* %6 to i32*
  store i32 %98, i32* %99, align 4
  %100 = bitcast %union.anon* %6 to i32*
  %101 = bitcast i32* %100 to i8*
  store i8* %101, i8** %8, align 8
  br label %107

102:                                              ; preds = %13
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @DatumGetPointer(i32 %105)
  store i8* %106, i8** %8, align 8
  br label %107

107:                                              ; preds = %102, %94, %86, %78, %70, %62, %54, %46, %38, %30, %22
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 2, %113
  %115 = icmp sge i32 %110, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @Assert(i32 %116)
  %118 = load i32*, i32** %7, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = bitcast i32* %119 to i8*
  %121 = load i8*, i8** %8, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @memcpy(i8* %120, i8* %121, i32 %124)
  %126 = load i32*, i32** %7, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %126, i64 %130
  %132 = bitcast i32* %131 to i8*
  %133 = load i8*, i8** %8, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @memcpy(i8* %132, i8* %133, i32 %136)
  %138 = call %struct.TYPE_9__* @palloc(i32 24)
  store %struct.TYPE_9__* %138, %struct.TYPE_9__** %5, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %140 = load i32*, i32** %7, align 8
  %141 = call i32 @PointerGetDatum(i32* %140)
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @gistentryinit(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %139, i32 %141, i32 %144, i32 %147, i32 %150, i32 0)
  br label %154

152:                                              ; preds = %2
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %153, %struct.TYPE_9__** %5, align 8
  br label %154

154:                                              ; preds = %152, %107
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  ret %struct.TYPE_9__* %155
}

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @DatumGetInt16(i32) #1

declare dso_local i32 @DatumGetInt32(i32) #1

declare dso_local i32 @DatumGetInt64(i32) #1

declare dso_local i32 @DatumGetObjectId(i32) #1

declare dso_local i32 @DatumGetFloat4(i32) #1

declare dso_local i32 @DatumGetFloat8(i32) #1

declare dso_local i32 @DatumGetDateADT(i32) #1

declare dso_local i32 @DatumGetTimeADT(i32) #1

declare dso_local i32 @DatumGetTimestamp(i32) #1

declare dso_local i32 @DatumGetCash(i32) #1

declare dso_local i8* @DatumGetPointer(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_9__* @palloc(i32) #1

declare dso_local i32 @gistentryinit(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
