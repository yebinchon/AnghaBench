; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_typcache.c_cache_record_field_properties.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_typcache.c_cache_record_field_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i64, i64, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64 }

@RECORDOID = common dso_local global i64 0, align 8
@TCFLAGS_HAVE_FIELD_EQUALITY = common dso_local global i32 0, align 4
@TCFLAGS_HAVE_FIELD_COMPARE = common dso_local global i32 0, align 4
@TYPTYPE_COMPOSITE = common dso_local global i64 0, align 8
@TYPECACHE_EQ_OPR = common dso_local global i32 0, align 4
@TYPECACHE_CMP_PROC = common dso_local global i32 0, align 4
@TYPTYPE_DOMAIN = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i64 0, align 8
@TCFLAGS_DOMAIN_BASE_IS_COMPOSITE = common dso_local global i32 0, align 4
@TCFLAGS_CHECKED_FIELD_PROPERTIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @cache_record_field_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_record_field_properties(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RECORDOID, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load i32, i32* @TCFLAGS_HAVE_FIELD_EQUALITY, align 4
  %16 = load i32, i32* @TCFLAGS_HAVE_FIELD_COMPARE, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  br label %161

22:                                               ; preds = %1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TYPTYPE_COMPOSITE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %105

28:                                               ; preds = %22
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 7
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = icmp eq %struct.TYPE_12__* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %35 = call i32 @load_typcache_tupdesc(%struct.TYPE_11__* %34)
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 7
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %3, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = call i32 @IncrTupleDescRefCount(%struct.TYPE_12__* %40)
  %42 = load i32, i32* @TCFLAGS_HAVE_FIELD_EQUALITY, align 4
  %43 = load i32, i32* @TCFLAGS_HAVE_FIELD_COMPARE, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %94, %36
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %97

51:                                               ; preds = %45
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call %struct.TYPE_13__* @TupleDescAttr(%struct.TYPE_12__* %52, i32 %53)
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %7, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %94

60:                                               ; preds = %51
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @TYPECACHE_EQ_OPR, align 4
  %65 = load i32, i32* @TYPECACHE_CMP_PROC, align 4
  %66 = or i32 %64, %65
  %67 = call %struct.TYPE_11__* @lookup_type_cache(i64 %63, i32 %66)
  store %struct.TYPE_11__* %67, %struct.TYPE_11__** %6, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @OidIsValid(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %60
  %74 = load i32, i32* @TCFLAGS_HAVE_FIELD_EQUALITY, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %4, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %73, %60
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @OidIsValid(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* @TCFLAGS_HAVE_FIELD_COMPARE, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %4, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %84, %78
  %90 = load i32, i32* %4, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %97

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %93, %59
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %45

97:                                               ; preds = %92, %45
  %98 = load i32, i32* %4, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %104 = call i32 @DecrTupleDescRefCount(%struct.TYPE_12__* %103)
  br label %160

105:                                              ; preds = %22
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @TYPTYPE_DOMAIN, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %159

111:                                              ; preds = %105
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @InvalidOid, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 4
  store i32 -1, i32* %119, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 4
  %125 = call i64 @getBaseTypeAndTypmod(i64 %122, i32* %124)
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 3
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %117, %111
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* @TYPECACHE_EQ_OPR, align 4
  %133 = load i32, i32* @TYPECACHE_CMP_PROC, align 4
  %134 = or i32 %132, %133
  %135 = call %struct.TYPE_11__* @lookup_type_cache(i64 %131, i32 %134)
  store %struct.TYPE_11__* %135, %struct.TYPE_11__** %8, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @TYPTYPE_COMPOSITE, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %158

141:                                              ; preds = %128
  %142 = load i32, i32* @TCFLAGS_DOMAIN_BASE_IS_COMPOSITE, align 4
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @TCFLAGS_HAVE_FIELD_EQUALITY, align 4
  %151 = load i32, i32* @TCFLAGS_HAVE_FIELD_COMPARE, align 4
  %152 = or i32 %150, %151
  %153 = and i32 %149, %152
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %141, %128
  br label %159

159:                                              ; preds = %158, %105
  br label %160

160:                                              ; preds = %159, %97
  br label %161

161:                                              ; preds = %160, %14
  %162 = load i32, i32* @TCFLAGS_CHECKED_FIELD_PROPERTIES, align 4
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 8
  ret void
}

declare dso_local i32 @load_typcache_tupdesc(%struct.TYPE_11__*) #1

declare dso_local i32 @IncrTupleDescRefCount(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @TupleDescAttr(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_11__* @lookup_type_cache(i64, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @DecrTupleDescRefCount(%struct.TYPE_12__*) #1

declare dso_local i64 @getBaseTypeAndTypmod(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
