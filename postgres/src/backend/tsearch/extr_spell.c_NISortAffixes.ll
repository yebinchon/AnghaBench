; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_NISortAffixes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_NISortAffixes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i8*, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i32, i64, i32* }
%struct.TYPE_11__ = type { i64, i32, i64, i32*, i32 }

@cmpaffix = common dso_local global i32 0, align 4
@FF_SUFFIX = common dso_local global i64 0, align 8
@FF_COMPOUNDFLAG = common dso_local global i32 0, align 4
@FF_PREFIX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NISortAffixes(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %188

16:                                               ; preds = %1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @cmpaffix, align 4
  %30 = call i32 @qsort(i8* %25, i32 %28, i32 40, i32 %29)
  br label %31

31:                                               ; preds = %21, %16
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = mul i64 24, %35
  %37 = trunc i64 %36 to i32
  %38 = call i64 @palloc(i32 %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %5, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 3
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %41, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  store i64 0, i64* %4, align 8
  br label %44

44:                                               ; preds = %143, %31
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = icmp ult i64 %45, %49
  br i1 %50, label %51, label %146

51:                                               ; preds = %44
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.TYPE_11__*
  %56 = load i64, i64* %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i64 %56
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %3, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @FF_SUFFIX, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %51
  %64 = load i64, i64* %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp ult i64 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i64, i64* %4, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %63, %51
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @FF_COMPOUNDFLAG, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %142

78:                                               ; preds = %71
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %142

83:                                               ; preds = %78
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @isAffixInUse(%struct.TYPE_9__* %84, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %142

90:                                               ; preds = %83
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @FF_SUFFIX, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %7, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = icmp eq %struct.TYPE_10__* %97, %100
  br i1 %101, label %125, label %102

102:                                              ; preds = %90
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i64 -1
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %103, %107
  br i1 %108, label %125, label %109

109:                                              ; preds = %102
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i64 -1
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = bitcast i32* %113 to i8*
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = bitcast i32* %117 to i8*
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i64 -1
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @strbncmp(i8* %114, i8* %118, i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %109, %102, %90
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  store i32* %128, i32** %130, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 1
  store %struct.TYPE_10__* %140, %struct.TYPE_10__** %5, align 8
  br label %141

141:                                              ; preds = %125, %109
  br label %142

142:                                              ; preds = %141, %83, %78, %71
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* %4, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %4, align 8
  br label %44

146:                                              ; preds = %44
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 2
  store i32* null, i32** %148, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = ptrtoint %struct.TYPE_10__* %152 to i64
  %157 = ptrtoint %struct.TYPE_10__* %155 to i64
  %158 = sub i64 %156, %157
  %159 = sdiv exact i64 %158, 24
  %160 = add nsw i64 %159, 1
  %161 = mul i64 24, %160
  %162 = trunc i64 %161 to i32
  %163 = call i64 @repalloc(%struct.TYPE_10__* %151, i32 %162)
  %164 = inttoptr i64 %163 to %struct.TYPE_10__*
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 3
  store %struct.TYPE_10__* %164, %struct.TYPE_10__** %166, align 8
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %168 = load i32, i32* %6, align 4
  %169 = load i64, i64* @FF_PREFIX, align 8
  %170 = call i8* @mkANode(%struct.TYPE_9__* %167, i32 0, i32 %168, i32 0, i64 %169)
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 2
  store i8* %170, i8** %172, align 8
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %174 = load i32, i32* %6, align 4
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i64, i64* @FF_SUFFIX, align 8
  %179 = call i8* @mkANode(%struct.TYPE_9__* %173, i32 %174, i32 %177, i32 0, i64 %178)
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  store i8* %179, i8** %181, align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @mkVoidAffix(%struct.TYPE_9__* %182, i32 1, i32 %183)
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %186 = load i32, i32* %6, align 4
  %187 = call i32 @mkVoidAffix(%struct.TYPE_9__* %185, i32 0, i32 %186)
  br label %188

188:                                              ; preds = %146, %15
  ret void
}

declare dso_local i32 @qsort(i8*, i32, i32, i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i64 @isAffixInUse(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @strbncmp(i8*, i8*, i64) #1

declare dso_local i64 @repalloc(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @mkANode(%struct.TYPE_9__*, i32, i32, i32, i64) #1

declare dso_local i32 @mkVoidAffix(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
