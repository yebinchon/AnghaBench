; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_funcs.c_plpgsql_stmt_typename.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_funcs.c_plpgsql_stmt_typename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"statement block\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"assignment\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"IF\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"CASE\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"LOOP\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"WHILE\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"FOR with integer loop variable\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"FOR over SELECT rows\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"FOR over cursor\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"FOREACH over array\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"CONTINUE\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"RETURN\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"RETURN NEXT\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"RETURN QUERY\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"RAISE\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"ASSERT\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"SQL statement\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"EXECUTE\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"FOR over EXECUTE statement\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"GET STACKED DIAGNOSTICS\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"GET DIAGNOSTICS\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"OPEN\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"MOVE\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"FETCH\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"CLOSE\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"PERFORM\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"CALL\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"DO\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"ROLLBACK\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @plpgsql_stmt_typename(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %71 [
    i32 153, label %7
    i32 154, label %9
    i32 138, label %11
    i32 151, label %12
    i32 137, label %13
    i32 128, label %14
    i32 141, label %15
    i32 140, label %17
    i32 143, label %19
    i32 142, label %21
    i32 145, label %23
    i32 133, label %31
    i32 132, label %32
    i32 131, label %33
    i32 134, label %34
    i32 155, label %35
    i32 146, label %36
    i32 148, label %38
    i32 147, label %39
    i32 139, label %41
    i32 136, label %49
    i32 144, label %50
    i32 150, label %58
    i32 135, label %59
    i32 152, label %60
    i32 149, label %68
    i32 130, label %69
    i32 129, label %70
  ]

7:                                                ; preds = %1
  %8 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %2, align 8
  br label %72

9:                                                ; preds = %1
  %10 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %10, i8** %2, align 8
  br label %72

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %72

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %72

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %72

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %72

15:                                               ; preds = %1
  %16 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  store i8* %16, i8** %2, align 8
  br label %72

17:                                               ; preds = %1
  %18 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  store i8* %18, i8** %2, align 8
  br label %72

19:                                               ; preds = %1
  %20 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  store i8* %20, i8** %2, align 8
  br label %72

21:                                               ; preds = %1
  %22 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  store i8* %22, i8** %2, align 8
  br label %72

23:                                               ; preds = %1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = bitcast %struct.TYPE_11__* %24 to %struct.TYPE_9__*
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)
  store i8* %30, i8** %2, align 8
  br label %72

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %72

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %72

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %72

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %72

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %72

36:                                               ; preds = %1
  %37 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  store i8* %37, i8** %2, align 8
  br label %72

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %72

39:                                               ; preds = %1
  %40 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  store i8* %40, i8** %2, align 8
  br label %72

41:                                               ; preds = %1
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = bitcast %struct.TYPE_11__* %42 to %struct.TYPE_7__*
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0)
  store i8* %48, i8** %2, align 8
  br label %72

49:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %72

50:                                               ; preds = %1
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = bitcast %struct.TYPE_11__* %51 to %struct.TYPE_8__*
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0)
  store i8* %57, i8** %2, align 8
  br label %72

58:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %72

59:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %72

60:                                               ; preds = %1
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = bitcast %struct.TYPE_11__* %61 to %struct.TYPE_10__*
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0)
  store i8* %67, i8** %2, align 8
  br label %72

68:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %72

69:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %72

70:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 8
  br label %72

71:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i8** %2, align 8
  br label %72

72:                                               ; preds = %71, %70, %69, %68, %60, %59, %58, %50, %49, %41, %39, %38, %36, %35, %34, %33, %32, %31, %23, %21, %19, %17, %15, %14, %13, %12, %11, %9, %7
  %73 = load i8*, i8** %2, align 8
  ret i8* %73
}

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
