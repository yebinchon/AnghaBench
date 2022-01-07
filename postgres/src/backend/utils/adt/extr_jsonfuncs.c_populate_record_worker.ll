; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_populate_record_worker.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_populate_record_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_34__*, i32 }
%struct.TYPE_34__ = type { i64, %struct.TYPE_33__, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_29__, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_35__*, %struct.TYPE_28__ }
%struct.TYPE_35__ = type { %struct.TYPE_31__, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64, i32* }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i32 }

@RECORDOID = common dso_local global i64 0, align 8
@JSON_TOKEN_INVALID = common dso_local global i32 0, align 4
@jbvBinary = common dso_local global i32 0, align 4
@VARHDRSZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i8*, i32, i32)* @populate_record_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @populate_record_worker(%struct.TYPE_25__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_35__, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_34__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  store i32 %22, i32* %10, align 4
  %23 = bitcast %struct.TYPE_24__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 40, i1 false)
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %15, align 4
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_34__*, %struct.TYPE_34__** %32, align 8
  store %struct.TYPE_34__* %33, %struct.TYPE_34__** %16, align 8
  %34 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %35 = icmp ne %struct.TYPE_34__* %34, null
  br i1 %35, label %59, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* %15, align 4
  %38 = call %struct.TYPE_34__* @MemoryContextAllocZero(i32 %37, i32 24)
  store %struct.TYPE_34__* %38, %struct.TYPE_34__** %16, align 8
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 0
  store %struct.TYPE_34__* %38, %struct.TYPE_34__** %42, align 8
  %43 = load i32, i32* %15, align 4
  %44 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %36
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %52 = call i32 @get_record_type_from_argument(%struct.TYPE_25__* %49, i8* %50, %struct.TYPE_34__* %51)
  br label %58

53:                                               ; preds = %36
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %57 = call i32 @get_record_type_from_query(%struct.TYPE_25__* %54, i8* %55, %struct.TYPE_34__* %56)
  br label %58

58:                                               ; preds = %53, %48
  br label %59

59:                                               ; preds = %58, %4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  store i32* null, i32** %12, align 8
  br label %109

63:                                               ; preds = %59
  %64 = call i64 @PG_ARGISNULL(i32 0)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %89, label %66

66:                                               ; preds = %63
  %67 = call i32* @PG_GETARG_HEAPTUPLEHEADER(i32 0)
  store i32* %67, i32** %12, align 8
  %68 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @RECORDOID, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %66
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @HeapTupleHeaderGetTypeId(i32* %74)
  %76 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 1
  store i32 %75, i32* %80, align 4
  %81 = load i32*, i32** %12, align 8
  %82 = call i32 @HeapTupleHeaderGetTypMod(i32* %81)
  %83 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 0
  store i32 %82, i32* %87, align 8
  br label %88

88:                                               ; preds = %73, %66
  br label %108

89:                                               ; preds = %63
  store i32* null, i32** %12, align 8
  %90 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @RECORDOID, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %99 = call i32 @get_record_type_from_query(%struct.TYPE_25__* %96, i8* %97, %struct.TYPE_34__* %98)
  %100 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @RECORDOID, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @Assert(i32 %105)
  br label %107

107:                                              ; preds = %95, %89
  br label %108

108:                                              ; preds = %107, %88
  br label %109

109:                                              ; preds = %108, %62
  %110 = load i32, i32* %10, align 4
  %111 = call i64 @PG_ARGISNULL(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %109
  %114 = load i32*, i32** %12, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32*, i32** %12, align 8
  %118 = call i32 @PG_RETURN_POINTER(i32* %117)
  br label %121

119:                                              ; preds = %113
  %120 = call i32 (...) @PG_RETURN_NULL()
  br label %121

121:                                              ; preds = %119, %116
  br label %122

122:                                              ; preds = %121, %109
  %123 = load i32, i32* %8, align 4
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  store i32 %123, i32* %124, align 8
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %144

127:                                              ; preds = %122
  %128 = load i32, i32* %10, align 4
  %129 = call i32* @PG_GETARG_TEXT_PP(i32 %128)
  store i32* %129, i32** %17, align 8
  %130 = load i32*, i32** %17, align 8
  %131 = call i32 @VARDATA_ANY(i32* %130)
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 2
  store i32 %131, i32* %134, align 8
  %135 = load i32*, i32** %17, align 8
  %136 = call i32 @VARSIZE_ANY_EXHDR(i32* %135)
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 1
  store i32 %136, i32* %139, align 4
  %140 = load i32, i32* @JSON_TOKEN_INVALID, align 4
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 0
  store i32 %140, i32* %143, align 8
  br label %163

144:                                              ; preds = %122
  %145 = load i32, i32* %10, align 4
  %146 = call %struct.TYPE_23__* @PG_GETARG_JSONB_P(i32 %145)
  store %struct.TYPE_23__* %146, %struct.TYPE_23__** %18, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %147, i32 0, i32 0
  store %struct.TYPE_35__* %14, %struct.TYPE_35__** %148, align 8
  %149 = load i32, i32* @jbvBinary, align 4
  %150 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 1
  store i32 %149, i32* %150, align 8
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %154, i32 0, i32 1
  store i32* %152, i32** %155, align 8
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %157 = call i64 @VARSIZE(%struct.TYPE_23__* %156)
  %158 = load i64, i64* @VARHDRSZ, align 8
  %159 = sub nsw i64 %157, %158
  %160 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %161, i32 0, i32 0
  store i64 %159, i64* %162, align 8
  br label %163

163:                                              ; preds = %144, %127
  %164 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* %15, align 4
  %172 = load i32*, i32** %12, align 8
  %173 = call i32 @populate_composite(%struct.TYPE_26__* %167, i64 %170, i32* null, i32 %171, i32* %172, %struct.TYPE_24__* %11, i32 0)
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %13, align 4
  %175 = call i32 @PG_RETURN_DATUM(i32 %174)
  %176 = load i32, i32* %5, align 4
  ret i32 %176
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_34__* @MemoryContextAllocZero(i32, i32) #2

declare dso_local i32 @get_record_type_from_argument(%struct.TYPE_25__*, i8*, %struct.TYPE_34__*) #2

declare dso_local i32 @get_record_type_from_query(%struct.TYPE_25__*, i8*, %struct.TYPE_34__*) #2

declare dso_local i64 @PG_ARGISNULL(i32) #2

declare dso_local i32* @PG_GETARG_HEAPTUPLEHEADER(i32) #2

declare dso_local i32 @HeapTupleHeaderGetTypeId(i32*) #2

declare dso_local i32 @HeapTupleHeaderGetTypMod(i32*) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @PG_RETURN_POINTER(i32*) #2

declare dso_local i32 @PG_RETURN_NULL(...) #2

declare dso_local i32* @PG_GETARG_TEXT_PP(i32) #2

declare dso_local i32 @VARDATA_ANY(i32*) #2

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32*) #2

declare dso_local %struct.TYPE_23__* @PG_GETARG_JSONB_P(i32) #2

declare dso_local i64 @VARSIZE(%struct.TYPE_23__*) #2

declare dso_local i32 @populate_composite(%struct.TYPE_26__*, i64, i32*, i32, i32*, %struct.TYPE_24__*, i32) #2

declare dso_local i32 @PG_RETURN_DATUM(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
