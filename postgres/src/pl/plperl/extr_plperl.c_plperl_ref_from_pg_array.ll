; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_ref_from_pg_array.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_ref_from_pg_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32*, i32, i32, i32, i32, i32 }

@dTHX = common dso_local global i32 0, align 4
@IOFunc_output = common dso_local global i32 0, align 4
@current_call_data = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"typeoid\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"PostgreSQL::InServer::ARRAY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @plperl_ref_from_pg_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @plperl_ref_from_pg_array(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %20 = load i32, i32* @dTHX, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32* @DatumGetArrayTypeP(i32 %21)
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @ARR_ELEMTYPE(i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = call %struct.TYPE_7__* @palloc0(i32 40)
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %17, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @IOFunc_output, align 4
  %28 = call i32 @get_type_io_data(i32 %26, i32 %27, i32* %7, i32* %8, i8* %9, i8* %10, i32* %11, i32* %12)
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current_call_data, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current_call_data, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @get_transform_fromsql(i32 %29, i32 %34, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i64 @OidIsValid(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %2
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 6
  %48 = call i32 @fmgr_info(i32 %45, i32* %47)
  br label %54

49:                                               ; preds = %2
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 5
  %53 = call i32 @fmgr_info(i32 %50, i32* %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @type_is_rowtype(i32 %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @ARR_NDIM(i32* %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i32* @ARR_DIMS(i32* %63)
  store i32* %64, i32** %16, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %54
  %70 = call i64 (...) @newAV()
  %71 = inttoptr i64 %70 to i32*
  %72 = call i32* @newRV_noinc(i32* %71)
  store i32* %72, i32** %18, align 8
  br label %133

73:                                               ; preds = %54
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i8, i8* %9, align 1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = call i32 @deconstruct_array(i32* %74, i32 %75, i32 %76, i32 %77, i8 signext %78, i32* %80, i32* %82, i32* %15)
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = mul i64 4, %87
  %89 = trunc i64 %88 to i32
  %90 = call i32* @palloc(i32 %89)
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  store i32* %90, i32** %92, align 8
  %93 = load i32, i32* %15, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 %93, i32* %97, align 4
  store i32 1, i32* %14, align 4
  br label %98

98:                                               ; preds = %126, %73
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %129

104:                                              ; preds = %98
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %16, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = sdiv i32 %112, %118
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %119, i32* %125, align 4
  br label %126

126:                                              ; preds = %104
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %98

129:                                              ; preds = %98
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %131 = load i32, i32* %15, align 4
  %132 = call i32* @split_array(%struct.TYPE_7__* %130, i32 0, i32 %131, i32 0)
  store i32* %132, i32** %18, align 8
  br label %133

133:                                              ; preds = %129, %69
  %134 = call i32* (...) @newHV()
  store i32* %134, i32** %19, align 8
  %135 = load i32*, i32** %19, align 8
  %136 = load i32*, i32** %18, align 8
  %137 = call i32 @hv_store(i32* %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5, i32* %136, i32 0)
  %138 = load i32*, i32** %19, align 8
  %139 = load i32, i32* %4, align 4
  %140 = call i32* @newSVuv(i32 %139)
  %141 = call i32 @hv_store(i32* %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7, i32* %140, i32 0)
  %142 = load i32*, i32** %19, align 8
  %143 = call i32* @newRV_noinc(i32* %142)
  %144 = call i32 @gv_stashpv(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %145 = call i32* @sv_bless(i32* %143, i32 %144)
  ret i32* %145
}

declare dso_local i32* @DatumGetArrayTypeP(i32) #1

declare dso_local i32 @ARR_ELEMTYPE(i32*) #1

declare dso_local %struct.TYPE_7__* @palloc0(i32) #1

declare dso_local i32 @get_type_io_data(i32, i32, i32*, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @get_transform_fromsql(i32, i32, i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @fmgr_info(i32, i32*) #1

declare dso_local i32 @type_is_rowtype(i32) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i32* @ARR_DIMS(i32*) #1

declare dso_local i32* @newRV_noinc(i32*) #1

declare dso_local i64 @newAV(...) #1

declare dso_local i32 @deconstruct_array(i32*, i32, i32, i32, i8 signext, i32*, i32*, i32*) #1

declare dso_local i32* @palloc(i32) #1

declare dso_local i32* @split_array(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32* @newHV(...) #1

declare dso_local i32 @hv_store(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32* @newSVuv(i32) #1

declare dso_local i32* @sv_bless(i32*, i32) #1

declare dso_local i32 @gv_stashpv(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
