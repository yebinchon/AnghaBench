; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/statistics/extr_mvdistinct.c_statext_ndistinct_serialize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/statistics/extr_mvdistinct.c_statext_ndistinct_serialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@STATS_NDISTINCT_MAGIC = common dso_local global i32 0, align 4
@STATS_NDISTINCT_TYPE_BASIC = common dso_local global i32 0, align 4
@VARHDRSZ = common dso_local global i32 0, align 4
@SizeOfHeader = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @statext_ndistinct_serialize(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @STATS_NDISTINCT_MAGIC, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @STATS_NDISTINCT_TYPE_BASIC, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load i32, i32* @VARHDRSZ, align 4
  %27 = load i32, i32* @SizeOfHeader, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %53, %1
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %29
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @bms_num_members(i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp sge i32 %45, 2
  %47 = zext i1 %46 to i32
  %48 = call i32 @Assert(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @SizeOfItem(i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %35
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %29

56:                                               ; preds = %29
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @palloc(i32 %57)
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %4, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @SET_VARSIZE(i32* %60, i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = call i8* @VARDATA(i32* %63)
  store i8* %64, i8** %5, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = call i32 @memcpy(i8* %65, i32* %67, i32 4)
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 4
  store i8* %70, i8** %5, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = call i32 @memcpy(i8* %71, i32* %73, i32 4)
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 4
  store i8* %76, i8** %5, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = call i32 @memcpy(i8* %77, i32* %79, i32 4)
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 4
  store i8* %82, i8** %5, align 8
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %132, %56
  %84 = load i32, i32* %3, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %135

89:                                               ; preds = %83
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = bitcast %struct.TYPE_4__* %8 to i8*
  %97 = bitcast %struct.TYPE_4__* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 %97, i64 8, i1 false)
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @bms_num_members(i32 %99)
  store i32 %100, i32* %9, align 4
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %103 = call i32 @memcpy(i8* %101, i32* %102, i32 8)
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 8
  store i8* %105, i8** %5, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = call i32 @memcpy(i8* %106, i32* %9, i32 4)
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 4
  store i8* %109, i8** %5, align 8
  store i32 -1, i32* %10, align 4
  br label %110

110:                                              ; preds = %116, %89
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @bms_next_member(i32 %112, i32 %113)
  store i32 %114, i32* %10, align 4
  %115 = icmp sge i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %11, align 4
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 @memcpy(i8* %118, i32* %11, i32 4)
  %120 = load i8*, i8** %5, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 4
  store i8* %121, i8** %5, align 8
  br label %110

122:                                              ; preds = %110
  %123 = load i8*, i8** %5, align 8
  %124 = load i32*, i32** %4, align 8
  %125 = bitcast i32* %124 to i8*
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = icmp ule i8* %123, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @Assert(i32 %130)
  br label %132

132:                                              ; preds = %122
  %133 = load i32, i32* %3, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %3, align 4
  br label %83

135:                                              ; preds = %83
  %136 = load i8*, i8** %5, align 8
  %137 = load i32*, i32** %4, align 8
  %138 = bitcast i32* %137 to i8*
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = icmp eq i8* %136, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @Assert(i32 %143)
  %145 = load i32*, i32** %4, align 8
  ret i32* %145
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @bms_num_members(i32) #1

declare dso_local i32 @SizeOfItem(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @SET_VARSIZE(i32*, i32) #1

declare dso_local i8* @VARDATA(i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bms_next_member(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
