; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_selinux.c_sepgsql_compute_create.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_selinux.c_sepgsql_compute_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@SEPG_CLASS_MAX = common dso_local global i64 0, align 8
@selinux_catalog = common dso_local global %struct.TYPE_2__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"SELinux could not compute a new context: scontext=%s tcontext=%s tclass=%s: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sepgsql_compute_create(i8* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @SEPG_CLASS_MAX, align 8
  %15 = icmp ult i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @Assert(i32 %16)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @selinux_catalog, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = call i32 @string_to_security_class(i8* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = ptrtoint i8* %25 to i32
  %27 = load i8*, i8** %6, align 8
  %28 = ptrtoint i8* %27 to i32
  %29 = load i32, i32* %10, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @security_compute_create_name_raw(i32 %26, i32 %28, i32 %29, i8* %30, i32* %9)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %4
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i32, i32* @ERRCODE_INTERNAL_ERROR, align 4
  %36 = call i32 @errcode(i32 %35)
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @errmsg(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i8* %37, i8* %38, i8* %39)
  %41 = call i32 @ereport(i32 %34, i32 %40)
  br label %42

42:                                               ; preds = %33, %4
  %43 = call i32 (...) @PG_TRY()
  %44 = load i32, i32* %9, align 4
  %45 = call i8* @pstrdup(i32 %44)
  store i8* %45, i8** %12, align 8
  %46 = call i32 (...) @PG_FINALLY()
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @freecon(i32 %47)
  %49 = call i32 (...) @PG_END_TRY()
  %50 = load i8*, i8** %12, align 8
  ret i8* %50
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @string_to_security_class(i8*) #1

declare dso_local i64 @security_compute_create_name_raw(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i8*, i8*) #1

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
