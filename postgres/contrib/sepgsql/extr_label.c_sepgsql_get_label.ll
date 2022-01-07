; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_label.c_sepgsql_get_label.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_label.c_sepgsql_get_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8* }

@SEPGSQL_LABEL_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"unlabeled\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"SELinux: failed to get initial security label: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sepgsql_get_label(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i8* %10, i8** %11, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i8* %12, i8** %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* @SEPGSQL_LABEL_TAG, align 4
  %17 = call i8* @GetSecurityLabel(%struct.TYPE_3__* %7, i32 %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i8*, i8** %8, align 8
  %22 = ptrtoint i8* %21 to i32
  %23 = call i64 @security_check_context_raw(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %20, %3
  %26 = call i64 @security_get_initial_context_raw(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %9)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i32, i32* @ERRCODE_INTERNAL_ERROR, align 4
  %31 = call i32 @errcode(i32 %30)
  %32 = call i32 @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @ereport(i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %28, %25
  %35 = call i32 (...) @PG_TRY()
  %36 = load i32, i32* %9, align 4
  %37 = call i8* @pstrdup(i32 %36)
  store i8* %37, i8** %8, align 8
  %38 = call i32 (...) @PG_FINALLY()
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @freecon(i32 %39)
  %41 = call i32 (...) @PG_END_TRY()
  br label %42

42:                                               ; preds = %34, %20
  %43 = load i8*, i8** %8, align 8
  ret i8* %43
}

declare dso_local i8* @GetSecurityLabel(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @security_check_context_raw(i32) #1

declare dso_local i64 @security_get_initial_context_raw(i8*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i8* @pstrdup(i32) #1

declare dso_local i32 @PG_FINALLY(...) #1

declare dso_local i32 @freecon(i32) #1

declare dso_local i32 @PG_END_TRY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
