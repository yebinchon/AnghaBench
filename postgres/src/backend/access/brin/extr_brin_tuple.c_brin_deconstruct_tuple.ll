; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_tuple.c_brin_deconstruct_tuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_tuple.c_brin_deconstruct_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__**, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i8*, i32*, i32, i32*, i32*, i32*)* @brin_deconstruct_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brin_deconstruct_tuple(%struct.TYPE_12__* %0, i8* %1, i32* %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %15, align 4
  br label %21

21:                                               ; preds = %66, %7
  %22 = load i32, i32* %15, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %22, %27
  br i1 %28, label %29, label %69

29:                                               ; preds = %21
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %15, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @att_isnull(i32 %33, i32* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %32, %29
  %39 = phi i1 [ false, %29 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %38
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @att_isnull(i32 %54, i32* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %47, %38
  %60 = phi i1 [ false, %38 ], [ %58, %47 ]
  %61 = zext i1 %60 to i32
  %62 = load i32*, i32** %14, align 8
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %15, align 4
  br label %21

69:                                               ; preds = %21
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %71 = call i32 @brtuple_disk_tupdesc(%struct.TYPE_12__* %70)
  store i32 %71, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i64 0, i64* %18, align 8
  store i32 0, i32* %15, align 4
  br label %72

72:                                               ; preds = %158, %69
  %73 = load i32, i32* %15, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %73, %78
  br i1 %79, label %80, label %161

80:                                               ; preds = %72
  %81 = load i32*, i32** %13, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %80
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %89, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %90, i64 %92
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %16, align 4
  br label %158

99:                                               ; preds = %80
  store i32 0, i32* %19, align 4
  br label %100

100:                                              ; preds = %154, %99
  %101 = load i32, i32* %19, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %103, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %104, i64 %106
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %101, %110
  br i1 %111, label %112, label %157

112:                                              ; preds = %100
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %16, align 4
  %115 = call %struct.TYPE_11__* @TupleDescAttr(i32 %113, i32 %114)
  store %struct.TYPE_11__* %115, %struct.TYPE_11__** %20, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %129

120:                                              ; preds = %112
  %121 = load i64, i64* %18, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i8*, i8** %9, align 8
  %126 = load i64, i64* %18, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  %128 = call i64 @att_align_pointer(i64 %121, i32 %124, i32 -1, i8* %127)
  store i64 %128, i64* %18, align 8
  br label %135

129:                                              ; preds = %112
  %130 = load i64, i64* %18, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @att_align_nominal(i64 %130, i32 %133)
  store i64 %134, i64* %18, align 8
  br label %135

135:                                              ; preds = %129, %120
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %137 = load i8*, i8** %9, align 8
  %138 = load i64, i64* %18, align 8
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  %140 = call i32 @fetchatt(%struct.TYPE_11__* %136, i8* %139)
  %141 = load i32*, i32** %12, align 8
  %142 = load i32, i32* %16, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %16, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  store i32 %140, i32* %145, align 4
  %146 = load i64, i64* %18, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i8*, i8** %9, align 8
  %151 = load i64, i64* %18, align 8
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  %153 = call i64 @att_addlength_pointer(i64 %146, i32 %149, i8* %152)
  store i64 %153, i64* %18, align 8
  br label %154

154:                                              ; preds = %135
  %155 = load i32, i32* %19, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %19, align 4
  br label %100

157:                                              ; preds = %100
  br label %158

158:                                              ; preds = %157, %87
  %159 = load i32, i32* %15, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %15, align 4
  br label %72

161:                                              ; preds = %72
  ret void
}

declare dso_local i32 @att_isnull(i32, i32*) #1

declare dso_local i32 @brtuple_disk_tupdesc(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_11__* @TupleDescAttr(i32, i32) #1

declare dso_local i64 @att_align_pointer(i64, i32, i32, i8*) #1

declare dso_local i64 @att_align_nominal(i64, i32) #1

declare dso_local i32 @fetchatt(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @att_addlength_pointer(i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
