; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_fmgr_info_C_lang.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_fmgr_info_C_lang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }

@PROCOID = common dso_local global i32 0, align 4
@Anum_pg_proc_prosrc = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"null prosrc for C function %u\00", align 1
@Anum_pg_proc_probin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"null probin for C function %u\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"unrecognized function API version: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_9__*, i32)* @fmgr_info_C_lang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmgr_info_C_lang(i32 %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.TYPE_10__* @lookup_C_func(i32 %16)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %7, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = icmp ne %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %9, align 8
  br label %68

27:                                               ; preds = %3
  %28 = load i32, i32* @PROCOID, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @Anum_pg_proc_prosrc, align 4
  %31 = call i32 @SysCacheGetAttr(i32 %28, i32 %29, i32 %30, i32* %10)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @elog(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %27
  %39 = load i32, i32* %11, align 4
  %40 = call i8* @TextDatumGetCString(i32 %39)
  store i8* %40, i8** %13, align 8
  %41 = load i32, i32* @PROCOID, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @Anum_pg_proc_probin, align 4
  %44 = call i32 @SysCacheGetAttr(i32 %41, i32 %42, i32 %43, i32* %10)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load i32, i32* @ERROR, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @elog(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %38
  %52 = load i32, i32* %12, align 4
  %53 = call i8* @TextDatumGetCString(i32 %52)
  store i8* %53, i8** %14, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = call i32 @load_external_function(i8* %54, i8* %55, i32 1, i8** %15)
  store i32 %56, i32* %8, align 4
  %57 = load i8*, i8** %15, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = call %struct.TYPE_8__* @fetch_finfo_record(i8* %57, i8* %58)
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %9, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %63 = call i32 @record_C_func(i32 %60, i32 %61, %struct.TYPE_8__* %62)
  %64 = load i8*, i8** %13, align 8
  %65 = call i32 @pfree(i8* %64)
  %66 = load i8*, i8** %14, align 8
  %67 = call i32 @pfree(i8* %66)
  br label %68

68:                                               ; preds = %51, %20
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %76 [
    i32 1, label %72
  ]

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %82

76:                                               ; preds = %68
  %77 = load i32, i32* @ERROR, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @elog(i32 %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %76, %72
  ret void
}

declare dso_local %struct.TYPE_10__* @lookup_C_func(i32) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i32 @load_external_function(i8*, i8*, i32, i8**) #1

declare dso_local %struct.TYPE_8__* @fetch_finfo_record(i8*, i8*) #1

declare dso_local i32 @record_C_func(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
