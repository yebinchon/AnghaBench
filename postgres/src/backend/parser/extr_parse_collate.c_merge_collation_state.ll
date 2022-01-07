; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_collate.c_merge_collation_state.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_collate.c_merge_collation_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i32, i32, i8* }

@DEFAULT_COLLATION_OID = common dso_local global i8* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_COLLATION_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"collation mismatch between explicit collations \22%s\22 and \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8*, i32, %struct.TYPE_3__*)* @merge_collation_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_collation_state(i8* %0, i32 %1, i32 %2, i8* %3, i32 %4, %struct.TYPE_3__* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %12, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %6
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 131
  br i1 %29, label %30, label %37

30:                                               ; preds = %18
  %31 = load i8*, i8** %10, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 5
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %30, %18
  br label %112

38:                                               ; preds = %6
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %111

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  switch i32 %45, label %110 [
    i32 128, label %46
    i32 129, label %47
    i32 131, label %85
    i32 130, label %86
  ]

46:                                               ; preds = %44
  br label %110

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %48, %51
  br i1 %52, label %53, label %84

53:                                               ; preds = %47
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** @DEFAULT_COLLATION_OID, align 8
  %58 = icmp eq i8* %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load i8*, i8** %7, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  br label %83

69:                                               ; preds = %53
  %70 = load i8*, i8** %7, align 8
  %71 = load i8*, i8** @DEFAULT_COLLATION_OID, align 8
  %72 = icmp ne i8* %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 131, i32* %75, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 5
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %73, %69
  br label %83

83:                                               ; preds = %82, %59
  br label %84

84:                                               ; preds = %83, %47
  br label %110

85:                                               ; preds = %44
  br label %110

86:                                               ; preds = %44
  %87 = load i8*, i8** %7, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %87, %90
  br i1 %91, label %92, label %109

92:                                               ; preds = %86
  %93 = load i32, i32* @ERROR, align 4
  %94 = load i32, i32* @ERRCODE_COLLATION_MISMATCH, align 4
  %95 = call i32 @errcode(i32 %94)
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @get_collation_name(i8* %98)
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 @get_collation_name(i8* %100)
  %102 = call i32 @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %101)
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @parser_errposition(i32 %105, i32 %106)
  %108 = call i32 @ereport(i32 %93, i32 %107)
  br label %109

109:                                              ; preds = %92, %86
  br label %110

110:                                              ; preds = %44, %109, %85, %84, %46
  br label %111

111:                                              ; preds = %110, %38
  br label %112

112:                                              ; preds = %111, %37
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @get_collation_name(i8*) #1

declare dso_local i32 @parser_errposition(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
