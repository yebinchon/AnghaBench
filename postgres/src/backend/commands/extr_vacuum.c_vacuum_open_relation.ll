; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_vacuum.c_vacuum_open_relation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_vacuum.c_vacuum_open_relation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@VACOPT_VACUUM = common dso_local global i32 0, align 4
@VACOPT_ANALYZE = common dso_local global i32 0, align 4
@VACOPT_SKIP_LOCKED = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@ERRCODE_LOCK_NOT_AVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"skipping vacuum of \22%s\22 --- lock not available\00", align 1
@ERRCODE_UNDEFINED_TABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"skipping vacuum of \22%s\22 --- relation no longer exists\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"skipping analyze of \22%s\22 --- lock not available\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"skipping analyze of \22%s\22 --- relation no longer exists\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @vacuum_open_relation(i32 %0, %struct.TYPE_3__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 1, i32* %13, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @VACOPT_VACUUM, align 4
  %17 = load i32, i32* @VACOPT_ANALYZE, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @VACOPT_SKIP_LOCKED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32* @try_relation_open(i32 %28, i32 %29)
  store i32* %30, i32** %12, align 8
  br label %42

31:                                               ; preds = %5
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i64 @ConditionalLockRelationOid(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @NoLock, align 4
  %39 = call i32* @try_relation_open(i32 %37, i32 %38)
  store i32* %39, i32** %12, align 8
  br label %41

40:                                               ; preds = %31
  store i32* null, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %40, %36
  br label %42

42:                                               ; preds = %41, %27
  %43 = load i32*, i32** %12, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32*, i32** %12, align 8
  store i32* %46, i32** %6, align 8
  br label %118

47:                                               ; preds = %42
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = icmp eq %struct.TYPE_3__* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32* null, i32** %6, align 8
  br label %118

51:                                               ; preds = %47
  %52 = call i32 (...) @IsAutoVacuumWorkerProcess()
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @WARNING, align 4
  store i32 %55, i32* %14, align 4
  br label %63

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @LOG, align 4
  store i32 %60, i32* %14, align 4
  br label %62

61:                                               ; preds = %56
  store i32* null, i32** %6, align 8
  br label %118

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %62, %54
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @VACOPT_VACUUM, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %63
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @ERRCODE_LOCK_NOT_AVAILABLE, align 4
  %74 = call i32 @errcode(i32 %73)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = call i32 @ereport(i32 %72, i32 %78)
  br label %89

80:                                               ; preds = %68
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @ERRCODE_UNDEFINED_TABLE, align 4
  %83 = call i32 @errcode(i32 %82)
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = call i32 @ereport(i32 %81, i32 %87)
  br label %89

89:                                               ; preds = %80, %71
  store i32* null, i32** %6, align 8
  br label %118

90:                                               ; preds = %63
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @VACOPT_ANALYZE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %90
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @ERRCODE_LOCK_NOT_AVAILABLE, align 4
  %101 = call i32 @errcode(i32 %100)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  %106 = call i32 @ereport(i32 %99, i32 %105)
  br label %116

107:                                              ; preds = %95
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @ERRCODE_UNDEFINED_TABLE, align 4
  %110 = call i32 @errcode(i32 %109)
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = call i32 @ereport(i32 %108, i32 %114)
  br label %116

116:                                              ; preds = %107, %98
  br label %117

117:                                              ; preds = %116, %90
  store i32* null, i32** %6, align 8
  br label %118

118:                                              ; preds = %117, %89, %61, %50, %45
  %119 = load i32*, i32** %6, align 8
  ret i32* %119
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @try_relation_open(i32, i32) #1

declare dso_local i64 @ConditionalLockRelationOid(i32, i32) #1

declare dso_local i32 @IsAutoVacuumWorkerProcess(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
