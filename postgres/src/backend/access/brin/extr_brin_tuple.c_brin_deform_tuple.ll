; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_tuple.c_brin_deform_tuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_tuple.c_brin_deform_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_23__**, %struct.TYPE_21__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__** }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32*, i32*, %struct.TYPE_24__*, i32, i32*, i32 }
%struct.TYPE_24__ = type { i32, i32, i32* }

@SizeOfBrinTuple = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_26__* @brin_deform_tuple(%struct.TYPE_27__* %0, %struct.TYPE_25__* %1, %struct.TYPE_26__* %2) #0 {
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %6, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %18 = icmp ne %struct.TYPE_26__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %22 = call %struct.TYPE_26__* @brin_memtuple_initialize(%struct.TYPE_26__* %20, %struct.TYPE_27__* %21)
  br label %26

23:                                               ; preds = %3
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %25 = call %struct.TYPE_26__* @brin_new_memtuple(%struct.TYPE_27__* %24)
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi %struct.TYPE_26__* [ %22, %19 ], [ %25, %23 ]
  store %struct.TYPE_26__* %27, %struct.TYPE_26__** %7, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %29 = call i64 @BrinTupleIsPlaceholder(%struct.TYPE_25__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %8, align 8
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %9, align 8
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %10, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %50 = bitcast %struct.TYPE_25__* %49 to i8*
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %52 = call i32 @BrinTupleDataOffset(%struct.TYPE_25__* %51)
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  store i8* %54, i8** %11, align 8
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %56 = call i64 @BrinTupleHasNulls(%struct.TYPE_25__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %34
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %60 = bitcast %struct.TYPE_25__* %59 to i8*
  %61 = load i32, i32* @SizeOfBrinTuple, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = bitcast i8* %63 to i32*
  store i32* %64, i32** %12, align 8
  br label %66

65:                                               ; preds = %34
  store i32* null, i32** %12, align 8
  br label %66

66:                                               ; preds = %65, %58
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %71 = call i64 @BrinTupleHasNulls(%struct.TYPE_25__* %70)
  %72 = load i32*, i32** %8, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @brin_deconstruct_tuple(%struct.TYPE_27__* %67, i8* %68, i32* %69, i64 %71, i32* %72, i32* %73, i32* %74)
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @MemoryContextSwitchTo(i32 %78)
  store i32 %79, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %80

80:                                               ; preds = %192, %66
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %81, %86
  br i1 %87, label %88, label %195

88:                                               ; preds = %80
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %88
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %98, i64 %100
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %14, align 4
  br label %192

107:                                              ; preds = %88
  store i32 0, i32* %16, align 4
  br label %108

108:                                              ; preds = %169, %107
  %109 = load i32, i32* %16, align 4
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %112, i64 %114
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %109, %118
  br i1 %119, label %120, label %172

120:                                              ; preds = %108
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %129, i64 %131
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %134, align 8
  %136 = load i32, i32* %16, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %135, i64 %137
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %143, align 8
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %144, i64 %146
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %149, align 8
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %150, i64 %152
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @datumCopy(i32 %126, i32 %141, i32 %156)
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %159, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %16, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %157, i32* %168, align 4
  br label %169

169:                                              ; preds = %120
  %170 = load i32, i32* %16, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %16, align 4
  br label %108

172:                                              ; preds = %108
  %173 = load i32*, i32** %10, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 3
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %179, align 8
  %181 = load i32, i32* %13, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 0
  store i32 %177, i32* %184, align 8
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i32 0, i32 3
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %186, align 8
  %188 = load i32, i32* %13, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 1
  store i32 0, i32* %191, align 4
  br label %192

192:                                              ; preds = %172, %95
  %193 = load i32, i32* %13, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %13, align 4
  br label %80

195:                                              ; preds = %80
  %196 = load i32, i32* %15, align 4
  %197 = call i32 @MemoryContextSwitchTo(i32 %196)
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  ret %struct.TYPE_26__* %198
}

declare dso_local %struct.TYPE_26__* @brin_memtuple_initialize(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_26__* @brin_new_memtuple(%struct.TYPE_27__*) #1

declare dso_local i64 @BrinTupleIsPlaceholder(%struct.TYPE_25__*) #1

declare dso_local i32 @BrinTupleDataOffset(%struct.TYPE_25__*) #1

declare dso_local i64 @BrinTupleHasNulls(%struct.TYPE_25__*) #1

declare dso_local i32 @brin_deconstruct_tuple(%struct.TYPE_27__*, i8*, i32*, i64, i32*, i32*, i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @datumCopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
