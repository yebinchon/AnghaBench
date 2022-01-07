; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_vacuum.c_vacuum_is_relation_owner.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_vacuum.c_vacuum_is_relation_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@VACOPT_VACUUM = common dso_local global i32 0, align 4
@VACOPT_ANALYZE = common dso_local global i32 0, align 4
@MyDatabaseId = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"skipping \22%s\22 --- only superuser can vacuum it\00", align 1
@PG_CATALOG_NAMESPACE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [65 x i8] c"skipping \22%s\22 --- only superuser or database owner can vacuum it\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"skipping \22%s\22 --- only table or database owner can vacuum it\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"skipping \22%s\22 --- only superuser can analyze it\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"skipping \22%s\22 --- only superuser or database owner can analyze it\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"skipping \22%s\22 --- only table or database owner can analyze it\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vacuum_is_relation_owner(i32 %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @VACOPT_VACUUM, align 4
  %11 = load i32, i32* @VACOPT_ANALYZE, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @Assert(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (...) @GetUserId()
  %19 = call i64 @pg_class_ownercheck(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @MyDatabaseId, align 4
  %23 = call i32 (...) @GetUserId()
  %24 = call i64 @pg_database_ownercheck(i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26, %3
  store i32 1, i32* %4, align 4
  br label %103

32:                                               ; preds = %26, %21
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @NameStr(i32 %35)
  store i8* %36, i8** %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @VACOPT_VACUUM, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %32
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* @WARNING, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %48)
  %50 = call i32 @ereport(i32 %47, i32 %49)
  br label %68

51:                                               ; preds = %41
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PG_CATALOG_NAMESPACE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load i32, i32* @WARNING, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = call i32 @ereport(i32 %58, i32 %60)
  br label %67

62:                                               ; preds = %51
  %63 = load i32, i32* @WARNING, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  %66 = call i32 @ereport(i32 %63, i32 %65)
  br label %67

67:                                               ; preds = %62, %57
  br label %68

68:                                               ; preds = %67, %46
  store i32 0, i32* %4, align 4
  br label %103

69:                                               ; preds = %32
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @VACOPT_ANALYZE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %102

74:                                               ; preds = %69
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* @WARNING, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  %83 = call i32 @ereport(i32 %80, i32 %82)
  br label %101

84:                                               ; preds = %74
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @PG_CATALOG_NAMESPACE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load i32, i32* @WARNING, align 4
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @errmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i8* %92)
  %94 = call i32 @ereport(i32 %91, i32 %93)
  br label %100

95:                                               ; preds = %84
  %96 = load i32, i32* @WARNING, align 4
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i8* %97)
  %99 = call i32 @ereport(i32 %96, i32 %98)
  br label %100

100:                                              ; preds = %95, %90
  br label %101

101:                                              ; preds = %100, %79
  br label %102

102:                                              ; preds = %101, %69
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %68, %31
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @pg_class_ownercheck(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i64 @pg_database_ownercheck(i32, i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
