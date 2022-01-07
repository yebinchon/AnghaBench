; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_large_obj.c_do_lo_import.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_large_obj.c_do_lo_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"\\lo_import\00", align 1
@pset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@InvalidOid = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MCXT_ALLOC_NO_OOM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"COMMENT ON LARGE OBJECT %u IS '\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"lo_import %u\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"LASTOID\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_lo_import(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = call i32 @start_lo_xact(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %9)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %94

16:                                               ; preds = %2
  %17 = call i32 (...) @SetCancelConn()
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 1), align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @lo_import(i32 %18, i8* %19)
  store i64 %20, i64* %7, align 8
  %21 = call i32 (...) @ResetCancelConn()
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @InvalidOid, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 1), align 4
  %27 = call i32 @PQerrorMessage(i32 %26)
  %28 = call i32 @pg_log_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @fail_lo_xact(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 %30, i32* %3, align 4
  br label %94

31:                                               ; preds = %16
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %80

34:                                               ; preds = %31
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = mul i64 %38, 2
  %40 = add i64 %39, 256
  %41 = load i32, i32* @MCXT_ALLOC_NO_OOM, align 4
  %42 = call i8* @pg_malloc_extended(i64 %40, i32 %41)
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @fail_lo_xact(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 %47, i32* %3, align 4
  br label %94

48:                                               ; preds = %34
  %49 = load i8*, i8** %10, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @sprintf(i8* %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  store i8* %56, i8** %11, align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 1), align 4
  %58 = load i8*, i8** %11, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @PQescapeStringConn(i32 %57, i8* %58, i8* %59, i64 %60, i32* null)
  %62 = load i8*, i8** %11, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %11, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @strcpy(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i8*, i8** %10, align 8
  %68 = call i32* @PSQLexec(i8* %67)
  store i32* %68, i32** %6, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %48
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @free(i8* %71)
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @fail_lo_xact(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %73)
  store i32 %74, i32* %3, align 4
  br label %94

75:                                               ; preds = %48
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @PQclear(i32* %76)
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @free(i8* %78)
  br label %80

80:                                               ; preds = %75, %31
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @finish_lo_xact(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %94

85:                                               ; preds = %80
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @print_lo_result(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i64 %86)
  %88 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @sprintf(i8* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 %89)
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %92 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %93 = call i32 @SetVariable(i32 %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %92)
  store i32 1, i32* %3, align 4
  br label %94

94:                                               ; preds = %85, %84, %70, %45, %25, %15
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @start_lo_xact(i8*, i32*) #1

declare dso_local i32 @SetCancelConn(...) #1

declare dso_local i64 @lo_import(i32, i8*) #1

declare dso_local i32 @ResetCancelConn(...) #1

declare dso_local i32 @pg_log_info(i8*, i32) #1

declare dso_local i32 @PQerrorMessage(i32) #1

declare dso_local i32 @fail_lo_xact(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @pg_malloc_extended(i64, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @PQescapeStringConn(i32, i8*, i8*, i64, i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32* @PSQLexec(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @finish_lo_xact(i8*, i32) #1

declare dso_local i32 @print_lo_result(i8*, i64) #1

declare dso_local i32 @SetVariable(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
