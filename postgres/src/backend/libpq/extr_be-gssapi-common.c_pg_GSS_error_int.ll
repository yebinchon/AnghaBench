; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-gssapi-common.c_pg_GSS_error_int.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_be-gssapi-common.c_pg_GSS_error_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@GSS_C_NO_OID = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"incomplete GSS error report\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i32)* @pg_GSS_error_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pg_GSS_error_int(i8* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %41, %4
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @GSS_C_NO_OID, align 4
  %19 = call i32 @gss_display_status(i64* %11, i64 %16, i32 %17, i32 %18, i64* %12, %struct.TYPE_4__* %9)
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %10, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %10, align 8
  %27 = sub i64 %25, %26
  %28 = call i32 @strlcpy(i8* %22, i32* %24, i64 %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %10, align 8
  %33 = call i32 @gss_release_buffer(i64* %11, %struct.TYPE_4__* %9)
  br label %34

34:                                               ; preds = %15
  %35 = load i64, i64* %12, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ult i64 %38, %39
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i1 [ false, %34 ], [ %40, %37 ]
  br i1 %42, label %15, label %43

43:                                               ; preds = %41
  %44 = load i64, i64* %12, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46, %43
  %51 = load i32, i32* @WARNING, align 4
  %52 = call i32 @errmsg_internal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %53 = call i32 @ereport(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %46
  ret void
}

declare dso_local i32 @gss_display_status(i64*, i64, i32, i32, i64*, %struct.TYPE_4__*) #1

declare dso_local i32 @strlcpy(i8*, i32*, i64) #1

declare dso_local i32 @gss_release_buffer(i64*, %struct.TYPE_4__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg_internal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
