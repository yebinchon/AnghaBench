; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_proto.c_logicalrep_write_tuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_proto.c_logicalrep_write_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i64, i64 }

@MaxTupleAttributeNumber = common dso_local global i32 0, align 4
@TYPEOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cache lookup failed for type %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_16__*)* @logicalrep_write_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @logicalrep_write_tuple(i32 %0, i32 %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %6, align 8
  %17 = load i32, i32* @MaxTupleAttributeNumber, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i32, i32* @MaxTupleAttributeNumber, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.TYPE_15__* @RelationGetDescr(i32 %24)
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %7, align 8
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %50, %3
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %26
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call %struct.TYPE_18__* @TupleDescAttr(%struct.TYPE_15__* %33, i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call %struct.TYPE_18__* @TupleDescAttr(%struct.TYPE_15__* %40, i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39, %32
  br label %50

47:                                               ; preds = %39
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %47, %46
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %26

53:                                               ; preds = %26
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @pq_sendint16(i32 %54, i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = mul nsw i32 %61, 5
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %60, %63
  %65 = call i32 @enlargeStringInfo(i32 %57, i64 %64)
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %68 = call i32 @heap_deform_tuple(%struct.TYPE_16__* %66, %struct.TYPE_15__* %67, i32* %20, i32* %23)
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %153, %53
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %156

75:                                               ; preds = %69
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call %struct.TYPE_18__* @TupleDescAttr(%struct.TYPE_15__* %76, i32 %77)
  store %struct.TYPE_18__* %78, %struct.TYPE_18__** %15, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %75
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83, %75
  br label %153

89:                                               ; preds = %83
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %23, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @pq_sendbyte(i32 %96, i8 signext 110)
  br label %153

98:                                               ; preds = %89
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %113

103:                                              ; preds = %98
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %20, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @VARATT_IS_EXTERNAL_ONDISK(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @pq_sendbyte(i32 %111, i8 signext 117)
  br label %153

113:                                              ; preds = %103, %98
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* @TYPEOID, align 4
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ObjectIdGetDatum(i32 %118)
  %120 = call %struct.TYPE_16__* @SearchSysCache1(i32 %115, i32 %119)
  store %struct.TYPE_16__* %120, %struct.TYPE_16__** %13, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %122 = call i32 @HeapTupleIsValid(%struct.TYPE_16__* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %114
  %125 = load i32, i32* @ERROR, align 4
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @elog(i32 %125, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %124, %114
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %132 = call i64 @GETSTRUCT(%struct.TYPE_16__* %131)
  %133 = inttoptr i64 %132 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %133, %struct.TYPE_17__** %14, align 8
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @pq_sendbyte(i32 %134, i8 signext 116)
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %20, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @OidOutputFunctionCall(i32 %138, i32 %142)
  store i8* %143, i8** %16, align 8
  %144 = load i32, i32* %4, align 4
  %145 = load i8*, i8** %16, align 8
  %146 = load i8*, i8** %16, align 8
  %147 = call i32 @strlen(i8* %146)
  %148 = call i32 @pq_sendcountedtext(i32 %144, i8* %145, i32 %147, i32 0)
  %149 = load i8*, i8** %16, align 8
  %150 = call i32 @pfree(i8* %149)
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %152 = call i32 @ReleaseSysCache(%struct.TYPE_16__* %151)
  br label %153

153:                                              ; preds = %130, %110, %95, %88
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %11, align 4
  br label %69

156:                                              ; preds = %69
  %157 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %157)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_15__* @RelationGetDescr(i32) #2

declare dso_local %struct.TYPE_18__* @TupleDescAttr(%struct.TYPE_15__*, i32) #2

declare dso_local i32 @pq_sendint16(i32, i32) #2

declare dso_local i32 @enlargeStringInfo(i32, i64) #2

declare dso_local i32 @heap_deform_tuple(%struct.TYPE_16__*, %struct.TYPE_15__*, i32*, i32*) #2

declare dso_local i32 @pq_sendbyte(i32, i8 signext) #2

declare dso_local i64 @VARATT_IS_EXTERNAL_ONDISK(i32) #2

declare dso_local %struct.TYPE_16__* @SearchSysCache1(i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_16__*) #2

declare dso_local i32 @elog(i32, i8*, i32) #2

declare dso_local i64 @GETSTRUCT(%struct.TYPE_16__*) #2

declare dso_local i8* @OidOutputFunctionCall(i32, i32) #2

declare dso_local i32 @pq_sendcountedtext(i32, i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @pfree(i8*) #2

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_16__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
