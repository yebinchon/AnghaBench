; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_makeRangeConstructors.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_makeRangeConstructors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }

@makeRangeConstructors.prosrc = internal constant [2 x i8*] [i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [19 x i8] c"range_constructor2\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"range_constructor3\00", align 1
@makeRangeConstructors.pronargs = internal constant [2 x i32] [i32 2, i32 3], align 4
@TEXTOID = common dso_local global i32 0, align 4
@TypeRelationId = common dso_local global i32 0, align 4
@BOOTSTRAP_SUPERUSERID = common dso_local global i32 0, align 4
@INTERNALlanguageId = common dso_local global i32 0, align 4
@F_FMGR_INTERNAL_VALIDATOR = common dso_local global i32 0, align 4
@PROKIND_FUNCTION = common dso_local global i32 0, align 4
@PROVOLATILE_IMMUTABLE = common dso_local global i32 0, align 4
@PROPARALLEL_SAFE = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@DEPENDENCY_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @makeRangeConstructors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makeRangeConstructors(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @TEXTOID, align 4
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @TypeRelationId, align 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i64 0, i64* %25, align 8
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %68, %4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @lengthof(i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @makeRangeConstructors.prosrc, i64 0, i64 0))
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %71

30:                                               ; preds = %26
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* @makeRangeConstructors.pronargs, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @buildoidvector(i32* %31, i32 %35)
  store i32* %36, i32** %13, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @BOOTSTRAP_SUPERUSERID, align 4
  %41 = load i32, i32* @INTERNALlanguageId, align 4
  %42 = load i32, i32* @F_FMGR_INTERNAL_VALIDATOR, align 4
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [2 x i8*], [2 x i8*]* @makeRangeConstructors.prosrc, i64 0, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* @PROKIND_FUNCTION, align 4
  %48 = load i32, i32* @PROVOLATILE_IMMUTABLE, align 4
  %49 = load i32, i32* @PROPARALLEL_SAFE, align 4
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 @PointerGetDatum(i32* null)
  %52 = call i32 @PointerGetDatum(i32* null)
  %53 = call i32 @PointerGetDatum(i32* null)
  %54 = load i32, i32* @NIL, align 4
  %55 = call i32 @PointerGetDatum(i32* null)
  %56 = call i32 @PointerGetDatum(i32* null)
  %57 = load i32, i32* @InvalidOid, align 4
  %58 = call { i64, i64 } @ProcedureCreate(i8* %37, i32 %38, i32 0, i32 0, i32 %39, i32 %40, i32 %41, i32 %42, i8* %46, i32* null, i32 %47, i32 0, i32 0, i32 0, i32 %48, i32 %49, i32* %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, double 1.000000e+00, double 0.000000e+00)
  %59 = bitcast %struct.TYPE_5__* %14 to { i64, i64 }*
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %59, i32 0, i32 0
  %61 = extractvalue { i64, i64 } %58, 0
  store i64 %61, i64* %60, align 8
  %62 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %59, i32 0, i32 1
  %63 = extractvalue { i64, i64 } %58, 1
  store i64 %63, i64* %62, align 8
  %64 = bitcast %struct.TYPE_5__* %10 to i8*
  %65 = bitcast %struct.TYPE_5__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 %65, i64 16, i1 false)
  %66 = load i32, i32* @DEPENDENCY_INTERNAL, align 4
  %67 = call i32 @recordDependencyOn(%struct.TYPE_5__* %10, %struct.TYPE_5__* %11, i32 %66)
  br label %68

68:                                               ; preds = %30
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %26

71:                                               ; preds = %26
  ret void
}

declare dso_local i32 @lengthof(i8**) #1

declare dso_local i32* @buildoidvector(i32*, i32) #1

declare dso_local { i64, i64 } @ProcedureCreate(i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, double, double) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @recordDependencyOn(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
