; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_getJsonPathVariable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_getJsonPathVariable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8*, i32 }

@jbvNull = common dso_local global i32 0, align 4
@jpiVariable = common dso_local global i64 0, align 8
@jbvString = common dso_local global i32 0, align 4
@JB_FOBJECT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"could not find jsonpath variable \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_18__*)* @getJsonPathVariable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getJsonPathVariable(i32* %0, %struct.TYPE_20__* %1, %struct.TYPE_19__* %2, %struct.TYPE_18__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %8, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %14 = icmp ne %struct.TYPE_19__* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @jbvNull, align 4
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  br label %66

19:                                               ; preds = %4
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @jpiVariable, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @Assert(i32 %25)
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %28 = call i8* @jspGetString(%struct.TYPE_20__* %27, i32* %10)
  store i8* %28, i8** %9, align 8
  %29 = load i32, i32* @jbvString, align 4
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  store i8* %31, i8** %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32, i32* @JB_FOBJECT, align 4
  %42 = call %struct.TYPE_18__* @findJsonbValueFromContainer(i32* %40, i32 %41, %struct.TYPE_18__* %11)
  store %struct.TYPE_18__* %42, %struct.TYPE_18__** %12, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %44 = icmp ne %struct.TYPE_18__* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %19
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %48 = bitcast %struct.TYPE_18__* %46 to i8*
  %49 = bitcast %struct.TYPE_18__* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 24, i1 false)
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %51 = call i32 @pfree(%struct.TYPE_18__* %50)
  br label %61

52:                                               ; preds = %19
  %53 = load i32, i32* @ERROR, align 4
  %54 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %55 = call i32 @errcode(i32 %54)
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @pnstrdup(i8* %56, i32 %57)
  %59 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = call i32 @ereport(i32 %53, i32 %59)
  br label %61

61:                                               ; preds = %52, %45
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %63 = call i32 @JsonbInitBinary(%struct.TYPE_18__* %11, %struct.TYPE_19__* %62)
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @setBaseObject(i32* %64, %struct.TYPE_18__* %11, i32 1)
  br label %66

66:                                               ; preds = %61, %15
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @jspGetString(%struct.TYPE_20__*, i32*) #1

declare dso_local %struct.TYPE_18__* @findJsonbValueFromContainer(i32*, i32, %struct.TYPE_18__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pfree(%struct.TYPE_18__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @pnstrdup(i8*, i32) #1

declare dso_local i32 @JsonbInitBinary(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @setBaseObject(i32*, %struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
