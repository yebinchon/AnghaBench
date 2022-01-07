; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_prepare.c_ecpg_auto_prepare.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_prepare.c_ecpg_auto_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }
%struct.connection = type { i32 }
%struct.prepared_statement = type { i32 }

@.str = private unnamed_addr constant [66 x i8] c"ecpg_auto_prepare on line %d: statement found in cache; entry %d\0A\00", align 1
@stmtCacheEntries = common dso_local global %struct.TYPE_2__* null, align 8
@STMTID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"ecpg_auto_prepare on line %d: statement not in cache; inserting\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ecpg%d\00", align 1
@nextStmtID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecpg_auto_prepare(i32 %0, i8* %1, i32 %2, i8** %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.connection*, align 8
  %15 = alloca %struct.prepared_statement*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i8* %4, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = call i32 @SearchStmtCache(i8* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %5
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i32 (i8*, i32, ...) @ecpg_log(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stmtCacheEntries, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %13, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call %struct.connection* @ecpg_get_connection(i8* %33)
  store %struct.connection* %34, %struct.connection** %14, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load %struct.connection*, %struct.connection** %14, align 8
  %37 = call %struct.prepared_statement* @ecpg_find_prepared_statement(i8* %35, %struct.connection* %36, i32* null)
  store %struct.prepared_statement* %37, %struct.prepared_statement** %15, align 8
  %38 = load %struct.prepared_statement*, %struct.prepared_statement** %15, align 8
  %39 = icmp ne %struct.prepared_statement* %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %23
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.connection*, %struct.connection** %14, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @prepare_common(i32 %41, %struct.connection* %42, i8* %43, i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %94

48:                                               ; preds = %40, %23
  %49 = load i8*, i8** %13, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i8* @ecpg_strdup(i8* %49, i32 %50)
  %52 = load i8**, i8*** %10, align 8
  store i8* %51, i8** %52, align 8
  br label %86

53:                                               ; preds = %5
  %54 = load i32, i32* @STMTID_SIZE, align 4
  %55 = zext i32 %54 to i64
  %56 = call i8* @llvm.stacksave()
  store i8* %56, i8** %16, align 8
  %57 = alloca i8, i64 %55, align 16
  store i64 %55, i64* %17, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (i8*, i32, ...) @ecpg_log(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @nextStmtID, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @nextStmtID, align 4
  %62 = call i32 @sprintf(i8* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %63 = load i32, i32* %7, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @ECPGprepare(i32 %63, i8* %64, i32 0, i8* %57, i8* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %82

69:                                               ; preds = %53
  %70 = load i32, i32* %7, align 4
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @AddStmtToCache(i32 %70, i8* %57, i8* %71, i32 %72, i8* %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %82

78:                                               ; preds = %69
  %79 = load i32, i32* %7, align 4
  %80 = call i8* @ecpg_strdup(i8* %57, i32 %79)
  %81 = load i8**, i8*** %10, align 8
  store i8* %80, i8** %81, align 8
  store i32 0, i32* %18, align 4
  br label %82

82:                                               ; preds = %78, %77, %68
  %83 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %18, align 4
  switch i32 %84, label %96 [
    i32 0, label %85
    i32 1, label %94
  ]

85:                                               ; preds = %82
  br label %86

86:                                               ; preds = %85, %48
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stmtCacheEntries, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  store i32 1, i32* %6, align 4
  br label %94

94:                                               ; preds = %86, %82, %47
  %95 = load i32, i32* %6, align 4
  ret i32 %95

96:                                               ; preds = %82
  unreachable
}

declare dso_local i32 @SearchStmtCache(i8*) #1

declare dso_local i32 @ecpg_log(i8*, i32, ...) #1

declare dso_local %struct.connection* @ecpg_get_connection(i8*) #1

declare dso_local %struct.prepared_statement* @ecpg_find_prepared_statement(i8*, %struct.connection*, i32*) #1

declare dso_local i32 @prepare_common(i32, %struct.connection*, i8*, i8*) #1

declare dso_local i8* @ecpg_strdup(i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @ECPGprepare(i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @AddStmtToCache(i32, i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
