; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_dumpType.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_dumpType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@TYPTYPE_BASE = common dso_local global i64 0, align 8
@TYPTYPE_DOMAIN = common dso_local global i64 0, align 8
@TYPTYPE_COMPOSITE = common dso_local global i64 0, align 8
@TYPTYPE_ENUM = common dso_local global i64 0, align 8
@TYPTYPE_RANGE = common dso_local global i64 0, align 8
@TYPTYPE_PSEUDO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"typtype of data type \22%s\22 appears to be invalid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_20__*)* @dumpType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dumpType(%struct.TYPE_22__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %6 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_21__* %8, %struct.TYPE_21__** %5, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %2
  br label %96

20:                                               ; preds = %14
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TYPTYPE_BASE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %29 = call i32 @dumpBaseType(%struct.TYPE_22__* %27, %struct.TYPE_20__* %28)
  br label %96

30:                                               ; preds = %20
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TYPTYPE_DOMAIN, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %39 = call i32 @dumpDomain(%struct.TYPE_22__* %37, %struct.TYPE_20__* %38)
  br label %95

40:                                               ; preds = %30
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TYPTYPE_COMPOSITE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %49 = call i32 @dumpCompositeType(%struct.TYPE_22__* %47, %struct.TYPE_20__* %48)
  br label %94

50:                                               ; preds = %40
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TYPTYPE_ENUM, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %59 = call i32 @dumpEnumType(%struct.TYPE_22__* %57, %struct.TYPE_20__* %58)
  br label %93

60:                                               ; preds = %50
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TYPTYPE_RANGE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %69 = call i32 @dumpRangeType(%struct.TYPE_22__* %67, %struct.TYPE_20__* %68)
  br label %92

70:                                               ; preds = %60
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TYPTYPE_PSEUDO, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %76
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %84 = call i32 @dumpUndefinedType(%struct.TYPE_22__* %82, %struct.TYPE_20__* %83)
  br label %91

85:                                               ; preds = %76, %70
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @pg_log_warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %85, %81
  br label %92

92:                                               ; preds = %91, %66
  br label %93

93:                                               ; preds = %92, %56
  br label %94

94:                                               ; preds = %93, %46
  br label %95

95:                                               ; preds = %94, %36
  br label %96

96:                                               ; preds = %19, %95, %26
  ret void
}

declare dso_local i32 @dumpBaseType(%struct.TYPE_22__*, %struct.TYPE_20__*) #1

declare dso_local i32 @dumpDomain(%struct.TYPE_22__*, %struct.TYPE_20__*) #1

declare dso_local i32 @dumpCompositeType(%struct.TYPE_22__*, %struct.TYPE_20__*) #1

declare dso_local i32 @dumpEnumType(%struct.TYPE_22__*, %struct.TYPE_20__*) #1

declare dso_local i32 @dumpRangeType(%struct.TYPE_22__*, %struct.TYPE_20__*) #1

declare dso_local i32 @dumpUndefinedType(%struct.TYPE_22__*, %struct.TYPE_20__*) #1

declare dso_local i32 @pg_log_warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
