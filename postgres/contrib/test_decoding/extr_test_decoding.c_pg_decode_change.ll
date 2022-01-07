; ModuleID = '/home/carl/AnghaBench/postgres/contrib/test_decoding/extr_test_decoding.c_pg_decode_change.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/test_decoding/extr_test_decoding.c_pg_decode_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i64 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_23__ = type { i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"table \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" INSERT:\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c" (no-tuple-data)\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" UPDATE:\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" old-key:\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" new-tuple:\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c" DELETE:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, i32*, i32, %struct.TYPE_21__*)* @pg_decode_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pg_decode_change(%struct.TYPE_22__* %0, i32* %1, i32 %2, %struct.TYPE_21__* %3) #0 {
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %8, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %9, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @pg_output_begin(%struct.TYPE_22__* %26, %struct.TYPE_20__* %27, i32* %28, i32 0)
  br label %30

30:                                               ; preds = %25, %20, %4
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call %struct.TYPE_23__* @RelationGetForm(i32 %33)
  store %struct.TYPE_23__* %34, %struct.TYPE_23__** %10, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @RelationGetDescr(i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @MemoryContextSwitchTo(i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %42 = call i32 @OutputPluginPrepareWrite(%struct.TYPE_22__* %41, i32 1)
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @appendStringInfoString(i32 %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @RelationGetRelid(i32 %50)
  %52 = call i32 @get_rel_namespace(i32 %51)
  %53 = call i32 @get_namespace_name(i32 %52)
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %30
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @get_rel_name(i64 %61)
  br label %68

63:                                               ; preds = %30
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @NameStr(i32 %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = phi i32 [ %62, %58 ], [ %67, %63 ]
  %70 = call i8* @quote_qualified_identifier(i32 %53, i32 %69)
  %71 = call i32 @appendStringInfoString(i32 %49, i8* %70)
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @appendStringInfoChar(i32 %74, i8 signext 58)
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  switch i32 %78, label %193 [
    i32 129, label %79
    i32 128, label %108
    i32 130, label %164
  ]

79:                                               ; preds = %68
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @appendStringInfoString(i32 %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = icmp eq %struct.TYPE_16__* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %79
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @appendStringInfoString(i32 %93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %107

95:                                               ; preds = %79
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = call i32 @tuple_to_stringinfo(i32 %98, i32 %99, i32* %105, i32 0)
  br label %107

107:                                              ; preds = %95, %90
  br label %195

108:                                              ; preds = %68
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @appendStringInfoString(i32 %111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %116, align 8
  %118 = icmp ne %struct.TYPE_17__* %117, null
  br i1 %118, label %119, label %139

119:                                              ; preds = %108
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @appendStringInfoString(i32 %122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = call i32 @tuple_to_stringinfo(i32 %126, i32 %127, i32* %133, i32 1)
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @appendStringInfoString(i32 %137, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %139

139:                                              ; preds = %119, %108
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %143, align 8
  %145 = icmp eq %struct.TYPE_16__* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %139
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @appendStringInfoString(i32 %149, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %163

151:                                              ; preds = %139
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = call i32 @tuple_to_stringinfo(i32 %154, i32 %155, i32* %161, i32 0)
  br label %163

163:                                              ; preds = %151, %146
  br label %195

164:                                              ; preds = %68
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @appendStringInfoString(i32 %167, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %172, align 8
  %174 = icmp eq %struct.TYPE_17__* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %164
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @appendStringInfoString(i32 %178, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %192

180:                                              ; preds = %164
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %11, align 4
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 0
  %191 = call i32 @tuple_to_stringinfo(i32 %183, i32 %184, i32* %190, i32 1)
  br label %192

192:                                              ; preds = %180, %175
  br label %195

193:                                              ; preds = %68
  %194 = call i32 @Assert(i32 0)
  br label %195

195:                                              ; preds = %193, %192, %163, %107
  %196 = load i32, i32* %12, align 4
  %197 = call i32 @MemoryContextSwitchTo(i32 %196)
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @MemoryContextReset(i32 %200)
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %203 = call i32 @OutputPluginWrite(%struct.TYPE_22__* %202, i32 1)
  ret void
}

declare dso_local i32 @pg_output_begin(%struct.TYPE_22__*, %struct.TYPE_20__*, i32*, i32) #1

declare dso_local %struct.TYPE_23__* @RelationGetForm(i32) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @OutputPluginPrepareWrite(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i8* @quote_qualified_identifier(i32, i32) #1

declare dso_local i32 @get_namespace_name(i32) #1

declare dso_local i32 @get_rel_namespace(i32) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @get_rel_name(i64) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @appendStringInfoChar(i32, i8 signext) #1

declare dso_local i32 @tuple_to_stringinfo(i32, i32, i32*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MemoryContextReset(i32) #1

declare dso_local i32 @OutputPluginWrite(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
