; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_shdepend.c_storeObjectDescription.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_shdepend.c_storeObjectDescription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@SHARED_DEPENDENCY_OWNER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"owner of %s\00", align 1
@SHARED_DEPENDENCY_ACL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"privileges for %s\00", align 1
@SHARED_DEPENDENCY_POLICY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"target of %s\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"unrecognized dependency type: %d\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"%d object in %s\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"%d objects in %s\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"unrecognized object type: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32*, i64, i32)* @storeObjectDescription to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @storeObjectDescription(%struct.TYPE_5__* %0, i32 %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = call i8* @getObjectDescription(i32* %12)
  store i8* %13, i8** %11, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = call i32 @appendStringInfoChar(%struct.TYPE_5__* %19, i8 signext 10)
  br label %21

21:                                               ; preds = %18, %5
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %65 [
    i32 130, label %23
    i32 128, label %23
    i32 129, label %58
  ]

23:                                               ; preds = %21, %21
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @SHARED_DEPENDENCY_OWNER, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = call i32 @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 (%struct.TYPE_5__*, i32, ...) @appendStringInfo(%struct.TYPE_5__* %28, i32 %29, i8* %30)
  br label %57

32:                                               ; preds = %23
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @SHARED_DEPENDENCY_ACL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 (%struct.TYPE_5__*, i32, ...) @appendStringInfo(%struct.TYPE_5__* %37, i32 %38, i8* %39)
  br label %56

41:                                               ; preds = %32
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @SHARED_DEPENDENCY_POLICY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = call i32 @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 (%struct.TYPE_5__*, i32, ...) @appendStringInfo(%struct.TYPE_5__* %46, i32 %47, i8* %48)
  br label %55

50:                                               ; preds = %41
  %51 = load i32, i32* @ERROR, align 4
  %52 = load i64, i64* %9, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @elog(i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %50, %45
  br label %56

56:                                               ; preds = %55, %36
  br label %57

57:                                               ; preds = %56, %27
  br label %69

58:                                               ; preds = %21
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @ngettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 (%struct.TYPE_5__*, i32, ...) @appendStringInfo(%struct.TYPE_5__* %59, i32 %61, i32 %62, i8* %63)
  br label %69

65:                                               ; preds = %21
  %66 = load i32, i32* @ERROR, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @elog(i32 %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %65, %58, %57
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @pfree(i8* %70)
  ret void
}

declare dso_local i8* @getObjectDescription(i32*) #1

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_5__*, i8 signext) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_5__*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @ngettext(i8*, i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
