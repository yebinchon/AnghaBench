; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_get_rolespec_oid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_get_rolespec_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"role \22%s\22 does not exist\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"unexpected role type %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_rolespec_oid(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %30 [
    i32 131, label %9
    i32 130, label %19
    i32 128, label %21
    i32 129, label %23
  ]

9:                                                ; preds = %2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @Assert(i32 %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @get_role_oid(i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  br label %36

19:                                               ; preds = %2
  %20 = call i32 (...) @GetUserId()
  store i32 %20, i32* %5, align 4
  br label %36

21:                                               ; preds = %2
  %22 = call i32 (...) @GetSessionUserId()
  store i32 %22, i32* %5, align 4
  br label %36

23:                                               ; preds = %2
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %26 = call i32 @errcode(i32 %25)
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 @ereport(i32 %24, i32 %27)
  %29 = load i32, i32* @InvalidOid, align 4
  store i32 %29, i32* %5, align 4
  br label %36

30:                                               ; preds = %2
  %31 = load i32, i32* @ERROR, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @elog(i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %30, %23, %21, %19, %9
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @get_role_oid(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @GetSessionUserId(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
