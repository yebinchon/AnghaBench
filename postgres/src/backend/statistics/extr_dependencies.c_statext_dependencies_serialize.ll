; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/statistics/extr_dependencies.c_statext_dependencies_serialize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/statistics/extr_dependencies.c_statext_dependencies_serialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i32, i32* }

@VARHDRSZ = common dso_local global i32 0, align 4
@SizeOfHeader = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @statext_dependencies_serialize(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %8 = load i32, i32* @VARHDRSZ, align 4
  %9 = load i32, i32* @SizeOfHeader, align 4
  %10 = add nsw i32 %8, %9
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %30, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %20, i64 %22
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @SizeOfItem(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %17
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %11

33:                                               ; preds = %11
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @palloc0(i32 %34)
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %4, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @SET_VARSIZE(i32* %37, i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i8* @VARDATA(i32* %40)
  store i8* %41, i8** %5, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = call i32 @memcpy(i8* %42, i32* %44, i32 4)
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 4
  store i8* %47, i8** %5, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = call i32 @memcpy(i8* %48, i32* %50, i32 4)
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 4
  store i8* %53, i8** %5, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = call i32 @memcpy(i8* %54, i32* %56, i32 4)
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 4
  store i8* %59, i8** %5, align 8
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %113, %33
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %116

66:                                               ; preds = %60
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %69, i64 %71
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  store %struct.TYPE_4__* %73, %struct.TYPE_4__** %7, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = call i32 @memcpy(i8* %74, i32* %76, i32 8)
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 8
  store i8* %79, i8** %5, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = call i32 @memcpy(i8* %80, i32* %82, i32 4)
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 4
  store i8* %85, i8** %5, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = mul i64 4, %93
  %95 = trunc i64 %94 to i32
  %96 = call i32 @memcpy(i8* %86, i32* %89, i32 %95)
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = mul i64 4, %100
  %102 = load i8*, i8** %5, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 %101
  store i8* %103, i8** %5, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = load i32*, i32** %4, align 8
  %106 = bitcast i32* %105 to i8*
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = icmp ule i8* %104, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @Assert(i32 %111)
  br label %113

113:                                              ; preds = %66
  %114 = load i32, i32* %3, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %3, align 4
  br label %60

116:                                              ; preds = %60
  %117 = load i8*, i8** %5, align 8
  %118 = load i32*, i32** %4, align 8
  %119 = bitcast i32* %118 to i8*
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = icmp eq i8* %117, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @Assert(i32 %124)
  %126 = load i32*, i32** %4, align 8
  ret i32* %126
}

declare dso_local i32 @SizeOfItem(i32) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @SET_VARSIZE(i32*, i32) #1

declare dso_local i8* @VARDATA(i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
