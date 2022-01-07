; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_hash_from_tuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_hash_from_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i64, i64 }

@dTHX = common dso_local global i32 0, align 4
@current_call_data = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, %struct.TYPE_10__*, i32)* @plperl_hash_from_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @plperl_hash_from_tuple(i32 %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load i32, i32* @dTHX, align 4
  %20 = call i32 (...) @check_stack_depth()
  %21 = call i32* (...) @newHV()
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @hv_ksplit(i32* %22, i32 %25)
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %136, %3
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %139

33:                                               ; preds = %27
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call %struct.TYPE_11__* @TupleDescAttr(%struct.TYPE_10__* %34, i32 %35)
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %14, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %136

42:                                               ; preds = %33
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  br label %136

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51, %42
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @NameStr(i32 %55)
  store i8* %56, i8** %12, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = call i32 @heap_getattr(i32 %57, i32 %59, %struct.TYPE_10__* %60, i32* %10)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %52
  %65 = load i32*, i32** %7, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = call i32* @newSV(i32 0)
  %68 = call i32 @hv_store_string(i32* %65, i8* %66, i32* %67)
  br label %136

69:                                               ; preds = %52
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @type_is_rowtype(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load i32, i32* %9, align 4
  %77 = call i32* @plperl_hash_from_datum(i32 %76)
  store i32* %77, i32** %15, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = load i32*, i32** %15, align 8
  %81 = call i32 @hv_store_string(i32* %78, i8* %79, i32* %80)
  br label %135

82:                                               ; preds = %69
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @get_base_element_type(i32 %85)
  %87 = call i64 @OidIsValid(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32* @plperl_ref_from_pg_array(i32 %90, i32 %93)
  store i32* %94, i32** %16, align 8
  br label %130

95:                                               ; preds = %82
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current_call_data, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current_call_data, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @get_transform_fromsql(i32 %98, i32 %103, i32 %108)
  store i32 %109, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %95
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @OidFunctionCall1(i32 %112, i32 %113)
  %115 = call i64 @DatumGetPointer(i32 %114)
  %116 = inttoptr i64 %115 to i32*
  store i32* %116, i32** %16, align 8
  br label %129

117:                                              ; preds = %95
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @getTypeOutputInfo(i32 %120, i32* %13, i32* %11)
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i8* @OidOutputFunctionCall(i32 %122, i32 %123)
  store i8* %124, i8** %18, align 8
  %125 = load i8*, i8** %18, align 8
  %126 = call i32* @cstr2sv(i8* %125)
  store i32* %126, i32** %16, align 8
  %127 = load i8*, i8** %18, align 8
  %128 = call i32 @pfree(i8* %127)
  br label %129

129:                                              ; preds = %117, %111
  br label %130

130:                                              ; preds = %129, %89
  %131 = load i32*, i32** %7, align 8
  %132 = load i8*, i8** %12, align 8
  %133 = load i32*, i32** %16, align 8
  %134 = call i32 @hv_store_string(i32* %131, i8* %132, i32* %133)
  br label %135

135:                                              ; preds = %130, %75
  br label %136

136:                                              ; preds = %135, %64, %50, %41
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %27

139:                                              ; preds = %27
  %140 = load i32*, i32** %7, align 8
  %141 = call i32* @newRV_noinc(i32* %140)
  ret i32* %141
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32* @newHV(...) #1

declare dso_local i32 @hv_ksplit(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @TupleDescAttr(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32 @heap_getattr(i32, i32, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @hv_store_string(i32*, i8*, i32*) #1

declare dso_local i32* @newSV(i32) #1

declare dso_local i64 @type_is_rowtype(i32) #1

declare dso_local i32* @plperl_hash_from_datum(i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @get_base_element_type(i32) #1

declare dso_local i32* @plperl_ref_from_pg_array(i32, i32) #1

declare dso_local i32 @get_transform_fromsql(i32, i32, i32) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @OidFunctionCall1(i32, i32) #1

declare dso_local i32 @getTypeOutputInfo(i32, i32*, i32*) #1

declare dso_local i8* @OidOutputFunctionCall(i32, i32) #1

declare dso_local i32* @cstr2sv(i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32* @newRV_noinc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
