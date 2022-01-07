; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_type.c_makeArrayTypeName.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_type.c_makeArrayTypeName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAMEDATALEN = common dso_local global i32 0, align 4
@TypeRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@TYPENAMENSP = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"could not form array type name for type \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @makeArrayTypeName(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @NAMEDATALEN, align 4
  %10 = call i64 @palloc(i32 %9)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @TypeRelationId, align 4
  %15 = load i32, i32* @AccessShareLock, align 4
  %16 = call i32 @table_open(i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %17

17:                                               ; preds = %63, %2
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @NAMEDATALEN, align 4
  %20 = sub nsw i32 %19, 1
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %66

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  store i8 95, i8* %27, align 1
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %28, %29
  %31 = load i32, i32* @NAMEDATALEN, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %22
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @strcpy(i8* %37, i8* %38)
  br label %53

40:                                               ; preds = %22
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* @NAMEDATALEN, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %46, %47
  %49 = call i32 @memcpy(i8* %44, i8* %45, i32 %48)
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* @NAMEDATALEN, align 4
  %52 = call i32 @truncate_identifier(i8* %50, i32 %51, i32 0)
  br label %53

53:                                               ; preds = %40, %33
  %54 = load i32, i32* @TYPENAMENSP, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @CStringGetDatum(i8* %55)
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @ObjectIdGetDatum(i32 %57)
  %59 = call i32 @SearchSysCacheExists2(i32 %54, i32 %56, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  br label %66

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %17

66:                                               ; preds = %61, %17
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @AccessShareLock, align 4
  %69 = call i32 @table_close(i32 %67, i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @NAMEDATALEN, align 4
  %72 = sub nsw i32 %71, 1
  %73 = icmp sge i32 %70, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %66
  %75 = load i32, i32* @ERROR, align 4
  %76 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %77 = call i32 @errcode(i32 %76)
  %78 = load i8*, i8** %3, align 8
  %79 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %78)
  %80 = call i32 @ereport(i32 %75, i32 %79)
  br label %81

81:                                               ; preds = %74, %66
  %82 = load i8*, i8** %5, align 8
  ret i8* %82
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @truncate_identifier(i8*, i32, i32) #1

declare dso_local i32 @SearchSysCacheExists2(i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
